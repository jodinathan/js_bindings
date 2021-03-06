/// Performance Timeline Level 2
///
/// https://w3c.github.io/performance-timeline/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library performance_timeline;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PerformanceEntry {
  external PerformanceEntry();
}

extension PropsPerformanceEntry on PerformanceEntry {
  String get name => js_util.getProperty(this, 'name');
  String get entryType => js_util.getProperty(this, 'entryType');
  double get startTime => js_util.getProperty(this, 'startTime');
  double get duration => js_util.getProperty(this, 'duration');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class PerformanceObserver {
  external PerformanceObserver(PerformanceObserverCallback callback);
}

extension PropsPerformanceObserver on PerformanceObserver {
  Object observe([PerformanceObserverInit? options]) =>
      js_util.callMethod(this, 'observe', [options]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<PerformanceEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<String> get supportedEntryTypes;
}

@anonymous
@JS()
@staticInterop
class PerformanceObserverCallbackOptions {
  external factory PerformanceObserverCallbackOptions(
      {required int droppedEntriesCount});
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
      {required Iterable<String> entryTypes,
      required String type,
      required bool buffered});
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

@JS()
@staticInterop
class PerformanceObserverEntryList {
  external PerformanceObserverEntryList();
}

extension PropsPerformanceObserverEntryList on PerformanceObserverEntryList {
  Iterable<PerformanceEntry> getEntries() =>
      js_util.callMethod(this, 'getEntries', []);

  Iterable<PerformanceEntry> getEntriesByType(String type) =>
      js_util.callMethod(this, 'getEntriesByType', [type]);

  Iterable<PerformanceEntry> getEntriesByName(String name, [String? type]) =>
      js_util.callMethod(this, 'getEntriesByName', [name, type]);
}
