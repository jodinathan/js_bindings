/// Largest Contentful Paint
///
/// https://wicg.github.io/largest-contentful-paint/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library largest_contentful_paint;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the [Largest Contentful Paint API] provides
/// details about the largest image or text paint before user input
/// on a web page. The timing of this paint is a good heuristic for
/// when the main page content is available during load.
@JS()
@staticInterop
class LargestContentfulPaint implements PerformanceEntry {
  external LargestContentfulPaint();
}

extension PropsLargestContentfulPaint on LargestContentfulPaint {
  ///  The time the element was rendered to the screen. May not be
  /// available if the element is a cross-origin image loaded without
  /// the [Timing-Allow-Origin] header.
  ///
  double get renderTime => js_util.getProperty(this, 'renderTime');

  /// The time the element was loaded.
  ///
  double get loadTime => js_util.getProperty(this, 'loadTime');

  ///  The intrinsic size of the element returned as the area (width *
  /// height).
  ///
  int get size => js_util.getProperty(this, 'size');

  ///  The id of the element. This property returns an empty string
  /// when there is no id.
  ///
  String get id => js_util.getProperty(this, 'id');

  /// If the element is an image, the request url of the image.
  ///
  String get url => js_util.getProperty(this, 'url');

  /// The element that is the current largest contentful paint.
  ///
  Element? get element => js_util.getProperty(this, 'element');

  /// Returns the above properties as JSON.
  ///
  /// LargestContentfulPaint.toJSON();
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
