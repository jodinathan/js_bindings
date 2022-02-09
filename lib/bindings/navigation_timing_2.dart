/// Navigation Timing Level 2
///
/// https://w3c.github.io/navigation-timing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library navigation_timing_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceNavigationTiming implements PerformanceResourceTiming {
  external PerformanceNavigationTiming();
}

extension PropsPerformanceNavigationTiming on PerformanceNavigationTiming {
  double get unloadEventStart => js_util.getProperty(this, 'unloadEventStart');
  double get unloadEventEnd => js_util.getProperty(this, 'unloadEventEnd');
  double get domInteractive => js_util.getProperty(this, 'domInteractive');
  double get domContentLoadedEventStart =>
      js_util.getProperty(this, 'domContentLoadedEventStart');
  double get domContentLoadedEventEnd =>
      js_util.getProperty(this, 'domContentLoadedEventEnd');
  double get domComplete => js_util.getProperty(this, 'domComplete');
  double get loadEventStart => js_util.getProperty(this, 'loadEventStart');
  double get loadEventEnd => js_util.getProperty(this, 'loadEventEnd');
  NavigationType get type =>
      NavigationType.values.byName(js_util.getProperty(this, 'type'));
  int get redirectCount => js_util.getProperty(this, 'redirectCount');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

enum NavigationType { navigate, reload, backForward, prerender }

@JS()
@staticInterop
class PerformanceTiming {
  external PerformanceTiming();
}

extension PropsPerformanceTiming on PerformanceTiming {
  int get navigationStart => js_util.getProperty(this, 'navigationStart');
  int get unloadEventStart => js_util.getProperty(this, 'unloadEventStart');
  int get unloadEventEnd => js_util.getProperty(this, 'unloadEventEnd');
  int get redirectStart => js_util.getProperty(this, 'redirectStart');
  int get redirectEnd => js_util.getProperty(this, 'redirectEnd');
  int get fetchStart => js_util.getProperty(this, 'fetchStart');
  int get domainLookupStart => js_util.getProperty(this, 'domainLookupStart');
  int get domainLookupEnd => js_util.getProperty(this, 'domainLookupEnd');
  int get connectStart => js_util.getProperty(this, 'connectStart');
  int get connectEnd => js_util.getProperty(this, 'connectEnd');
  int get secureConnectionStart =>
      js_util.getProperty(this, 'secureConnectionStart');
  int get requestStart => js_util.getProperty(this, 'requestStart');
  int get responseStart => js_util.getProperty(this, 'responseStart');
  int get responseEnd => js_util.getProperty(this, 'responseEnd');
  int get domLoading => js_util.getProperty(this, 'domLoading');
  int get domInteractive => js_util.getProperty(this, 'domInteractive');
  int get domContentLoadedEventStart =>
      js_util.getProperty(this, 'domContentLoadedEventStart');
  int get domContentLoadedEventEnd =>
      js_util.getProperty(this, 'domContentLoadedEventEnd');
  int get domComplete => js_util.getProperty(this, 'domComplete');
  int get loadEventStart => js_util.getProperty(this, 'loadEventStart');
  int get loadEventEnd => js_util.getProperty(this, 'loadEventEnd');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class PerformanceNavigation {
  @JS('TYPE_NAVIGATE')
  external static int get typeNavigate;

  @JS('TYPE_RELOAD')
  external static int get typeReload;

  @JS('TYPE_BACK_FORWARD')
  external static int get typeBackForward;

  @JS('TYPE_RESERVED')
  external static int get typeReserved;

  external PerformanceNavigation();
}

extension PropsPerformanceNavigation on PerformanceNavigation {
  int get type => js_util.getProperty(this, 'type');
  int get redirectCount => js_util.getProperty(this, 'redirectCount');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}
