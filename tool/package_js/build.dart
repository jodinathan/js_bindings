import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:collection/collection.dart';

import '../base.dart';

/// TODO: Change how we struct the spec class to also translate the underlying
/// map to classes with everything ready.
Future<void> main() async {
  print('PackageJS bindings started...');

  final group = await getSpecs();
  final list = group.specs.toList();
  final formatter = DartFormatter();
  final cbacks = <String>[
    '@JS() library callbacks;',
    "import 'dart:typed_data';",
    "import 'package:js/js.dart';"
  ];

  print('Spec amount: ${list.length}');

  // TODO: make so it is not needed to import all files in the callbacks file
  for (var spec in list) {
    final objs = spec.json['idlparsed']?['idlNames'] as Map<String, dynamic>;

    cbacks.insert(1, "import '${spec.libraryName}.dart';");

    for (final name in objs.keys) {
      final obj = objs[name];

      if (obj['type'] == 'callback') {
        var fn = name;
        final params = spec.makeParams(obj['arguments'] as Iterable);

        if (forbidden.contains(fn)) {
          cbacks.add('@JS(\'$fn\')');
          fn = 'fn$fn';
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
    final lines = <String>[];
    var meta = false;

    print('$name objects: ${objs?.length}');

    void js(String name) {
      lines.add('''@JS('$name')''');
    }

    if (objs != null) {
      final deps = <String>{};

      for (final name in objs.keys) {
        final item = objs[name] as Map<String, dynamic>;
        final members = item['members'] as Iterable?;
        final type = item['type'];

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
            @JS()
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
                ${val == label ? '' : '@JS(\'$val\')\n'}$label
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

            if (inherits != null) {
              parent = spec.objects.values
                      .firstWhereOrNull((obj) => obj['name'] == inherits) ??
                  group.specs
                      .firstWhereOrNull(
                          (spec) => spec.objects.keys.contains(inherits))
                      ?.objects[inherits];
              parentMixin = parent['inheritance']?.isNotEmpty != true &&
                  parent['mixins'].isEmpty;

              inheritance =
                  '// ${parent['inheritance']} -> ${parent['mixins']} -> ${parent['name']} \n'
                  '${parentMixin ? 'with' : 'extends'} $inherits ';
            }

            if (doc.isNotEmpty) {
              lines.add(doc);
            }

            experimental(item);
            deprecated(item);

            if (type == 'dictionary') {
              lines.add('@anonymous');
            }

            final mixins = item['mixins'] as Map<String, dynamic>;

            if (mixins.isNotEmpty) {
              final glue = mixin ? 'on' : 'with';
              final exts = (mixins.values as Iterable<Set<String>>)
                  .reduce((val, el) => val..addAll(el));

              if (exts.isNotEmpty) {
                print('Adding mixins($glue) to the dep $name $exts.\n'
                    'Current: $deps');
                deps.addAll(mixins.keys);

                inheritance += '${parentMixin ? ',' : glue} ${exts.join(', ')}';
              }
            }

            lines.add('''
            @JS()
            ${mixin ? 'mixin' : '$abstract class'} $name $inheritance {
            ''');

            if (members != null) {
              print('Generating class of $name.\n'
                  'Operations: ${members.where((m) => m['type'] == 'operation').map((m) => m['name'])}');
              for (final member in members) {
                final mType = member['type'];
                var mName = member['name'] as String?;
                var doc = '';
                final idlType = member['idlType'];
                final syntax = member['syntax'];
                final example = member['example'];

                if (bannedMembers[name]?.contains(mName) == true) {
                  print('Banned member $name.$mName');
                  continue;
                }

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

                if (mName != null && forbidden.contains(mName)) {
                  js(mName);
                  mName = 'm${mName.pascalCase}';
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

                String specStatic() =>
                    member['special'] == 'static' ? 'static ' : '';

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

                    lines.add(
                        '''external ${specStatic()}$dartType get $mName;''');

                    if (member['readonly'] != true) {
                      if (overrides) {
                        lines.add('@override');
                      }
                      lines.add(
                          '''external set $mName(${cov != null ? 'covariant ' : ''}$dartType newValue);''');
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
                    final lparams = member['arguments'] == null
                        ? <String>[]
                        : spec.makeParams(member['arguments'] as Iterable,
                            optionals: type != 'dictionary');
                    final params = lparams.join(', ');

                    if (isc) {
                      fn = '\nexternal factory $name';

                      lines.add(
                          '$fn(${params.isNotEmpty ? (type == 'dictionary' ? '{$params}' : params) : ''});');
                    } else {
                      String dartType;

                      if (mName == null || mName.isEmpty) {
                        if (member['special'] == 'stringifier') {
                          lines.add('@override');
                          mName = 'toString';
                          dartType = 'String';
                        } else if (['jsonifier', 'serializer']
                            .contains(member['special'])) {
                          mName = 'toJSON';
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

                      fn = 'external ${specStatic()}$dartType $mName';

                      lines.add('$fn($params);');
                    }
                    break;
                  default:
                    throw 'Unknown member type: $mType';
                }
              }
            }

            lines.add('}\n'); // /* ${prettyJson(spec.errors)} */
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
      library $libraryName;

      import 'package:js/js.dart';
      ${meta ? 'import \'package:meta/meta.dart\';' : ''}
      ${spec.usesTypedData ? 'import \'dart:typed_data\';' : ''}
      import 'callbacks.dart';
      import '../manual.dart';
      ${deps.isNotEmpty ? deps.map((dep) => 'import \'$dep.dart\';').join('\n') : ''}
      ''');

      final p = '../../lib/bindings/$libraryName.dart';
      final contents = lines.join('\n');

      print('Saving binding class ($name): $p');
      //print(contents);

      File(p)
        ..createSync(recursive: true)
        ..writeAsStringSync(formatter.format(contents));
    }
  }
}
