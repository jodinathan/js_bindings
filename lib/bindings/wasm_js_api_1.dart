/// WebAssembly JavaScript Interface
///
/// https://webassembly.github.io/spec/js-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library wasm_js_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource(
      {Module module, Instance instance});
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
  external WebAssembly();
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

enum ImportExportKind { function, table, memory, global }

@anonymous
@JS()
@staticInterop
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor({String name, ImportExportKind kind});
}

extension PropsModuleExportDescriptor on ModuleExportDescriptor {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ImportExportKind get kind => js_util.getProperty(this, 'kind');
  set kind(ImportExportKind newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor(
      {String module, String name, ImportExportKind kind});
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

  ImportExportKind get kind => js_util.getProperty(this, 'kind');
  set kind(ImportExportKind newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }
}

@JS()
@staticInterop
class Module {
  external Module(dynamic bytes);
}

extension PropsModule on Module {
  static Iterable<ModuleExportDescriptor> exports(Module moduleObject) =>
      js_util.callMethod(Module, 'exports', [moduleObject]);

  static Iterable<ModuleImportDescriptor> imports(Module moduleObject) =>
      js_util.callMethod(Module, 'imports', [moduleObject]);

  static Iterable<ByteBuffer> customSections(
          Module moduleObject, String sectionName) =>
      js_util.callMethod(Module, 'customSections', [moduleObject, sectionName]);
}

@JS()
@staticInterop
class Instance {
  external Instance(Module module, [dynamic importObject]);
}

extension PropsInstance on Instance {
  dynamic get exports => js_util.getProperty(this, 'exports');
}

@anonymous
@JS()
@staticInterop
class MemoryDescriptor {
  external factory MemoryDescriptor({int initial, int maximum});
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
  external Memory(MemoryDescriptor descriptor);
}

extension PropsMemory on Memory {
  int grow(int delta) => js_util.callMethod(this, 'grow', [delta]);

  ByteBuffer get buffer => js_util.getProperty(this, 'buffer');
}

enum TableKind { externref, anyfunc }

@anonymous
@JS()
@staticInterop
class TableDescriptor {
  external factory TableDescriptor(
      {TableKind element, int initial, int maximum});
}

extension PropsTableDescriptor on TableDescriptor {
  TableKind get element => js_util.getProperty(this, 'element');
  set element(TableKind newValue) {
    js_util.setProperty(this, 'element', newValue);
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
  external Table(TableDescriptor descriptor, [dynamic value]);
}

extension PropsTable on Table {
  int grow(int delta, [dynamic value]) =>
      js_util.callMethod(this, 'grow', [delta, value]);

  @JS('get')
  @staticInterop
  dynamic mGet(int index) => js_util.callMethod(this, 'get', [index]);

  @JS('set')
  @staticInterop
  Object mSet(int index, [dynamic value]) =>
      js_util.callMethod(this, 'set', [index, value]);

  int get length => js_util.getProperty(this, 'length');
}

enum ValueType { i32, i64, f32, f64, externref, anyfunc }

@anonymous
@JS()
@staticInterop
class GlobalDescriptor {
  external factory GlobalDescriptor({ValueType value, bool mutable = false});
}

extension PropsGlobalDescriptor on GlobalDescriptor {
  ValueType get value => js_util.getProperty(this, 'value');
  set value(ValueType newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get mutable => js_util.getProperty(this, 'mutable');
  set mutable(bool newValue) {
    js_util.setProperty(this, 'mutable', newValue);
  }
}

@JS()
@staticInterop
class Global {
  external Global(GlobalDescriptor descriptor, [dynamic v]);
}

extension PropsGlobal on Global {
  dynamic valueOf() => js_util.callMethod(this, 'valueOf', []);

  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class CompileError {
  external CompileError();
}

@JS()
@staticInterop
class LinkError {
  external LinkError();
}

@JS()
@staticInterop
class RuntimeError {
  external RuntimeError();
}
