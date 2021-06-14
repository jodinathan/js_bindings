/// Console Standard
///
/// https://console.spec.whatwg.org/
@JS('window')
library console;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The object provides access to the browser's debugging console
/// (e.g. the Web Console in Firefox). The specifics of how it works
/// varies from browser to browser, but there is a de facto set of
/// features that are typically provided.
///
///  The object can be accessed from any global object. [Window] on
/// browsing scopes and [WorkerGlobalScope] as specific variants in
/// workers via the property console. It's exposed as
/// [Window.console], and can be referenced as . For example:
///
/// [console.log("Failed to open the specified link")]
///
///  This page documents the Methods available on the object and
/// gives a few Usage examples.
///  Note: This feature is available in Web Workers
///
///  Note: The actual interface is defined as all lower case (i.e.
/// not [Console]), for historical reasons.
///
@JS()
abstract class console {
  ///  Log a message and stack trace to console if the first argument
  /// is [false].
  /// console.assert(assertion, obj1 [, obj2, ..., objN]);
  /// console.assert(assertion, msg [, subst1, ..., substN]); // C-like message formatting
  ///
  @JS('assert')
  external Object mAssert([bool? condition = false, dynamic data]);

  /// Clear the console.
  /// console.clear();
  ///
  external Object clear();

  /// Outputs a message to the console with the log level .
  /// console.debug(obj1 [, obj2, ..., objN]);
  /// console.debug(msg [, subst1, ..., substN]);
  ///
  external Object debug([dynamic data]);

  ///  Outputs an error message. You may use string substitution and
  /// additional arguments with this method.
  /// console.error(obj1 [, obj2, ..., objN]);
  /// console.error(msg [, subst1, ..., substN]);
  ///
  external Object error([dynamic data]);

  ///  Informative logging of information. You may use string
  /// substitution and additional arguments with this method.
  /// console.info(obj1 [, obj2, ..., objN]);
  /// console.info(msg [, subst1, ..., substN]);
  ///
  external Object info([dynamic data]);

  ///  For general output of logging information. You may use string
  /// substitution and additional arguments with this method.
  /// console.log(obj1 [, obj2, ..., objN]);
  /// console.log(msg [, subst1, ..., substN]);
  ///
  external Object log([dynamic data]);

  /// Displays tabular data as a table.
  /// console.table(data);
  /// console.table(data, columns);
  ///
  external Object table([dynamic? tabularData, Iterable<String>? properties]);

  /// Outputs a stack trace.
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
  /// In the console, the following trace will be displayed:
  ///
  /// bar
  /// foo
  /// <anonymous>
  external Object trace([dynamic data]);

  ///  Outputs a warning message. You may use string substitution and
  /// additional arguments with this method.
  /// console.warn(obj1 [, obj2, ..., objN]);
  /// console.warn(msg [, subst1, ..., substN]);
  ///
  external Object warn([dynamic data]);

  ///  Displays an interactive listing of the properties of a specified
  /// JavaScript object. This listing lets you use disclosure triangles
  /// to examine the contents of child objects.
  /// console.dir(object);
  ///
  external Object dir([dynamic? item, dynamic? options]);

  ///  Displays an XML/HTML Element representation of the specified
  /// object if possible or the JavaScript Object view if it is not
  /// possible.
  /// console.dirxml(object);
  ///
  external Object dirxml([dynamic data]);

  ///  Log the number of times this line has been called with the given
  /// label.
  /// console.count([label]);
  external Object count([String? label = 'default']);

  /// Resets the value of the counter with the given label.
  /// console.countReset([label]);
  ///
  external Object countReset([String? label = 'default']);

  ///  Creates a new inline group, indenting all following output by
  /// another level. To move back out a level, call [groupEnd()].
  /// console.group([label]);
  ///
  external Object group([dynamic data]);

  ///  Creates a new inline group, indenting all following output by
  /// another level. However, unlike [group()] this starts with the
  /// inline group collapsed requiring the use of a disclosure button
  /// to expand it. To move back out a level, call [groupEnd()].
  /// console.groupCollapsed([label]);
  ///
  external Object groupCollapsed([dynamic data]);

  /// Exits the current inline group.
  /// console.groupEnd();
  ///
  external Object groupEnd();

  ///  Starts a timer with a name specified as an input parameter. Up
  /// to 10,000 simultaneous timers can run on a given page.
  /// console.time(label);
  ///
  external Object time([String? label = 'default']);

  /// Logs the value of the specified timer to the console.
  /// console.timeLog(label);
  external Object timeLog([String? label = 'default', dynamic data]);

  ///  Stops the specified timer and logs the elapsed time in
  /// milliseconds since it started.
  /// console.timeEnd(label);
  ///
  external Object timeEnd([String? label = 'default']);
}
