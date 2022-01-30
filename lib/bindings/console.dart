/// Console Standard
///
/// https://console.spec.whatwg.org/
@JS('window')
@staticInterop
library console;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///
///  The object provides access to the browser's
///  debugging console (e.g. the Web console in Firefox).
///   The specifics of how it works varies from browser to browser,
/// but there is a de facto
///  set of features that are typically provided.
///  The object can be accessed from any global object. [Window] on
///   browsing scopes and [WorkerGlobalScope] as specific variants in
/// workers via the
///   property console. It's exposed as [Window.console], and can be
/// referenced as
///  . For example:
///
/// [console.log("Failed to open the specified link")
/// ]
///
///  This page documents the Methods available on the object and
///  gives a few Usage examples.
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class console {
  external console();
}

extension Propsconsole on console {
  ///  Log a message and stack trace to console if the first argument
  /// is [false].
  ///
  /// console.assert(assertion, obj1 [, obj2, ..., objN]);
  /// console.assert(assertion, msg [, subst1, ..., substN]); // C-like message formatting
  ///
  @JS('assert')
  @staticInterop
  Object mAssert([bool? condition = false, dynamic data]) =>
      js_util.callMethod(this, 'assert', [condition, data]);

  /// Clear the console.
  ///
  /// console.clear();
  ///
  Object clear() => js_util.callMethod(this, 'clear', []);

  /// Outputs a message to the console with the log level .
  ///
  /// console.debug(obj1 [, obj2, ..., objN]);
  /// console.debug(msg [, subst1, ..., substN]);
  ///
  Object debug([dynamic data]) => js_util.callMethod(this, 'debug', [data]);

  ///  Outputs an error message. You may use string substitution and
  /// additional arguments with this method.
  ///
  /// console.error(obj1 [, obj2, ..., objN]);
  /// console.error(msg [, subst1, ..., substN]);
  ///
  Object error([dynamic data]) => js_util.callMethod(this, 'error', [data]);

  ///  Informative logging of information. You may use string
  /// substitution and additional arguments with this method.
  ///
  /// console.info(obj1 [, obj2, ..., objN]);
  /// console.info(msg [, subst1, ..., substN]);
  ///
  Object info([dynamic data]) => js_util.callMethod(this, 'info', [data]);

  ///  For general output of logging information. You may use string
  /// substitution and additional arguments with this method.
  ///
  /// console.log(obj1 [, obj2, ..., objN]);
  /// console.log(msg [, subst1, ..., substN]);
  ///
  Object log([dynamic data]) => js_util.callMethod(this, 'log', [data]);

  /// Displays tabular data as a table.
  ///
  /// console.table(data);
  /// console.table(data, columns);
  ///
  Object table([dynamic tabularData, Iterable<String>? properties]) =>
      js_util.callMethod(this, 'table', [tabularData, properties]);

  /// Outputs a stack trace.
  ///
  /// console.trace( [...any, ...data ]);
  ///
  /// function foo() {
  ///  function bar() {
  ///   console.trace();
  ///  }
  ///  bar();
  /// }
  ///
  /// foo();
  ///
  /// In the console, the following trace will be displayed:
  /// bar
  /// foo
  /// <anonymous>
  ///
  Object trace([dynamic data]) => js_util.callMethod(this, 'trace', [data]);

  ///  Outputs a warning message. You may use string substitution and
  /// additional arguments with this method.
  ///
  /// console.warn(obj1 [, obj2, ..., objN]);
  /// console.warn(msg [, subst1, ..., substN]);
  ///
  Object warn([dynamic data]) => js_util.callMethod(this, 'warn', [data]);

  ///  Displays an interactive listing of the properties of a specified
  /// JavaScript object. This listing lets you use disclosure triangles
  /// to examine the contents of child objects.
  ///
  /// console.dir(object);
  ///
  Object dir([dynamic item, dynamic options]) =>
      js_util.callMethod(this, 'dir', [item, options]);

  ///  Displays an XML/HTML Element representation of the specified
  /// object if possible or the JavaScript Object view if it is not
  /// possible.
  ///
  /// console.dirxml(object);
  ///
  Object dirxml([dynamic data]) => js_util.callMethod(this, 'dirxml', [data]);

  ///  Log the number of times this line has been called with the given
  /// label.
  ///
  /// console.count([label]);
  ///
  Object count(
          [

          ///
          ///    A [String]. If supplied, [count()] outputs the number of
          ///     times it has been called with that label. If omitted,
          /// [count()] behaves as
          ///    though it was called with the "default" label.
          ///
          ///
          String? label = 'default']) =>
      js_util.callMethod(this, 'count', [label]);

  /// Resets the value of the counter with the given label.
  ///
  /// console.countReset([label]);
  ///
  Object countReset(
          [

          ///
          ///    A [String]. If supplied, [countReset()] resets the count for
          ///     that label to 0. If omitted, [countReset()] resets the
          /// default counter to
          ///    0.
          ///
          ///
          String? label = 'default']) =>
      js_util.callMethod(this, 'countReset', [label]);

  ///  Creates a new inline group, indenting all following output by
  /// another level. To move back out a level, call [groupEnd()].
  ///
  /// console.group([label]);
  ///
  Object group([dynamic data]) => js_util.callMethod(this, 'group', [data]);

  ///  Creates a new inline group, indenting all following output by
  /// another level. However, unlike [group()] this starts with the
  /// inline group collapsed requiring the use of a disclosure button
  /// to expand it. To move back out a level, call [groupEnd()].
  ///
  /// console.groupCollapsed([label]);
  ///
  Object groupCollapsed([dynamic data]) =>
      js_util.callMethod(this, 'groupCollapsed', [data]);

  /// Exits the current inline group.
  ///
  /// console.groupEnd();
  ///
  Object groupEnd() => js_util.callMethod(this, 'groupEnd', []);

  ///  Starts a timer with a name specified as an input parameter. Up
  /// to 10,000 simultaneous timers can run on a given page.
  ///
  /// console.time(label);
  ///
  Object time(
          [

          ///
          ///     The name to give the new timer. This will identify the timer;
          /// use the same name when
          ///     calling [console.timeEnd()] to stop the timer and get the
          /// time output to
          ///    the console.
          ///
          ///
          String? label = 'default']) =>
      js_util.callMethod(this, 'time', [label]);

  /// Logs the value of the specified timer to the console.
  ///
  /// console.timeLog(label);
  ///
  Object timeLog(
          [

          /// The name of the timer to log to the console.
          ///
          String? label = 'default',
          dynamic data]) =>
      js_util.callMethod(this, 'timeLog', [label, data]);

  ///  Stops the specified timer and logs the elapsed time in
  /// milliseconds since it started.
  ///
  /// console.timeEnd(label);
  ///
  Object timeEnd(
          [

          ///
          ///     The name of the timer to stop. Once stopped, the elapsed time
          /// is automatically
          ///    displayed in the Web console along
          ///    with an indicator that the time has ended.
          ///
          ///
          String? label = 'default']) =>
      js_util.callMethod(this, 'timeEnd', [label]);
}
