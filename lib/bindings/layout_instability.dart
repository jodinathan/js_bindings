/// Layout Instability API
///
/// https://wicg.github.io/layout-instability/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library layout_instability;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class LayoutShift implements PerformanceEntry {
  external LayoutShift();
}

extension PropsLayoutShift on LayoutShift {
  double get value => js_util.getProperty(this, 'value');
  bool get hadRecentInput => js_util.getProperty(this, 'hadRecentInput');
  double get lastInputTime => js_util.getProperty(this, 'lastInputTime');
  Iterable<LayoutShiftAttribution> get sources =>
      js_util.getProperty(this, 'sources');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class LayoutShiftAttribution {
  external LayoutShiftAttribution();
}

extension PropsLayoutShiftAttribution on LayoutShiftAttribution {
  Node? get node => js_util.getProperty(this, 'node');
  DOMRectReadOnly get previousRect => js_util.getProperty(this, 'previousRect');
  DOMRectReadOnly get currentRect => js_util.getProperty(this, 'currentRect');
}
