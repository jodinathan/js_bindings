/// Paint Timing 1
///
/// https://w3c.github.io/paint-timing/
@JS('window')
library paint_timing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';

///
///
///  The interface of the Paint Timing API provides timing
/// information about "paint" (also called "render") operations
/// during web page construction. "Paint" refers to conversion of the
/// render tree to on-screen pixels.
///
///  An application can register a [PerformanceObserver] for
/// "[paint]" [performance entry types] and the observer can retrieve
/// the times that paint events occur. Use this information to help
/// identify areas that take too long to provide a good user
/// experience.
///
///
@JS()
class PerformancePaintTiming // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  external factory PerformancePaintTiming();
}
