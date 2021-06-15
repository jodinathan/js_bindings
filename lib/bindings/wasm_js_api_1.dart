/// WebAssembly JavaScript Interface
///
/// https://webassembly.github.io/spec/js-api/
@JS('window')
library wasm_js_api_1;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'wasm_js_api_1.dart';
import 'fetch.dart';

@anonymous
@JS()
class WebAssemblyInstantiatedSource {
  external Module get module;
  external set module(Module newValue);
  external Instance get instance;
  external set instance(Instance newValue);

  external factory WebAssemblyInstantiatedSource(
      {Module module, Instance instance});
}

@JS()
abstract class WebAssembly {
  external bool validate(dynamic bytes);
  external Promise<Module> compile(dynamic bytes);
  external Promise<WebAssemblyInstantiatedSource> instantiate(dynamic bytes,
      [dynamic importObject]);
}

@JS()
enum ImportExportKind { function, table, memory, global }

@anonymous
@JS()
class ModuleExportDescriptor {
  external String get name;
  external set name(String newValue);
  external ImportExportKind get kind;
  external set kind(ImportExportKind newValue);

  external factory ModuleExportDescriptor({String name, ImportExportKind kind});
}

@anonymous
@JS()
class ModuleImportDescriptor {
  external String get module;
  external set module(String newValue);
  external String get name;
  external set name(String newValue);
  external ImportExportKind get kind;
  external set kind(ImportExportKind newValue);

  external factory ModuleImportDescriptor(
      {String module, String name, ImportExportKind kind});
}

@JS()
class Module {
  external factory Module(dynamic bytes);
  external static Iterable<ModuleExportDescriptor> exports(Module moduleObject);
  external static Iterable<ModuleImportDescriptor> imports(Module moduleObject);
  external static Iterable<ByteBuffer> customSections(
      Module moduleObject, String sectionName);
}

@JS()
class Instance {
  external factory Instance(Module module, [dynamic importObject]);
  external dynamic get exports;
}

@anonymous
@JS()
class MemoryDescriptor {
  external int get initial;
  external set initial(int newValue);
  external int get maximum;
  external set maximum(int newValue);

  external factory MemoryDescriptor({int initial, int maximum});
}

@JS()
class Memory {
  external factory Memory(MemoryDescriptor descriptor);
  external int grow(int delta);
  external ByteBuffer get buffer;
}

@JS()
enum TableKind { externref, anyfunc }

@anonymous
@JS()
class TableDescriptor {
  external TableKind get element;
  external set element(TableKind newValue);
  external int get initial;
  external set initial(int newValue);
  external int get maximum;
  external set maximum(int newValue);

  external factory TableDescriptor(
      {TableKind element, int initial, int maximum});
}

@JS()
class Table {
  external factory Table(TableDescriptor descriptor, [dynamic value]);
  external int grow(int delta, [dynamic value]);
  @JS('get')
  external dynamic mGet(int index);
  @JS('set')
  external Object mSet(int index, [dynamic value]);
  external int get length;
}

@JS()
enum ValueType { i32, i64, f32, f64, externref, anyfunc }

@anonymous
@JS()
class GlobalDescriptor {
  external ValueType get value;
  external set value(ValueType newValue);
  external bool get mutable;
  external set mutable(bool newValue);

  external factory GlobalDescriptor({ValueType value, bool mutable = false});
}

@JS()
class Global {
  external factory Global(GlobalDescriptor descriptor, [dynamic v]);
  external dynamic valueOf();
  external dynamic get value;
  external set value(dynamic newValue);
}

@JS()
class CompileError {
  external factory CompileError();
}

@JS()
class LinkError {
  external factory LinkError();
}

@JS()
class RuntimeError {
  external factory RuntimeError();
}
