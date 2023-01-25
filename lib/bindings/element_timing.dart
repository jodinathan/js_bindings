/// Element Timing API
///
/// https://wicg.github.io/element-timing/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library element_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface contains render timing information for image and
/// text node elements the developer annotated with an
/// [elementtiming] attribute for observation.
@experimental
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
