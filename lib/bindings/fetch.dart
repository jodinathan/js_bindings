/// Fetch Standard
///
/// https://fetch.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library fetch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Headers {
  external Headers([dynamic init]);
}

extension PropsHeaders on Headers {
  Object append(String name, String value) =>
      js_util.callMethod(this, 'append', [name, value]);

  Object delete(String name) => js_util.callMethod(this, 'delete', [name]);

  @JS('get')
  @staticInterop
  String? mGet(String name) => js_util.callMethod(this, 'get', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

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

@JS()
@staticInterop
class Request implements Body {
  external Request(dynamic input, [RequestInit? init]);
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

  Importance get importance =>
      Importance.values.byName(js_util.getProperty(this, 'importance'));
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

@JS()
@staticInterop
class Response implements Body {
  external Response([dynamic body, ResponseInit? init]);
}

extension PropsResponse on Response {
  static Response error() => js_util.callMethod(Response, 'error', []);

  static Response redirect(String url, [int? status = 302]) =>
      js_util.callMethod(Response, 'redirect', [url, status]);

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
