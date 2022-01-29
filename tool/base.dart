import 'dart:convert' as convert;
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:recase/recase.dart';

const dirs = ['ed', 'tr'];
const baseDir = 'ed';
const types = {
  'DOMString': 'String',
  'CSSOMString': 'String',
  'DOMHighResTimeStamp': 'double',
  'ByteString': 'String',
  'DOMTimeStamp': 'int',
  'EpochTimeStamp': 'int',
  'USVString': 'String',
  'ConstrainULong': 'double',
  'long': 'int',
  'long long': 'int',
  'float': 'double',
  'boolean': 'bool',
  'double': 'double',
  'unsigned short': 'int',
  'unsigned long': 'int',
  'unsigned long long': 'int',
  'unsigned int': 'int',
  'any': 'dynamic',
  'unrestricted double': '/* double | NaN */ dynamic',
  'unrestricted float': '/* double | NaN */ dynamic',
  'bigint': 'int',
  'object': 'dynamic',
  'byte': 'int',
  'short': 'int',
  'octet': 'int',
  'Date': 'DateTime',
  'undefined': 'Object',
  'NaN': 'Object',
  'DOMException': 'Exception',
  ///////////////////////////////////
  // Types not yet ready:
  // https://github.com/w3c/css-houdini-drafts/issues/1041
  'CSSPercentishArray': 'dynamic'
};

const typedData = {
  'ArrayBuffer': 'ByteBuffer',
  'DataView': 'ByteData',
  'Int8Array': 'Int8List',
  'Int16Array': '16nt16List',
  'Int32Array': 'Int32List',
  'Uint8Array': 'Uint8List',
  'Uint16Array': 'Uint16List',
  'Uint32Array': 'Uint32List',
  'Uint8ClampedArray': 'Uint8ClampedList',
  'Float32Array': 'Float32List',
  'Float64Array': 'Float64List',
};

const forbidden = {
  'abstract',
  'else',
  'import',
  'show',
  'as',
  'enum',
  'in',
  'static',
  'assert',
  'export',
  'interface',
  'super',
  'async',
  'extends',
  'is',
  'switch',
  'await',
  'extension',
  'late',
  'sync',
  'break',
  'external',
  'library',
  'this',
  'case',
  'factory',
  'mixin',
  'throw',
  'catch',
  'new',
  'class',
  'final',
  'try',
  'const',
  'finally',
  'on',
  'typedef',
  'continue',
  'for',
  'operator',
  'var',
  'covariant',
  'Function',
  'part',
  'void',
  'default',
  'get',
  'required',
  'while',
  'deferred',
  'hide',
  'rethrow',
  'with',
  'do',
  'if',
  'return',
  'yield',
  'dynamic',
  'implements',
  'set'
};

const bannedMembers = {
  // https://github.com/w3c/css-houdini-drafts/issues/855
  'CSSMathClamp': {'min', 'max'}
};

const bannedED = {
  // 'SVG2': {'SVGElement', 'SVGBoundingBoxOptions', 'SVGGraphicsElement',
  // 'SVGGeometryElement', 'SVGNumber', 'SVGLength', 'SVGAngle'},
  'SVG2': true,
  'user-timing-2': true,
  'web-animations-1': {'FillMode'},
  'keyboard-lock': {'Keyboard'},
  'orientation-event': {'PermissionState'}
};

// related issue: https://github.com/w3c/webref/issues/467
const bannedTypes = {
  'tr': {
    'reporting-1': {
      'CrashReportBody',
      'DeprecationReportBody',
      'InterventionReportBody'
    },
    'webxr-ar-module-1': {'XRSessionMode'},
    'webxr-gamepads-module-1': {'GamepadMappingType'},
    'DOM-Parsing': {'DOMParser'},
    ...bannedED
  },
  'ed': bannedED
};

final missing = {
  'DOM-Parsing': {
    'SupportedType': {
      'type': 'enum',
      'name': 'SupportedType',
      'values': [
        {'type': 'enum-value', 'value': 'text/html'},
        {'type': 'enum-value', 'value': 'text/xml'},
        {'type': 'enum-value', 'value': 'application/xml'},
        {'type': 'enum-value', 'value': 'application/xhtml+xml'},
        {'type': 'enum-value', 'value': 'image/svg+xml'},
      ],
      'extAttrs': []
    }
  }
};

class Spec {
  final String name;
  final String path;
  final String basename;
  final String libraryName;
  final Map<String, dynamic> json;
  final Map<String, dynamic> objects;
  final Map<String, dynamic> inheritance = {};
  final Map<String, String> typedefs = {'WindowProxy': 'Window'};
  final SpecGroup group;
  var usesTypedData = false;
  final errors = {'types': [], 'forbidden': []};

  String getDartType(Map<String, dynamic> returnTypeBlock) {
    String returnType;
    var gen = <String>[];
    var nullable = false;

    if (returnTypeBlock['idlType'] is String) {
      nullable = returnTypeBlock['nullable'] == true;
      returnType = returnTypeBlock['idlType'];
    } else if (returnTypeBlock['idlType'] is Iterable) {
      while (returnTypeBlock['idlType'] is Iterable) {
        final dyn = returnTypeBlock['idlType'].length > 1;

        if (dyn) {
          print('Must be dynamic because it is a union.\n$returnTypeBlock');
          return 'dynamic';
        }
        gen.add(returnTypeBlock['generic']);
        returnTypeBlock = returnTypeBlock['idlType'][0];
      }

      final type = returnTypeBlock['idlType'];

      nullable = returnTypeBlock['nullable'] == true;
      assert(
          type is String, 'Unknown inner type ${prettyJson(returnTypeBlock)}');

      returnType = type;
    } else {
      throw 'Unexpected block type ${returnTypeBlock['idlType']}';
    }

    String ret;

    var typedef = typedefs[returnType];

    typedef ??= group.specs
        .firstWhereOrNull((spec) => spec.typedefs.containsKey(returnType))
        ?.typedefs[returnType];

    if (typedef != null) {
      ret = typedef;
      //assert(gen.isEmpty, gen.toString());
    } else {
      if (!types.containsKey(returnType) &&
          (group.objects.contains(returnType))) {
        ret = returnType;
      } else {
        var typed = typedData[returnType];

        if (typed != null) {
          ret = typed;
          usesTypedData = true;
        } else {
          var dartType = types[returnType];

          assert(dartType != null,
          '''
Unknown dart type "$returnType".  
There are couple of reasons for this:
  - This is a simple typedef like "DOMTimeStamp" and the parser could not find it. 
If this is the case, go at the top of "tool/base.dart" and add it to the map "types".
  - There is an error in the IDL file itself and it wasn't fixed. 
If you have the info about this type, to the "missing" map at the top of 
"tool/base.dart" and include it there. If you do not, go to the "types" map and reference it as a dynamic type (this is not recommended!).   
It is also nice to start an issue so they fix the files: https://github.com/w3c/webref/issues/
''');

          if (dartType == null) {
            errors['types']!.add(returnType);
            dartType = 'dynamic';
          }

          ret = dartType;
        }
      }
    }

    if (gen.isNotEmpty) {
      gen.insert(0, ret);

      return gen.reduce(
          (val, el) => '${el == 'Promise' ? 'Promise' : 'Iterable'}<$val>');
    }

    // for sanity check ret should never be a typedef like EventHandler
    assert(ret != 'EventHandler');

    if (nullable && ret != 'dynamic') {
      ret += '?';
    }

    return ret;
  }

  String makeDoc(String? rbuf, {bool wrap = true}) {
    if (rbuf == null) {
      return '';
    }

    var buf = rbuf;
    const max = 65;
    final ret = <String>[];

    while (true) {
      final bb = buf.replaceAll('  ', ' ').replaceAll('\n\n\n', '\n');
      final len = bb.length;

      buf = bb;

      if (len == buf.length) {
        break;
      }
    }
    var lines = buf.split('\n');

    for (final line in lines) {
      if (line.length < max || !wrap) {
        ret.add(line);
        continue;
      }

      final words = line.split(RegExp(r'\s'));
      var buf = '';

      for (final word in words) {
        buf += ' ';

        if (buf.length + word.length > max) {
          ret.add(buf);
          buf = '';
        }

        buf += word;
      }

      if (buf.isNotEmpty) {
        ret.add(buf);
      }
    }

    return ret.map((r) => '/// $r').join('\n').trim();
  }

  Iterable<String> makeParams(Iterable args, {bool optionals = true}) {
    var params = <String>[];
    var optional = false;

    for (final arg in args) {
      var nopt = arg['optional'] == true || arg['variadic'] == true;
      var name = arg['name'] as String;
      var type = getDartType(arg['idlType']);

      if ((optional || nopt) &&
          !type.endsWith('?') &&
          !type.endsWith(' dynamic') &&
          type != 'dynamic') {
        type += '?';
      }

      if (forbidden.contains(name)) {
        name = 'm${name.pascalCase}';
      }

      var call = '$type $name';
      final defs = arg['default'] as Map<String, dynamic>?;

      if (defs != null) {
        var val = defs['value'];

        if (val != null) {
          final type = defs['type'];

          if (type == 'string') {
            if (arg['idlType'] is Map<String, dynamic> &&
                types[arg['idlType']['idlType']] != 'String') {
              if (arg['idlType']['idlType'] is String &&
                  val is String &&
                  val.isNotEmpty) {
                var label = val.camelCase.replaceAll('+', '');

                if (label.isEmpty) {
                  label = 'empty';
                } else if (int.tryParse(label.substring(0, 1)) != null ||
                    forbidden.contains(label)) {
                  label = 'value${label.pascalCase}';
                }
                val = '${arg['idlType']['idlType']}.$label';
              } else {
                val = null;
              }
            } else {
              val = "'$val'";
            }
          } else if (val is Iterable) {
            val = 'const [${val.join(', ')}]';
          }

          if (val != null) {
            call += ' = $val';
            nopt = true;
            //assert(optionals);
          }
        }
      }

      if (nopt && !optional && optionals) {
        call = '[$call';
        optional = true;
      }

      params.add(call);
    }

    if (optional) {
      params.add('${params.removeLast()}]');
    }

    return params;
  }

  Spec(this.group, this.path, this.basename, this.json)
      : name = basename.replaceAll('.json', ''),
        libraryName = basename.replaceAll('.json', '').snakeCase,
        objects = json['idlparsed']?['idlNames'] as Map<String, dynamic>;
}

class SpecGroup {
  final objects = <String>{};
  final specs = <Spec>[];
}

Future<SpecGroup> getSpecs() async {
  final ret = SpecGroup();
  final idls = Glob('../webIDL/info/*.json');
  final list = idls.listSync();

  for (var entity in list) {
    print('Getting spec ${entity.path}');

    final file = File(entity.path);
    final map = Map<String, dynamic>.from(
        decodeMap('Spec ${entity.path}',
            file.readAsStringSync()) as Map<String, dynamic>);
    final objs = map['idlparsed']?['idlNames'] as Map<String, dynamic>?;
    final extended =
        map['idlparsed']?['idlExtendedNames'] as Map<String, dynamic>?;

    if (objs != null) {
      if (extended != null) {
        ret.objects.addAll(extended.keys);
        // assert(!extended.keys.any((k) => objs.containsKey(k)),
        // 'There are extended stuff in the objs: ${extended.keys}\n'
        //     '${objs.keys}');
      }

      final spec = Spec(ret, entity.path, entity.basename, map);

      final missers = missing[spec.name];

      if (missers != null) {
        objs.addAll(Map<String, dynamic>.from(missers));
      }

      ret.objects.addAll(objs.keys);

      for (final name in objs.keys) {
        final obj = objs[name];
        final inh = obj['inheritance'] as String?;
        final type = obj['type'];

        if (inh?.isNotEmpty == true) {
          spec.inheritance[name] = inh;
        }

        obj['subs'] = <String>{};
        obj['mixins'] = <String, Set<String>>{};
        obj['abstract'] = obj['partial'] == true ||
            type == 'interface mixin' ||
            type == 'namespace';
      }

      ret.specs.add(spec);
    }
  }

  for (final spec in ret.specs.toList()) {
    final extended =
        spec.json['idlparsed']?['idlExtendedNames'] as Map<String, dynamic>?;

    if (extended != null) {
      for (final name in extended.keys) {
        final exts = (extended[name] as Iterable);
        final obj = spec.objects[name] ??
            ret.specs
                .firstWhereOrNull((spec) => spec.objects.containsKey(name))
                ?.objects[name];

        final members = exts.fold<List>([], (arr, el) {
          if (el['type'].toString().contains('interface') &&
              el['members'] is Iterable) {
            arr.addAll(el['members']);
          }
          return arr;
        });

        if (members.isNotEmpty) {
          if (obj == null) {
            spec.objects[name] = {
              'name': name,
              'type': 'interface',
              'members': members,
              'subs': <String>{},
              'mixins': <String, Set<String>>{}
            };
          } else {
            final oms = obj['members'] as List;
            final okMembers = members;
            // members.where((m) => !oms.any((om) => m['name'] == om['name']))

            oms.addAll(okMembers);
          }
        }

        for (final ext in exts) {
          if (ext['type'] == 'includes') {
            final target = ext['target'] as String;
            final includes = ext['includes'] as String;
            var targObj = spec.objects[target] ??
                ret.specs
                    .firstWhere((spec) => spec.objects.containsKey(target))
                    .objects[target];
            var obj = spec.objects[includes];
            Spec? ispec = spec;

            if (obj == null) {
              print('Finding $includes');
              ispec = ret.specs.firstWhereOrNull(
                  (spec) => spec.objects.containsKey(includes));

              if (ispec == null) {
                print(
                    'Skipping include of ${spec.libraryName}.$target to $includes');
                continue;
              }
              obj = ispec.objects[includes];
            }

            assert(
                obj != null, 'Couldnt find target $includes from ${spec.name}');

            print(
                'Linking ${spec.libraryName}.$target to ${ispec.libraryName}.$includes');

            final spm = (targObj['mixins'][ispec.libraryName] ??= <String>{});

            spm.add(includes);
          }
        }
      }
    }
  }

  for (final spec in ret.specs.toList()) {
    for (final name in spec.objects.keys) {
      final obj = spec.objects[name];

      if (obj != null && obj['type'] == 'typedef') {
        spec.typedefs[name] = spec.getDartType(obj['idlType']);
      }

      for (var spec in ret.specs) {
        obj['subs']
            .addAll(spec.objects.values.fold<List<String>>([], (arr, obj) {
          if (obj['inheritance'] == name) {
            arr.add(obj['name']);
          }
          return arr;
        }));
      }

      final ms = obj['members'];
      final removed = [];
      var hasConstructor = false;

      if (ms is Iterable) {
        final members = ms.toList();

        for (final member in ms) {
          final name = member['name'];
          final isc = member['type'] == 'constructor';

          hasConstructor = hasConstructor || isc;

          if (((name == null || name == '') && !isc) ||
              removed.contains(member)) {
            continue;
          }

          final same = members
              .where((mi) =>
                  mi != member &&
                  (mi['name'] == name || mi['type'] == 'constructor' && isc))
              .toList();

          if (obj['name'] == 'PasswordCredential') {
            print('SAMELEN ${same.length}, $isc');
          }

          if (same.isNotEmpty) {
            final type = member['type'];

            print('Removing clones $type of $name: ${same.length}');

            if (['attribute', 'field'].contains(type)) {
              same.forEach(members.remove);
              same.forEach(removed.add);
              member['idlType'] = {
                'type': 'attribute-type',
                'extAttrs': [],
                'generic': '',
                'nullable': false,
                'union': false,
                'idlType': 'any'
              };
            } else if (['operation', 'constructor'].contains(type)) {
              final all = [...same, member];

              all.sort((a, b) {
                return (a['arguments'] as Iterable)
                    .length
                    .compareTo((b['arguments'] as Iterable).length);
              });

              final high = all.removeLast();
              final low = all.first['arguments'].length as int;

              assert(high['arguments'].length >= all.first['arguments'].length);

              if (low < high['arguments'].length) {
                high['arguments'][max(low - 1, 0)]['optional'] = true;
              }

              all.forEach(members.remove);
              all.forEach(removed.add);
            } else {
              throw 'Unknown cloned type $type';
            }
          }
        }

        assert(obj['type'] != 'dictionary' || !hasConstructor);

        if (!hasConstructor) {
          if (obj['type'] == 'dictionary') {
            final constructor = {
              'type': 'constructor',
              'arguments': members
                  .where((m) => m['type'] == 'field')
                  .map((m) => {
                        'type': 'argument',
                        'name': m['name'],
                        'extAttrs': [],
                        'idlType': m['idlType'],
                        'default': m['default'],
                        'variadic': false
                      })
                  .toList(),
              'extAttrs': []
            };

            members.add(constructor);

            print('Adding dictionary constructor ${obj['name']}: $constructor');
          } else if (obj['abstract'] != true) {
            members
                .add({'type': 'constructor', 'arguments': [], 'extAttrs': []});
          }
        }

        obj['members'] = members;
      }

      if (removed.isNotEmpty) {
        print('RemovedMembers of $name: ${removed.map((m) => m['name'])}');
      }
    }
  }

  /// TODO: this adjustments will not exist when we change to
  /// use classes instead of JSON
  for (final spec in ret.specs.toList()) {
    final lname = spec.name.toLowerCase();

    if (spec.name == 'html') {
      // set the href getter of the HTMLHyperlinkElementUtils mixin to dynamic
      spec.objects['HTMLHyperlinkElementUtils']['members']
          .firstWhere((m) => m['name'] == 'href')['idlType']['idlType'] = 'any';
    } else if (['svg2', 'svg11'].contains(lname)) {
      final obj = spec.objects['SVGAElement'];
      final svg = obj['mixins'][lname];

      // swap the anchormixin with svgreference mixin
      (obj['mixins'] as Map<String, dynamic>).remove(lname);
      obj['mixins'][lname] = svg;
    }
  }

  return ret;
}

String prettyJson(js) {
  final enc = convert.JsonEncoder.withIndent('  ', (e) {
    print('JSON ERROR ${e.runtimeType}\n$e');
    return e;
  });

  return enc.convert(js);
}

Map decodeMap(String from, String buffer) {
  dynamic ret;

  try {
    ret = convert.json.decode(buffer);
  } catch (e, st) {
    print('Could not decode "$from" to map!\n$st');
    rethrow;
  }

  if (ret == null) {
    throw 'Could not decode "$from" to map: \n$ret';
  }

  return ret as Map;
}

Future<Iterable<Map<String, dynamic>>> getIDLs({String dir = 'ed'}) async {
  final idls = Glob('../webIDL/$dir/*.json');
  final list = idls.listSync();
  final ret = <Map<String, dynamic>>[];
  final bannedIDLs = bannedTypes[dir] ?? {};

  print('Dir $dir has ${bannedIDLs.length}');

  for (var entity in list) {
    final file = File(entity.path);
    final js = decodeMap('IDL ${entity.path}', file.readAsStringSync())
      as Map<String, dynamic>;
    final idlName = entity.basename.replaceAll('.json', '');

    if (bannedIDLs.containsKey(idlName)) {
      final types = bannedIDLs[idlName]!;

      if (types == true) {
        print('Skipping whole file $idlName');
        continue;
      }

      for (final type in types as Iterable<String>) {
        final idlNames = js['idlparsed']['idlNames'];

        assert(idlNames.containsKey(type) || dir == 'tr',
        '$dir.$idlName does not have $type. Keys: ${idlNames.keys.join(', ')}');
        print('Removing banned type $type from $dir.$idlName. '
            'Contains: ${idlNames.containsKey(type)}. ');
        idlNames.remove(type);
      }
    }

    js['path'] = entity.path;
    js['basename'] = entity.basename;
    js['name'] = entity.basename.replaceAll('.json', '');
    js['libraryName'] = (js['name'] as String).snakeCase;

    ret.add(js);
  }

  return ret;
}
