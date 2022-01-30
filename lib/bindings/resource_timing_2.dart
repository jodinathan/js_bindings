/// Resource Timing Level 2
///
/// https://w3c.github.io/resource-timing/
@JS('window')
@staticInterop
library resource_timing_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: performance_timeline_2
hr_time_3
html
server_timing */

///  The interface enables retrieval and analysis of detailed network
/// timing data regarding the loading of an application's resources.
/// An application can use the timing metrics to determine, for
/// example, the length of time it takes to fetch a specific
/// resource, such as an [XMLHttpRequest], [<SVG>], image, or script.
///  The interface's properties create a resource loading timeline
/// with [high-resolution timestamps] for network events such as
/// redirect start and end times, fetch start, DNS lookup start and
/// end times, response start and end times, etc.. Additionally, the
/// interface extends [PerformanceEntry] with other properties which
/// provide data about the size of the fetched resource as well as
/// the type of resource that initiated the fetch.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceResourceTiming
///
///
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class PerformanceResourceTiming implements PerformanceEntry {
  external PerformanceResourceTiming();
}

extension PropsPerformanceResourceTiming on PerformanceResourceTiming {
  ///  A [string] representing the type of resource that initiated the
  /// performance entry, as specified in
  /// [PerformanceResourceTiming.initiatorType].
  ///
  String get initiatorType => js_util.getProperty(this, 'initiatorType');

  ///  A [string] representing the network protocol used to fetch the
  /// resource, as identified by the ALPN Protocol ID (RFC7301).
  ///
  String get nextHopProtocol => js_util.getProperty(this, 'nextHopProtocol');

  ///  Returns a [double] immediately before dispatching the
  /// [FetchEvent] if a Service Worker thread is already running, or
  /// immediately before starting the Service Worker thread if it is
  /// not already running. If the resource is not intercepted by a
  /// Service Worker the property will always return 0.
  ///
  double get workerStart => js_util.getProperty(this, 'workerStart');

  ///  A [double] that represents the start time of the fetch which
  /// initiates the redirect.
  ///
  double get redirectStart => js_util.getProperty(this, 'redirectStart');

  ///  A [double] immediately after receiving the last byte of the
  /// response of the last redirect.
  ///
  double get redirectEnd => js_util.getProperty(this, 'redirectEnd');

  ///  A [double] immediately before the browser starts to fetch the
  /// resource.
  ///
  double get fetchStart => js_util.getProperty(this, 'fetchStart');

  ///  A [double] immediately before the browser starts the domain name
  /// lookup for the resource.
  ///
  double get domainLookupStart =>
      js_util.getProperty(this, 'domainLookupStart');

  ///  A [double] representing the time immediately after the browser
  /// finishes the domain name lookup for the resource.
  ///
  double get domainLookupEnd => js_util.getProperty(this, 'domainLookupEnd');

  ///  A [double] immediately before the browser starts to establish
  /// the connection to the server to retrieve the resource.
  ///
  double get connectStart => js_util.getProperty(this, 'connectStart');

  ///  A [double] immediately after the browser finishes establishing
  /// the connection to the server to retrieve the resource.
  ///
  double get connectEnd => js_util.getProperty(this, 'connectEnd');

  ///  A [double] immediately before the browser starts the handshake
  /// process to secure the current connection.
  ///
  double get secureConnectionStart =>
      js_util.getProperty(this, 'secureConnectionStart');

  ///  A [double] immediately before the browser starts requesting the
  /// resource from the server.
  ///
  double get requestStart => js_util.getProperty(this, 'requestStart');

  ///  A [double] immediately after the browser receives the first byte
  /// of the response from the server.
  ///
  double get responseStart => js_util.getProperty(this, 'responseStart');

  ///  A [double] immediately after the browser receives the last byte
  /// of the resource or immediately before the transport connection is
  /// closed, whichever comes first.
  ///
  double get responseEnd => js_util.getProperty(this, 'responseEnd');

  ///  A [number] representing the size (in octets) of the fetched
  /// resource. The size includes the response header fields plus the
  /// response payload body.
  ///
  int get transferSize => js_util.getProperty(this, 'transferSize');

  ///  A [number] representing the size (in octets) received from the
  /// fetch (HTTP or cache), of the payload body, before removing any
  /// applied content-codings.
  ///
  int get encodedBodySize => js_util.getProperty(this, 'encodedBodySize');

  ///  A [number] that is the size (in octets) received from the fetch
  /// (HTTP or cache) of the message body, after removing any applied
  /// content-codings.
  ///
  int get decodedBodySize => js_util.getProperty(this, 'decodedBodySize');

  ///  Returns a [String] that is the JSON representation of the
  /// [PerformanceResourceTiming] object.
  ///
  /// json = resourcePerfEntry.toJSON();
  ///
  /// // Get a resource performance entry
  /// var perfEntries = performance.getEntriesByType("resource");
  /// var entry = perfEntries[0];
  ///
  /// // Get the JSON and log it
  /// var json = entry.toJSON();
  /// var s = JSON.stringify(json);
  /// console.log("PerformanceEntry.toJSON = " + s);
  ///
  @override
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  Iterable<PerformanceServerTiming> get serverTiming =>
      js_util.getProperty(this, 'serverTiming');
}
