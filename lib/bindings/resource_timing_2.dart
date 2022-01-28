/// Resource Timing Level 2
///
/// https://w3c.github.io/resource-timing/
@JS('window')
@staticInterop
library resource_timing_2;

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
  external factory PerformanceResourceTiming();
}

extension PropsPerformanceResourceTiming on PerformanceResourceTiming {
  ///  A [string] representing the type of resource that initiated the
  /// performance entry, as specified in
  /// [PerformanceResourceTiming.initiatorType].
  ///
  external String get initiatorType;

  ///  A [string] representing the network protocol used to fetch the
  /// resource, as identified by the ALPN Protocol ID (RFC7301).
  ///
  external String get nextHopProtocol;

  ///  Returns a [DOMHighResTimeStamp] immediately before dispatching
  /// the [FetchEvent] if a Service Worker thread is already running,
  /// or immediately before starting the Service Worker thread if it is
  /// not already running. If the resource is not intercepted by a
  /// Service Worker the property will always return 0.
  ///
  external double get workerStart;

  ///  A [DOMHighResTimeStamp] that represents the start time of the
  /// fetch which initiates the redirect.
  ///
  external double get redirectStart;

  ///  A [DOMHighResTimeStamp] immediately after receiving the last
  /// byte of the response of the last redirect.
  ///
  external double get redirectEnd;

  ///  A [DOMHighResTimeStamp] immediately before the browser starts to
  /// fetch the resource.
  ///
  external double get fetchStart;

  ///  A [DOMHighResTimeStamp] immediately before the browser starts
  /// the domain name lookup for the resource.
  ///
  external double get domainLookupStart;

  ///  A [DOMHighResTimeStamp] representing the time immediately after
  /// the browser finishes the domain name lookup for the resource.
  ///
  external double get domainLookupEnd;

  ///  A [DOMHighResTimeStamp] immediately before the browser starts to
  /// establish the connection to the server to retrieve the resource.
  ///
  external double get connectStart;

  ///  A [DOMHighResTimeStamp] immediately after the browser finishes
  /// establishing the connection to the server to retrieve the
  /// resource.
  ///
  external double get connectEnd;

  ///  A [DOMHighResTimeStamp] immediately before the browser starts
  /// the handshake process to secure the current connection.
  ///
  external double get secureConnectionStart;

  ///  A [DOMHighResTimeStamp] immediately before the browser starts
  /// requesting the resource from the server.
  ///
  external double get requestStart;

  ///  A [DOMHighResTimeStamp] immediately after the browser receives
  /// the first byte of the response from the server.
  ///
  external double get responseStart;

  ///  A [DOMHighResTimeStamp] immediately after the browser receives
  /// the last byte of the resource or immediately before the transport
  /// connection is closed, whichever comes first.
  ///
  external double get responseEnd;

  ///  A [number] representing the size (in octets) of the fetched
  /// resource. The size includes the response header fields plus the
  /// response payload body.
  ///
  external int get transferSize;

  ///  A [number] representing the size (in octets) received from the
  /// fetch (HTTP or cache), of the payload body, before removing any
  /// applied content-codings.
  ///
  external int get encodedBodySize;

  ///  A [number] that is the size (in octets) received from the fetch
  /// (HTTP or cache) of the message body, after removing any applied
  /// content-codings.
  ///
  external int get decodedBodySize;

  ///  Returns a [DOMString] that is the JSON representation of the
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
  external dynamic toJSON();
  external Iterable<PerformanceServerTiming> get serverTiming;
}
