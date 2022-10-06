/// Fetch Standard
///
/// https://fetch.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library fetch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

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
  external factory Headers([dynamic init]);
}

extension PropsHeaders on Headers {
  void append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  void delete(String name) => js_util.callMethod(this, 'delete', [name]);

  @JS('get')
  @staticInterop
  String? mGet(String name) => js_util.callMethod(this, 'get', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  @JS('set')
  @staticInterop
  void mSet(String name, String value) =>
      js_util.callMethod(this, 'set', [name, value]);
}

@JS()
@staticInterop
class Body {
  external factory Body();
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
  external factory Request(dynamic input, [RequestInit? init]);
}

extension PropsRequest on Request {
  String get method => js_util.getProperty(this, 'method');
  String get url => js_util.getProperty(this, 'url');
  Headers get headers => js_util.getProperty(this, 'headers');
  RequestDestination get destination => RequestDestination.values
      .byName(js_util.getProperty(this, 'destination'));
  String get referrer => js_util.getProperty(this, 'referrer');
  ReferrerPolicy get referrerPolicy =>
      ReferrerPolicy.values.byName(js_util.getProperty(this, 'referrerPolicy'));
  RequestMode get mode =>
      RequestMode.values.byName(js_util.getProperty(this, 'mode'));
  RequestCredentials get credentials => RequestCredentials.values
      .byName(js_util.getProperty(this, 'credentials'));
  RequestCache get cache =>
      RequestCache.values.byName(js_util.getProperty(this, 'cache'));
  RequestRedirect get redirect =>
      RequestRedirect.values.byName(js_util.getProperty(this, 'redirect'));
  String get integrity => js_util.getProperty(this, 'integrity');
  bool get keepalive => js_util.getProperty(this, 'keepalive');
  bool get isReloadNavigation =>
      js_util.getProperty(this, 'isReloadNavigation');
  bool get isHistoryNavigation =>
      js_util.getProperty(this, 'isHistoryNavigation');
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  Request clone() => js_util.callMethod(this, 'clone', []);

  FetchPriority get priority =>
      FetchPriority.values.byName(js_util.getProperty(this, 'priority'));
}

@anonymous
@JS()
@staticInterop
class RequestInit {
  external factory RequestInit._(
      {required String method,
      dynamic headers,
      dynamic body,
      required String referrer,
      required String referrerPolicy,
      required String mode,
      required String credentials,
      required String cache,
      required String redirect,
      required String integrity,
      required bool keepalive,
      AbortSignal? signal,
      required String duplex,
      dynamic window});

  factory RequestInit(
          {required String method,
          dynamic headers,
          dynamic body,
          required String referrer,
          required ReferrerPolicy referrerPolicy,
          required RequestMode mode,
          required RequestCredentials credentials,
          required RequestCache cache,
          required RequestRedirect redirect,
          required String integrity,
          required bool keepalive,
          AbortSignal? signal,
          required RequestDuplex duplex,
          dynamic window}) =>
      RequestInit._(
          method: method,
          headers: headers,
          body: body,
          referrer: referrer,
          referrerPolicy: referrerPolicy.name,
          mode: mode.name,
          credentials: credentials.name,
          cache: cache.name,
          redirect: redirect.name,
          integrity: integrity,
          keepalive: keepalive,
          signal: signal,
          duplex: duplex.name,
          window: window);
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
      ReferrerPolicy.values.byName(js_util.getProperty(this, 'referrerPolicy'));
  set referrerPolicy(ReferrerPolicy newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue.name);
  }

  RequestMode get mode =>
      RequestMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(RequestMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }

  RequestCredentials get credentials => RequestCredentials.values
      .byName(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.name);
  }

  RequestCache get cache =>
      RequestCache.values.byName(js_util.getProperty(this, 'cache'));
  set cache(RequestCache newValue) {
    js_util.setProperty(this, 'cache', newValue.name);
  }

  RequestRedirect get redirect =>
      RequestRedirect.values.byName(js_util.getProperty(this, 'redirect'));
  set redirect(RequestRedirect newValue) {
    js_util.setProperty(this, 'redirect', newValue.name);
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

  RequestDuplex get duplex =>
      RequestDuplex.values.byName(js_util.getProperty(this, 'duplex'));
  set duplex(RequestDuplex newValue) {
    js_util.setProperty(this, 'duplex', newValue.name);
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

enum RequestDuplex { half }

///  The interface of the Fetch API represents the response to a
/// request.
///  You can create a new object using the [Response.Response()]
/// constructor, but you are more likely to encounter a object being
/// returned as the result of another API operation—for example, a
/// service worker [FetchEvent.respondWith], or a simple [fetch()].
@JS()
@staticInterop
class Response implements Body {
  external factory Response([dynamic body, ResponseInit? init]);
}

extension PropsResponse on Response {
  static Response error() => js_util.callMethod(Response, 'error', []);

  static Response redirect(String url, [int? status = 302]) =>
      js_util.callMethod(Response, 'redirect', [url, status]);

  static Response json(dynamic data, [ResponseInit? init]) =>
      js_util.callMethod(Response, 'json', [data, init]);

  ResponseType get type =>
      ResponseType.values.byName(js_util.getProperty(this, 'type'));
  String get url => js_util.getProperty(this, 'url');
  bool get redirected => js_util.getProperty(this, 'redirected');
  int get status => js_util.getProperty(this, 'status');
  bool get ok => js_util.getProperty(this, 'ok');
  String get statusText => js_util.getProperty(this, 'statusText');
  Headers get headers => js_util.getProperty(this, 'headers');
  Response clone() => js_util.callMethod(this, 'clone', []);
}

@anonymous
@JS()
@staticInterop
class ResponseInit {
  external factory ResponseInit(
      {int? status = 200, String? statusText = '', dynamic headers});
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
