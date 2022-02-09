/// User Timing Level 3
///
/// https://w3c.github.io/user-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library user_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class PerformanceMarkOptions {
  external factory PerformanceMarkOptions(
      {dynamic detail, required double startTime});
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
      {dynamic detail, dynamic start, required double duration, dynamic end});
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

@JS()
@staticInterop
class PerformanceMark implements PerformanceEntry {
  external PerformanceMark(String markName,
      [PerformanceMarkOptions? markOptions]);
}

extension PropsPerformanceMark on PerformanceMark {
  dynamic get detail => js_util.getProperty(this, 'detail');
}

@JS()
@staticInterop
class PerformanceMeasure implements PerformanceEntry {
  external PerformanceMeasure();
}

extension PropsPerformanceMeasure on PerformanceMeasure {
  dynamic get detail => js_util.getProperty(this, 'detail');
}
