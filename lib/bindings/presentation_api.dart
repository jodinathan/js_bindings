/// Presentation API
///
/// https://w3c.github.io/presentation-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library presentation_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Presentation {
  external Presentation();
}

extension PropsPresentation on Presentation {
  PresentationRequest? get defaultRequest =>
      js_util.getProperty(this, 'defaultRequest');
  set defaultRequest(PresentationRequest? newValue) {
    js_util.setProperty(this, 'defaultRequest', newValue);
  }

  PresentationReceiver? get receiver => js_util.getProperty(this, 'receiver');
}

@JS()
@staticInterop
class PresentationRequest implements EventTarget {
  external PresentationRequest(String url);
}

extension PropsPresentationRequest on PresentationRequest {
  Future<PresentationConnection> start() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'start', []));

  Future<PresentationConnection> reconnect(String presentationId) => js_util
      .promiseToFuture(js_util.callMethod(this, 'reconnect', [presentationId]));

  Future<PresentationAvailability> getAvailability() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAvailability', []));

  EventHandlerNonNull? get onconnectionavailable =>
      js_util.getProperty(this, 'onconnectionavailable');
  set onconnectionavailable(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnectionavailable', newValue);
  }
}

@JS()
@staticInterop
class PresentationAvailability implements EventTarget {
  external PresentationAvailability();
}

extension PropsPresentationAvailability on PresentationAvailability {
  bool get value => js_util.getProperty(this, 'value');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

@JS()
@staticInterop
class PresentationConnectionAvailableEvent implements Event {
  external PresentationConnectionAvailableEvent(
      String type, PresentationConnectionAvailableEventInit eventInitDict);
}

extension PropsPresentationConnectionAvailableEvent
    on PresentationConnectionAvailableEvent {
  PresentationConnection get connection =>
      js_util.getProperty(this, 'connection');
}

@anonymous
@JS()
@staticInterop
class PresentationConnectionAvailableEventInit implements EventInit {
  external factory PresentationConnectionAvailableEventInit(
      {required PresentationConnection connection});
}

extension PropsPresentationConnectionAvailableEventInit
    on PresentationConnectionAvailableEventInit {
  PresentationConnection get connection =>
      js_util.getProperty(this, 'connection');
  set connection(PresentationConnection newValue) {
    js_util.setProperty(this, 'connection', newValue);
  }
}

enum PresentationConnectionState { connecting, connected, closed, terminated }

@JS()
@staticInterop
class PresentationConnection implements EventTarget {
  external PresentationConnection();
}

extension PropsPresentationConnection on PresentationConnection {
  String get id => js_util.getProperty(this, 'id');
  String get url => js_util.getProperty(this, 'url');
  PresentationConnectionState get state => PresentationConnectionState.values
      .byName(js_util.getProperty(this, 'state'));
  Object close() => js_util.callMethod(this, 'close', []);

  Object terminate() => js_util.callMethod(this, 'terminate', []);

  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  EventHandlerNonNull? get onterminate =>
      js_util.getProperty(this, 'onterminate');
  set onterminate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onterminate', newValue);
  }

  BinaryType get binaryType =>
      BinaryType.values.byName(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.name);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  Object send(String message) => js_util.callMethod(this, 'send', [message]);
}

enum PresentationConnectionCloseReason { error, closed, wentaway }

@JS()
@staticInterop
class PresentationConnectionCloseEvent implements Event {
  external PresentationConnectionCloseEvent(
      String type, PresentationConnectionCloseEventInit eventInitDict);
}

extension PropsPresentationConnectionCloseEvent
    on PresentationConnectionCloseEvent {
  PresentationConnectionCloseReason get reason =>
      PresentationConnectionCloseReason.values
          .byName(js_util.getProperty(this, 'reason'));
  String get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class PresentationConnectionCloseEventInit implements EventInit {
  external factory PresentationConnectionCloseEventInit._(
      {required String reason, String? message = ''});

  factory PresentationConnectionCloseEventInit(
          {required PresentationConnectionCloseReason reason,
          String? message = ''}) =>
      PresentationConnectionCloseEventInit._(
          reason: reason.name, message: message);
}

extension PropsPresentationConnectionCloseEventInit
    on PresentationConnectionCloseEventInit {
  PresentationConnectionCloseReason get reason =>
      PresentationConnectionCloseReason.values
          .byName(js_util.getProperty(this, 'reason'));
  set reason(PresentationConnectionCloseReason newValue) {
    js_util.setProperty(this, 'reason', newValue.name);
  }

  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

@JS()
@staticInterop
class PresentationReceiver {
  external PresentationReceiver();
}

extension PropsPresentationReceiver on PresentationReceiver {
  Future<PresentationConnectionList> get connectionList =>
      js_util.promiseToFuture(js_util.getProperty(this, 'connectionList'));
}

@JS()
@staticInterop
class PresentationConnectionList implements EventTarget {
  external PresentationConnectionList();
}

extension PropsPresentationConnectionList on PresentationConnectionList {
  Iterable<PresentationConnection> get connections =>
      js_util.getProperty(this, 'connections');
  EventHandlerNonNull? get onconnectionavailable =>
      js_util.getProperty(this, 'onconnectionavailable');
  set onconnectionavailable(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnectionavailable', newValue);
  }
}
