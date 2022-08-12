/// Resource Timing Level 2
///
/// https://w3c.github.io/resource-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library resource_timing_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  String get initiatorType => js_util.getProperty(this, 'initiatorType');
  String get nextHopProtocol => js_util.getProperty(this, 'nextHopProtocol');
  double get workerStart => js_util.getProperty(this, 'workerStart');
  double get redirectStart => js_util.getProperty(this, 'redirectStart');
  double get redirectEnd => js_util.getProperty(this, 'redirectEnd');
  double get fetchStart => js_util.getProperty(this, 'fetchStart');
  double get domainLookupStart =>
      js_util.getProperty(this, 'domainLookupStart');
  double get domainLookupEnd => js_util.getProperty(this, 'domainLookupEnd');
  double get connectStart => js_util.getProperty(this, 'connectStart');
  double get connectEnd => js_util.getProperty(this, 'connectEnd');
  double get secureConnectionStart =>
      js_util.getProperty(this, 'secureConnectionStart');
  double get requestStart => js_util.getProperty(this, 'requestStart');
  double get responseStart => js_util.getProperty(this, 'responseStart');
  double get responseEnd => js_util.getProperty(this, 'responseEnd');
  int get transferSize => js_util.getProperty(this, 'transferSize');
  int get encodedBodySize => js_util.getProperty(this, 'encodedBodySize');
  int get decodedBodySize => js_util.getProperty(this, 'decodedBodySize');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  Iterable<PerformanceServerTiming> get serverTiming =>
      js_util.getProperty(this, 'serverTiming');
}
