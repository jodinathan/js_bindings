/// Measure Memory API
///
/// https://wicg.github.io/performance-measure-memory/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library performance_measure_memory;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class MemoryMeasurement {
  external factory MemoryMeasurement(
      {required int bytes, required Iterable<MemoryBreakdownEntry> breakdown});
}

extension PropsMemoryMeasurement on MemoryMeasurement {
  int get bytes => js_util.getProperty(this, 'bytes');
  set bytes(int newValue) {
    js_util.setProperty(this, 'bytes', newValue);
  }

  Iterable<MemoryBreakdownEntry> get breakdown =>
      js_util.getProperty(this, 'breakdown');
  set breakdown(Iterable<MemoryBreakdownEntry> newValue) {
    js_util.setProperty(this, 'breakdown', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MemoryBreakdownEntry {
  external factory MemoryBreakdownEntry(
      {required int bytes,
      required Iterable<MemoryAttribution> attribution,
      required Iterable<String> types});
}

extension PropsMemoryBreakdownEntry on MemoryBreakdownEntry {
  int get bytes => js_util.getProperty(this, 'bytes');
  set bytes(int newValue) {
    js_util.setProperty(this, 'bytes', newValue);
  }

  Iterable<MemoryAttribution> get attribution =>
      js_util.getProperty(this, 'attribution');
  set attribution(Iterable<MemoryAttribution> newValue) {
    js_util.setProperty(this, 'attribution', newValue);
  }

  Iterable<String> get types => js_util.getProperty(this, 'types');
  set types(Iterable<String> newValue) {
    js_util.setProperty(this, 'types', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MemoryAttribution {
  external factory MemoryAttribution(
      {required String url,
      required MemoryAttributionContainer container,
      required String scope});
}

extension PropsMemoryAttribution on MemoryAttribution {
  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  MemoryAttributionContainer get container =>
      js_util.getProperty(this, 'container');
  set container(MemoryAttributionContainer newValue) {
    js_util.setProperty(this, 'container', newValue);
  }

  String get scope => js_util.getProperty(this, 'scope');
  set scope(String newValue) {
    js_util.setProperty(this, 'scope', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MemoryAttributionContainer {
  external factory MemoryAttributionContainer(
      {required String id, required String src});
}

extension PropsMemoryAttributionContainer on MemoryAttributionContainer {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }
}
