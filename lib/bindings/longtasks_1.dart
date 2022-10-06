/// Long Tasks API
///
/// https://w3c.github.io/longtasks/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library longtasks_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Long Tasks API reports instances of long
/// tasks.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceLongTaskTiming
///
///
@JS()
@staticInterop
class PerformanceLongTaskTiming implements PerformanceEntry {
  external factory PerformanceLongTaskTiming();
}

extension PropsPerformanceLongTaskTiming on PerformanceLongTaskTiming {
  Iterable<TaskAttributionTiming> get attribution =>
      js_util.getProperty(this, 'attribution');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Long Tasks API returns information about
/// the work involved in a long task and its associate frame context.
/// The frame context, also called the container, is the iframe,
/// embed or object that is being implicated, on the whole, for a
/// long task.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    TaskAttributionTiming
///
///
@experimental
@JS()
@staticInterop
class TaskAttributionTiming implements PerformanceEntry {
  external factory TaskAttributionTiming();
}

extension PropsTaskAttributionTiming on TaskAttributionTiming {
  String get containerType => js_util.getProperty(this, 'containerType');
  String get containerSrc => js_util.getProperty(this, 'containerSrc');
  String get containerId => js_util.getProperty(this, 'containerId');
  String get containerName => js_util.getProperty(this, 'containerName');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
