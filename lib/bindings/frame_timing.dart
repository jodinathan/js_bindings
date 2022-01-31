/// Frame Timing
///
/// https://wicg.github.io/frame-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library frame_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceFrameTiming implements PerformanceEntry {
  external PerformanceFrameTiming();
}
