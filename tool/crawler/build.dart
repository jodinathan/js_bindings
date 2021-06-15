import 'package:http/http.dart' as http;
import 'package:pedantic/pedantic.dart';
import 'dart:convert' as convert;
import '../base.dart';
import '../string_crawler.dart';
import 'package:html/parser.dart';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:tcp_scanner/tcp_scanner.dart';

Process? mdnServer;
const basePath = 'http://localhost:5000/en-US/docs/Web/API/';
final errors = <String, List<String>>{};
final urls = [];

Future<void> main() async {
  // clones the MDN repo locally
  //await cloneMDN();
  // copy the list of webIDLs, parsed in JSON, from github.com/w3c/webref/
  //await cloneIDLs();
  // merge ed and tr IDLs into /merged
  //await mergeIDLs();
  // startes the MDN web server: localhost:5000
  await startMdn();
  // parse the MDN htmls to generate a json
  await parseMDN();

  //return;

  try {
    // add MDN info to the merged webIDLs json and save at /info
    await addInfo();
  } catch (e, st) {
    print('Error while scraping!');
    print(e);
    print(st);
  }
  stopMdn();

  exit(0);
}

String? stripHtml(String? buf) {
  if (buf == null) {
    return null;
  }
  return parse(buf.replaceAll('&nbsp;', ' ')).body!.text;
}

Future<void> mergeIDLs() async {
  final list = await getIDLs();
  final ds = dirs.toList();
  final groups = [];

  print('Will merge others ${ds.length}');

  ds.removeWhere((d) => d == baseDir);

  for (final dir in ds) {
    final idls = await getIDLs(dir: dir);

    print('Adding $dir, ${idls.length}');
    groups.add(idls);
  }

  print('To merge: ${groups.length}');

  for (final item in list) {
    for (final group in groups) {
      var other;

      for (final gr in (group as Iterable)) {
        if (gr['basename'] == item['basename']) {
          other = gr;
          break;
        }
      }

      if (other == null || other['idlparsed']?['idlNames'] == null) {
        print('Couldnt find ${item['basename']}');
        continue;
      }

      item['idlparsed']['idlNames'] = <String, dynamic>{
        ...other['idlparsed']['idlNames'],
        ...item['idlparsed']['idlNames']
      };
    }

    final path = '../webIDL/merged/${item['basename']}';

    File(path)
      ..createSync(recursive: true)
      ..writeAsStringSync(prettyJson(item));
  }
}

Future<void> cloneIDLs() async {
  final js = convert.json.decode(await http.read(Uri.parse(
          'https://api.github.com/repos/w3c/webref/git/trees/master?recursive=1')))
      as Map;

  if (js['tree'] is Iterable) {
    for (final item in js['tree']) {
      // "path": "tr/idlparsed/ANGLE_instanced_arrays.json",
      // https://github.com/w3c/webref/blob/master/tr/idlparsed/accelerometer.json
      // https://raw.githubusercontent.com/w3c/webref/master/tr/idlparsed/accelerometer.json
      final match =
          RegExp(r'^(\w{2})/idlparsed/(.+?).json').firstMatch(item['path']);

      if (match != null) {
        final type = match.group(1);
        final name = match.group(2);
        final url =
            'https://raw.githubusercontent.com/w3c/webref/master/$type/idlparsed/$name.json';

        print('Fetching $name json IDL $url');
        File('../webIDL/$type/$name.json')
          ..createSync(recursive: true)
          ..writeAsStringSync(await http.read(Uri.parse(url)));
      }
    }
  }
}

Future<void> startMdn() async {
  Future<bool> opened() async {
    final res = await TCPScanner('localhost', [5000]).scan();

    return res.open.contains(5000);
  }

  if (await opened()) {
    print('MDN server already started.');
    return;
  }

  print('Starting MDN server...');
  final ms = await Process.start('./startMDN.sh', []);

  // unawaited(ms.stdout
  //     .transform(convert.utf8.decoder)
  //     .forEach(print));
  unawaited(ms.stderr.transform(convert.utf8.decoder).forEach(print));

  while (true) {
    print('.');
    if (await opened()) {
      break;
    }

    await Future.delayed(Duration(milliseconds: 300));
  }

  mdnServer = ms;
  print('Started!');
}

void stopMdn() {
  print('Stopping MDN server...');
  final ms = mdnServer;

  if (ms != null) {
    print('Killing pid ${ms.pid}');
    Process.killPid(ms.pid);
    mdnServer = null;
  }

  print('Stopped!');
}

Future<void> cloneMDN() async {
  final url =
      Uri.parse('https://github.com/mdn/content/archive/refs/heads/main.zip');

  print('Downloading $url...');
  final response = await http.get(url);

  print('Downloaded! ${response.contentLength}. \nUnzipping...');

  await File('mdn.zip').writeAsBytes(response.bodyBytes);

  // Read the Zip file from disk.
  final bytes = File('mdn.zip').readAsBytesSync();

  // Decode the Zip file
  final archive = ZipDecoder().decodeBytes(bytes);

  // Extract the contents of the Zip archive to disk.
  for (final file in archive) {
    final filename = file.name;

    if (file.isFile) {
      final data = file.content as List<int>;

      File('mdn/' + filename)
        ..createSync(recursive: true)
        ..writeAsBytesSync(data);
    } else {
      await Directory('mdn/' + filename).create(recursive: true);
    }
  }

  print('Done!');
}

Future<Map<String, dynamic>?> fetch(String path, {bool silent = false}) async {
  final url = Uri.parse(path.startsWith('http') ? path : '$basePath$path');

  try {
    print('Fetching $url');
    final response = await http.read(url);

    return convert.json.decode(response) as Map<String, dynamic>;
  } catch (e, st) {
    if (!silent) {
      print('Error fetching $path');
      print(e);
      print(st);
    }
  }

  return null;
}

String? makeDesc(String name, String? buf) {
  return buf == null
      ? null
      : stripHtml(buf
          .replaceAll('<code>', '[')
          .replaceAll('</code>', ']')
          .replaceAll('[$name]', ''));
}

String? getMDNContent(Iterable block, String? name) {
  return block.firstWhere(
      (bl) => bl['type'] == 'prose' && bl['value']['id'] == name,
      orElse: () => null)?['value']?['content'];
}

Future<void> parseMDN() async {
  print('Parsing MDN files...');
  final infs = await getInterfaces();

  File('../webIDL/mdn.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(prettyJson(infs));

  print('Parsed MDN files! =]');
}

Future<Map<String, dynamic>> getInterfaces() async {
  final js = ((await fetch('index.json'))?['doc']?['body']);
  final content = js?.firstWhere(
      (element) =>
          element['value']?['id']?.toString().toLowerCase() == 'interfaces',
      orElse: () => null)?['value']?['content'] as String;
  final scanner = StringCrawler(content);
  final ret = <String, dynamic>{};

  while (scanner.moveTo('<li>')) {
    final block = scanner.getUntil('</li>');

    if (block != null) {
      final name = StringCrawler(block).getBetween('<code>', '</code>');

      if (name != null && name != 'Index') {
        final object = <String, dynamic>{
          'name': name,
          'experimental': block.contains('icon-experimental'),
          'deprecated': block.contains('icon-deprecated'),
          'standard': !block.contains('icon-nonstandard'),
          '_block': block
        };

        final rdet = await fetch('$name/index.json', silent: true);

        if (rdet == null) {
          throw 'Couldnt load $name';
        }

        final details = rdet['doc']?['body'] as Iterable?;
        final mdnUrl = rdet['doc']['mdn_url'];
        final members = <Map<String, dynamic>>[];

        object['mdn'] = mdnUrl;

        Future<void> parseProps({String? raw, required String type}) async {
          if (raw != null) {
            final pscan = StringCrawler(raw);
            String? dt;

            while ((dt = pscan.enclosed('<dt>', '</dt>')) != null) {
              if (dt == null) {
                throw 'DartNeedsThis =/';
              }
              final dtcrawl = StringCrawler(dt);
              final dd = pscan.enclosed('<dd>', '</dd>') ?? '';
              final code = dtcrawl.getBetween('<code>', '</code>');
              final canScrap = !dt.contains('page-not-created');

              if (code == null) {
                print('Cant find the code in DT. So we are skipping.'
                    'DT: \n$dt');
                continue;
              }

              final nspl = code.split('.');
              var pname =
                  nspl.last.trim().replaceAll('(', '').replaceAll(')', '');
              final desc = makeDesc(pname, dd);

              if (name == pname) {
                type = 'constructor';
              } else if (type == 'event' && !pname.startsWith('on')) {
                type = 'attribute';
                pname = 'on$name';
              }

              final member = {
                'type': type,
                'name': pname,
                'deprecated': dt.contains('icon-deprecated'),
                'experimental': dt.contains('icon-experimental'),
                'standard': !dt.contains('icon-nonstandard'),
                'desc': desc,
                if (canScrap) 'mdn': '$mdnUrl/$pname',
              };
              final params = {};

              if (type == 'operation') {
                final rdet =
                    await fetch('$name/$pname/index.json', silent: true);
                final details = rdet?['doc']?['body'] as Iterable?;

                if (details != null) {
                  final rparams = getMDNContent(details, 'Parameters');

                  if (rparams != null) {
                    final pscan = StringCrawler(rparams);
                    String? dt;

                    while ((dt = pscan.enclosed('<dt>', '</dt>')) != null) {
                      if (dt == null) {
                        throw 'DartNeedsThis =/';
                      }
                      final name =
                          StringCrawler(dt).getBetween('<code>', '</code>');

                      if (name?.isNotEmpty == true) {
                        final dd = makeDesc(
                            name!, pscan.enclosed('<dd>', '</dd>') ?? '');

                        if (dd?.isNotEmpty == true) {
                          params[name] = dd;
                        }
                      }
                    }
                  }

                  var example = stripHtml(getMDNContent(details, 'Example'));

                  if (example != null && example.isNotEmpty == true) {
                    final dl = details.toList();
                    dynamic blg(String name) => details.firstWhere(
                        (bl) =>
                            bl['type'] == 'prose' && bl['value']['id'] == name,
                        orElse: () => null);
                    final ex = dl.indexOf(blg('Example'));

                    void addExtras(String name) {
                      final bl = blg(name);

                      print('ExtraAdd $pname $name ${dl.indexOf(bl)}, $ex');

                      if (dl.indexOf(bl) > ex && bl['value']['isH3'] == true) {
                        final content = (bl['value']?['content'] as String)
                            .replaceAll('<pre>', '\n\n```\n')
                            .replaceAll('</pre>', '\n```\n');

                        example = '$example\n${stripHtml(content)}';
                      }
                    }

                    addExtras('HTML');
                    addExtras('JavaScript');
                    addExtras('Results');
                    member['example'] = example;
                  }

                  member['syntax'] =
                      stripHtml(getMDNContent(details, 'Syntax'));
                }
              }

              member['params'] = params;
              members.add(member);
            }
          }
        }

        if (details != null) {
          final rdesc = getMDNContent(details, null)!;

          object['desc'] = makeDesc(name, rdesc);
          await parseProps(
              raw: getMDNContent(details, 'Properties'), type: 'attribute');
          await parseProps(
              raw: getMDNContent(details, 'Event_handlers'), type: 'event');
          await parseProps(
              raw: getMDNContent(details, 'Methods'), type: 'operation');
        }

        object['members'] = members;
        print('ADDING Object $name');
        ret[name] = object;
      }
    }
  }

  return ret;
}

String? getBlock(StringCrawler isc, String name) {
  return isc.exBetween(
      RegExp(
        r'[interface|dictionary|namespace]\s?[mixin]?\s?' +
            name +
            r'+\s?:?\s?\w*\s?{',
      ),
      RegExp('};'));
}

Iterable<String> getAllBlocks(String data, String name) {
  final reg = RegExp(
      r'[interface|dictionary|namespace]\s?[mixin]?\s?' +
          name +
          r'+\s?:?\s?\w*\s?{(.*?)};',
      dotAll: true,
      multiLine: true);
  return reg.allMatches(data).map((e) => e.group(0)!);
}

Future<void> addInfo() async {
  print('Adding info...');
  final mdninfs =
      convert.json.decode(File('../webIDL/mdn.json').readAsStringSync())
          as Map<String, dynamic>;
  final list = await getIDLs(dir: 'merged');

  for (var js in list) {
    final objs = js['idlparsed']?['idlNames'] as Map<String, dynamic>?;

    print('Spec ${js['spec']['title']}(${js['path']}): ${objs?.length}');

    if (objs != null) {
      for (final name in objs.keys) {
        final block = objs[name] as Map;
        final members = block['members'] as Iterable?;
        final inf = mdninfs[name];
        final hasInf = inf != null;

        if (hasInf) {
          final imems = inf['members'] as Iterable?;
          block['deprecated'] = inf['deprecated'];
          block['experimental'] = inf['experimental'];
          block['desc'] = inf['desc'];
          block['mdn'] = inf['mdn'];

          if (members != null && imems != null) {
            for (final member in members) {
              late final String type;

              switch (member['type']) {
                case 'const':
                case 'field':
                  type = 'attribute';
                  break;
                case 'iterable':
                case 'setlike':
                case 'maplike':
                  continue;
                default:
                  type = member['type'];
              }

              assert(
                  ['attribute', 'operation', 'constructor', 'const', 'field']
                      .contains(member['type']),
                  'Unknown ${member['type']}');

              final name = member['name'];
              final imem = imems.firstWhere(
                  (i) => i['name'] == name && i['type'] == type,
                  orElse: () => null);

              if (imem != null) {
                member['desc'] = imem['desc'];
                member['mdn'] = imem['mdn'];
                member['deprecated'] = imem['deprecated'];
                member['experimental'] = imem['experimental'];
                member['example'] = imem['example'];
                member['syntax'] = imem['syntax'];

                if (type == 'operation') {
                  final ipas = imem['params'] as Map<String, dynamic>;
                  final params = member['arguments'] as Iterable;

                  for (final param in params) {
                    param['desc'] = ipas[param['name']];
                  }
                }
              }
            }
          }
        }
      }
    }

    final p = '../webIDL/info/${js['basename']}';

    print('Saving $p');
    File(p)
      ..createSync(recursive: true)
      ..writeAsStringSync(prettyJson(js));
  }
}
