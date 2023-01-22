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

///  The interface provides timing information about "paint" (also
/// called "render") operations during web page construction. "Paint"
/// refers to conversion of the render tree to on-screen pixels.
/// There are two key paint moments this API provides:
///
///   First paint (FP): Time when anything is rendered. Note that the
/// marking of the first paint is optional, not all user agents
/// report it.
///   First contentful paint (FCP): Time when the first bit of DOM
/// text or image content is rendered.
///
///  A third key paint moment is provided by the
/// [LargestContentfulPaint] API:
///
///   Largest contentful paint (LCP): Render time of the largest
/// image or text block visible within the viewport, recorded from
/// when the page first begins to load.
///
///  The data this API provides helps you minimize the time that
/// users have to wait before they can see the site's content start
/// to appear. Decreasing the time until these key paint moments make
/// sites feel more responsive, performant, and engaging for your
/// users.
///  Like other Performance APIs, this API extends
/// [PerformanceEntry].
///
///
///
///    PerformanceEntry
///
///
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
  external factory PerformancePaintTiming();
}
