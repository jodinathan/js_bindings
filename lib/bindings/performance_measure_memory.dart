/// Measure Memory API
///
/// https://wicg.github.io/performance-measure-memory/
@JS('window')
library performance_measure_memory;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'hr_time_3.dart';

@anonymous
@JS()
class MemoryMeasurement {
  external int get bytes;
  external set bytes(int newValue);
  external Iterable<MemoryBreakdownEntry> get breakdown;
  external set breakdown(Iterable<MemoryBreakdownEntry> newValue);

  external factory MemoryMeasurement(
      {int bytes, Iterable<MemoryBreakdownEntry> breakdown});
}

@anonymous
@JS()
class MemoryBreakdownEntry {
  external int get bytes;
  external set bytes(int newValue);
  external Iterable<MemoryAttribution> get attribution;
  external set attribution(Iterable<MemoryAttribution> newValue);
  external Iterable<String> get types;
  external set types(Iterable<String> newValue);

  external factory MemoryBreakdownEntry(
      {int bytes,
      Iterable<MemoryAttribution> attribution,
      Iterable<String> types});
}

@anonymous
@JS()
class MemoryAttribution {
  external String get url;
  external set url(String newValue);
  external MemoryAttributionContainer get container;
  external set container(MemoryAttributionContainer newValue);
  external String get scope;
  external set scope(String newValue);

  external factory MemoryAttribution(
      {String url, MemoryAttributionContainer container, String scope});
}

@anonymous
@JS()
class MemoryAttributionContainer {
  external String get id;
  external set id(String newValue);
  external String get src;
  external set src(String newValue);

  external factory MemoryAttributionContainer({String id, String src});
}
