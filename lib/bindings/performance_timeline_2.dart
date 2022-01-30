/// Performance Timeline Level 2
///
/// https://w3c.github.io/performance-timeline/
@JS('window')
@staticInterop
library performance_timeline_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3 */

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
  external PerformanceEntry();
}

extension PropsPerformanceEntry on PerformanceEntry {
  ///  A value that further specifies the value returned by the
  /// [PerformanceEntry.entryType] property. The value of both depends
  /// on the subtype. See property page for valid values.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  A [DOMString] representing the type of performance metric such
  /// as, for example, "[mark]". See property page for valid values.
  ///
  String get entryType => js_util.getProperty(this, 'entryType');

  ///  A [DOMHighResTimeStamp] representing the starting time for the
  /// performance metric.
  ///
  double get startTime => js_util.getProperty(this, 'startTime');

  ///  A [DOMHighResTimeStamp] representing the time value of the
  /// duration of the performance event.
  ///
  double get duration => js_util.getProperty(this, 'duration');

  /// Returns a JSON representation of the [PerformanceEntry] object.
  ///
  /// json = perfEntry.toJSON();
  ///
  /// The following example shows the use of the toJSON() method.
  /// function run_PerformanceEntry() {
  ///  log("PerformanceEntry support ...");
  ///
  ///  if (performance.mark === undefined) {
  ///   log("... performance.mark Not supported");
  ///   return;
  ///  }
  ///
  ///  // Create some performance entries via the mark() method
  ///  performance.mark("Begin");
  ///  do_work(50000);
  ///  performance.mark("End");
  ///
  ///  // Use getEntries() to iterate through the each entry
  ///  var p = performance.getEntries();
  ///  for (var i=0; i < p.length; i++) {
  ///   log("Entry[" + i + "]");
  ///   check_PerformanceEntry(p[i]);
  ///  }
  /// }
  /// function check_PerformanceEntry(obj) {
  ///  var properties = ["name", "entryType", "startTime", "duration"];
  ///  var methods = ["toJSON"];
  ///
  ///  for (var i=0; i < properties.length; i++) {
  ///   // check each property
  ///   var supported = properties[i] in obj;
  ///   if (supported)
  ///    log("..." + properties[i] + " = " + obj[properties[i]]);
  ///   else
  ///    log("..." + properties[i] + " = Not supported");
  ///  }
  ///  for (var i=0; i < methods.length; i++) {
  ///   // check each method
  ///   var supported = typeof obj[methods[i]] == "function";
  ///   if (supported) {
  ///    var js = obj[methods[i]]();
  ///    log("..." + methods[i] + "() = " + JSON.stringify(js));
  ///   } else {
  ///    log("..." + methods[i] + " = Not supported");
  ///   }
  ///  }
  /// }
  ///
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
  external PerformanceObserver(PerformanceObserverCallback callback);
}

extension PropsPerformanceObserver on PerformanceObserver {
  ///  Specifies the set of [entry types] to observe. The performance
  /// observer's callback function will be invoked when a [performance
  /// entry] is recorded for one of the specified [entryTypes]
  ///
  /// observer.observe(options);
  ///
  Object observe([PerformanceObserverInit? options]) =>
      js_util.callMethod(this, 'observe', [options]);

  ///  Stops the performance observer callback from receiving
  /// [performance entries].
  ///
  /// performanceObserver.disconnect();
  ///
  /// var observer = new PerformanceObserver(function(list, obj) {
  ///  var entries = list.getEntries();
  ///  for (var i=0; i < entries.length; i++) {
  ///   // Process "mark" and "frame" events
  ///  }
  /// });
  /// observer.observe({entryTypes: ["mark", "frame"]});
  ///
  /// function perf_observer(list, observer) {
  ///  // Process the "measure" event
  ///  // ...
  ///  // Disable additional performance events
  ///  observer.disconnect();
  /// }
  /// var observer2 = new PerformanceObserver(perf_observer);
  /// observer2.observe({entryTypes: ["measure"]});
  ///
  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  ///  Returns the current list of [performance entries] stored in the
  /// performance observer, emptying it out.
  ///
  /// var performanceEntryList = performanceObserver.takeRecords();
  ///
  /// var observer = new PerformanceObserver(function(list, obj) {
  ///  var entries = list.getEntries();
  ///  for (var i=0; i < entries.length; i++) {
  ///   // Process "mark" and "frame" events
  ///  }
  /// });
  /// observer.observe({entryTypes: ["mark", "frame"]});
  /// var records = observer.takeRecords();
  /// console.log(records[0].name);
  /// console.log(records[0].startTime);
  /// console.log(records[0].duration);
  ///
  Iterable<PerformanceEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  ///  Returns an array of the [entryType] values supported by the user
  /// agent.
  ///
  Iterable<String> get supportedEntryTypes =>
      js_util.getProperty(PerformanceObserver, 'supportedEntryTypes');
}

@anonymous
@JS()
@staticInterop
class PerformanceObserverInit {
  external factory PerformanceObserverInit(
      {Iterable<String> entryTypes, String type, bool buffered});
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

///  The interface is a list of peformance events that were
/// explicitly observed via the [observe()] method.
/// Note: this interface is exposed to [Window] and [Worker].
@JS()
@staticInterop
class PerformanceObserverEntryList {
  external PerformanceObserverEntryList();
}

extension PropsPerformanceObserverEntryList on PerformanceObserverEntryList {
  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// based on the given filter.
  ///
  /// General syntax:
  /// entries = list.getEntries();
  /// entries = list.getEntries(PerformanceEntryFilterOptions);
  ///
  /// Specific usage:
  /// entries = list.getEntries({name: "entry_name", entryType: "mark"});
  ///
  /// function print_perf_entry(pe) {
  ///  console.log("name: "    + pe.name   +
  ///        "; entryType: " + pe.entryType +
  ///        "; startTime: " + pe.startTime +
  ///        "; duration: " + pe.duration);
  /// }
  ///
  /// // Create observer for all performance event types
  /// var observe_all = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries;
  ///
  ///  // Print all entries
  ///  perfEntries = list.getEntries();
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries named "Begin" with type "mark"
  ///  perfEntries = list.getEntriesByName("Begin", "mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries with type "mark"
  ///  perfEntries = list.getEntriesByType("mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to all performance event types
  /// observe_all.observe({entryTypes: ['frame', 'mark', 'measure', 'navigation', 'resource', 'server']});
  ///
  /// var observe_frame = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries = list.getEntries();
  ///  // Should only have 'frame' entries
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to frame event only
  /// observe_frame.observe({entryTypes: ['frame']});
  ///
  Iterable<PerformanceEntry> getEntries() =>
      js_util.callMethod(this, 'getEntries', []);

  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// of the given entry type.
  ///
  /// entries = list.getEntriesByType(type);
  ///
  /// function print_perf_entry(pe) {
  ///  console.log("name: "    + pe.name   +
  ///        "; entryType: " + pe.entryType +
  ///        "; startTime: " + pe.startTime +
  ///        "; duration: " + pe.duration);
  /// }
  ///
  /// // Create observer for all performance event types
  /// var observe_all = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries;
  ///
  ///  // Print all entries
  ///  perfEntries = list.getEntries();
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries named "Begin" with type "mark"
  ///  perfEntries = list.getEntriesByName("Begin", "mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries with type "mark"
  ///  perfEntries = list.getEntriesByType("mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to all performance event types
  /// observe_all.observe({entryTypes: ['frame', 'mark', 'measure', 'navigation', 'resource', 'server']});
  ///
  /// var observe_frame = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries = list.getEntries();
  ///  // Should only have 'frame' entries
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to only the 'frame' event
  /// observe_frame.observe({entryTypes: ['frame']});
  ///
  Iterable<PerformanceEntry> getEntriesByType(String type) =>
      js_util.callMethod(this, 'getEntriesByType', [type]);

  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// based on the given name and entry type.
  ///
  /// entries = list.getEntriesByName(name, type);
  ///
  /// function print_perf_entry(pe) {
  ///  console.log("name: "    + pe.name   +
  ///        "; entryType: " + pe.entryType +
  ///        "; startTime: " + pe.startTime +
  ///        "; duration: " + pe.duration);
  /// }
  ///
  /// // Create observer for all performance event types
  /// var observe_all = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries;
  ///
  ///  // Print all entries
  ///  perfEntries = list.getEntries();
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries named "Begin" with type "mark"
  ///  perfEntries = list.getEntriesByName("Begin", "mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  ///
  ///  // Print entries with type "mark"
  ///  perfEntries = list.getEntriesByType("mark");
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to all performance event types
  /// observe_all.observe({entryTypes: ['frame', 'mark', 'measure', 'navigation', 'resource', 'server']});
  ///
  /// var observe_frame = new PerformanceObserver(function(list, obs) {
  ///  var perfEntries = list.getEntries();
  ///  // Should only have 'frame' entries
  ///  for (var i=0; i < perfEntries.length; i++) {
  ///   print_perf_entry(perfEntries[i]);
  ///  }
  /// });
  /// // subscribe to only the 'frame' event
  /// observe_frame.observe({entryTypes: ['frame']});
  ///
  Iterable<PerformanceEntry> getEntriesByName(String name, [String? type]) =>
      js_util.callMethod(this, 'getEntriesByName', [name, type]);
}

@anonymous
@JS()
@staticInterop
class PerformanceObserverCallbackOptions {
  external factory PerformanceObserverCallbackOptions(
      {int droppedEntriesCount});
}

extension PropsPerformanceObserverCallbackOptions
    on PerformanceObserverCallbackOptions {
  int get droppedEntriesCount =>
      js_util.getProperty(this, 'droppedEntriesCount');
  set droppedEntriesCount(int newValue) {
    js_util.setProperty(this, 'droppedEntriesCount', newValue);
  }
}
