/// Fetch Standard
///
/// https://fetch.spec.whatwg.org/
@JS('window')
@staticInterop
library fetch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: fetch
file_a_p_i
xhr
url
streams
referrer_policy
dom
html */

///  The interface of the Fetch API allows you to perform various
/// actions on HTTP request and response headers. These actions
/// include retrieving, setting, adding to, and removing headers from
/// the list of the request's headers.
///  A object has an associated header list, which is initially empty
/// and consists of zero or more name and value pairs. You can add to
/// this using methods like [append()] (see Examples.) In all methods
/// of this interface, header names are matched by case-insensitive
/// byte sequence.
///  For security reasons, some headers can only be controlled by the
/// user agent. These headers include the forbidden header names and
/// forbidden response header names.
///  A Headers object also has an associated guard, which takes a
/// value of [immutable], [request], [request-no-cors], [response],
/// or [none]. This affects whether the [set()], [delete()], and
/// [append()] methods will mutate the header. For more information
/// see Guard.
///  You can retrieve a object via the [Request.headers] and
/// [Response.headers] properties, and create a new object using the
/// [Headers.Headers()] constructor.
///  An object implementing can directly be used in a [for...of]
/// structure, instead of [entries()]: [for (var p of myHeaders)] is
/// equivalent to [for (var p of myHeaders.entries())].
///
///   Note: you can find more out about the available headers by
/// reading our HTTP headers reference.
///
@experimental
@JS()
@staticInterop
class Headers {
  external Headers([dynamic init]);
}

extension PropsHeaders on Headers {
  ///  Appends a new value onto an existing header inside a [Headers]
  /// object, or adds the header if it does not already exist.
  ///
  /// myHeaders.append(name, value);
  ///
  /// Creating an empty Headers object is simple:
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using append():
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns 'image/jpeg'
  ///  If the specified header already exists, append() will change its value to
  ///  the specified value. If the specified header already exists and accepts multiple values,
  ///  append() will append the new value to the end of the value set:
  ///
  /// myHeaders.append('Accept-Encoding', 'deflate');
  /// myHeaders.append('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns 'deflate, gzip'
  ///
  /// To overwrite the old value with a new one, use Headers.set.
  Object append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  /// Deletes a header from a [Headers] object.
  ///
  /// myHeaders.delete(name);
  ///
  /// Creating an empty Headers object is simple:
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using Headers.append:
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns 'image/jpeg'
  ///
  /// You can then delete it again:
  /// myHeaders.delete('Content-Type');
  /// myHeaders.get('Content-Type'); // Returns null, as it has been deleted
  ///
  Object delete(String name) => js_util.callMethod(this, 'delete', [name]);

  ///  Returns a [String] sequence of all the values of a header within
  /// a [Headers] object with a given name.
  ///
  /// myHeaders.get(name);
  ///
  /// Creating an empty Headers object is simple:
  /// var myHeaders = new Headers(); // Currently empty
  /// myHeaders.get('Not-Set'); // Returns null
  ///  You could add a header to this using Headers.append, then retrieve it
  ///  using get():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns "image/jpeg"
  ///  If the header has multiple values associated with it, the byte string will contain all
  ///  the values, in the order they were added to the Headers object:
  ///
  /// myHeaders.append('Accept-Encoding', 'deflate');
  /// myHeaders.append('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns "deflate,gzip"
  /// myHeaders.get('Accept-Encoding').split(',').map(v => v.trimStart()); // Returns [ "deflate", "gzip" ]
  ///
  @JS('get')
  @staticInterop
  String? mGet(String name) => js_util.callMethod(this, 'get', [name]);

  ///  Returns a boolean stating whether a [Headers] object contains a
  /// certain header.
  ///
  /// myHeaders.has(name);
  ///
  /// Creating an empty Headers object is simple:
  /// var myHeaders = new Headers(); // Currently empty
  ///  You could add a header to this using Headers.append, then test for the
  ///  existence of it using has():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.has('Content-Type'); // Returns true
  /// myHeaders.has('Accept-Encoding'); // Returns false
  ///
  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  ///  Sets a new value for an existing header inside a [Headers]
  /// object, or adds the header if it does not already exist.
  ///
  /// myHeaders.set(name, value);
  ///
  /// Creating an empty Headers object is simple:
  /// var myHeaders = new Headers(); // Currently empty
  ///  You could add a header to this using Headers.append, then set a new
  ///  value for this header using set():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.set('Content-Type', 'text/html');
  ///  If the specified header does not already exist, set() will create it and
  ///  set its value to the specified value. If the specified header does already exist and
  ///  does accept multiple values, set() will overwrite the existing value with
  ///  the new one:
  ///
  /// myHeaders.set('Accept-Encoding', 'deflate');
  /// myHeaders.set('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns 'gzip'
  ///  You'd need Headers.append to append the new value onto the values, not
  ///  overwrite it.
  ///
  @JS('set')
  @staticInterop
  Object mSet(String name, String value) =>
      js_util.callMethod(this, 'set', [name, value]);
}

@JS()
@staticInterop
class Body {
  external Body();
}

extension PropsBody on Body {
  ReadableStream? get body => js_util.getProperty(this, 'body');
  bool get bodyUsed => js_util.getProperty(this, 'bodyUsed');
  Future<ByteBuffer> arrayBuffer() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'arrayBuffer', []));

  Future<Blob> blob() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'blob', []));

  Future<FormData> formData() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'formData', []));

  Future<dynamic> json() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'json', []));

  Future<String> text() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'text', []));
}

/// The interface of the Fetch API represents a resource request.
///  You can create a new object using the [Request()] constructor,
/// but you are more likely to encounter a object being returned as
/// the result of another API operation, such as a service worker
/// [FetchEvent.request].
@JS()
@staticInterop
class Request implements Body {
  external Request(dynamic input, [RequestInit? init]);
}

extension PropsRequest on Request {
  /// Contains the request's method ([GET], [POST], etc.)
  ///
  String get method => js_util.getProperty(this, 'method');

  /// Contains the URL of the request.
  ///
  String get url => js_util.getProperty(this, 'url');

  /// Contains the associated [Headers] object of the request.
  ///
  Headers get headers => js_util.getProperty(this, 'headers');

  ///  Returns a string describing the request's destination. This is a
  /// string indicating the type of content being requested.
  ///
  RequestDestination get destination =>
      js_util.getProperty(this, 'destination');

  /// Contains the referrer of the request (e.g., [client]).
  ///
  String get referrer => js_util.getProperty(this, 'referrer');

  ///  Contains the referrer policy of the request (e.g.,
  /// [no-referrer]).
  ///
  ReferrerPolicy get referrerPolicy =>
      js_util.getProperty(this, 'referrerPolicy');

  ///  Contains the mode of the request (e.g., [cors], [no-cors],
  /// [same-origin], [navigate].)
  ///
  RequestMode get mode => js_util.getProperty(this, 'mode');

  ///  Contains the credentials of the request (e.g., [omit],
  /// [same-origin], [include]). The default is [same-origin].
  ///
  RequestCredentials get credentials =>
      js_util.getProperty(this, 'credentials');

  ///  Contains the cache mode of the request (e.g., [default],
  /// [reload], [no-cache]).
  ///
  RequestCache get cache => js_util.getProperty(this, 'cache');

  ///  Contains the mode for how redirects are handled. It may be one
  /// of [follow], [error], or [manual].
  ///
  RequestRedirect get redirect => js_util.getProperty(this, 'redirect');

  ///  Contains the subresource integrity value of the request (e.g.,
  /// [sha256-BpfBw7ivV8q2jLiT13fxDYAe2tJllusRSZ273h2nFSE=]).
  ///
  String get integrity => js_util.getProperty(this, 'integrity');
  bool get keepalive => js_util.getProperty(this, 'keepalive');
  bool get isReloadNavigation =>
      js_util.getProperty(this, 'isReloadNavigation');
  bool get isHistoryNavigation =>
      js_util.getProperty(this, 'isHistoryNavigation');
  AbortSignal get signal => js_util.getProperty(this, 'signal');

  /// Creates a copy of the current [Request] object.
  ///
  /// var newRequest = request.clone();
  ///
  /// In the following snippet, we create a new request using the Request.Request() constructor (for an image file in the same directory as the script), then clone the request.
  /// var myRequest = new Request('flowers.jpg');
  /// var newRequest = myRequest.clone(); // a copy of the request is now stored in newRequest
  ///
  Request clone() => js_util.callMethod(this, 'clone', []);
}

@anonymous
@JS()
@staticInterop
class RequestInit {
  external factory RequestInit(
      {String method,
      dynamic headers,
      dynamic body,
      String referrer,
      ReferrerPolicy referrerPolicy,
      RequestMode mode,
      RequestCredentials credentials,
      RequestCache cache,
      RequestRedirect redirect,
      String integrity,
      bool keepalive,
      AbortSignal? signal,
      dynamic window});
}

extension PropsRequestInit on RequestInit {
  String get method => js_util.getProperty(this, 'method');
  set method(String newValue) {
    js_util.setProperty(this, 'method', newValue);
  }

  dynamic get headers => js_util.getProperty(this, 'headers');
  set headers(dynamic newValue) {
    js_util.setProperty(this, 'headers', newValue);
  }

  dynamic get body => js_util.getProperty(this, 'body');
  set body(dynamic newValue) {
    js_util.setProperty(this, 'body', newValue);
  }

  String get referrer => js_util.getProperty(this, 'referrer');
  set referrer(String newValue) {
    js_util.setProperty(this, 'referrer', newValue);
  }

  ReferrerPolicy get referrerPolicy =>
      js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(ReferrerPolicy newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  RequestMode get mode => js_util.getProperty(this, 'mode');
  set mode(RequestMode newValue) {
    js_util.setProperty(this, 'mode', newValue);
  }

  RequestCredentials get credentials =>
      js_util.getProperty(this, 'credentials');
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue);
  }

  RequestCache get cache => js_util.getProperty(this, 'cache');
  set cache(RequestCache newValue) {
    js_util.setProperty(this, 'cache', newValue);
  }

  RequestRedirect get redirect => js_util.getProperty(this, 'redirect');
  set redirect(RequestRedirect newValue) {
    js_util.setProperty(this, 'redirect', newValue);
  }

  String get integrity => js_util.getProperty(this, 'integrity');
  set integrity(String newValue) {
    js_util.setProperty(this, 'integrity', newValue);
  }

  bool get keepalive => js_util.getProperty(this, 'keepalive');
  set keepalive(bool newValue) {
    js_util.setProperty(this, 'keepalive', newValue);
  }

  AbortSignal? get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal? newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }

  dynamic get window => js_util.getProperty(this, 'window');
  set window(dynamic newValue) {
    js_util.setProperty(this, 'window', newValue);
  }
}

enum RequestDestination {
  empty,
  audio,
  audioworklet,
  document,
  embed,
  font,
  frame,
  iframe,
  image,
  manifest,
  object,
  paintworklet,
  report,
  script,
  sharedworker,
  style,
  track,
  video,
  worker,
  xslt
}

enum RequestMode { navigate, sameOrigin, noCors, cors }

enum RequestCredentials { omit, sameOrigin, include }

enum RequestCache {
  valueDefault,
  noStore,
  reload,
  noCache,
  forceCache,
  onlyIfCached
}

enum RequestRedirect { follow, error, manual }

///  The interface of the Fetch API represents the response to a
/// request.
///  You can create a new object using the [Response.Response()]
/// constructor, but you are more likely to encounter a object being
/// returned as the result of another API operation—for example, a
/// service worker [Fetchevent.respondWith], or a simple [fetch()].
@JS()
@staticInterop
class Response implements Body {
  external Response([dynamic body, ResponseInit? init]);
}

extension PropsResponse on Response {
  /// Returns a new [Response] object associated with a network error.
  ///
  /// var errorResponse = Response.error();
  ///
  /// TBD (does not yet appear to be supported anywhere).
  static Response error() => js_util.callMethod(Response, 'error', []);

  /// Creates a new response with a different URL.
  ///
  /// var response = Response.redirect(url, status);
  ///
  /// Response.redirect('https://www.example.com', 302);
  ///
  static Response redirect(String url, [int? status = 302]) =>
      js_util.callMethod(Response, 'redirect', [url, status]);

  /// The type of the response (e.g., [basic], [cors]).
  ///
  ResponseType get type => js_util.getProperty(this, 'type');

  /// The URL of the response.
  ///
  String get url => js_util.getProperty(this, 'url');

  ///  Indicates whether or not the response is the result of a
  /// redirect (that is, its URL list has more than one entry).
  ///
  bool get redirected => js_util.getProperty(this, 'redirected');

  ///  The status code of the response. (This will be [200] for a
  /// success).
  ///
  int get status => js_util.getProperty(this, 'status');

  ///  A boolean indicating whether the response was successful (status
  /// in the range [200]–[299]) or not.
  ///
  bool get ok => js_util.getProperty(this, 'ok');

  ///  The status message corresponding to the status code. (e.g., [OK]
  /// for [200]).
  ///
  String get statusText => js_util.getProperty(this, 'statusText');

  /// The [Headers] object associated with the response.
  ///
  Headers get headers => js_util.getProperty(this, 'headers');

  /// Creates a clone of a [Response] object.
  ///
  /// var response2 = response1.clone();
  ///
  ///
  ///  In our Fetch Response clone example (see Fetch Response clone live) we create a new Request object using the Request() constructor, passing it a JPG path.
  ///  We then fetch this request using fetch().
  ///  When the fetch resolves successfully, we clone it, extract a blob from both responses using two Response.blob calls, create object URLs out of the blobs using
  ///  URL.createObjectURL, and display them in two separate <img> elements.
  ///
  /// var image1 = document.querySelector('.img1');
  /// var image2 = document.querySelector('.img2');
  ///
  /// var myRequest = new Request('flowers.jpg');
  ///
  /// fetch(myRequest).then(function(response) {
  ///  var response2 = response.clone();
  ///
  ///  response.blob().then(function(myBlob) {
  ///   var objectURL = URL.createObjectURL(myBlob);
  ///   image1.src = objectURL;
  ///  });
  ///
  ///  response2.blob().then(function(myBlob) {
  ///   var objectURL = URL.createObjectURL(myBlob);
  ///   image2.src = objectURL;
  ///  });
  /// });
  ///
  Response clone() => js_util.callMethod(this, 'clone', []);
}

@anonymous
@JS()
@staticInterop
class ResponseInit {
  external factory ResponseInit(
      {int status = 200, String? statusText = '', dynamic headers});
}

extension PropsResponseInit on ResponseInit {
  int get status => js_util.getProperty(this, 'status');
  set status(int newValue) {
    js_util.setProperty(this, 'status', newValue);
  }

  String get statusText => js_util.getProperty(this, 'statusText');
  set statusText(String newValue) {
    js_util.setProperty(this, 'statusText', newValue);
  }

  dynamic get headers => js_util.getProperty(this, 'headers');
  set headers(dynamic newValue) {
    js_util.setProperty(this, 'headers', newValue);
  }
}

enum ResponseType { basic, cors, valueDefault, error, opaque, opaqueredirect }
