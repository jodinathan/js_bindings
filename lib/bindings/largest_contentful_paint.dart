/// Largest Contentful Paint
///
/// https://w3c.github.io/largest-contentful-paint/

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
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    LargestContentfulPaint
///
///
@JS()
@staticInterop
class LargestContentfulPaint implements PerformanceEntry {
  external factory LargestContentfulPaint();
}

extension PropsLargestContentfulPaint on LargestContentfulPaint {
  double get renderTime => js_util.getProperty(this, 'renderTime');
  double get loadTime => js_util.getProperty(this, 'loadTime');
  int get size => js_util.getProperty(this, 'size');
  String get id => js_util.getProperty(this, 'id');
  String get url => js_util.getProperty(this, 'url');
  Element? get element => js_util.getProperty(this, 'element');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
