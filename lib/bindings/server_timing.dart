/// Server Timing
///
/// https://w3c.github.io/server-timing/
@JS('window')
@staticInterop
library server_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3
resource_timing_2 */

///
///  Note: This feature is available in Web Workers
///   Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface surfaces server metrics that are sent with the
/// response in the [Server-Timing] HTTP header.
///  This interface is restricted to the same origin, but you can use
/// the [Timing-Allow-Origin] header to specify the domains that are
/// allowed to access the server metrics. Note that this interface is
/// only available in secure contexts (HTTPS) in some browsers.
@JS()
@staticInterop
class PerformanceServerTiming {
  external PerformanceServerTiming();
}

extension PropsPerformanceServerTiming on PerformanceServerTiming {
  /// A [DOMString] value of the server-specified metric name.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  A double that contains the server-specified metric duration, or
  /// value [0.0].
  ///
  double get duration => js_util.getProperty(this, 'duration');

  ///  A [DOMString] value of the server-specified metric description,
  /// or an empty string.
  ///
  String get description => js_util.getProperty(this, 'description');

  ///  Returns a [DOMString] that is the JSON representation of the
  /// [PerformanceServerTiming] object.
  ///
  /// var json = PerformanceServerTiming.toJSON()
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
