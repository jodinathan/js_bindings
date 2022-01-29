/// Paint Timing 1
///
/// https://w3c.github.io/paint-timing/
@JS('window')
@staticInterop
library paint_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2 */

///  The interface of the Paint Timing API provides timing
/// information about "paint" (also called "render") operations
/// during web page construction. "Paint" refers to conversion of the
/// render tree to on-screen pixels.
///  An application can register a [PerformanceObserver] for
/// "[paint]" [performance entry types] and the observer can retrieve
/// the times that paint events occur. Use this information to help
/// identify areas that take too long to provide a good user
/// experience.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformancePaintTiming
///
///
@JS()
@staticInterop
class PerformancePaintTiming implements PerformanceEntry {
  external PerformancePaintTiming();
}
