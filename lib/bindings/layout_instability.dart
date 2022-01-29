/// Layout Instability API
///
/// https://wicg.github.io/layout-instability/
@JS('window')
@staticInterop
library layout_instability;

import 'dart:js_util' as js_util;
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
  external LayoutShift();
}

extension PropsLayoutShift on LayoutShift {
  ///  Returns the [impact fraction] (fraction of the viewport that was
  /// shifted) times the [distance fraction] (distance moved as a
  /// fraction of viewport).
  ///
  double get value => js_util.getProperty(this, 'value');

  ///  Returns [true] if there was a user input in the past 500
  /// milliseconds.
  ///
  bool get hadRecentInput => js_util.getProperty(this, 'hadRecentInput');

  /// Returns the time of the most recent user input.
  ///
  double get lastInputTime => js_util.getProperty(this, 'lastInputTime');

  ///  Returns an array of [LayoutShiftAttribution] objects with
  /// information on the elements that were shifted.
  ///
  Iterable<LayoutShiftAttribution> get sources =>
      js_util.getProperty(this, 'sources');

  /// Converts the properties to JSON.
  ///
  @override
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface of the Layout Instability API provides debugging
/// information about elements which have shifted.
///  Instances of are returned in an array by calling
/// [LayoutShift.sources].
@JS()
@staticInterop
class LayoutShiftAttribution {
  external LayoutShiftAttribution();
}

extension PropsLayoutShiftAttribution on LayoutShiftAttribution {
  Node? get node => js_util.getProperty(this, 'node');

  ///  Returns a [DOMRectReadOnly] object representing the position of
  /// the element before the shift.
  ///
  DOMRectReadOnly get previousRect => js_util.getProperty(this, 'previousRect');

  ///  Returns a [DOMRectReadOnly] object representing the position of
  /// the element after the shift.
  ///
  DOMRectReadOnly get currentRect => js_util.getProperty(this, 'currentRect');
}
