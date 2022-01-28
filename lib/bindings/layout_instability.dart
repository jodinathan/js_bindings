/// Layout Instability API
///
/// https://wicg.github.io/layout-instability/
@JS('window')
@staticInterop
library layout_instability;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2
hr_time_3
dom
geometry_1 */

///  The interface of the Layout Instability API provides insights
/// into the stability of web pages based on movements of the
/// elements on the page.
@JS()
@staticInterop
class LayoutShift implements PerformanceEntry {
  external factory LayoutShift();
}

extension PropsLayoutShift on LayoutShift {
  ///  Returns the [impact fraction] (fraction of the viewport that was
  /// shifted) times the [distance fraction] (distance moved as a
  /// fraction of viewport).
  ///
  external double get value;

  ///  Returns [true] if there was a user input in the past 500
  /// milliseconds.
  ///
  external bool get hadRecentInput;

  /// Returns the time of the most recent user input.
  ///
  external double get lastInputTime;

  ///  Returns an array of [LayoutShiftAttribution] objects with
  /// information on the elements that were shifted.
  ///
  external Iterable<LayoutShiftAttribution> get sources;

  /// Converts the properties to JSON.
  ///
  @override
  external dynamic toJSON();
}

///  The interface of the Layout Instability API provides debugging
/// information about elements which have shifted.
///  Instances of are returned in an array by calling
/// [LayoutShift.sources].
@JS()
@staticInterop
class LayoutShiftAttribution {
  external factory LayoutShiftAttribution();
}

extension PropsLayoutShiftAttribution on LayoutShiftAttribution {
  external Node? get node;

  ///  Returns a [DOMRectReadOnly] object representing the position of
  /// the element before the shift.
  ///
  external DOMRectReadOnly get previousRect;

  ///  Returns a [DOMRectReadOnly] object representing the position of
  /// the element after the shift.
  ///
  external DOMRectReadOnly get currentRect;
}
