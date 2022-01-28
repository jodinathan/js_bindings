/// High Resolution Time
///
/// https://w3c.github.io/hr-time/
@JS('window')
@staticInterop
library hr_time_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
navigation_timing_2
js_self_profiling
event_timing
performance_measure_memory
user_timing_3
performance_timeline_2 */

///  The interface provides access to performance-related information
/// for the current page. It's part of the High Resolution Time API,
/// but is enhanced by the Performance Timeline API, the Navigation
/// Timing API, the User Timing API, and the Resource Timing API.
///  An object of this type can be obtained by calling the
/// [window.performance] read-only attribute.
///
///   Note: This interface and its members are available in Web
/// Workers via [WorkerGlobalScope.performance] , except where
/// indicated below. Also, note that performance markers and measures
/// are per context. If you create a mark on the main thread (or
/// other worker), you cannot see it in a worker thread, and vice
/// versa.
///
@JS()
@staticInterop
class Performance implements EventTarget {
  external factory Performance();
}

extension PropsPerformance on Performance {
  ///  Returns a [DOMHighResTimeStamp] representing the number of
  /// milliseconds elapsed since a reference instant.
  ///
  /// t = performance.now();
  ///
  /// const t0 = performance.now();
  /// doSomething();
  /// const t1 = performance.now();
  /// console.log(`Call to doSomething took ${t1 - t0} milliseconds.`);
  ///  Unlike other timing data available to JavaScript (for example Date.now),
  ///  the timestamps returned by performance.now() are not limited to
  ///  one-millisecond resolution. Instead, they represent times as floating-point numbers with
  ///  up to microsecond precision.
  ///  Also unlike Date.now(), the values returned by
  ///  performance.now() always increase at a constant rate, independent of the
  ///  system clock (which might be adjusted manually or skewed by software like NTP).
  ///  Otherwise, performance.timing.navigationStart + performance.now() will be
  ///  approximately equal to Date.now().
  ///
  external double now();

  ///  Returns the high resolution timestamp of the start time of the
  /// performance measurement.
  ///
  external double get timeOrigin;

  ///  Is a jsonizer returning a json object representing the
  /// [Performance] object.
  ///
  /// myPerf = performance.toJSON()
  ///
  /// var js;
  /// js = window.performance.toJSON();
  /// console.log("json = " + JSON.stringify(js));
  ///
  external dynamic toJSON();
  external Object clearResourceTimings();
  external Object setResourceTimingBufferSize(int maxSize);
  external EventHandlerNonNull? get onresourcetimingbufferfull;
  external set onresourcetimingbufferfull(EventHandlerNonNull? newValue);
  external PerformanceTiming get timing;
  external PerformanceNavigation get navigation;
  external Promise<Profiler> profile(ProfilerInitOptions options);
  external EventCounts get eventCounts;
  external Promise<MemoryMeasurement> measureUserAgentSpecificMemory();
  external PerformanceMark mark(String markName,
      [PerformanceMarkOptions? markOptions]);
  external Object clearMarks([String? markName]);
  external PerformanceMeasure measure(String measureName,
      [dynamic startOrMeasureOptions, String? endMark]);
  external Object clearMeasures([String? measureName]);
  external Iterable<PerformanceEntry> getEntries();
  external Iterable<PerformanceEntry> getEntriesByType(String type);
  external Iterable<PerformanceEntry> getEntriesByName(String name,
      [String? type]);
}
