/// Event Timing API
///
/// https://wicg.github.io/event-timing/
@JS('window')
library event_timing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';
import 'hr_time_3.dart';
import 'dom.dart';

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
///
@JS()
class PerformanceEventTiming // null -> {} -> PerformanceEntry
    with
        PerformanceEntry {
  /// Returns the time at which event dispatch started.
  external double get processingStart;

  /// Returns the time at which the event dispatch ended.
  external double get processingEnd;

  /// Returns the associated event's cancelable attribute.
  external bool get cancelable;

  ///  Returns the associated event's last target, if it is not
  /// removed.
  external Node? get target;

  /// Converts the PerformanceEventTiming object to JSON.
  @override
  external dynamic toJSON();

  external factory PerformanceEventTiming();
}

@JS()
class EventCounts {
  external int operator [](String index);

  external factory EventCounts();
}
