/// Performance Timeline Level 2
///
/// https://w3c.github.io/performance-timeline/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library performance_timeline;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The object encapsulates a single performance metric that is part
/// of the performance timeline. A performance entry can be directly
/// created by making a performance [mark] or [measure] (for example
/// by calling the [mark()] method) at an explicit point in an
/// application. Performance entries are also created in indirect
/// ways such as loading a resource (such as an image).
///  instances will always be one of the following subtypes:
///
///  [PerformanceMark]
///  [PerformanceMeasure]
///  [PerformanceNavigationTiming]
///  [PerformanceResourceTiming]
///  [PerformancePaintTiming]
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class PerformanceEntry {
  external factory PerformanceEntry();
}

extension PropsPerformanceEntry on PerformanceEntry {
  String get name => js_util.getProperty(this, 'name');
  String get entryType => js_util.getProperty(this, 'entryType');
  double get startTime => js_util.getProperty(this, 'startTime');
  double get duration => js_util.getProperty(this, 'duration');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface is used to observe performance measurement events
/// and be notified of new performance entries as they are recorded
/// in the browser's performance timeline.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class PerformanceObserver {
  external factory PerformanceObserver(PerformanceObserverCallback callback);
}

extension PropsPerformanceObserver on PerformanceObserver {
  void observe([PerformanceObserverInit? options]) =>
      js_util.callMethod(this, 'observe', [options]);

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<PerformanceEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<String> get supportedEntryTypes;
}

@anonymous
@JS()
@staticInterop
class PerformanceObserverCallbackOptions {
  external factory PerformanceObserverCallbackOptions(
      {int? droppedEntriesCount});
}

extension PropsPerformanceObserverCallbackOptions
    on PerformanceObserverCallbackOptions {
  int get droppedEntriesCount =>
      js_util.getProperty(this, 'droppedEntriesCount');
  set droppedEntriesCount(int newValue) {
    js_util.setProperty(this, 'droppedEntriesCount', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PerformanceObserverInit {
  external factory PerformanceObserverInit(
      {Iterable<String>? entryTypes, String? type, bool? buffered});
}

extension PropsPerformanceObserverInit on PerformanceObserverInit {
  Iterable<String> get entryTypes => js_util.getProperty(this, 'entryTypes');
  set entryTypes(Iterable<String> newValue) {
    js_util.setProperty(this, 'entryTypes', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  bool get buffered => js_util.getProperty(this, 'buffered');
  set buffered(bool newValue) {
    js_util.setProperty(this, 'buffered', newValue);
  }
}

///  The interface is a list of performance events that were
/// explicitly observed via the [observe()] method.
/// Note: this interface is exposed to [Window] and [Worker].
@JS()
@staticInterop
class PerformanceObserverEntryList {
  external factory PerformanceObserverEntryList();
}

extension PropsPerformanceObserverEntryList on PerformanceObserverEntryList {
  Iterable<PerformanceEntry> getEntries() =>
      js_util.callMethod(this, 'getEntries', []);

  Iterable<PerformanceEntry> getEntriesByType(String type) =>
      js_util.callMethod(this, 'getEntriesByType', [type]);

  Iterable<PerformanceEntry> getEntriesByName(String name, [String? type]) =>
      js_util.callMethod(this, 'getEntriesByName', [name, type]);
}
