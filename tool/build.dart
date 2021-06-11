import 'package:http/http.dart' as http;
import 'package:pedantic/pedantic.dart';
import 'dart:convert' as convert;
import 'string_crawler.dart';
import 'package:html/parser.dart';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:tcp_scanner/tcp_scanner.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

Process? mdnServer;
const basePath = 'http://localhost:5000/en-US/docs/Web/API/';
const banned = ['BeforeInstallPromptEvent', 'EXT_texture_norm16',
'DirectoryEntrySync', 'DirectoryReaderSync', 'FeaturePolicy',
'FileEntrySync', 'FileSystemSync', 'HTMLOrForeignElement',
'IDBMutableFile', 'Index', 'InstallEvent', 'LocalFileSystem',
'LocalFileSystemSync', 'MathMLElement', 'PaintWorklet',
'RequestDestination', 'RTCIceCandidateType', 'RTCIceComponent',
'RTCIceCredentialType', 'RTCIceGathererState', 'RTCIceTransportState',
'RTCIceRole', 'RTCIceProtocol', 'RTCIceTcpCandidateType', 'RTCRtpTransceiverDirection',
'RTCStatsIceCandidatePairState', 'RTCStatsType',
'SVGCursorElement', 'SVGEvent', 'TextRange', 'Transferable',
'WEBGL_compressed_texture_atc', //'WebGL2RenderingContext',
'WebGLRenderingContext', 'XPathException',
'XREnvironmentBlendMode', 'XREye', 'XRFrameRequestCallback'];
const bannedProps = {
  'Document': ['activeElement', 'fonts', 'fullscreenElement',
  'pictureInPictureElement', 'pointerLockElement'],
  'CompressionStream': ['readable', 'writable'],
  'DecompressionStream': ['readable', 'writable'],
  'CookieStore': ['onChange'],
  'CSSImportRule': ['stylesheet'],
  'GlobalEventHandlers': ['onloadend'],
  'HTMLElement': ['enterkeyhint', 'inert'],
  'HTMLIFrameElement': ['allowPaymentRequest'],
  'HTMLMediaElement': ['controller', 'controlsList', 'mediaGroup'],
  'HTMLSelectElement': ['autofocus']
};
const types = {
  'DOMString': 'String',
  'CSSOMString': 'String',
  'DOMHighResTimeStamp': 'double',
  'ByteString': 'String',
  'DOMTimeStamp': 'double',
  'USVString': 'String',
  'ConstrainULong': 'double',
  'float': 'double'
};
const mixins = {
  'Document': ['ParentNode'],
  'DocumentFragment': ['ParentNode'],
  'Element': ['Slottable', 'ParentNode', 'NonDocumentTypeChildNode'],
  'HTMLAnchorElement': ['HTMLHyperlinkElementUtils'],
  'HTMLAreaElement': ['HTMLHyperlinkElementUtils'],
  'HTMLElement': ['ElementContentEditable']
};
final errors = <String, List<String>>{};
final urls = [];

Future<void> main() async {
  //await clone();
  await cloneIDLs();
  //await fetchWC3IDLs();
  //await groupIdls();
  //await fetchIDL1();
  //await groupIdls();
  //await fixMissingIDLs();
  //await groupIdls();

  return;

  await startMdn();

  try {
    await scrap();
  } catch (e, st) {
    print('Error while scraping!');
    print(e);
    print(st);
  }
  stopMdn();

  exit(0);
}

String stripHtml(String buf) {
  return parse(buf.replaceAll('&nbsp;', ' ')).body!.text;
}

Future<String> digIDLs(String url) async {
  try {
    if (url.startsWith('/en-US')) {
      url = 'http://localhost:5000$url';
    }

    final uri = Uri.parse(url).replace(fragment: '');

    url = uri.toString();

    if (url.endsWith('#')) {
      url = url.substring(0, url.length - 1);
    }

    if (urls.contains(url)) {
      print('Already done URL $url');
      return '';
    }

    urls.add(url);

    final buf = await http.read(Uri.parse(url));
    //final data = stripHtml(buf);

    print('Digging $url. ${buf.contains('<pre class="idl highlight def">')}');
    //print(buf);
    final reg = RegExp(r'<pre\s?[\s\w\d-\.="]*?>(.+?)</pre>',
        dotAll: true, multiLine: true);
    final r = reg.allMatches(buf).fold<List<String>>([], (t, e) {
      final reg = RegExp(
          r'(?:(?:\[[\w=\s\(\),"]+\]\s?)?(?:interface|dictionary|namespace)\s?[mixin]?\s?\w+\s?:?\s?\w*\s?{(.*?)};)|(?:\w+\sincludes\s\w+?;)|(?:typedef\s\(?[\[\]\w\s\?,]+?\)?\s\w+;)'
          // r'|(\w+\sincludes\s\w+?)'
          // r'|(typedef\s\(?[\w\s]+?\)?\s\w+;)',
          ,dotAll: true, multiLine: true);
      final stripped = stripHtml(e.group(1)!);

      //return stripped;
      t.addAll(reg.allMatches(stripped).map((e) => e.group(0)!));
      return t;
    }).join('\n');

    // File('fetchs/${Uri.encodeFull(url)}.text')
    //   ..createSync(recursive: true)
    //   ..writeAsStringSync(data);

    File('webIDL/pages/${Uri.encodeComponent(url)}.txt')
      ..createSync(recursive: true)
      ..writeAsStringSync(r);
    File('webIDL/pages/${Uri.encodeComponent(url)}.orig')
      ..createSync(recursive: true)
      ..writeAsStringSync(buf);
    return r;
  } catch (e) {
    print('ERROR digging IDL $e');
  }

  return '';
}

Future<void> cloneIDLs() async {
  final js = convert.json.decode(await http.read(Uri.parse('https://api.github.com/repos/w3c/webref/git/trees/master?recursive=1'))) as Map;

  if (js['tree'] is Iterable) {
    for (final item in js['tree']) {
      // "path": "tr/idlparsed/ANGLE_instanced_arrays.json",
      // https://github.com/w3c/webref/blob/master/tr/idlparsed/accelerometer.json
      // https://raw.githubusercontent.com/w3c/webref/master/tr/idlparsed/accelerometer.json
      final match = RegExp(r'^tr/idlparsed/(\w+).json').firstMatch(item['path']);

      if (match != null) {
        final name = match.group(1);
        final url = 'https://raw.githubusercontent.com/w3c/webref/master/tr/idlparsed/$name.json';

        print('Fetching $name json IDL $url');
        File('webIDL/parsed/$name.json')
          ..createSync(recursive: true)
          ..writeAsStringSync(await http.read(Uri.parse(url)));
      }
    }
  }
}

Future<void> fetchIDL1() async {
  await digIDLs('https://www.w3.org/TR/WebIDL-1/');
  //await digIDLs('https://w3c.github.io/webrtc-pc/#dom-rtcerrorevent');
}

Future<void> startMdn() async {
  Future<bool> opened() async {
    final res = await TCPScanner('localhost', [ 5000 ]).scan();

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
  unawaited(ms.stderr
      .transform(convert.utf8.decoder)
      .forEach(print));

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

Future<void> clone() async {
  final url = Uri.parse('https://github.com/mdn/content/archive/refs/heads/main.zip');

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

Future<void> fetchWebIDL() async {
  if (1 > 0) {
    throw 'Do not use';
  }
  print('Getting list of webIDLs...');
  final raw = await http.read(Uri.parse('https://hg.mozilla.org/mozilla-central/raw-file/tip/dom/webidl/'));

  if (raw.isNotEmpty) {
    final scanner = StringCrawler(raw);

    print('Got ${raw.length} chars.');
    print('Scanning for file names...');

    var x = 0;

    while (scanner.moveTo(' ')) {
      final bet = scanner.getUntil('.webidl');

      print('Moved to $bet');
      if (bet != null && bet != 'null') {
        final name = bet.split(' ').last;
        final url = 'https://hg.mozilla.org/mozilla-central/raw-file/tip/dom/webidl/$name.webidl';

        try {
          print('Fetching webIDL $name: $url');
          final data = await http.read(Uri.parse(url));

          print('WebIDL $name: ${data.length}');

          File('webIDL/files/$name.webidl')
            ..createSync(recursive: true)
            ..writeAsStringSync(data);
          x++;
        } catch (e) {
          print('Could download $url');
          print(e);
        }
      } else {
        break;
      }
    }

    print('Scanned $x files!');
  }
}

Future<void> saveTypes() async {
  final reg = RegExp(
      r'typedef \((.*?)\) \w+',
      dotAll: true, multiLine: true);
  final r = reg.allMatches(File('webIDL/pages.txt').readAsStringSync())
      .map((e) => e.group(0)?.split(' ').last);

  File('webIDL/typeDefs.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(prettyJson(r.whereType<String>().toList()));
}

Future<void> fetchWC3IDLs() async {
  print('Fetching w3c idl pages...');
  final js = (convert.json.decode(await http.read(Uri.parse('https://w3c.github.io/browser-specs/index.json'))) as Iterable).toList();
  final toAdd = [
    {'url': 'https://dom.spec.whatwg.org/', 'shortname': 'domwhatwg'},
    {'url': 'https://html.spec.whatwg.org/', 'shortname': 'htmlwhatwg'},
    {'url': 'https://console.spec.whatwg.org/', 'shortname': 'consolewhatwg'},
    {'url': 'https://w3c.github.io/webappsec-permissions-policy/', 'shortname': 'permissionspolicy'},
    {'url': 'https://streams.spec.whatwg.org/', 'shortname': 'streamswhatwg'}
  ];

  for (final item in toAdd) {
    if (!js.any((i) => i['url'] == item['url'])) {
      js.insert(0, item);
    }
  }

  //final js = [ {'url': 'https://html.spec.whatwg.org/', 'shortname': 'htmlwhatwg'},];

  // https://dom.spec.whatwg.org/
  // https://html.spec.whatwg.org/
  // https://console.spec.whatwg.org/
  //final js = [{'url': 'https://www.w3.org/TR/FileAPI/', 'shortname': 'FileAPI'}];

  print('Pages count ${js.length}');
  for (final bl in js) {
    final url = bl['url'] as String; //'https://www.w3.org/TR/mediacapture-streams/';
    final name = bl['shortname'] as String; //'mediacapture-streams';

    print('Fetching page $name, $url');

    await digIDLs(url);
    //break;
  }

  print('Done!');
}

Future<void> groupIdls() async {
  final idls = Glob('webIDL/**/*.txt');
  final bufs = <String>[];
  final list = idls.listSync();

  for (var entity in list) {
    bufs.add(File(entity.path).readAsStringSync());
  }

  final path = 'webIDL/pages.txt';

  print('Grouped ${list.length} IDLs into $path');

  File(path).writeAsStringSync(bufs.join('\n'));
  await saveTypes();
}

Future<void> makeWebIDLJson() async {
  Process.runSync('node', ['webIDL/index.js']);
}

Future<Map<String, dynamic>?> fetch(String path) async {
  final url = Uri.parse(path.startsWith('http') ? path : '$basePath$path');

  try {
    print('Fetching $url');
    final response = await http.read(url);

    return convert.json.decode(response) as Map<String, dynamic>;
  } catch (e, st) {
    print('Error fetching $path');
    print(e);
    print(st);
  }

  return null;
}

String? makeDesc(String? buf) {
  return buf == null ? null : stripHtml(buf
      .replaceAll('<code>', '[')
      .replaceAll('</code>', ']')
      .replaceAll('<strong>', '*')
      .replaceAll('</strong>', '*')
  );
}

String prettyJson(js) {
  final enc = convert.JsonEncoder.withIndent('  ');

  return enc.convert(js);
}

String? getMDNContent(Iterable block, String? name) {
  return block.firstWhere((bl) =>
  bl['type'] == 'prose' &&
      bl['value']['id'] == name,
      orElse: () => null)?['value']?['content'];
}

Future<Iterable<Map<String, dynamic>>> getInterfaces() async {
  final js = ((await fetch('index.json'))?['doc']?['body']);
  final content = js?.firstWhere((element) => element['value']?['id']?.toString()
      .toLowerCase() == 'interfaces',
      orElse: () => null)?['value']?['content'] as String;
  final scanner = StringCrawler(content);
  final ret = <Map<String, dynamic>>[];

  while (scanner.moveTo('<li>')) {
    final block = scanner.getUntil('</li>');

    if (block != null) {
      final name = StringCrawler(block).getBetween('<code>', '</code>');

      if (name != null) {
        final object = <String, dynamic>{
          'name': name,
          'experimental': block.contains('icon-experimental'),
          'deprecated': block.contains('icon-deprecated'),
          'standard': !block.contains('icon-nonstandard'),
          '_block': block
        };

        ret.add(object);
      }
    }
  }

  return ret;
}

Future<void> fixMissingIDLs({String? nameToFind}) async {
  print('Will fix missing IDLs');

  final rinfs = await getInterfaces();
  final infs = nameToFind == null ? rinfs : [rinfs.firstWhere(
          (i) => i['name'] == nameToFind)];

  for (final inf in infs) {
    final name = inf['name'];
    final idls = File('webIDL/pages.txt').readAsStringSync();
    final isc = StringCrawler(idls);
    final idl = getBlock(isc, name);

    if (idl == null) {
      print('=' * 10);
      print('Needs to scrap IDL of $name. ${idls.contains('interface $name ')}');
      final rdet = await fetch('$name/index.json');
      final details = rdet?['doc']?['body'] as Iterable?;

      if (details != null) {
        final specs = getMDNContent(details, 'Specifications');

        if (specs != null) {
          var x = 1;
          final scan = StringCrawler(specs);

          Future<void> scrap(String? url) async {
            if (url == null) {
              if (inf['deprecated'] == true) {
                return;
              }

              throw 'Couldnt find the URL to dig the IDL\n$specs';
            }

            print('Digging IDLs $url');
            await digIDLs(url);
            x++;
          }

          while (scan.moveTo('href="')) {
            final url = scan.getUntil('"');

            if (url != null) {
              if (url.startsWith('https://w3c.github.io/')) {
                await scrap(url.replaceAll('https://w3c.github.io/',
                    'https://www.w3.org/TR/'));
              }

              await scrap(url);
            }
          }
        }
      }
      print('/' * 10);
      await groupIdls();
    }
  }
}

String? getBlock(StringCrawler isc, String name) {
  return isc.exBetween(RegExp(
    r'[interface|dictionary|namespace]\s?[mixin]?\s?' + name +
        r'+\s?:?\s?\w*\s?{',
  ), RegExp('};'));
}

Iterable<String> getAllBlocks(String data, String name) {
  final reg = RegExp(
      r'[interface|dictionary|namespace]\s?[mixin]?\s?' + name +
          r'+\s?:?\s?\w*\s?{(.*?)};',
      dotAll: true, multiLine: true);
  return reg.allMatches(data).map((e) => e.group(0)!);
}

Future<Iterable<Map<String, dynamic>>> scrap() async {
  final ret = <Map<String, dynamic>>[];
  final idls = File('webIDL/pages.txt').readAsStringSync();
  final infs = await getInterfaces();
  final typeDefs = convert.json.decode(
      File('webIDL/typeDefs.json').readAsStringSync()) as Iterable;
  final isc = StringCrawler(idls);

    var x = 0;

    for (final object in infs) {
      x++;

      if (x < 858) {
        //continue;
      }

      if (x > 60) {
        //break;
      }
      final name = x == 1 ? 'WebGL2RenderingContext' : object['name'];
      print('=' * 20);
      print('Parsing $name($x)');
      print('=' * 20);

      if (name != null) {
        if (typeDefs.contains(name)) {
          print('$name is a typedef.');
          continue;
        }
        if (types.containsKey(name)) {
          print('$name is a base type.');
          continue;
        }
        if (banned.contains(name) || name.toLowerCase().startsWith('ms')) {
          print('$name is a banned!');
          continue;
        }

        final rdet = await fetch('$name/index.json');
        final details = rdet?['doc']?['body'] as Iterable?;

        assert(details != null && details is Iterable,
        'Couldnt get the details of $name. Details $details.\nFull: $rdet');
        isc.reset();

        if (details != null) {
          final props = <String, Map<String, dynamic>>{};
          final methods = <String, Map<String, dynamic>>{};
          final idlAll = getAllBlocks(idls, name);

          if (idlAll.isEmpty) {
            if (object['deprecated'] == true ||
                object['experimental'] == true || object['standard'] == false) {
              print('Couldnt find $name and skipping because deprecated/experimental/non-standard.\n'
                  '${prettyJson(object)}');
              continue;
            }
            if (name.toLowerCase().startsWith('xr')) {
              print('Skipping XR experimental.');
              continue;
            }
            throw 'Couldnt get IDL of $name.\n'
                'Obj: ${prettyJson(object)}\n'
                'Pos: ${idls.contains('dictionary $name ')}\n';
          }

          final idl = idlAll.join('\n');
          final dictionary = idl.startsWith('dictionary');
          final namespace = idl.startsWith('namespace');
          final ilines = idl.split('\n');
          final inheritance = <String>[];

          void checkSuper(String fname) {
            isc.reset();

            final idl = getBlock(isc, fname);

            if (idl == null) {
              throw 'Couldnt find inheritance IDL "$fname" of $name';
            }
            final ilines = idl.split('\n');
            final spl = ilines.first.split(':');

            if (spl.length == 2) {
              final bname = spl[1].replaceAll('{', '').trim();
              inheritance.add(bname);
              checkSuper(bname);
            }
          }

          checkSuper(name);

          final rdesc = getMDNContent(details, null)!;

          if (rdesc.contains('notecard draft')) {
            print('Skipping draft $name');
            continue;
          }

          object['inheritance'] = inheritance.toList();
          final mymixins = mixins[name];

          if (mymixins != null) {
            inheritance.addAll(mymixins);
          }

          object['desc'] = makeDesc(rdesc);
          object['abstract'] = !details.any((bl) =>
          bl['value']?['id'] == 'Constructor');

          if (dictionary) {
            object['category'] = 'dictionary';
          } else if (namespace) {
            object['category'] = 'namespace';
          } else {
            object['category'] = 'interface';
          }

          void parseProps({String? rawProps}) {
            if (rawProps != null) {
              final pscan = StringCrawler(rawProps);
              String? dt;

              while ((dt = pscan.enclosed('<dt>', '</dt>')) != null) {
                if (dt == null) {
                  throw 'DartNeedsThis =/';
                }
                final dtcrawl = StringCrawler(dt);
                final dd = pscan.enclosed('<dd>', '</dd>')!;
                final desc = makeDesc(dd) ?? '';
                final code = dtcrawl.getBetween('<code>', '</code>');
                final canScrap = !dt.contains('page-not-created');

                if (code == null) {
                  print('Cant find the code in DT. So we are skipping.'
                      'DT: \n$dt');
                  continue;
                }

                final nspl = code.split('.');
                final from = nspl.first;
                final pname = nspl.last;
                final pdeprecated = dt.contains('icon-deprecated');
                final pexperimental = dt.contains('icon-experimental');
                final pstandard = !dt.contains('icon-nonstandard');
                String? type;
                var defaults;

                if (bannedProps[name]?.contains(pname) == true) {
                  print('Skipping $pname of $name because it is a banned prop.');
                  continue;
                }

                if (from != name && !inheritance.contains(from)) {
                  print('Skipping $pname of $name because its parent is $from');
                  continue;
                }

                print('NeedsType $name.$pname: ${ilines.join(
                    '\n')}\nDesc: $desc');

                String? findType(Iterable<String> ilines) {
                  String? type;

                  for (final rline in ilines) {
                    var defm;
                    var line = rline.trim();
                    final reg = RegExp(
                        '(.*?);', dotAll: true, multiLine: true);

                    line = reg.firstMatch(line)?.group(1) ?? '';

                    while (true) {
                      var nl = line.replaceAll('  ', ' ');

                      if (nl.length == line.length) {
                        line = nl;
                        break;
                      }

                      line = nl;
                    }

                    if (line.startsWith('[')) {
                      final lscan = StringCrawler(line);
                      final comms = lscan.getBetween('[', ']');

                      if (comms != null) {
                        print('Comms $comms');
                        line = line.substring(lscan.point);
                      }
                    }

                    final epos = line.split('=');

                    if (epos.length == 2) {
                      line = '${epos[0].trim()}';
                      defm = epos[1].trim();
                    }

                    print('Line ===$line===');
                    if (line.endsWith('$pname')) {
                      final spl = line.split(' ');
                      type = spl[spl.length - 2];
                      defaults = defm;
                      print('FoundType $type');
                      break;
                    }
                  }

                  return type;
                }

                type = findType(ilines);

                if (type?.isNotEmpty != true) {
                  for (final inh in inheritance) {
                    isc.reset();
                    final idl = getAllBlocks(idls, inh).join('\n');

                    assert(idl.isNotEmpty,
                    'Couldnt find the parent IDL of $inh');

                    print('Parent type checking $name.$pname: $inh');
                    type = findType(idl.split('\n'));

                    if (type != null) {
                      break;
                    }
                  }
                }

                if (type?.isNotEmpty != true) {
                  if (object['experimental'] == true ||
                      object['deprecated'] == true ||
                      object['standard'] != true) {
                    print('Couldnt find property $pname of $name but the'
                        ' object is experimental, so we are skipping.');
                    continue;
                  }

                  if (pdeprecated || !canScrap || pexperimental ||
                  !pstandard) {
                    print('Couldnt find property $pname of $name but the'
                        ' property is flawed, so we are skipping.');
                    continue;
                  }

                  print('Setting ERROR $name $pname');
                  errors[name] ??= [];
                  errors[name]!.add(pname);
                  continue;
                }

                assert(type?.isNotEmpty == true,
                'Could find type for $name.$pname. \n${prettyJson(object)}\n'
                    'Lines: $ilines\n'
                    '${{
                  'experimental': pexperimental,
                  'deprecated': pdeprecated,
                  'standard': pstandard
                }}'
                    'IDL: $idl');

                type = type!.trim();
                final nullable = type.endsWith('?');

                if (nullable) {
                  type = type.substring(0, type.length - 1);
                }

                final arr = type.startsWith('sequence<');

                if (arr) {
                  type = type.substring('sequence<'.length);
                  type = type.substring(0, type.length - 1);
                }

                final dartType = types[type] ?? type;

                props[pname] = {
                  'type': type,
                  'array': arr,
                  'dartType': dartType,
                  'nullable': nullable,
                  'readonly': dt.contains('readonly'),
                  'experimental': pexperimental,
                  'deprecated': pdeprecated,
                  'standard': pstandard,
                  'desc': desc,
                  'event': dd.contains('Event_handlers'),
                  if (defaults != null)
                    'default': defaults
                };
              }
            }
          }

          parseProps(rawProps: getMDNContent(details, 'Properties'));
          parseProps(rawProps: getMDNContent(details, 'Event_handlers'));

          final rme = getMDNContent(details, 'Methods');

          if (rme != null && 1 < 0) {
            final pscan = StringCrawler(rme);

            while (pscan.moveTo('<dt>')) {
              final dt = pscan.getUntil('</dt>')!;
              final dtcrawl = StringCrawler(dt);
              final nspl = dtcrawl.getBetween('<code>', '</code>')!.split(
                  '.');
              final canScrap = !dt.contains('page-not-created');
              final method = <String, dynamic>{
                'experimental': dt.contains('icon-experimental'),
                'deprecated': dt.contains('icon-deprecated'),
                'standard': !dt.contains('icon-nonstandard'),
              };

              if (canScrap) {

              } else {
                method['desc'] =
                    makeDesc(pscan.getBetween('<dd>', '</dd>')!);
              }

              methods[nspl.last] = method;
            }
          }

          if (details.any((bl) =>
          bl['type'] == 'browser_compatibility'
              && bl['value']?['dataUrl'] != null)) {
            final compat = (await fetch(
                '$name/bcd.json'))?['data'] as Map?;

            if (compat != null) {

            }
          }

          object['props'] = props;
        }

        ret.add(object);
      }
    }

    for (final i in ret) {
      i.remove('_block');
    }

    print('ERRORS');
    print(prettyJson(errors));

    File('api.json').writeAsStringSync(prettyJson(ret));
    print('=' * 20);
    print('ALL DONE!');

  return ret;
}