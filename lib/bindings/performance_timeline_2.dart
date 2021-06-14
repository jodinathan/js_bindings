/// Performance Timeline Level 2
///
/// https://w3c.github.io/performance-timeline/
@JS('window')
library performance_timeline_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'hr_time_3.dart';

///
///
///  The object encapsulates a single performance metric that is part
/// of the performance timeline. A performance entry can be directly
/// created by making a performance [mark] or [measure] (for example
/// by calling the [mark()] method) at an explicit point in an
/// application. Performance entries are also created in indirect
/// ways such as loading a resource (such as an image).
///
///  instances will always be one of the following subtypes:
///  [PerformanceMark]
///  [PerformanceMeasure]
///  [PerformanceFrameTiming]
///  [PerformanceNavigationTiming]
///  [PerformanceResourceTiming]
///  [PerformancePaintTiming]
///
///  Note: This feature is available in Web Workers
///
@JS()
class PerformanceEntry {
  ///  A value that further specifies the value returned by the
  /// [PerformanceEntry.entryType] property. The value of both depends
  /// on the subtype. See property page for valid values.
  external String get name;

  ///  A [DOMString] representing the type of performance metric such
  /// as, for example, "[mark]". See property page for valid values.
  external String get entryType;

  ///  A [DOMHighResTimeStamp] representing the starting time for the
  /// performance metric.
  external double get startTime;

  ///  A [DOMHighResTimeStamp] representing the time value of the
  /// duration of the performance event.
  external double get duration;

  /// Returns a JSON representation of the [PerformanceEntry] object.
  /// json = perfEntry.toJSON();
  ///
  /// The following example shows the use of the toJSON() method.
  ///
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
  external dynamic toJSON();

  external factory PerformanceEntry();
}

///
///
///  The interface is used to observe performance measurement events
/// and be notified of new performance entries as they are recorded
/// in the browser's performance timeline.
///  Note: This feature is available in Web Workers
///
@JS()
class PerformanceObserver {
  external factory PerformanceObserver({PerformanceObserverCallback callback});

  ///  Specifies the set of [entry types] to observe. The performance
  /// observer's callback function will be invoked when a [performance
  /// entry] is recorded for one of the specified [entryTypes]
  /// observer.observe(options);
  ///
  external Object observe([PerformanceObserverInit? options]);

  ///  Stops the performance observer callback from receiving
  /// [performance entries].
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
  external Object disconnect();

  ///  Returns the current list of [performance entries] stored in the
  /// performance observer, emptying it out.
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
  external Iterable<PerformanceEntry> takeRecords();

  ///  Returns an array of the [entryType] values supported by the user
  /// agent.
  external static Iterable<String> get supportedEntryTypes;
}

@anonymous
@JS()
class PerformanceObserverInit {
  external Iterable<String> get entryTypes;
  external set entryTypes(Iterable<String> newValue);
  external String get type;
  external set type(String newValue);
  external bool get buffered;
  external set buffered(bool newValue);
  external double get durationThreshold;
  external set durationThreshold(double newValue);

  external factory PerformanceObserverInit(
      {Iterable<String> entryTypes,
      String type,
      bool buffered,
      double durationThreshold});
}

///
///
///  The interface is a list of peformance events that were
/// explicitly observed via the [observe()] method.
///
/// Note: this interface is exposed to [Window] and [Worker].
@JS()
class PerformanceObserverEntryList {
  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// based on the given filter.
  /// General syntax:
  ///
  /// entries = list.getEntries();
  /// entries = list.getEntries(PerformanceEntryFilterOptions);
  /// Specific usage:
  ///
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
  external Iterable<PerformanceEntry> getEntries();

  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// of the given entry type.
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
  external Iterable<PerformanceEntry> getEntriesByType(String type);

  ///  Returns a list of explicitly observed [PerformanceEntry] objects
  /// based on the given name and entry type.
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
  external Iterable<PerformanceEntry> getEntriesByName(String name,
      [String? type]);

  external factory PerformanceObserverEntryList();
}

@anonymous
@JS()
class PerformanceObserverCallbackOptions {
  external int get droppedEntriesCount;
  external set droppedEntriesCount(int newValue);

  external factory PerformanceObserverCallbackOptions(
      {int droppedEntriesCount});
}
