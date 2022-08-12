/// Server Timing
///
/// https://w3c.github.io/server-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library server_timing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  String get name => js_util.getProperty(this, 'name');
  double get duration => js_util.getProperty(this, 'duration');
  String get description => js_util.getProperty(this, 'description');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
