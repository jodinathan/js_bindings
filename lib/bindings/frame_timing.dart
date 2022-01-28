/// Frame Timing
///
/// https://wicg.github.io/frame-timing/
@JS('window')
@staticInterop
library frame_timing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2 */

@JS()
@staticInterop
class PerformanceFrameTiming implements PerformanceEntry {
  external factory PerformanceFrameTiming();
}
