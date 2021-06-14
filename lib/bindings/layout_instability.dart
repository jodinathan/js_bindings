/// Layout Instability API
///
/// https://wicg.github.io/layout-instability/
@JS('window')
library layout_instability;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';
import 'hr_time_3.dart';
import 'dom.dart';
import 'geometry_1.dart';

///  The interface of the Layout Instability API provides insights
/// into the stability of web pages based on movements of the
/// elements on the page.
@JS()
class LayoutShift extends PerformanceEntry {
  ///  Returns the [impact fraction] (fraction of the viewport that was
  /// shifted) times the [distance fraction] (distance moved as a
  /// fraction of viewport).
  external double get value;

  ///  Returns [true] if there was a user input in the past 500
  /// milliseconds.
  external bool get hadRecentInput;

  /// Returns the time of the most recent user input.
  external double get lastInputTime;

  ///  Returns an array of [LayoutShiftAttribution] objects with
  /// information on the elements that were shifted.
  external Iterable<LayoutShiftAttribution> get sources;

  /// Converts the properties to JSON.
  @override
  external dynamic toJSON();

  external factory LayoutShift();
}

///  The interface of the Layout Instability API provides debugging
/// information about elements which have shifted.
@JS()
class LayoutShiftAttribution {
  external Node? get node;

  ///  Returns a DOMRect representing the position of the element
  /// before the shift.
  external DOMRectReadOnly get previousRect;

  ///  Returns a DOMRect representing the position of the element after
  /// the shift.
  external DOMRectReadOnly get currentRect;

  external factory LayoutShiftAttribution();
}
