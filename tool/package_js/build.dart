import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:collection/collection.dart';

import '../base.dart';

const instanceMemberTypes = {
  'attribute',
  'field',
  'operation',
  'setlike',
  'iterable',
  'maplike'
};
const objectMembers = {'hash', 'hashCode', 'toString'};

/// TODO: Change how we struct the spec class to also translate the underlying
/// map to classes with everything ready.
Future<void> main() async {
  print('PackageJS bindings started... ${Directory.current}. ${Directory('./lib').existsSync()}');

  print('Excluding bindings folder');
  final dir = Directory('./lib/bindings/');

  if (await dir.exists()) {
    await dir.delete(recursive: true);
  }

  mainGroup = await getSpecs();
  final list = mainGroup.specs.toList();
  final formatter = DartFormatter();
  final cbacks = <String>[
    '@JS() library callbacks;',
    "import 'dart:typed_data';",
    "import 'package:js/js.dart';",
    "import 'all_bindings.dart';"
  ];
  final doneTypedefs = <String>{};

  print('Spec amount: ${list.length}');

  final allPath = './lib/bindings/all_bindings.dart';

  File(allPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(formatter.format([
      "export 'callbacks.dart';",
      ...list.map((spec) => "export '${spec.libraryName}.dart';")
    ].join('\n')));

  for (var spec in list) {
    final objs = spec.json['idlparsed']?['idlNames'] as Map<String, dynamic>;

    for (final name in objs.keys) {
      if (doneTypedefs.contains(name)) {
        print('Already defined $name');
        continue;
      }

      doneTypedefs.add(name);

      final obj = objs[name];
      final types = obj['type'].toString().split(' ');
      final args = obj['arguments'] ??
          (obj['members']?.isNotEmpty == true
              ? obj['members'][0]['arguments']
              : null);

      if (types.contains('callback') &&
          (types.length == 1 || name == 'EventListener')) {
        var fn = name;
        final method = spec.makeMethod(args);
        final params = method.build();

        // we code it manually in manual.dart
        if (fn == 'EventHandlerNonNull') {
          continue;
        }

        if (forbidden.contains(fn)) {
          cbacks.add('@JS(\'$fn\')\n@staticInterop');
          fn = 'Fn$fn';
        }

        cbacks.add('typedef $fn = Function($params);\n');
      }
    }
  }

  final p = './lib/bindings/callbacks.dart';
  final contents = cbacks.join('\n');
  String formatted;

  try {
    formatted = formatter.format(contents);
  } catch (e) {
    print('2ERROR: Could not format file $p. Error: $e\n\n');
    formatted = contents;
    rethrow;
  }

  File(p)
    ..createSync(recursive: true)
    ..writeAsStringSync(formatted);

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
        final type = name == 'EventListener' ? 'callback' : item['type'];
        final properties = <String>[];

        lines = mainLines;

        void deprecated(Map<String, dynamic> item) {
          if (item['deprecated'] == true) {
            lines.add("@Deprecated('Not official in the specs')");
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
              ${values.mapIndexed((index, item) {
              final val = item['value'].toString();
              var label = val.camelCase.replaceAll('+', '');

              if (label.isEmpty) {
                label = 'empty';
              } else if (int.tryParse(label.substring(0, 1)) != null ||
                  forbidden.contains(label)) {
                label = 'value${label.pascalCase}';
              }

              final end = index == values.length - 1 ? ';' : ',';

              return "${label.replaceAll('@', '')}('$val')$end";
            }).join('\n')}
              final String value;
              static $name fromValue(String value) => values.firstWhere((e) => e.value == value);
              static Iterable<$name> fromValues(Iterable<String> values) => values.map(fromValue);
              const $name(this.value);
            }
            ''');
            break;
          case 'dictionary':
          case 'interface mixin':
          case 'interface':
          case 'namespace':
          case 'callback interface':
            final inherits = item['inheritance'];
            final doc = makeDoc(item['desc']);
            final abstract = item['abstract'] == true ? 'abstract ' : '';
            dynamic parent;
            final mixin = type == 'interface mixin';
            var inheritance = '';
            var parentMixin = false;
            var parentHasCtor = false;
            var parentHasCtorWithParams = false;
            final dictionary = type == 'dictionary';
            final factory = 'factory ';
            final maplike = members
                ?.firstWhereOrNull((member) => member['type'] == 'maplike');
            final iterablelike = members?.firstWhereOrNull(
                (member) => ['iterable', 'setlike'].contains(member['type']));

            if (maplike != null) {
              final key = spec.getDartType(maplike['idlType'][1]).toString();

              inheritance =
                  'extends JsMap<${key == 'dynamic' ? 'Object' : key}, ${spec.getDartType(maplike['idlType'][0]).toString()}>';
            } else if (iterablelike != null) {
              final type = iterablelike['idlType'];
              String key;

              if (type is Iterable) {
                if (type.length == 2) {
                  key = spec.getDartType(iterablelike['idlType'][1]).toString();
                } else {
                  key = spec.getDartType(iterablelike['idlType'][0]).toString();
                }
              } else {
                key = spec.getDartType(type).toString();
              }

              inheritance = 'extends JsArray<$key>';
            }

            Map<String, dynamic> findByType(String typeName) {
              final ret = spec.objects.values
                      .firstWhereOrNull((obj) => obj['name'] == typeName) ??
                  mainGroup.specs
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
                final parentConstructors = parentMembers
                    .where((member) => member['type'] == 'constructor');

                parentHasCtor = parentHasCtor || parentConstructors.isNotEmpty;
                parentHasCtorWithParams = parentHasCtorWithParams ||
                    parentConstructors
                        .any((ctor) => ctor['arguments']?.isNotEmpty == true);

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

                inheritance +=
                    '${inheritance.isNotEmpty ? ',' : glue} ${exts.join(', ')}';
              }
            }

            final originalName = name;
            final className = name.pascalCase;

            lines.add('''
            @JS(${className != originalName ? "'$originalName'" : ''})
            @staticInterop
            class $className $inheritance {
            ''');

            var addedCtor = false;

            if (members != null) {
              print('Generating class of $name.\n'
                  'Operations: ${members.where((m) => m['type'] == 'operation').map((m) => m['name'])}');

              for (final member in members) {
                final mType = member['type'];
                final isInstanceMember = instanceMemberTypes.contains(mType);

                if (['maplike', 'iterable', 'setlike'].contains(mType)) {
                  continue;
                }

                lines = isInstanceMember ? properties : mainLines;

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

                final overrides = !isInstanceMember &&
                    parent != null &&
                    mName?.isNotEmpty == true &&
                    member['special'] != 'static' &&
                    (parent['members'] as Iterable?)
                            ?.firstWhereOrNull((i) => i['name'] == mName) !=
                        null;

                doc = makeDoc(member['desc']);

                if (syntax is String) {
                  doc += '\n' + makeDoc(syntax, wrap: false);
                }

                if (example is String) {
                  doc += '\n' + makeDoc(example, wrap: false);
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
                  if (forbidden.contains(mName) ||
                      (isInstanceMember && objectMembers.contains(mName))) {
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
                                  spec
                                      .getDartType(member['idlType'])
                                      .fullName) ==
                          true;
                    });

                final static = member['special'] == 'static';
                final constant = mType == 'const';

                switch (mType) {
                  case 'attribute':
                  case 'field':
                  case 'const':
                    if (constant) {
                      mName = mName!.toLowerCase().camelCase;
                    } else {
                      mName = mName!.camelCase;
                    }

                    if (forbidden.contains(mName) ||
                        objectMembers.contains(mName)) {
                      mName = 'm${mName.pascalCase}';
                    }

                    var dartType = spec.getDartType(idlType);
                    final subs = item['subs'] as Iterable;
                    var cov = getCov(subs, dartType.fullName);

                    /// TODO: Check if types has any parent in common to use
                    /// instead of dynamic
                    if (cov != null) {
                      print(
                          'Forcing dynamic because of bad attribute inheritance: $mName = $dartType. Sub: $cov');
                      dartType = Spec.dynamicType;
                    }

                    if (static || constant) {
                      lines.add('''
                      ${(mName != origMName).truth("@JS('$origMName')")}
                      external static $dartType get $mName;
                      ''');
                    } else {
                      final prop =
                          "js_util.getProperty(${static || constant ? className : 'this'}, '$origMName')";
                      final async = dartType.isPromise && dartType.isEnum;

                      String mk(String prop) {
                        var jget = dartType.isPromise
                            ? 'js_util.promiseToFuture($prop)'
                            : prop;

                        if (dartType.isEnum) {
                          jget =
                              '${dartType.simpleName}.fromValue${dartType.isIterable.truth('s')}(${async.truth('await ')}$jget)';
                        }

                        return jget;
                      }

                      lines.add('$dartType get $mName${async.truth(' async')}');

                      if (dartType.isEnum && dartType.nullable) {
                        lines.add('''{
                           final ret = $prop;
                           
                           return ret == null ? null : ${mk('ret')};
                        }''');
                      } else {
                        final jget = mk(prop);

                        lines.add('=> $jget;');
                      }
                    }

                    if (member['readonly'] != true && !constant) {
                      if (overrides) {
                        lines.add('@override');
                      }

                      if (static || constant) {
                        lines.add(
                            'static set $mName(${dartType.fullName} newValue);');
                      } else {
                        lines.add('''set $mName($dartType newValue) {
                          js_util.setProperty(this, '$origMName', newValue${dartType.isEnum.truth('${dartType.nullable.truth('?')}.${dartType.isIterable ? 'map((e) => e.value)' : 'value'}')});
                          }''');
                      }
                    }
                    break;
                  case 'operation':
                  case 'constructor':
                    final isc = mType == 'constructor';
                    String fn;
                    final method = spec.makeMethod(member['arguments'] == null
                        ? []
                        : member['arguments'] as Iterable);
                    final cparams = method.build(anonymous: dictionary);

                    if (isc) {
                      if (mixin) {
                        print(
                            'Skipping $name constructor because it is a mixin.');
                      } else {
                        final params = method.build(
                            anonymous: dictionary, enumAsStrings: true);

                        if (params.isNotEmpty) {
                          fn = '$factory$className';
                          addedCtor = true;

                          final privateFactory = method.params
                              .any((param) => param.dartType.isEnum || param.defaultValue != null);

                          lines.add(
                              '\nexternal $fn${privateFactory ? '._' : ''}(${params.isNotEmpty ? (dictionary ? '{$params}' : params) : ''});');

                          if (privateFactory) {
                            lines.add(
                                '\nfactory $className(${params.isNotEmpty ? (dictionary ? '{$cparams}' : cparams) : ''}) => $className._(${method.params.map((param) => '${dictionary.truth('${param.name}: ')}${param.name}${param.ctorArgDefaultValue}').join(', ')});');
                          }
                        }
                      }
                    } else {
                      DartType dartType;
                      lines = static ? mainLines : properties;

                      if (mName == null || mName.isEmpty) {
                        if (member['special'] == 'stringifier') {
                          origMName = 'toString';
                          mName = 'mToString';
                          dartType = Spec.nnStringType;
                        } else if (['jsonifier', 'serializer']
                            .contains(member['special'])) {
                          origMName = mName = 'toJSON';
                          dartType = Spec.nnStringType;
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
                        var cov = getCov(subs, dartType.fullName);

                        if (cov != null) {
                          print(
                              'Forcing dynamic because of bad function inheritance: $mName = $dartType. Sub: $cov');
                          dartType = Spec.dynamicType;
                        }

                        if (forbidden.contains(mName)) {
                          js(mName);
                          mName = 'fn$mName';
                        }
                      }

                      assert(dartType.dartName.isNotEmpty == true);

                      fn =
                          '${static ? 'external static ' : ''}$dartType ${mName.camelCase}';

                      if (static) {
                        lines.add('$fn($cparams);');
                      } else {
                        final jsCall = '''
                      js_util.callMethod(${static ? className : 'this'}, 
                      '$origMName',
                    [
                    ${method.params.map((param) {
                          var name = param.name;

                          if (param.dartType.isCallback) {
                            name =
                                '${param.isNullable.truth('$name == null ? null : ')}allowInterop($name)';
                          } else if (param.dartType.isEnum) {
                            name =
                                '$name${param.isNullable.truth('?')}.${param.dartType.isIterable ? 'map((e) => e.value)' : 'value'}';
                          }

                          if (param.isVariadic) {
                            name = '${name}1, ${name}2, ${name}3';
                          }

                          return name;
                        }).join(', ')}
                    ])
                      ''';

                        lines.add('''
                    $fn($cparams) => ${dartType.isPromise ? 'js_util.promiseToFuture($jsCall)' : jsCall}; 
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
              lines.add('external $factory$className();');
            }

            lines.add('}\n'); // /* ${prettyJson(spec.errors)} */

            if (properties.isNotEmpty) {
              lines.add('''extension Props$className on $className {
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
        final item = mainGroup.specs.firstWhereOrNull((item) =>
            (item.json['idlparsed']?['idlNames'] as Map?)?[dep] != null);

        if (item != null && !val.contains(item.libraryName)) {
          val.add(item.libraryName);
        }
        return val;
      }).toSet());

      for (final dspec in mainGroup.specs.toList()) {
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
            final fspec = mainGroup.specs
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
      
      // ignore_for_file: unused_import
      
      @JS('self')
      @staticInterop
      library $libraryName;

      import 'dart:js_util' as js_util; 
      import 'package:js/js.dart';
      ${meta ? 'import \'package:meta/meta.dart\';' : ''}
      ${spec.usesTypedData ? 'import \'dart:typed_data\';' : ''}
      import 'package:js_bindings/js_bindings.dart';
      ''');

      final p = './lib/bindings/$libraryName.dart';
      final contents = lines.join('\n');
      String formatted;

      print('Saving binding class ($name): $p');
      //print(contents);

      try {
        formatted = formatter.format(contents);
      } catch (e) {
        print('ERROR: Could not format file $p. Error: $e\n\n');
        formatted = contents;
        rethrow;
      }

      File(p)
        ..createSync(recursive: true)
        ..writeAsStringSync(formatted);
    }
  }
}
