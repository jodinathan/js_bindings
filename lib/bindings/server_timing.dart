/// Server Timing
///
/// https://w3c.github.io/server-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library server_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceServerTiming {
  external PerformanceServerTiming();
}

extension PropsPerformanceServerTiming on PerformanceServerTiming {
  String get name => js_util.getProperty(this, 'name');
  double get duration => js_util.getProperty(this, 'duration');
  String get description => js_util.getProperty(this, 'description');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
