/// User Timing Level 3
///
/// https://w3c.github.io/user-timing/
@JS('window')
@staticInterop
library user_timing_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3
performance_timeline_2 */

@anonymous
@JS()
@staticInterop
class PerformanceMarkOptions {
  external factory PerformanceMarkOptions({dynamic detail, double startTime});
}

extension PropsPerformanceMarkOptions on PerformanceMarkOptions {
  external dynamic get detail;
  external set detail(dynamic newValue);
  external double get startTime;
  external set startTime(double newValue);
}

@anonymous
@JS()
@staticInterop
class PerformanceMeasureOptions {
  external factory PerformanceMeasureOptions(
      {dynamic detail, dynamic start, double duration, dynamic end});
}

extension PropsPerformanceMeasureOptions on PerformanceMeasureOptions {
  external dynamic get detail;
  external set detail(dynamic newValue);
  external dynamic get start;
  external set start(dynamic newValue);
  external double get duration;
  external set duration(double newValue);
  external dynamic get end;
  external set end(dynamic newValue);
}

///   is an abstract interface for [PerformanceEntry] objects with an
/// [entryType] of "[mark]". Entries of this type are created by
/// calling [performance.mark()] to add a named [DOMHighResTimeStamp]
/// (the mark) to the browser's performance timeline.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceMark
///
///
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class PerformanceMark implements PerformanceEntry {
  external factory PerformanceMark(String markName,
      [PerformanceMarkOptions? markOptions]);
}

extension PropsPerformanceMark on PerformanceMark {
  external dynamic get detail;
}

///   is an abstract interface for [PerformanceEntry] objects with an
/// [entryType] of "[measure]". Entries of this type are created by
/// calling [performance.measure()] to add a named
/// [DOMHighResTimeStamp] (the measure) between two marks to the
/// browser's performance timeline.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceMeasure
///
///
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class PerformanceMeasure implements PerformanceEntry {
  external factory PerformanceMeasure();
}

extension PropsPerformanceMeasure on PerformanceMeasure {
  ///
  ///    Contains arbitrary metadata about the measure.
  ///     This may be passed in as a property of the
  /// [performance.measure()] argument [MeasureOptions].
  ///
  ///
  external dynamic get detail;
}
