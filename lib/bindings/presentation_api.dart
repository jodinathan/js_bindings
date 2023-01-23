/// Presentation API
///
/// https://w3c.github.io/presentation-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library presentation_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The can be defined as two possible user agents in the context:
/// Controlling user agent and Receiving user agent.
///  In controlling browsing context, the interface provides a
/// mechanism to override the browser default behavior of launching
/// presentation to external screen. In receiving browsing context,
/// interface provides the access to the available presentation
/// connections.
@experimental
@JS()
@staticInterop
class Presentation {
  external factory Presentation();
}

extension PropsPresentation on Presentation {
  PresentationRequest? get defaultRequest =>
      js_util.getProperty(this, 'defaultRequest');
  set defaultRequest(PresentationRequest? newValue) {
    js_util.setProperty(this, 'defaultRequest', newValue);
  }

  PresentationReceiver? get receiver => js_util.getProperty(this, 'receiver');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  A object is used to initiate or reconnect to a presentation made
/// by a controlling browsing context. The object MUST be implemented
/// in a controlling browsing context provided by a controlling user
/// agent.
///  When a is constructed, the given [urls] MUST be used as the list
/// of presentation request URLs which are each a possible
/// presentation URL for the instance.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    PresentationRequest
///
///
@experimental
@JS()
@staticInterop
class PresentationRequest implements EventTarget {
  external factory PresentationRequest(String url);
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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  A object is associated with available presentation displays and
/// represents the presentation display availability for a
/// presentation request. If the controlling user agent can monitor
/// the list of available presentation displays in the background
/// (without a pending request to [start()]), the object MUST be
/// implemented in a controlling browsing context.
///  The [value] attribute MUST return the last value it was set to.
/// The value is updated by the monitor the list of available
/// presentation displays algorithm.
///  The [onchange] attribute is an event handler whose corresponding
/// event handler event type is [change].
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    PresentationAvailability
///
///
@experimental
@JS()
@staticInterop
class PresentationAvailability implements EventTarget {
  external factory PresentationAvailability();
}

extension PropsPresentationAvailability on PresentationAvailability {
  bool get value => js_util.getProperty(this, 'value');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Presentation API is fired on a
/// [PresentationRequest] when a connection associated with the
/// object is created.
///  A controlling user agent fires a trusted event named
/// [connectionavailable] on a [PresentationRequest] when a
/// connection associated with the object is created. It is fired at
/// the [PresentationRequest] instance, using the interface, with the
/// [connection] attribute set to the [PresentationConnection] object
/// that was created. The event is fired for each connection that is
/// created for the controller, either by the controller calling
/// [start()] or [reconnect()], or by the controlling user agent
/// creating a connection on the controller's behalf via
/// [defaultRequest].
///
///
///
///    Event
///
///
///
///
///
///
///
///    PresentationConnectionAvailableEvent
///
///
@experimental
@JS()
@staticInterop
class PresentationConnectionAvailableEvent implements Event {
  external factory PresentationConnectionAvailableEvent(
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

enum PresentationConnectionState {
  connecting('connecting'),
  connected('connected'),
  closed('closed'),
  terminated('terminated');

  final String value;
  static PresentationConnectionState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PresentationConnectionState> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const PresentationConnectionState(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Presentation API provides methods and
/// properties for managing a single presentation. Each presentation
/// connection is represented by a object. Both the controlling user
/// agent and receiving user agent MUST implement .
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    PresentationConnection
///
///
@experimental
@JS()
@staticInterop
class PresentationConnection implements EventTarget {
  external factory PresentationConnection();
}

extension PropsPresentationConnection on PresentationConnection {
  String get id => js_util.getProperty(this, 'id');
  String get url => js_util.getProperty(this, 'url');
  PresentationConnectionState get state =>
      PresentationConnectionState.fromValue(js_util.getProperty(this, 'state'));
  void close() => js_util.callMethod(this, 'close', []);

  void terminate() => js_util.callMethod(this, 'terminate', []);

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
      BinaryType.fromValue(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.value);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  void send(String message) => js_util.callMethod(this, 'send', [message]);
}

enum PresentationConnectionCloseReason {
  error('error'),
  closed('closed'),
  wentaway('wentaway');

  final String value;
  static PresentationConnectionCloseReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PresentationConnectionCloseReason> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const PresentationConnectionCloseReason(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Presentation API is fired on a
/// [PresentationConnection] when it is closed.
///
///
///
///    Event
///
///
///
///
///
///
///
///    PresentationConnectionCloseEvent
///
///
@experimental
@JS()
@staticInterop
class PresentationConnectionCloseEvent implements Event {
  external factory PresentationConnectionCloseEvent(
      String type, PresentationConnectionCloseEventInit eventInitDict);
}

extension PropsPresentationConnectionCloseEvent
    on PresentationConnectionCloseEvent {
  PresentationConnectionCloseReason get reason =>
      PresentationConnectionCloseReason.fromValue(
          js_util.getProperty(this, 'reason'));
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
          reason: reason.value, message: message);
}

extension PropsPresentationConnectionCloseEventInit
    on PresentationConnectionCloseEventInit {
  PresentationConnectionCloseReason get reason =>
      PresentationConnectionCloseReason.fromValue(
          js_util.getProperty(this, 'reason'));
  set reason(PresentationConnectionCloseReason newValue) {
    js_util.setProperty(this, 'reason', newValue.value);
  }

  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Presentation API provides a means for a
/// receiving browsing context to access controlling browsing
/// contexts and communicate with them.
@experimental
@JS()
@staticInterop
class PresentationReceiver {
  external factory PresentationReceiver();
}

extension PropsPresentationReceiver on PresentationReceiver {
  Future<PresentationConnectionList> get connectionList =>
      js_util.promiseToFuture(js_util.getProperty(this, 'connectionList'));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  is the collection of incoming presentation connections.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    PresentationConnectionList
///
///
@experimental
@JS()
@staticInterop
class PresentationConnectionList implements EventTarget {
  external factory PresentationConnectionList();
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
