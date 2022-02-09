/// XMLHttpRequest Standard
///
/// https://xhr.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library xhr;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class XMLHttpRequestEventTarget implements EventTarget {
  external XMLHttpRequestEventTarget();
}

extension PropsXMLHttpRequestEventTarget on XMLHttpRequestEventTarget {
  EventHandlerNonNull? get onloadstart =>
      js_util.getProperty(this, 'onloadstart');
  set onloadstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadstart', newValue);
  }

  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onload => js_util.getProperty(this, 'onload');
  set onload(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onload', newValue);
  }

  EventHandlerNonNull? get ontimeout => js_util.getProperty(this, 'ontimeout');
  set ontimeout(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontimeout', newValue);
  }

  EventHandlerNonNull? get onloadend => js_util.getProperty(this, 'onloadend');
  set onloadend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadend', newValue);
  }
}

@JS()
@staticInterop
class XMLHttpRequestUpload implements XMLHttpRequestEventTarget {
  external XMLHttpRequestUpload();
}

enum XMLHttpRequestResponseType {
  empty,
  arraybuffer,
  blob,
  document,
  json,
  text
}

@JS()
@staticInterop
class XMLHttpRequest implements XMLHttpRequestEventTarget {
  @JS('UNSENT')
  external static int get unsent;

  @JS('OPENED')
  external static int get opened;

  @JS('HEADERS_RECEIVED')
  external static int get headersReceived;

  @JS('LOADING')
  external static int get loading;

  @JS('DONE')
  external static int get done;

  external XMLHttpRequest();
}

extension PropsXMLHttpRequest on XMLHttpRequest {
  EventHandlerNonNull? get onreadystatechange =>
      js_util.getProperty(this, 'onreadystatechange');
  set onreadystatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreadystatechange', newValue);
  }

  int get readyState => js_util.getProperty(this, 'readyState');
  Object open(String method,
          [String? url, bool? mAsync, String? username, String? password]) =>
      js_util
          .callMethod(this, 'open', [method, url, mAsync, username, password]);

  Object setRequestHeader(String name, String value) =>
      js_util.callMethod(this, 'setRequestHeader', [name, value]);

  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  bool get withCredentials => js_util.getProperty(this, 'withCredentials');
  set withCredentials(bool newValue) {
    js_util.setProperty(this, 'withCredentials', newValue);
  }

  XMLHttpRequestUpload get upload => js_util.getProperty(this, 'upload');
  Object send([dynamic body]) => js_util.callMethod(this, 'send', [body]);

  Object abort() => js_util.callMethod(this, 'abort', []);

  String get responseURL => js_util.getProperty(this, 'responseURL');
  int get status => js_util.getProperty(this, 'status');
  String get statusText => js_util.getProperty(this, 'statusText');
  String? getResponseHeader(String name) =>
      js_util.callMethod(this, 'getResponseHeader', [name]);

  String getAllResponseHeaders() =>
      js_util.callMethod(this, 'getAllResponseHeaders', []);

  Object overrideMimeType(String mime) =>
      js_util.callMethod(this, 'overrideMimeType', [mime]);

  XMLHttpRequestResponseType get responseType =>
      XMLHttpRequestResponseType.values
          .byName(js_util.getProperty(this, 'responseType'));
  set responseType(XMLHttpRequestResponseType newValue) {
    js_util.setProperty(this, 'responseType', newValue.name);
  }

  dynamic get response => js_util.getProperty(this, 'response');
  String get responseText => js_util.getProperty(this, 'responseText');
  Document? get responseXML => js_util.getProperty(this, 'responseXML');
}

@JS()
@staticInterop
class FormData {
  external FormData([HTMLFormElement? form]);
}

extension PropsFormData on FormData {
  Object append(String name, [Blob? blobValue, String? filename]) =>
      js_util.callMethod(this, 'append', [name, blobValue, filename]);

  Object delete(String name) => js_util.callMethod(this, 'delete', [name]);

  @JS('get')
  @staticInterop
  dynamic mGet(String name) => js_util.callMethod(this, 'get', [name]);

  Iterable<dynamic> getAll(String name) =>
      js_util.callMethod(this, 'getAll', [name]);

  bool has(String name) => js_util.callMethod(this, 'has', [name]);

  @JS('set')
  @staticInterop
  Object mSet(String name, [Blob? blobValue, String? filename]) =>
      js_util.callMethod(this, 'set', [name, blobValue, filename]);
}

@JS()
@staticInterop
class ProgressEvent implements Event {
  external ProgressEvent(String type, [ProgressEventInit? eventInitDict]);
}

extension PropsProgressEvent on ProgressEvent {
  bool get lengthComputable => js_util.getProperty(this, 'lengthComputable');
  int get loaded => js_util.getProperty(this, 'loaded');
  int get total => js_util.getProperty(this, 'total');
}

@anonymous
@JS()
@staticInterop
class ProgressEventInit implements EventInit {
  external factory ProgressEventInit(
      {bool? lengthComputable = false, int? loaded = 0, int? total = 0});
}

extension PropsProgressEventInit on ProgressEventInit {
  bool get lengthComputable => js_util.getProperty(this, 'lengthComputable');
  set lengthComputable(bool newValue) {
    js_util.setProperty(this, 'lengthComputable', newValue);
  }

  int get loaded => js_util.getProperty(this, 'loaded');
  set loaded(int newValue) {
    js_util.setProperty(this, 'loaded', newValue);
  }

  int get total => js_util.getProperty(this, 'total');
  set total(int newValue) {
    js_util.setProperty(this, 'total', newValue);
  }
}
