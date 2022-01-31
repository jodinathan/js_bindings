/// Element Timing API
///
/// https://wicg.github.io/element-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library element_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Element Timing API reports timing
/// information on a specific element identified by the page author.
/// For example it could report timing information about the main
/// image in an article.
@JS()
@staticInterop
class PerformanceElementTiming implements PerformanceEntry {
  external PerformanceElementTiming();
}

extension PropsPerformanceElementTiming on PerformanceElementTiming {
  /// A [double] with the renderTime of the element.
  ///
  double get renderTime => js_util.getProperty(this, 'renderTime');

  /// A [double] with the loadTime of the element.
  ///
  double get loadTime => js_util.getProperty(this, 'loadTime');

  ///  A [DOMRectReadOnly] which is the rectangle of the element within
  /// the viewport.
  ///
  DOMRectReadOnly get intersectionRect =>
      js_util.getProperty(this, 'intersectionRect');

  ///  A [String] which is the value of the [elementtiming] attribute
  /// on the element.
  ///
  String get identifier => js_util.getProperty(this, 'identifier');

  ///  An unsigned 32-bit integer (unsigned long) which is the
  /// intrinsic width of the image if this is applied to an image, 0
  /// for text.
  ///
  int get naturalWidth => js_util.getProperty(this, 'naturalWidth');

  ///  An unsigned 32-bit integer (unsigned long) which is the
  /// intrinsic height of the image if this is applied to an image, 0
  /// for text.
  ///
  int get naturalHeight => js_util.getProperty(this, 'naturalHeight');

  /// A [String] which is the of the element.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  An [Element] representing the element we are returning
  /// information about.
  ///
  Element? get element => js_util.getProperty(this, 'element');

  ///  A [String] which is the initial URL of the resources request for
  /// images, 0 for text.
  ///
  String get url => js_util.getProperty(this, 'url');

  /// Generates a JSON description of the object.
  ///
  /// var json = PerformanceElementTiming.toJSON();
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
