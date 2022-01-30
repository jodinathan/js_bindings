/// URL Standard
///
/// https://url.spec.whatwg.org/
@JS('window')
@staticInterop
library url;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: file_a_p_i
media_source */

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
@JS()
@staticInterop
class URL {
  external URL(String url, [String? base]);
}

extension PropsURL on URL {
  /// A stringifier that returns a [String] containing the whole URL.
  ///
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  ///  Returns a [String] containing the origin of the URL, that is its
  /// scheme, its domain and its port.
  ///
  String get origin => js_util.getProperty(this, 'origin');

  ///  A [String] containing the protocol scheme of the URL, including
  /// the final [':'].
  ///
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  ///  A [String] containing the username specified before the domain
  /// name.
  ///
  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  ///  A [String] containing the password specified before the domain
  /// name.
  ///
  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }

  ///  A [String] containing the domain (that is the hostname) followed
  /// by (if a port was specified) a [':'] and the port of the URL.
  ///
  String get host => js_util.getProperty(this, 'host');
  set host(String newValue) {
    js_util.setProperty(this, 'host', newValue);
  }

  /// A [String] containing the domain of the URL.
  ///
  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  /// A [String] containing the port number of the URL.
  ///
  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  ///  Is a [String] containing an initial ['/'] followed by the path
  /// of the URL, not including the query string or fragment.
  ///
  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  ///  A [String] indicating the URL's parameter string; if any
  /// parameters are provided, this string includes all of them,
  /// beginning with the leading [?] character.
  ///
  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  ///  A [URLSearchParams] object which can be used to access the
  /// individual query parameters found in [search].
  ///
  URLSearchParams get searchParams => js_util.getProperty(this, 'searchParams');

  ///  A [String] containing a ['#'] followed by the fragment
  /// identifier of the URL.
  ///
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  ///  Returns a [String] containing the whole URL. It returns the same
  /// string as the [href] property.
  ///
  /// const href = url.toJSON()
  ///
  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static String createObjectURL(dynamic obj) =>
      js_util.callMethod(URL, 'createObjectURL', [obj]);

  static Object revokeObjectURL(String url) =>
      js_util.callMethod(URL, 'revokeObjectURL', [url]);
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
class URLSearchParams {
  external URLSearchParams([dynamic init]);
}

extension PropsURLSearchParams on URLSearchParams {
  /// Appends a specified key/value pair as a new search parameter.
  ///
  /// URLSearchParams.append(name, value)
  ///
  Object append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  ///  Deletes the given search parameter, and its associated value,
  /// from the list of all search parameters.
  ///
  /// URLSearchParams.delete(name)
  ///
  Object delete(String name) => js_util.callMethod(this, 'delete', [name]);

  ///  Returns the first value associated with the given search
  /// parameter.
  ///
  /// URLSearchParams.get(name)
  ///
  @JS('get')
  @staticInterop
  String? mGet(String name) => js_util.callMethod(this, 'get', [name]);

  /// Returns all the values associated with a given search parameter.
  ///
  /// URLSearchParams.getAll(name)
  ///
  Iterable<String> getAll(String name) =>
      js_util.callMethod(this, 'getAll', [name]);

  ///  Returns a boolean value indicating if such a given parameter
  /// exists.
  ///
  /// var hasName = URLSearchParams.has(name)
  ///
  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  ///  Sets the value associated with a given search parameter to the
  /// given value. If there are several values, the others are deleted.
  ///
  /// URLSearchParams.set(name, value)
  ///
  @JS('set')
  @staticInterop
  Object mSet(

          /// The name of the parameter to set.
          ///
          String name,

          /// The value of the parameter to set.
          ///
          String value) =>
      js_util.callMethod(this, 'set', [name, value]);

  /// Sorts all key/value pairs, if any, by their keys.
  ///
  /// searchParams.sort();
  ///
  Object sort() => js_util.callMethod(this, 'sort', []);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
