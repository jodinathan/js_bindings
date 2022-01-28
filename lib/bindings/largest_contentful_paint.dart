/// Largest Contentful Paint
///
/// https://wicg.github.io/largest-contentful-paint/
@JS('window')
@staticInterop
library largest_contentful_paint;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2
hr_time_3
dom */

///  The interface of the [Largest Contentful Paint API] provides
/// details about the largest image or text paint before user input
/// on a web page. The timing of this paint is a good heuristic for
/// when the main page content is available during load.
@JS()
@staticInterop
class LargestContentfulPaint implements PerformanceEntry {
  external factory LargestContentfulPaint();
}

extension PropsLargestContentfulPaint on LargestContentfulPaint {
  ///  The time the element was rendered to the screen. May not be
  /// available if the element is a cross-origin image loaded without
  /// the [Timing-Allow-Origin] header.
  ///
  external double get renderTime;

  /// The time the element was loaded.
  ///
  external double get loadTime;

  ///  The intrinsic size of the element returned as the area (width *
  /// height).
  ///
  external int get size;

  ///  The id of the element. This property returns an empty string
  /// when there is no id.
  ///
  external String get id;

  /// If the element is an image, the request url of the image.
  ///
  external String get url;

  /// The element that is the current largest contentful paint.
  ///
  external Element? get element;

  /// Returns the above properties as JSON.
  ///
  /// LargestContentfulPaint.toJSON();
  ///
  @override
  external dynamic toJSON();
}
