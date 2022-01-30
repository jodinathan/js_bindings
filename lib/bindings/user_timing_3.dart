/// User Timing Level 3
///
/// https://w3c.github.io/user-timing/
@JS('window')
@staticInterop
library user_timing_3;

import 'dart:js_util' as js_util;
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
  dynamic get detail => js_util.getProperty(this, 'detail');
  set detail(dynamic newValue) {
    js_util.setProperty(this, 'detail', newValue);
  }

  double get startTime => js_util.getProperty(this, 'startTime');
  set startTime(double newValue) {
    js_util.setProperty(this, 'startTime', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PerformanceMeasureOptions {
  external factory PerformanceMeasureOptions(
      {dynamic detail, dynamic start, double duration, dynamic end});
}

extension PropsPerformanceMeasureOptions on PerformanceMeasureOptions {
  dynamic get detail => js_util.getProperty(this, 'detail');
  set detail(dynamic newValue) {
    js_util.setProperty(this, 'detail', newValue);
  }

  dynamic get start => js_util.getProperty(this, 'start');
  set start(dynamic newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  double get duration => js_util.getProperty(this, 'duration');
  set duration(double newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  dynamic get end => js_util.getProperty(this, 'end');
  set end(dynamic newValue) {
    js_util.setProperty(this, 'end', newValue);
  }
}

///   is an abstract interface for [PerformanceEntry] objects with an
/// [entryType] of "[mark]". Entries of this type are created by
/// calling [performance.mark()] to add a named [double] (the mark)
/// to the browser's performance timeline.
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
  external PerformanceMark(String markName,
      [PerformanceMarkOptions? markOptions]);
}

extension PropsPerformanceMark on PerformanceMark {
  dynamic get detail => js_util.getProperty(this, 'detail');
}

///   is an abstract interface for [PerformanceEntry] objects with an
/// [entryType] of "[measure]". Entries of this type are created by
/// calling [performance.measure()] to add a named [double] (the
/// measure) between two marks to the browser's performance timeline.
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
  external PerformanceMeasure();
}

extension PropsPerformanceMeasure on PerformanceMeasure {
  ///
  ///    Contains arbitrary metadata about the measure.
  ///     This may be passed in as a property of the
  /// [performance.measure()] argument [MeasureOptions].
  ///
  ///
  dynamic get detail => js_util.getProperty(this, 'detail');
}
