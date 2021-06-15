/// Element Timing API
///
/// https://wicg.github.io/element-timing/
@JS('window')
library element_timing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';
import 'hr_time_3.dart';
import 'geometry_1.dart';
import 'dom.dart';

///
///
///  The interface of the Element Timing API reports timing
/// information on a specific element identified by the page author.
/// For example it could report timing information about the main
/// image in an article.
@JS()
class PerformanceElementTiming // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  /// A [DOMHighResTimeStamp] with the renderTime of the element.
  external double get renderTime;

  /// A [DOMHighResTimeStamp] with the loadTime of the element.
  external double get loadTime;

  ///  A [DOMRectReadOnly] which is the rectangle of the element within
  /// the viewport.
  external DOMRectReadOnly get intersectionRect;

  ///  A [DOMString] which is the value of the [elementtiming]
  /// attribute on the element.
  external String get identifier;

  ///  An unsigned 32-bit integer (unsigned long) which is the
  /// intrinsic width of the image if this is applied to an image, 0
  /// for text.
  external int get naturalWidth;

  ///  An unsigned 32-bit integer (unsigned long) which is the
  /// intrinsic height of the image if this is applied to an image, 0
  /// for text.
  external int get naturalHeight;

  /// A [DOMString] which is the of the element.
  external String get id;

  ///  An [Element] representing the element we are returning
  /// information about.
  external Element? get element;

  ///  A [DOMString] which is the initial URL of the resources request
  /// for images, 0 for text.
  external String get url;

  /// Generates a JSON description of the object.
  /// var json = PerformanceElementTiming.toJSON();
  @override
  external dynamic toJSON();

  external factory PerformanceElementTiming();
}
