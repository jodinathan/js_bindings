/// URL Standard
///
/// https://url.spec.whatwg.org/
@JS('window')
library url;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'file_a_p_i.dart';
import 'media_source.dart';

///
///
///  The interface is used to parse, construct, normalize, and encode
/// URLs. It works by providing properties which allow you to easily
/// read and modify the components of a URL. You normally create a
/// new object by specifying the URL as a string when calling its
/// constructor, or by providing a relative URL and a base URL. You
/// can then easily read the parsed components of the URL or make
/// changes to the URL.
///
///  If a browser doesn't yet support the [URL()] constructor, you
/// can access a URL object using the [Window] interface's property.
/// Be sure to check to see if any of your target browsers require
/// this to be prefixed.
///  Note: This feature is available in Web Workers
///
@JS()
class URL {
  external factory URL({String url, String? base});

  ///  A stringifier that returns a [USVString] containing the whole
  /// URL.
  external String get href;
  external set href(String newValue);

  ///  Returns a [USVString] containing the origin of the URL, that is
  /// its scheme, its domain and its port.
  external String get origin;

  ///  A [USVString] containing the protocol scheme of the URL,
  /// including the final [':'].
  external String get protocol;
  external set protocol(String newValue);

  ///  A [USVString] containing the username specified before the
  /// domain name.
  external String get username;
  external set username(String newValue);

  ///  A [USVString] containing the password specified before the
  /// domain name.
  external String get password;
  external set password(String newValue);

  ///  A [USVString] containing the domain (that is the hostname)
  /// followed by (if a port was specified) a [':'] and the port of the
  /// URL.
  external String get host;
  external set host(String newValue);

  /// A [USVString] containing the domain of the URL.
  external String get hostname;
  external set hostname(String newValue);

  /// A [USVString] containing the port number of the URL.
  external String get port;
  external set port(String newValue);

  ///  Is a [USVString] containing an initial ['/'] followed by the
  /// path of the URL, not including the query string or fragment.
  external String get pathname;
  external set pathname(String newValue);

  ///  A [USVString] indicating the URL's parameter string; if any
  /// parameters are provided, this string includes all of them,
  /// beginning with the leading [?] character.
  external String get search;
  external set search(String newValue);

  ///  A [URLSearchParams] object which can be used to access the
  /// individual query parameters found in [search].
  external URLSearchParams get searchParams;

  ///  A [USVString] containing a ['#'] followed by the fragment
  /// identifier of the URL.
  external String get hash;
  external set hash(String newValue);

  ///  Returns a [USVString] containing the whole URL. It returns the
  /// same string as the [href] property.
  /// const href = url.toJSON()
  external String toJSON();
  external static String createObjectURL(dynamic obj);
  external static Object revokeObjectURL(String url);
}

///
///
///  The interface defines utility methods to work with the query
/// string of a URL.
///
///  An object implementing can directly be used in a [for...of]
/// structure, for example the following two lines are equivalent:
///
/// [for (const [key, value] of mySearchParams) {}
/// for (const [key, value] of mySearchParams.entries()) {}]
///  Note: This feature is available in Web Workers
///
@JS()
class URLSearchParams {
  external factory URLSearchParams({dynamic? init});

  /// Appends a specified key/value pair as a new search parameter.
  /// URLSearchParams.append(name, value)
  external Object append(String name, String value);

  ///  Deletes the given search parameter, and its associated value,
  /// from the list of all search parameters.
  /// URLSearchParams.delete(name)
  external Object delete(String name);

  ///  Returns the first value associated with the given search
  /// parameter.
  /// URLSearchParams.get(name)
  @JS('get')
  external String? mGet(String name);

  /// Returns all the values associated with a given search parameter.
  /// URLSearchParams.getAll(name)
  external Iterable<String> getAll(String name);

  /// Returns a [Boolean] indicating if such a given parameter exists.
  /// var hasName = URLSearchParams.has(name)
  external bool has(String name);

  ///  Sets the value associated with a given search parameter to the
  /// given value. If there are several values, the others are deleted.
  /// URLSearchParams.set(name, value)
  @JS('set')
  external Object mSet(String name, String value);

  /// Sorts all key/value pairs, if any, by their keys.
  /// searchParams.sort();
  external Object sort();
  @override
  external String toString();
}
