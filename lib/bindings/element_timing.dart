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
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceElementTiming
///
///
@JS()
@staticInterop
class PerformanceElementTiming implements PerformanceEntry {
  external factory PerformanceElementTiming();
}

extension PropsPerformanceElementTiming on PerformanceElementTiming {
  double get renderTime => js_util.getProperty(this, 'renderTime');
  double get loadTime => js_util.getProperty(this, 'loadTime');
  DOMRectReadOnly get intersectionRect =>
      js_util.getProperty(this, 'intersectionRect');
  String get identifier => js_util.getProperty(this, 'identifier');
  int get naturalWidth => js_util.getProperty(this, 'naturalWidth');
  int get naturalHeight => js_util.getProperty(this, 'naturalHeight');
  String get id => js_util.getProperty(this, 'id');
  Element? get element => js_util.getProperty(this, 'element');
  String get url => js_util.getProperty(this, 'url');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
