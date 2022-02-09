/// Paint Timing 1
///
/// https://w3c.github.io/paint-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library paint_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformancePaintTiming implements PerformanceEntry {
  external PerformancePaintTiming();
}
