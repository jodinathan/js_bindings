/// Local Font Access API
///
/// https://wicg.github.io/local-font-access/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library local_font_access;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class QueryOptions {
  external factory QueryOptions({required Iterable<String> postscriptNames});
}

extension PropsQueryOptions on QueryOptions {
  Iterable<String> get postscriptNames =>
      js_util.getProperty(this, 'postscriptNames');
  set postscriptNames(Iterable<String> newValue) {
    js_util.setProperty(this, 'postscriptNames', newValue);
  }
}

@JS()
@staticInterop
class FontData {
  external factory FontData();
}

extension PropsFontData on FontData {
  Future<Blob> blob() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'blob', []));

  String get postscriptName => js_util.getProperty(this, 'postscriptName');
  String get fullName => js_util.getProperty(this, 'fullName');
  String get family => js_util.getProperty(this, 'family');
  String get style => js_util.getProperty(this, 'style');
}
