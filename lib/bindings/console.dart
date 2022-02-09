/// Console Standard
///
/// https://console.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library console;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('console')
@staticInterop
class Console {
  external Console();
}

extension PropsConsole on Console {
  @JS('assert')
  @staticInterop
  Object mAssert(
          [bool? condition = false,
          dynamic data1,
          dynamic data2,
          dynamic data3]) =>
      js_util.callMethod(this, 'assert', [condition, data1, data2, data3]);

  Object clear() => js_util.callMethod(this, 'clear', []);

  Object debug([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'debug', [data1, data2, data3]);

  Object error([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'error', [data1, data2, data3]);

  Object info([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'info', [data1, data2, data3]);

  Object log([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'log', [data1, data2, data3]);

  Object table([dynamic tabularData, Iterable<String>? properties]) =>
      js_util.callMethod(this, 'table', [tabularData, properties]);

  Object trace([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'trace', [data1, data2, data3]);

  Object warn([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'warn', [data1, data2, data3]);

  Object dir([dynamic item, dynamic options]) =>
      js_util.callMethod(this, 'dir', [item, options]);

  Object dirxml([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'dirxml', [data1, data2, data3]);

  Object count([String? label = 'default']) =>
      js_util.callMethod(this, 'count', [label]);

  Object countReset([String? label = 'default']) =>
      js_util.callMethod(this, 'countReset', [label]);

  Object group([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'group', [data1, data2, data3]);

  Object groupCollapsed([dynamic data1, dynamic data2, dynamic data3]) =>
      js_util.callMethod(this, 'groupCollapsed', [data1, data2, data3]);

  Object groupEnd() => js_util.callMethod(this, 'groupEnd', []);

  Object time([String? label = 'default']) =>
      js_util.callMethod(this, 'time', [label]);

  Object timeLog(
          [String? label = 'default',
          dynamic data1,
          dynamic data2,
          dynamic data3]) =>
      js_util.callMethod(this, 'timeLog', [label, data1, data2, data3]);

  Object timeEnd([String? label = 'default']) =>
      js_util.callMethod(this, 'timeEnd', [label]);
}
