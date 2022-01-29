/// Event Timing API
///
/// https://wicg.github.io/event-timing/
@JS('window')
@staticInterop
library event_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2
hr_time_3
dom */

///  The interface of the Event Timing API provides timing
/// information for the event types listed below.
///
///  [auxclick]
///  [beforeinput]
///  [click]
///  [compositionend]
///  [compositionstart]
///  [compositionupdate]
///  [contextmenu]
///  [dblclick]
///  [dragend]
///  [dragenter]
///  [dragleave]
///  [dragover]
///  [dragstart]
///  [drop]
///  [input]
///  [keydown]
///  [keypress]
///  [keyup]
///  [mousedown]
///  [mouseenter]
///  [mouseleave]
///  [mouseout]
///  [mouseover]
///  [mouseup]
///  [pointerover]
///  [pointerenter]
///  [pointerdown]
///  [pointerup]
///  [pointercancel]
///  [pointerout]
///  [pointerleave]
///  [gotpointercapture]
///  [lostpointercapture]
///  [touchstart]
///  [touchend]
///  [touchcancel]
///
@JS()
@staticInterop
class PerformanceEventTiming implements PerformanceEntry {
  external PerformanceEventTiming();
}

extension PropsPerformanceEventTiming on PerformanceEventTiming {
  /// Returns the time at which event dispatch started.
  ///
  double get processingStart => js_util.getProperty(this, 'processingStart');

  /// Returns the time at which the event dispatch ended.
  ///
  double get processingEnd => js_util.getProperty(this, 'processingEnd');

  /// Returns the associated event's cancelable attribute.
  ///
  bool get cancelable => js_util.getProperty(this, 'cancelable');

  ///  Returns the associated event's last target, if it is not
  /// removed.
  ///
  Node? get target => js_util.getProperty(this, 'target');

  /// Converts the PerformanceEventTiming object to JSON.
  ///
  @override
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class EventCounts {
  external EventCounts();
}
