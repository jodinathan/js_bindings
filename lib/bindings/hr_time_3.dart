/// High Resolution Time
///
/// https://w3c.github.io/hr-time/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library hr_time_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
///
///
///
///    EventTarget
///
///
///
///
///
///    Performance
///
///
@JS()
@staticInterop
class Performance implements EventTarget {
  external factory Performance();
}

extension PropsPerformance on Performance {
  double now() => js_util.callMethod(this, 'now', []);

  double get timeOrigin => js_util.getProperty(this, 'timeOrigin');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  EventCounts get eventCounts => js_util.getProperty(this, 'eventCounts');
  InteractionCounts get interactionCounts =>
      js_util.getProperty(this, 'interactionCounts');
  Iterable<PerformanceEntry> getEntries() =>
      js_util.callMethod(this, 'getEntries', []);

  Iterable<PerformanceEntry> getEntriesByType(String type) =>
      js_util.callMethod(this, 'getEntriesByType', [type]);

  Iterable<PerformanceEntry> getEntriesByName(String name, [String? type]) =>
      js_util.callMethod(this, 'getEntriesByName', [name, type]);

  void clearResourceTimings() =>
      js_util.callMethod(this, 'clearResourceTimings', []);

  void setResourceTimingBufferSize(int maxSize) =>
      js_util.callMethod(this, 'setResourceTimingBufferSize', [maxSize]);

  EventHandlerNonNull? get onresourcetimingbufferfull =>
      js_util.getProperty(this, 'onresourcetimingbufferfull');
  set onresourcetimingbufferfull(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresourcetimingbufferfull', newValue);
  }

  Future<MemoryMeasurement> measureUserAgentSpecificMemory() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'measureUserAgentSpecificMemory', []));

  PerformanceMark mark(String markName,
          [PerformanceMarkOptions? markOptions]) =>
      js_util.callMethod(this, 'mark', [markName, markOptions]);

  void clearMarks([String? markName]) =>
      js_util.callMethod(this, 'clearMarks', [markName]);

  PerformanceMeasure measure(String measureName,
          [dynamic startOrMeasureOptions, String? endMark]) =>
      js_util.callMethod(
          this, 'measure', [measureName, startOrMeasureOptions, endMark]);

  void clearMeasures([String? measureName]) =>
      js_util.callMethod(this, 'clearMeasures', [measureName]);

  PerformanceTiming get timing => js_util.getProperty(this, 'timing');
  PerformanceNavigation get navigation =>
      js_util.getProperty(this, 'navigation');
}
