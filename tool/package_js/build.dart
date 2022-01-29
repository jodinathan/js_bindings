import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:collection/collection.dart';
import 'package:recase/recase.dart';

import '../base.dart';

const instanceMemberTypes = {'attribute', 'field', 'operation'};
const objectMembers = {'hash', 'hashCode', 'toString'};

/// TODO: Change how we struct the spec class to also translate the underlying
/// map to classes with everything ready.
Future<void> main() async {
  print('PackageJS bindings started...');

  print('Excluding bindings folder');
  final dir = Directory('../../lib/bindings/');

  if (await dir.exists()) {
    await dir.delete(recursive: true);
  }

  final group = await getSpecs();
  final list = group.specs.toList();
  final formatter = DartFormatter();
  final cbacks = <String>[
    '@JS() library callbacks;',
    "import 'dart:typed_data';",
    "import 'package:js/js.dart';",
    "import 'all_bindings.dart';"
  ];
  final doneTypedefs = <String>{};

  print('Spec amount: ${list.length}');

  final allPath = '../../lib/bindings/all_bindings.dart';

  File(allPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(formatter.format(list.map(
            (spec) => "export '${spec.libraryName}.dart';").join('\n')));

  for (var spec in list) {
    final objs = spec.json['idlparsed']?['idlNames'] as Map<String, dynamic>;

    for (final name in objs.keys) {
      if (doneTypedefs.contains(name)) {
        print('Already defined $name');
        continue;
      }

      doneTypedefs.add(name);

      final obj = objs[name];

      if (obj['type'] == 'callback') {
        var fn = name;
        final params = spec.makeParams(obj['arguments'] as Iterable);

        if (forbidden.contains(fn)) {
          cbacks.add('@JS(\'$fn\')\n@staticInterop');
          fn = 'Fn$fn';
        }

        cbacks.add('typedef $fn = Function(${params.join(', ')});\n');
      }
    }
  }

  final p = '../../lib/bindings/callbacks.dart';
  final contents = cbacks.join('\n');

  File(p)
    ..createSync(recursive: true)
    ..writeAsStringSync(formatter.format(contents));

  for (var spec in list) {
    final name = spec.name;

    print('Spec: $name');

    final map = spec.json;
    final title = map['spec']['title'];
    final mdnURL = map['spec']['url'];
    final libraryName = spec.libraryName;
    final objs = map['idlparsed']?['idlNames'] as Map<String, dynamic>?;
    final mainLines = <String>[];
    var lines = mainLines;
    var meta = false;

    print('$name objects: ${objs?.length}');

    void js(String name) {
      lines.add('''@JS('$name')\n@staticInterop''');
    }

    if (objs != null) {
      final deps = <String>{};

      for (final name in objs.keys) {
        final item = objs[name] as Map<String, dynamic>;
        final members = item['members'] as Iterable?;
        final type = item['type'];
        final properties = <String>[];

        lines = mainLines;

        void deprecated(Map<String, dynamic> item) {
          if (item['deprecated'] == true) {
            lines.add('@deprecated');
          }
        }

        void experimental(Map<String, dynamic> item) {
          if (item['experimental'] == true) {
            meta = true;
            lines.add('@experimental');
          }
        }

        switch (type) {
          case 'enum':
            final values = item['values'] as Iterable;

            lines.add('''
            enum $name {
              ${values.map((item) {
              final val = item['value'].toString();
              var label = val.camelCase.replaceAll('+', '');

              if (label.isEmpty) {
                label = 'empty';
              } else if (int.tryParse(label.substring(0, 1)) != null ||
                  forbidden.contains(label)) {
                label = 'value${label.pascalCase}';
              }

              final ret = '''
                ${val == label || true ? '' : '@JS(\'$val\')\n'}$label
                ''';

              return ret;
            }).join(',\n')}
            }
            ''');
            break;
          case 'dictionary':
          case 'interface mixin':
          case 'interface':
          case 'namespace':
          case 'callback interface':
            final inherits = item['inheritance'];
            final doc = spec.makeDoc(item['desc']);
            final abstract = item['abstract'] == true ? 'abstract ' : '';
            dynamic parent;
            final mixin = type == 'interface mixin';
            var inheritance = '';
            var parentMixin = false;
            var parentHasCtor = false;
            var parentHasCtorWithParams = false;
            final dictionary = type == 'dictionary';
            final factory = dictionary ? 'factory ' : '';

            Iterable<String> makeParams(Map<String, dynamic> member) {
              return member['arguments'] == null
                  ? <String>[]
                  : spec.makeParams(member['arguments'] as Iterable,
                  optionals: type != 'dictionary');
            }

            Map<String, dynamic> findByType(String typeName) {
              final ret = spec.objects.values
                  .firstWhereOrNull((obj) => obj['name'] == typeName) ??
                  group.specs
                      .firstWhereOrNull(
                          (spec) => spec.objects.keys.contains(typeName))
                      ?.objects[typeName];

              if (ret == null) {
                throw 'Could not find the parent of "$name" with inheritance "$inherits"';
              }

              return ret;
            }

            if (inherits != null) {
              parent = findByType(inherits);

              var grand = parent;

              while (grand != null) {
                final parentMembers = (grand['members'] ?? []) as Iterable;
                final parentConstructors = parentMembers.where(
                        (member) => member['type'] == 'constructor');

                parentHasCtor = parentHasCtor || parentConstructors.isNotEmpty;
                parentHasCtorWithParams = parentHasCtorWithParams ||
                    parentConstructors.any(
                        (ctor) => ctor['arguments']?.isNotEmpty == true);

                final next = grand['inheritance'];

                if (name == 'RTCVideoReceiverStats') {
                  print('GrandLoop $next, ${grand.runtimeType} $grand');
                }

                if (next == null) {
                  break;
                } else {
                  grand = findByType(next);
                }
              }

              parentMixin = parent['inheritance']?.isNotEmpty != true &&
                  parent['mixins'].isEmpty &&
                  !parentHasCtor;

              inheritance = 'implements $inherits ';
            }

            if (doc.isNotEmpty) {
              lines.add(doc);
            }

            experimental(item);
            deprecated(item);

            if (dictionary) {
              lines.add('@anonymous');
            }

            final mixins = item['mixins'] as Map<String, dynamic>;

            if (mixins.isNotEmpty) {
              final glue = 'implements';
              final exts = (mixins.values as Iterable<Set<String>>)
                  .reduce((val, el) => val..addAll(el));

              if (exts.isNotEmpty) {
                print('Adding mixins($glue) to the dep $name $exts.\n'
                    'Current: $deps');
                deps.addAll(mixins.keys);

                inheritance += '${inheritance.isNotEmpty ?
                ',' : glue} ${exts.join(', ')}';
              }
            }

            lines.add('''
            @JS()
            @staticInterop
            ${'class'} $name $inheritance {
            ''');

            var addedCtor = false;

            if (members != null) {
              print('Generating class of $name.\n'
                  'Operations: ${members.where(
                      (m) => m['type'] == 'operation').map((m) => m['name'])}');

              for (final member in members) {
                final mType = member['type'];

                if (['setlike', 'iterable', 'maplike'].contains(mType)) {
                  continue;
                }

                final isInstanceMember = instanceMemberTypes.contains(mType);

                lines = isInstanceMember ?
                properties : mainLines;

                var mName = member['name'] as String?;
                var origMName = mName;
                var doc = '';
                final idlType = member['idlType'];
                final syntax = member['syntax'];
                final example = member['example'];

                if (bannedMembers[name]?.contains(mName) == true) {
                  print('Banned member $name.$mName');
                  continue;
                }

                print('Processing member $name ($mName)');

                final overrides = parent != null &&
                    mName?.isNotEmpty == true &&
                    member['special'] != 'static' &&
                    (parent['members'] as Iterable?)
                            ?.firstWhereOrNull((i) => i['name'] == mName) !=
                        null;

                doc = spec.makeDoc(member['desc']);

                if (syntax is String) {
                  doc += '\n' + spec.makeDoc(syntax, wrap: false);
                }

                if (example is String) {
                  doc += '\n' + spec.makeDoc(example, wrap: false);
                }

                if (doc.isNotEmpty) {
                  lines.add(doc);
                }

                if (overrides) {
                  lines.add('@override');
                }

                experimental(member);
                deprecated(member);

                if (mName != null) {
                  if (forbidden.contains(mName) || (isInstanceMember &&
                  objectMembers.contains(mName))) {
                    js(mName);
                    mName = 'm${mName.pascalCase}';
                  }
                }

                dynamic getCov(Iterable subs, String dartType) =>
                    subs.firstWhereOrNull((subName) {
                      final sub = spec.objects[subName] ??
                          list
                              .firstWhereOrNull(
                                  (spec) => spec.objects.containsKey(subName))
                              ?.objects[subName];
                      final members = sub['members'] as Iterable?;

                      return members?.any((member) =>
                              member['name'] == mName &&
                              dartType !=
                                  spec.getDartType(member['idlType'])) ==
                          true;
                    });

                final static = member['special'] == 'static';

                switch (mType) {
                  case 'attribute':
                  case 'field':
                    var dartType = spec.getDartType(idlType);
                    final subs = item['subs'] as Iterable;
                    var cov = getCov(subs, dartType);

                    /// TODO: Check if types has any parent in common to use
                    /// instead of dynamic
                    if (cov != null) {
                      print(
                          'Forcing dynamic because of bad attribute inheritance: $mName = $dartType. Sub: $cov');
                      dartType = 'dynamic';
                    }

                    if (static) {
                      lines.add('external static $dartType get $mName;');
                    } else {
                      lines.add(
                          '''$dartType get $mName => 
                        js_util.getProperty(this, '$origMName');''');
                    }

                    if (member['readonly'] != true) {
                      if (overrides) {
                        lines.add('@override');
                      }

                      if (static) {
                        lines.add('external static set $mName($dartType newValue);');
                      } else {
                        lines.add(
                            '''set $mName($dartType newValue) {
                          js_util.setProperty(this, '$origMName', newValue);
                          }''');
                      }
                    }
                    break;
                  case 'const':
                    lines.add(
                        '''external static ${spec.getDartType(idlType)} get $mName;''');
                    break;
                  case 'setlike':
                  case 'iterable':
                    final type = member['idlType'];

                    if (type is Iterable) {
                      if (type.length == 2) {
                        lines.add(
                            'external ${spec.getDartType(member['idlType'][1])} operator [](${spec.getDartType(member['idlType'][0])} index);');
                      } else {
                        lines.add(
                            'external ${spec.getDartType(member['idlType'][0])} operator [](int index);');
                      }
                    } else {
                      lines.add(
                          'external ${spec.getDartType(idlType)} operator [](int index);');
                    }
                    break;
                  case 'maplike':
                    lines.add(
                        'external ${spec.getDartType(member['idlType'][1])} operator [](${spec.getDartType(member['idlType'][0])} index);');
                    break;
                  case 'operation':
                  case 'constructor':
                    final isc = mType == 'constructor';
                    String fn;
                    final lparams = makeParams(member);
                    final params = lparams.join(', ');

                    if (isc) {
                      if (params.isNotEmpty) {
                        if (mixin) {
                          print(
                              'Skipping $name constructor because it is a mixin.');
                        } else {
                          fn = '\nexternal $factory$name';
                          addedCtor = true;

                          lines.add(
                              '$fn(${params.isNotEmpty ? (type == 'dictionary'
                                  ? '{$params}'
                                  : params) : ''});');
                        }
                      }
                    } else {
                      String dartType;
                      lines = properties;

                      if (mName == null || mName.isEmpty) {
                        if (member['special'] == 'stringifier') {
                          origMName = 'toString';
                          mName = 'mToString';
                          dartType = 'String';
                        } else if (['jsonifier', 'serializer']
                            .contains(member['special'])) {
                          origMName = mName = 'toJSON';
                          dartType = 'dynamic';
                        } else {
                          if (['getter', 'setter', 'deleter']
                              .contains(member['special'])) {
                            /// TODO: understand these special attributes
                            continue;
                          }
                          throw 'Not named stuff =/ $member';
                        }
                      } else {
                        assert(idlType != null || isc,
                            'No type! $type, $mType $name $mName');
                        dartType = spec.getDartType(idlType);

                        final subs = item['subs'] as Iterable;
                        var cov = getCov(subs, dartType);

                        if (cov != null) {
                          print(
                              'Forcing dynamic because of bad function inheritance: $mName = $dartType. Sub: $cov');
                          dartType = 'dynamic';
                        }

                        if (forbidden.contains(mName)) {
                          js(mName);
                          mName = 'fn$mName';
                        }
                      }

                      assert(dartType.isNotEmpty == true);

                      fn = '${static ?
                      'external static ' : ''}$dartType $mName';

                      if (static) {
                        lines.add('$fn($params);');
                      } else {
                        lines.add('''
                      $fn($params) => js_util.callMethod(this, '$origMName',
                      [${member['arguments'].map(
                                (arg) {
                              var name = arg['name'] as String;

                              if (forbidden.contains(name)) {
                                name = 'm${name.pascalCase}';
                              }

                              return name;
                            }).join(', ')}]); 
                      ''');
                      }
                    }
                    break;
                  default:
                    throw 'Unknown member type: $mType';
                }
              }
            }

            lines = mainLines;

            if (!addedCtor) {
              lines.add('external $factory$name();');
            }

            lines.add('}\n'); // /* ${prettyJson(spec.errors)} */

            if (properties.isNotEmpty) {
              lines.add('''extension Props$name on $name {
                ${properties.join('\n')}
              }''');
            }
            break;
          case 'callback':
          case 'typedef':
            break;
          default:
            throw 'Unknown type: $type';
        }
      }

      final depList =
          map['idlparsed']['externalDependencies'] as Iterable? ?? [];

      deps.addAll(depList.fold<List<String>>([], (val, dep) {
        final item = group.specs.firstWhereOrNull((item) =>
            (item.json['idlparsed']?['idlNames'] as Map?)?[dep] != null);

        if (item != null && !val.contains(item.libraryName)) {
          val.add(item.libraryName);
        }
        return val;
      }).toSet());

      for (final dspec in group.specs.toList()) {
        final idldeps =
            dspec.json['idlparsed']['dependencies'] as Map<String, dynamic>?;

        if (dspec == spec || idldeps == null) {
          continue;
        }

        for (final name in idldeps.keys) {
          final names = idldeps[name] as Iterable?;

          if (!objs.containsKey(name) || names == null) {
            continue;
          }

          for (final name in names.where((name) => !types.containsKey(name))) {
            final fspec = group.specs
                .firstWhereOrNull((spec) => spec.objects.containsKey(name));

            if (fspec == null) {
              print('Couldnt find spec of object $name');
            } else {
              deps.add(fspec.libraryName);
            }
          }
        }
      }

      lines.insert(0, '''
      /// $title
      ///
      /// $mdnURL
      @JS('window')
      @staticInterop
      library $libraryName;

      import 'dart:js_util' as js_util; 
      import 'package:js/js.dart';
      ${meta ? 'import \'package:meta/meta.dart\';' : ''}
      ${spec.usesTypedData ? 'import \'dart:typed_data\';' : ''}
      import 'callbacks.dart';
      import '../manual.dart';
      import 'all_bindings.dart';
      /* deps: ${deps.join('\n')} */
      ''');

      final p = '../../lib/bindings/$libraryName.dart';
      final contents = lines.join('\n');
      String formatted;

      print('Saving binding class ($name): $p');
      //print(contents);

      try {
        formatted = formatter.format(contents);
      } catch (e) {
        print('ERROR: Could not format file $p. Error: $e\n\n$contents');
        //formatted = contents;
        rethrow;
      }

      File(p)
        ..createSync(recursive: true)
        ..writeAsStringSync(formatted);
    }
  }
}
