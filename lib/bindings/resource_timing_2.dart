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

@JS()
@staticInterop
class PerformanceResourceTiming implements PerformanceEntry {
  external PerformanceResourceTiming();
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
