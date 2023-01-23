/// Event Timing API
///
/// https://w3c.github.io/event-timing

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library event_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Event Timing API provides insights into the
/// latency of certain event types triggered by user interaction.
@JS()
@staticInterop
class PerformanceEventTiming implements PerformanceEntry {
  external factory PerformanceEventTiming();
}

extension PropsPerformanceEventTiming on PerformanceEventTiming {
  double get processingStart => js_util.getProperty(this, 'processingStart');
  double get processingEnd => js_util.getProperty(this, 'processingEnd');
  bool get cancelable => js_util.getProperty(this, 'cancelable');
  Node? get target => js_util.getProperty(this, 'target');
  int get interactionId => js_util.getProperty(this, 'interactionId');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface is a read-only map where the keys are event types
/// and the values are the number of events that have been dispatched
/// for that event type.
///  As a read-only map, is similar to a [Map], however, it doesn't
/// implement the [clear()], [delete()], and [set()] methods.
@JS()
@staticInterop
class EventCounts extends JsMap<int, String> {
  external factory EventCounts();
}
