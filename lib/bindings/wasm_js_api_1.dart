/// WebAssembly JavaScript Interface
///
/// https://webassembly.github.io/spec/js-api/
@JS('window')
@staticInterop
library wasm_js_api_1;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: wasm_js_api_1
fetch */

@anonymous
@JS()
@staticInterop
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource(
      {Module module, Instance instance});
}

extension PropsWebAssemblyInstantiatedSource on WebAssemblyInstantiatedSource {
  external Module get module;
  external set module(Module newValue);
  external Instance get instance;
  external set instance(Instance newValue);
}

@JS()
@staticInterop
class WebAssembly {
  external factory WebAssembly();
}

extension PropsWebAssembly on WebAssembly {
  external bool validate(dynamic bytes);
  external Promise<Module> compile(dynamic bytes);
  external Promise<WebAssemblyInstantiatedSource> instantiate(dynamic bytes,
      [dynamic importObject]);
}

enum ImportExportKind { function, table, memory, global }

@anonymous
@JS()
@staticInterop
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor({String name, ImportExportKind kind});
}

extension PropsModuleExportDescriptor on ModuleExportDescriptor {
  external String get name;
  external set name(String newValue);
  external ImportExportKind get kind;
  external set kind(ImportExportKind newValue);
}

@anonymous
@JS()
@staticInterop
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor(
      {String module, String name, ImportExportKind kind});
}

extension PropsModuleImportDescriptor on ModuleImportDescriptor {
  external String get module;
  external set module(String newValue);
  external String get name;
  external set name(String newValue);
  external ImportExportKind get kind;
  external set kind(ImportExportKind newValue);
}

@JS()
@staticInterop
class Module {
  external factory Module(dynamic bytes);
}

extension PropsModule on Module {
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
  external dynamic get exports;
}

@anonymous
@JS()
@staticInterop
class MemoryDescriptor {
  external factory MemoryDescriptor({int initial, int maximum});
}

extension PropsMemoryDescriptor on MemoryDescriptor {
  external int get initial;
  external set initial(int newValue);
  external int get maximum;
  external set maximum(int newValue);
}

@JS()
@staticInterop
class Memory {
  external factory Memory(MemoryDescriptor descriptor);
}

extension PropsMemory on Memory {
  external int grow(int delta);
  external ByteBuffer get buffer;
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
  external TableKind get element;
  external set element(TableKind newValue);
  external int get initial;
  external set initial(int newValue);
  external int get maximum;
  external set maximum(int newValue);
}

@JS()
@staticInterop
class Table {
  external factory Table(TableDescriptor descriptor, [dynamic value]);
}

extension PropsTable on Table {
  external int grow(int delta, [dynamic value]);
  @JS('get')
  @staticInterop
  external dynamic mGet(int index);
  @JS('set')
  @staticInterop
  external Object mSet(int index, [dynamic value]);
  external int get length;
}

enum ValueType { i32, i64, f32, f64, externref, anyfunc }

@anonymous
@JS()
@staticInterop
class GlobalDescriptor {
  external factory GlobalDescriptor({ValueType value, bool mutable = false});
}

extension PropsGlobalDescriptor on GlobalDescriptor {
  external ValueType get value;
  external set value(ValueType newValue);
  external bool get mutable;
  external set mutable(bool newValue);
}

@JS()
@staticInterop
class Global {
  external factory Global(GlobalDescriptor descriptor, [dynamic v]);
}

extension PropsGlobal on Global {
  external dynamic valueOf();
  external dynamic get value;
  external set value(dynamic newValue);
}

@JS()
@staticInterop
class CompileError {
  external factory CompileError();
}

@JS()
@staticInterop
class LinkError {
  external factory LinkError();
}

@JS()
@staticInterop
class RuntimeError {
  external factory RuntimeError();
}
