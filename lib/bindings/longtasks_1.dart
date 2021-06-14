/// Long Tasks API 1
///
/// https://w3c.github.io/longtasks/
@JS('window')
library longtasks_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'performance_timeline_2.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Long Tasks API reports instances of long
/// tasks.
///
///
@JS()
class PerformanceLongTaskTiming extends PerformanceEntry {
  /// Returns a sequence of [TaskAttributionTiming] instances.
  external Iterable<TaskAttributionTiming> get attribution;
  @override
  external dynamic toJSON();

  external factory PerformanceLongTaskTiming();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Long Tasks API returns information about
/// the work involved in a long task and its associate frame context.
/// The frame context, also called the container, is the iframe,
/// embed or object that is being implicated, on the whole, for a
/// long task.
///
///
@experimental
@JS()
class TaskAttributionTiming extends PerformanceEntry {
  ///  Returns the type of frame container, one of [iframe], [embed],
  /// or [object].
  external String get containerType;

  /// Returns the container's [src] attribute.
  external String get containerSrc;

  /// Returns the container's [id] attribute.
  external String get containerId;

  /// Returns the container's [name] attribute.
  external String get containerName;
  @override
  external dynamic toJSON();

  external factory TaskAttributionTiming();
}
