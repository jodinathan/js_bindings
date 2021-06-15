/// User Timing Level 3
///
/// https://w3c.github.io/user-timing/
@JS('window')
library user_timing_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'hr_time_3.dart';
import 'performance_timeline_2.dart';
import 'user_timing_2.dart';

@anonymous
@JS()
class PerformanceMarkOptions {
  external dynamic get detail;
  external set detail(dynamic newValue);
  external double get startTime;
  external set startTime(double newValue);

  external factory PerformanceMarkOptions({dynamic detail, double startTime});
}

@anonymous
@JS()
class PerformanceMeasureOptions {
  external dynamic get detail;
  external set detail(dynamic newValue);
  external dynamic get start;
  external set start(dynamic newValue);
  external double get duration;
  external set duration(double newValue);
  external dynamic get end;
  external set end(dynamic newValue);

  external factory PerformanceMeasureOptions(
      {dynamic detail, dynamic start, double duration, dynamic end});
}

///
///
///  [PerformanceMark] is an abstract interface for
/// [PerformanceEntry] objects with an [entryType] of "[mark]".
/// Entries of this type are created by calling [performance.mark()]
/// to add a named [DOMHighResTimeStamp] (the mark) to the browser's
/// performance timeline.
///
///
///  Note: This feature is available in Web Workers
///
@JS()
class PerformanceMark // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  external factory PerformanceMark(String markName,
      [PerformanceMarkOptions? markOptions]);
  external dynamic get detail;
}

///
///
///  [PerformanceMeasure] is an abstract interface for
/// [PerformanceEntry] objects with an [entryType] of "[measure]".
/// Entries of this type are created by calling
/// [performance.measure()] to add a named [DOMHighResTimeStamp] (the
/// measure) between two marks to the browser's performance timeline.
///
///
///  Note: This feature is available in Web Workers
///
@JS()
class PerformanceMeasure // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  external dynamic get detail;

  external factory PerformanceMeasure();
}
