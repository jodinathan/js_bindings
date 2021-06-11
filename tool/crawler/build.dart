import 'package:http/http.dart' as http;
import 'package:pedantic/pedantic.dart';
import 'dart:convert' as convert;
import '../string_crawler.dart';
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
  // clones the MDN repo locally
  //await cloneMDN();
  // copy the list of webIDLs, parsed in JSON, from github.com/w3c/webref/
  //await cloneIDLs();
  // startes the MDN web server: localhost:5000
  await startMdn();
  // parse the MDN htmls to generate a json
  //await parseMDN();

  //return;

  try {
    // add MDN info to the webIDLs json
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

Future<void> cloneMDN() async {
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

Future<Map<String, dynamic>?> fetch(String path,
    {bool silent = false}) async {
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

String? makeDesc(String? buf) {
  return buf == null ? null : stripHtml(buf
      .replaceAll('<code>', '[')
      .replaceAll('</code>', ']')
      .replaceAll('<strong>', '*')
      .replaceAll('</strong>', '*')
  );
}

String prettyJson(js) {
  final enc = convert.JsonEncoder.withIndent('  ', (e) {
    print('JSON ERROR ${e.runtimeType}\n$e');
    return e;
  });

  return enc.convert(js);
}

String? getMDNContent(Iterable block, String? name) {
  return block.firstWhere((bl) =>
  bl['type'] == 'prose' &&
      bl['value']['id'] == name,
      orElse: () => null)?['value']?['content'];
}

Future<void> parseMDN() async {
  print('Parsing MDN files...');
  final infs = await getInterfaces();

  File('webIDL/mdn.json')
    ..createSync(recursive: true)
    ..writeAsStringSync(prettyJson(infs));

  print('Parsed MDN files! =]');
}

Future<Map<String, dynamic>> getInterfaces() async {
  final js = ((await fetch('index.json'))?['doc']?['body']);
  final content = js?.firstWhere((element) => element['value']?['id']?.toString()
      .toLowerCase() == 'interfaces',
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
              final desc = makeDesc(dd);
              final code = dtcrawl.getBetween('<code>', '</code>');
              final canScrap = !dt.contains('page-not-created');

              if (code == null) {
                print('Cant find the code in DT. So we are skipping.'
                    'DT: \n$dt');
                continue;
              }

              final nspl = code.split('.');
              var pname = nspl.last.trim()
                  .replaceAll('(', '').replaceAll(')', '');

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
                if (canScrap)
                  'mdn': '$mdnUrl/$pname',
              };
              final params = {};

              if (type == 'operation') {
                final rdet = await fetch('$name/$pname/index.json',
                    silent: true);
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
                      final name = StringCrawler(dt).getBetween('<code>', '</code>');
                      final dd = makeDesc(pscan.enclosed('<dd>', '</dd>') ?? '');

                      if (name?.isNotEmpty == true &&
                      dd?.isNotEmpty == true) {
                        params[name] = dd;
                      }
                    }
                  }

                  member['example'] = stripHtml(getMDNContent(details, 'Example'));
                  member['syntax'] = stripHtml(getMDNContent(details, 'Syntax'));
                }
              }

              member['params'] = params;
              members.add(member);
            }
          }
        }

        if (details != null) {
          final rdesc = getMDNContent(details, null)!;

          object['desc'] = makeDesc(rdesc);
          await parseProps(raw: getMDNContent(details, 'Properties'),
              type: 'attribute');
          await parseProps(raw: getMDNContent(details, 'Event_handlers'),
              type: 'event');
          await parseProps(raw: getMDNContent(details, 'Methods'),
              type: 'operation');
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

Future<void> addInfo() async {
  print('Adding info...');
  final idls = Glob('webIDL/parsed/html.json');
  final list = idls.listSync();
  final mdninfs = convert.json.decode(File('webIDL/mdn.json').readAsStringSync()) as Map<String, dynamic>;

  for (var entity in list) {
    final file = File(entity.path);
    final js = convert.json.decode(file.readAsStringSync()) as Map;
    final objs = js['idlparsed']?['idlNames'] as Map<String, dynamic>?;

    print('Spec ${js['spec']['title']}: ${objs?.length}');

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

              assert(['attribute', 'operation', 'constructor',
                'const'].contains(member['type']),
              'Unknown ${member['type']}');

              switch (member['type']) {
                case 'const':
                  type = 'attribute';
                  break;
                default:
                  type = member['type'];
              }

              final name = member['name'];
              final imem = imems.firstWhere((i) => i['name'] == name &&
                  i['type'] == type, orElse: () => null);

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

    final p = 'webIDL/info/${entity.basename}';

    print('Saving $p');
    File(p)
      ..createSync(recursive: true)
      ..writeAsStringSync(prettyJson(js));
  }
}
