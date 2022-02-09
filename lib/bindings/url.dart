/// URL Standard
///
/// https://url.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library url;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('URL')
@staticInterop
class Url {
  external Url(String url, [String? base]);
}

extension PropsUrl on Url {
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }

  String get host => js_util.getProperty(this, 'host');
  set host(String newValue) {
    js_util.setProperty(this, 'host', newValue);
  }

  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  URLSearchParams get searchParams => js_util.getProperty(this, 'searchParams');
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static String createObjectURL(dynamic obj) =>
      js_util.callMethod(Url, 'createObjectURL', [obj]);

  static Object revokeObjectURL(String url) =>
      js_util.callMethod(Url, 'revokeObjectURL', [url]);
}

@JS()
@staticInterop
class URLSearchParams {
  external URLSearchParams([dynamic init]);
}

extension PropsURLSearchParams on URLSearchParams {
  Object append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  Object delete(String name) => js_util.callMethod(this, 'delete', [name]);

  @JS('get')
  @staticInterop
  String? mGet(String name) => js_util.callMethod(this, 'get', [name]);

  Iterable<String> getAll(String name) =>
      js_util.callMethod(this, 'getAll', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  @JS('set')
  @staticInterop
  Object mSet(String name, String value) =>
      js_util.callMethod(this, 'set', [name, value]);

  Object sort() => js_util.callMethod(this, 'sort', []);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
