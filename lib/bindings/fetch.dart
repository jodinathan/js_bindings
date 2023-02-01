/// Fetch Standard
///
/// https://fetch.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
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
class Headers extends JsArray<String> {
  external factory Headers([dynamic init]);
}

extension PropsHeaders on Headers {
  void append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  void delete(String name) => js_util.callMethod(this, 'delete', [name]);

  String? get(String name) => js_util.callMethod(this, 'get', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  void set(String name, String value) =>
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
  RequestDestination get destination =>
      RequestDestination.fromValue(js_util.getProperty(this, 'destination'));
  String get referrer => js_util.getProperty(this, 'referrer');
  ReferrerPolicy get referrerPolicy =>
      ReferrerPolicy.fromValue(js_util.getProperty(this, 'referrerPolicy'));
  RequestMode get mode =>
      RequestMode.fromValue(js_util.getProperty(this, 'mode'));
  RequestCredentials get credentials =>
      RequestCredentials.fromValue(js_util.getProperty(this, 'credentials'));
  RequestCache get cache =>
      RequestCache.fromValue(js_util.getProperty(this, 'cache'));
  RequestRedirect get redirect =>
      RequestRedirect.fromValue(js_util.getProperty(this, 'redirect'));
  String get integrity => js_util.getProperty(this, 'integrity');
  bool get keepalive => js_util.getProperty(this, 'keepalive');
  bool get isReloadNavigation =>
      js_util.getProperty(this, 'isReloadNavigation');
  bool get isHistoryNavigation =>
      js_util.getProperty(this, 'isHistoryNavigation');
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  Request clone() => js_util.callMethod(this, 'clone', []);

  FetchPriority get priority =>
      FetchPriority.fromValue(js_util.getProperty(this, 'priority'));
}

@anonymous
@JS()
@staticInterop
class RequestInit {
  external factory RequestInit._(
      {String? method,
      dynamic headers,
      dynamic body,
      String? referrer,
      String? referrerPolicy,
      String? mode,
      String? credentials,
      String? cache,
      String? redirect,
      String? integrity,
      bool? keepalive,
      AbortSignal? signal,
      String? duplex,
      dynamic window});

  factory RequestInit(
          {String? method,
          dynamic headers,
          dynamic body,
          String? referrer,
          ReferrerPolicy? referrerPolicy,
          RequestMode? mode,
          RequestCredentials? credentials,
          RequestCache? cache,
          RequestRedirect? redirect,
          String? integrity,
          bool? keepalive,
          AbortSignal? signal,
          RequestDuplex? duplex,
          dynamic window}) =>
      RequestInit._(
          method: method ?? undefined,
          headers: headers ?? undefined,
          body: body ?? undefined,
          referrer: referrer ?? undefined,
          referrerPolicy: referrerPolicy?.value ?? undefined,
          mode: mode?.value ?? undefined,
          credentials: credentials?.value ?? undefined,
          cache: cache?.value ?? undefined,
          redirect: redirect?.value ?? undefined,
          integrity: integrity ?? undefined,
          keepalive: keepalive ?? undefined,
          signal: signal ?? undefined,
          duplex: duplex?.value ?? undefined,
          window: window ?? undefined);
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
      ReferrerPolicy.fromValue(js_util.getProperty(this, 'referrerPolicy'));
  set referrerPolicy(ReferrerPolicy newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue.value);
  }

  RequestMode get mode =>
      RequestMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(RequestMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  RequestCredentials get credentials =>
      RequestCredentials.fromValue(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.value);
  }

  RequestCache get cache =>
      RequestCache.fromValue(js_util.getProperty(this, 'cache'));
  set cache(RequestCache newValue) {
    js_util.setProperty(this, 'cache', newValue.value);
  }

  RequestRedirect get redirect =>
      RequestRedirect.fromValue(js_util.getProperty(this, 'redirect'));
  set redirect(RequestRedirect newValue) {
    js_util.setProperty(this, 'redirect', newValue.value);
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
      RequestDuplex.fromValue(js_util.getProperty(this, 'duplex'));
  set duplex(RequestDuplex newValue) {
    js_util.setProperty(this, 'duplex', newValue.value);
  }

  dynamic get window => js_util.getProperty(this, 'window');
  set window(dynamic newValue) {
    js_util.setProperty(this, 'window', newValue);
  }
}

enum RequestDestination {
  empty(''),
  audio('audio'),
  audioworklet('audioworklet'),
  document('document'),
  embed('embed'),
  font('font'),
  frame('frame'),
  iframe('iframe'),
  image('image'),
  manifest('manifest'),
  object('object'),
  paintworklet('paintworklet'),
  report('report'),
  script('script'),
  sharedworker('sharedworker'),
  style('style'),
  track('track'),
  video('video'),
  worker('worker'),
  xslt('xslt');

  final String value;
  static RequestDestination fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestDestination> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestDestination(this.value);
}

enum RequestMode {
  navigate('navigate'),
  sameOrigin('same-origin'),
  noCors('no-cors'),
  cors('cors');

  final String value;
  static RequestMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestMode(this.value);
}

enum RequestCredentials {
  omit('omit'),
  sameOrigin('same-origin'),
  include('include');

  final String value;
  static RequestCredentials fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestCredentials> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestCredentials(this.value);
}

enum RequestCache {
  valueDefault('default'),
  noStore('no-store'),
  reload('reload'),
  noCache('no-cache'),
  forceCache('force-cache'),
  onlyIfCached('only-if-cached');

  final String value;
  static RequestCache fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestCache> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestCache(this.value);
}

enum RequestRedirect {
  follow('follow'),
  error('error'),
  manual('manual');

  final String value;
  static RequestRedirect fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestRedirect> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestRedirect(this.value);
}

enum RequestDuplex {
  half('half');

  final String value;
  static RequestDuplex fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RequestDuplex> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RequestDuplex(this.value);
}

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
  external static Response error();
  external static Response redirect(String url, [int? status = 302]);
  external static Response json(dynamic data, [ResponseInit? init]);
}

extension PropsResponse on Response {
  ResponseType get type =>
      ResponseType.fromValue(js_util.getProperty(this, 'type'));
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

enum ResponseType {
  basic('basic'),
  cors('cors'),
  valueDefault('default'),
  error('error'),
  opaque('opaque'),
  opaqueredirect('opaqueredirect');

  final String value;
  static ResponseType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ResponseType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ResponseType(this.value);
}
