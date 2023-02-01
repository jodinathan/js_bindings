/// WebAssembly JavaScript Interface
///
/// https://webassembly.github.io/spec/js-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library wasm_js_api_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource(
      {required Module module, required Instance instance});
}

extension PropsWebAssemblyInstantiatedSource on WebAssemblyInstantiatedSource {
  Module get module => js_util.getProperty(this, 'module');
  set module(Module newValue) {
    js_util.setProperty(this, 'module', newValue);
  }

  Instance get instance => js_util.getProperty(this, 'instance');
  set instance(Instance newValue) {
    js_util.setProperty(this, 'instance', newValue);
  }
}

@JS()
@staticInterop
class WebAssembly {
  external factory WebAssembly();
}

extension PropsWebAssembly on WebAssembly {
  bool validate(dynamic bytes) => js_util.callMethod(this, 'validate', [bytes]);

  Future<Module> compile(dynamic bytes) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'compile', [bytes]));

  Future<WebAssemblyInstantiatedSource> instantiate(dynamic bytes,
          [dynamic importObject]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'instantiate', [bytes, importObject]));
}

enum ImportExportKind {
  function('function'),
  table('table'),
  memory('memory'),
  global('global');

  final String value;
  static ImportExportKind fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ImportExportKind> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ImportExportKind(this.value);
}

@anonymous
@JS()
@staticInterop
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor._(
      {required String name, required String kind});

  factory ModuleExportDescriptor(
          {required String name, required ImportExportKind kind}) =>
      ModuleExportDescriptor._(name: name, kind: kind.value);
}

extension PropsModuleExportDescriptor on ModuleExportDescriptor {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ImportExportKind get kind =>
      ImportExportKind.fromValue(js_util.getProperty(this, 'kind'));
  set kind(ImportExportKind newValue) {
    js_util.setProperty(this, 'kind', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor._(
      {required String module, required String name, required String kind});

  factory ModuleImportDescriptor(
          {required String module,
          required String name,
          required ImportExportKind kind}) =>
      ModuleImportDescriptor._(module: module, name: name, kind: kind.value);
}

extension PropsModuleImportDescriptor on ModuleImportDescriptor {
  String get module => js_util.getProperty(this, 'module');
  set module(String newValue) {
    js_util.setProperty(this, 'module', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ImportExportKind get kind =>
      ImportExportKind.fromValue(js_util.getProperty(this, 'kind'));
  set kind(ImportExportKind newValue) {
    js_util.setProperty(this, 'kind', newValue.value);
  }
}

@JS()
@staticInterop
class Module {
  external factory Module(dynamic bytes);
  external static Iterable<ModuleExportDescriptor> exports(Module moduleObject);
  external static Iterable<ModuleImportDescriptor> imports(Module moduleObject);
  external static Iterable<ByteBuffer> customSections(
      Module moduleObject, String sectionName);
}

@JS()
@staticInterop
class Instance {
  external factory Instance(Module module, [dynamic importObject]);
}

extension PropsInstance on Instance {
  dynamic get exports => js_util.getProperty(this, 'exports');
}

@anonymous
@JS()
@staticInterop
class MemoryDescriptor {
  external factory MemoryDescriptor({required int initial, int? maximum});
}

extension PropsMemoryDescriptor on MemoryDescriptor {
  int get initial => js_util.getProperty(this, 'initial');
  set initial(int newValue) {
    js_util.setProperty(this, 'initial', newValue);
  }

  int get maximum => js_util.getProperty(this, 'maximum');
  set maximum(int newValue) {
    js_util.setProperty(this, 'maximum', newValue);
  }
}

@JS()
@staticInterop
class Memory {
  external factory Memory(MemoryDescriptor descriptor);
}

extension PropsMemory on Memory {
  int grow(int delta) => js_util.callMethod(this, 'grow', [delta]);

  ByteBuffer get buffer => js_util.getProperty(this, 'buffer');
}

enum TableKind {
  externref('externref'),
  anyfunc('anyfunc');

  final String value;
  static TableKind fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<TableKind> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const TableKind(this.value);
}

@anonymous
@JS()
@staticInterop
class TableDescriptor {
  external factory TableDescriptor._(
      {required String element, required int initial, int? maximum});

  factory TableDescriptor(
          {required TableKind element, required int initial, int? maximum}) =>
      TableDescriptor._(
          element: element.value,
          initial: initial,
          maximum: maximum ?? undefined);
}

extension PropsTableDescriptor on TableDescriptor {
  TableKind get element =>
      TableKind.fromValue(js_util.getProperty(this, 'element'));
  set element(TableKind newValue) {
    js_util.setProperty(this, 'element', newValue.value);
  }

  int get initial => js_util.getProperty(this, 'initial');
  set initial(int newValue) {
    js_util.setProperty(this, 'initial', newValue);
  }

  int get maximum => js_util.getProperty(this, 'maximum');
  set maximum(int newValue) {
    js_util.setProperty(this, 'maximum', newValue);
  }
}

@JS()
@staticInterop
class Table {
  external factory Table(TableDescriptor descriptor, [dynamic value]);
}

extension PropsTable on Table {
  int grow(int delta, [dynamic value]) =>
      js_util.callMethod(this, 'grow', [delta, value]);

  dynamic get(int index) => js_util.callMethod(this, 'get', [index]);

  void set(int index, [dynamic value]) =>
      js_util.callMethod(this, 'set', [index, value]);

  int get length => js_util.getProperty(this, 'length');
}

enum ValueType {
  i32('i32'),
  i64('i64'),
  f32('f32'),
  f64('f64'),
  v128('v128'),
  externref('externref'),
  anyfunc('anyfunc');

  final String value;
  static ValueType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ValueType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ValueType(this.value);
}

@anonymous
@JS()
@staticInterop
class GlobalDescriptor {
  external factory GlobalDescriptor._(
      {required String value, bool? mutable = false});

  factory GlobalDescriptor({required ValueType value, bool? mutable = false}) =>
      GlobalDescriptor._(value: value.value, mutable: mutable ?? undefined);
}

extension PropsGlobalDescriptor on GlobalDescriptor {
  ValueType get value =>
      ValueType.fromValue(js_util.getProperty(this, 'value'));
  set value(ValueType newValue) {
    js_util.setProperty(this, 'value', newValue.value);
  }

  bool get mutable => js_util.getProperty(this, 'mutable');
  set mutable(bool newValue) {
    js_util.setProperty(this, 'mutable', newValue);
  }
}

@JS()
@staticInterop
class Global {
  external factory Global(GlobalDescriptor descriptor, [dynamic v]);
}

extension PropsGlobal on Global {
  dynamic valueOf() => js_util.callMethod(this, 'valueOf', []);

  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}
