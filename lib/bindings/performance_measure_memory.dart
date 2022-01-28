/// Measure Memory API
///
/// https://wicg.github.io/performance-measure-memory/
@JS('window')
@staticInterop
library performance_measure_memory;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3 */

@anonymous
@JS()
@staticInterop
class MemoryMeasurement {
  external factory MemoryMeasurement(
      {int bytes, Iterable<MemoryBreakdownEntry> breakdown});
}

extension PropsMemoryMeasurement on MemoryMeasurement {
  external int get bytes;
  external set bytes(int newValue);
  external Iterable<MemoryBreakdownEntry> get breakdown;
  external set breakdown(Iterable<MemoryBreakdownEntry> newValue);
}

@anonymous
@JS()
@staticInterop
class MemoryBreakdownEntry {
  external factory MemoryBreakdownEntry(
      {int bytes,
      Iterable<MemoryAttribution> attribution,
      Iterable<String> types});
}

extension PropsMemoryBreakdownEntry on MemoryBreakdownEntry {
  external int get bytes;
  external set bytes(int newValue);
  external Iterable<MemoryAttribution> get attribution;
  external set attribution(Iterable<MemoryAttribution> newValue);
  external Iterable<String> get types;
  external set types(Iterable<String> newValue);
}

@anonymous
@JS()
@staticInterop
class MemoryAttribution {
  external factory MemoryAttribution(
      {String url, MemoryAttributionContainer container, String scope});
}

extension PropsMemoryAttribution on MemoryAttribution {
  external String get url;
  external set url(String newValue);
  external MemoryAttributionContainer get container;
  external set container(MemoryAttributionContainer newValue);
  external String get scope;
  external set scope(String newValue);
}

@anonymous
@JS()
@staticInterop
class MemoryAttributionContainer {
  external factory MemoryAttributionContainer({String id, String src});
}

extension PropsMemoryAttributionContainer on MemoryAttributionContainer {
  external String get id;
  external set id(String newValue);
  external String get src;
  external set src(String newValue);
}
