/// Event Timing API
///
/// https://w3c.github.io/event-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library event_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceEventTiming implements PerformanceEntry {
  external PerformanceEventTiming();
}

extension PropsPerformanceEventTiming on PerformanceEventTiming {
  double get processingStart => js_util.getProperty(this, 'processingStart');
  double get processingEnd => js_util.getProperty(this, 'processingEnd');
  bool get cancelable => js_util.getProperty(this, 'cancelable');
  Node? get target => js_util.getProperty(this, 'target');
  int get interactionId => js_util.getProperty(this, 'interactionId');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class EventCounts extends JsMap<int, String> {
  external EventCounts();
}

@JS()
@staticInterop
class InteractionCounts extends JsMap<int, String> {
  external InteractionCounts();
}
