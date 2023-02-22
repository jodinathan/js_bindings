/// URL Standard
///
/// https://url.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library url;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface is used to parse, construct, normalize, and encode
/// URLs. It works by providing properties which allow you to easily
/// read and modify the components of a URL.
///  You normally create a new object by specifying the URL as a
/// string when calling its constructor, or by providing a relative
/// URL and a base URL. You can then easily read the parsed
/// components of the URL or make changes to the URL.
///  If a browser doesn't yet support the [URL()] constructor, you
/// can access a URL object using the [Window] interface's property.
/// Be sure to check to see if any of your target browsers require
/// this to be prefixed.
///  Note: This feature is available in Web Workers
///
@JS('URL')
@staticInterop
class Url {
  external factory Url(String url, [String? base]);
  external static String createObjectURL(dynamic obj);
  external static void revokeObjectURL(String url);
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
}

///  The interface defines utility methods to work with the query
/// string of a URL.
///  An object implementing can directly be used in a [for...of]
/// structure to iterate over key/value pairs in the same order as
/// they appear in the query string, for example the following two
/// lines are equivalent:
/// [for (const [key, value] of mySearchParams) {}
/// for (const [key, value] of mySearchParams.entries()) {}
/// ]
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class URLSearchParams extends JsIterable<String> {
  external factory URLSearchParams([dynamic init]);
}

extension PropsURLSearchParams on URLSearchParams {
  void append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  void delete(String name) => js_util.callMethod(this, 'delete', [name]);

  String? get(String name) => js_util.callMethod(this, 'get', [name]);

  Iterable<String> getAll(String name) =>
      js_util.callMethod(this, 'getAll', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  void set(String name, String value) =>
      js_util.callMethod(this, 'set', [name, value]);

  void sort() => js_util.callMethod(this, 'sort', []);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
