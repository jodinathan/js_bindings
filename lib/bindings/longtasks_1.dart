/// Long Tasks API
///
/// https://w3c.github.io/longtasks/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library longtasks_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceLongTaskTiming implements PerformanceEntry {
  external PerformanceLongTaskTiming();
}

extension PropsPerformanceLongTaskTiming on PerformanceLongTaskTiming {
  Iterable<TaskAttributionTiming> get attribution =>
      js_util.getProperty(this, 'attribution');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class TaskAttributionTiming implements PerformanceEntry {
  external TaskAttributionTiming();
}

extension PropsTaskAttributionTiming on TaskAttributionTiming {
  String get containerType => js_util.getProperty(this, 'containerType');
  String get containerSrc => js_util.getProperty(this, 'containerSrc');
  String get containerId => js_util.getProperty(this, 'containerId');
  String get containerName => js_util.getProperty(this, 'containerName');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
