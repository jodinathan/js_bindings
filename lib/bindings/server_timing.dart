/// Server Timing
///
/// https://w3c.github.io/server-timing/
@JS('window')
@staticInterop
library server_timing;

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
  external factory PerformanceServerTiming();
}

extension PropsPerformanceServerTiming on PerformanceServerTiming {
  /// A [DOMString] value of the server-specified metric name.
  ///
  external String get name;

  ///  A double that contains the server-specified metric duration, or
  /// value [0.0].
  ///
  external double get duration;

  ///  A [DOMString] value of the server-specified metric description,
  /// or an empty string.
  ///
  external String get description;

  ///  Returns a [DOMString] that is the JSON representation of the
  /// [PerformanceServerTiming] object.
  ///
  /// var json = PerformanceServerTiming.toJSON()
  ///
  external dynamic toJSON();
}
