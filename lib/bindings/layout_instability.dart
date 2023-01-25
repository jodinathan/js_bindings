/// Layout Instability API
///
/// https://wicg.github.io/layout-instability/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library layout_instability;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Layout Instability API provides insights
/// into the stability of web pages based on movements of the
/// elements on the page.
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
///    LayoutShift
///
///
@experimental
@JS()
@staticInterop
class LayoutShift implements PerformanceEntry {
  external factory LayoutShift();
}

extension PropsLayoutShift on LayoutShift {
  double get value => js_util.getProperty(this, 'value');
  bool get hadRecentInput => js_util.getProperty(this, 'hadRecentInput');
  double get lastInputTime => js_util.getProperty(this, 'lastInputTime');
  Iterable<LayoutShiftAttribution> get sources =>
      js_util.getProperty(this, 'sources');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Layout Instability API provides debugging
/// information about elements which have shifted.
///  Instances of are returned in an array by calling
/// [LayoutShift.sources].
@experimental
@JS()
@staticInterop
class LayoutShiftAttribution {
  external factory LayoutShiftAttribution();
}

extension PropsLayoutShiftAttribution on LayoutShiftAttribution {
  Node? get node => js_util.getProperty(this, 'node');
  DOMRectReadOnly get previousRect => js_util.getProperty(this, 'previousRect');
  DOMRectReadOnly get currentRect => js_util.getProperty(this, 'currentRect');
}
