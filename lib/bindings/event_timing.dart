/// Event Timing API
///
/// https://wicg.github.io/event-timing/
@JS('window')
@staticInterop
library event_timing;

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
  external factory PerformanceEventTiming();
}

extension PropsPerformanceEventTiming on PerformanceEventTiming {
  /// Returns the time at which event dispatch started.
  ///
  external double get processingStart;

  /// Returns the time at which the event dispatch ended.
  ///
  external double get processingEnd;

  /// Returns the associated event's cancelable attribute.
  ///
  external bool get cancelable;

  ///  Returns the associated event's last target, if it is not
  /// removed.
  ///
  external Node? get target;

  /// Converts the PerformanceEventTiming object to JSON.
  ///
  @override
  external dynamic toJSON();
}

@JS()
@staticInterop
class EventCounts {
  external factory EventCounts();
}
