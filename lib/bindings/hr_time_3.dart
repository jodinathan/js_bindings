/// High Resolution Time
///
/// https://w3c.github.io/hr-time/
@JS('window')
@staticInterop
library hr_time_3;

import 'dart:js_util' as js_util;
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
  external Performance();
}

extension PropsPerformance on Performance {
  ///  Returns a [double] representing the number of milliseconds
  /// elapsed since a reference instant.
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
  double now() => js_util.callMethod(this, 'now', []);

  ///  Returns the high resolution timestamp of the start time of the
  /// performance measurement.
  ///
  double get timeOrigin => js_util.getProperty(this, 'timeOrigin');

  ///  Is a jsonizer returning a json object representing the
  /// [Performance] object.
  ///
  /// myPerf = performance.toJSON()
  ///
  /// var js;
  /// js = window.performance.toJSON();
  /// console.log("json = " + JSON.stringify(js));
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  Object clearResourceTimings() =>
      js_util.callMethod(this, 'clearResourceTimings', []);

  Object setResourceTimingBufferSize(int maxSize) =>
      js_util.callMethod(this, 'setResourceTimingBufferSize', [maxSize]);

  EventHandlerNonNull? get onresourcetimingbufferfull =>
      js_util.getProperty(this, 'onresourcetimingbufferfull');
  set onresourcetimingbufferfull(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresourcetimingbufferfull', newValue);
  }

  PerformanceTiming get timing => js_util.getProperty(this, 'timing');
  PerformanceNavigation get navigation =>
      js_util.getProperty(this, 'navigation');
  Future<Profiler> profile(ProfilerInitOptions options) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'profile', [options]));

  EventCounts get eventCounts => js_util.getProperty(this, 'eventCounts');
  Future<MemoryMeasurement> measureUserAgentSpecificMemory() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'measureUserAgentSpecificMemory', []));

  PerformanceMark mark(String markName,
          [PerformanceMarkOptions? markOptions]) =>
      js_util.callMethod(this, 'mark', [markName, markOptions]);

  Object clearMarks([String? markName]) =>
      js_util.callMethod(this, 'clearMarks', [markName]);

  PerformanceMeasure measure(String measureName,
          [dynamic startOrMeasureOptions, String? endMark]) =>
      js_util.callMethod(
          this, 'measure', [measureName, startOrMeasureOptions, endMark]);

  Object clearMeasures([String? measureName]) =>
      js_util.callMethod(this, 'clearMeasures', [measureName]);

  Iterable<PerformanceEntry> getEntries() =>
      js_util.callMethod(this, 'getEntries', []);

  Iterable<PerformanceEntry> getEntriesByType(String type) =>
      js_util.callMethod(this, 'getEntriesByType', [type]);

  Iterable<PerformanceEntry> getEntriesByName(String name, [String? type]) =>
      js_util.callMethod(this, 'getEntriesByName', [name, type]);
}
