/// Frame Timing
///
/// https://wicg.github.io/frame-timing/
@JS('window')
library frame_timing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///   is an abstract interface that provides frame timing data about
/// the browser's event loop. A frame represents the amount of work a
/// browser does in one event loop such as processing DOM events,
/// resizing, scrolling, rendering, CSS animations, etc.. A frame
/// rate of 60fps (frames per second) for a 60Hz refresh rate is the
/// target for a good responsive user experience. This means the
/// browser should process a frame in about 16.7ms.
///
///  An application can register a [PerformanceObserver] for
/// "[frame]" [performance entry types] and the observer can retrieve
/// data about the duration of each frame event. This information can
/// be used to help identify areas that take too long to provide a
/// good user experience.
///
///
@JS()
class PerformanceFrameTiming // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  external factory PerformanceFrameTiming();
}
