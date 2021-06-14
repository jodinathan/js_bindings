/// Presentation API
///
/// https://w3c.github.io/presentation-api/
@JS('window')
library presentation_api;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'file_a_p_i.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The can be defined as two possible user agents in the context:
/// Controlling user agent and Receiving user agent.
///
///  In controlling browsing context, the interface provides a
/// mechanism to override the browser default behavior of launching
/// presentation to external screen. In receiving browsing context,
/// interface provides the access to the available presentation
/// connections.
@experimental
@JS()
class Presentation {
  external PresentationRequest? get defaultRequest;
  external set defaultRequest(PresentationRequest? newValue);
  external PresentationReceiver? get receiver;

  external factory Presentation();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  A object is used to initiate or reconnect to a presentation made
/// by a controlling browsing context. The object MUST be implemented
/// in a controlling browsing context provided by a controlling user
/// agent.
///
///  When a is constructed, the given [urls] MUST be used as the list
/// of presentation request URLs which are each a possible
/// presentation URL for the instance.
@experimental
@JS()
class PresentationRequest extends EventTarget {
  external factory PresentationRequest({String url});

  ///  Returns a [Promise] that resolves with a
  /// [PresentationConnection] after the user agent prompts the user to
  /// select a display and grant permission to use that display.
  /// var promise = presentationRequest.start()
  /// promise.then(function(PresentationConnection) { ... })
  ///     .catch(function(error) { ...})
  external Promise<PresentationConnection> start();

  ///  When the [reconnect(presentationId)] method is called on a
  /// [PresentationRequest] presentationRequest, the user agent MUST
  /// run the following steps to reconnect to a presentation.
  external Promise<PresentationConnection> reconnect(String presentationId);

  ///  When the [getAvailability()] method is called, the user agent
  /// MUST run the steps as the link.
  external Promise<PresentationAvailability> getAvailability();
  external EventHandlerNonNull? get onconnectionavailable;
  external set onconnectionavailable(EventHandlerNonNull? newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  A object is associated with available presentation displays and
/// represents the presentation display availability for a
/// presentation request. If the controlling user agent can monitor
/// the list of available presentation displays in the background
/// (without a pending request to [start()]), the object MUST be
/// implemented in a controlling browsing context.
///
///  The [value] attribute MUST return the last value it was set to.
/// The value is updated by the monitor the list of available
/// presentation displays algorithm.
///
///  The [onchange] attribute is an event handler whose corresponding
/// event handler event type is [change].
@experimental
@JS()
class PresentationAvailability extends EventTarget {
  ///  A boolean value indicating whether the given presentation
  /// display is available. The attribute MUST return the last value it
  /// was set to.
  external bool get value;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory PresentationAvailability();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Presentation API is fired on a
/// [PresentationRequest] when a connection associated with the
/// object is created.
///
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
@experimental
@JS()
class PresentationConnectionAvailableEvent extends Event {
  external factory PresentationConnectionAvailableEvent(
      {String type, PresentationConnectionAvailableEventInit eventInitDict});

  ///  Returns a references to the [PresentationConnection] object that
  /// fired the event.
  external PresentationConnection get connection;
}

@anonymous
@JS()
class PresentationConnectionAvailableEventInit extends EventInit {
  external PresentationConnection get connection;
  external set connection(PresentationConnection newValue);

  external factory PresentationConnectionAvailableEventInit(
      {PresentationConnection connection});
}

@JS()
enum PresentationConnectionState { connecting, connected, closed, terminated }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Presentation API provides methods and
/// properties for managing a single presentation. Each presentation
/// connection is represented by a object. Both the controlling user
/// agent and receiving user agent MUST implement .
@experimental
@JS()
class PresentationConnection extends EventTarget {
  /// Provides the presentation connection identifier.
  external String get id;

  /// Returns the URL used to create or reconnect to the presentation.
  external String get url;

  /// Returns the presentation connection's current state.
  external PresentationConnectionState get state;

  ///  Closes the current connection and sends a
  /// [PresentationConnectionCloseEvent] to
  /// [PresentationConnection.onclosed].
  external Object close();

  ///  Terminates the current connection and fires
  /// [PresentationConnection.onterminated].
  external Object terminate();
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onterminate;
  external set onterminate(EventHandlerNonNull? newValue);

  ///  Returns either blob or arrayBuffer. When a
  /// [PresentationConnection] object is created, its IDL attribute
  /// MUST be set to the string " [arraybuffer]".
  external BinaryType get binaryType;
  external set binaryType(BinaryType newValue);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  ///  Sends either binary or text data between a controlling browsing
  /// context and a presenting browsing context.
  /// PresentationConnection.send(data);
  external Object send(String message);

  external factory PresentationConnection();
}

@JS()
enum PresentationConnectionCloseReason { error, closed, wentaway }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Presentation API is fired on a
/// [PresentationConnection] when it is closed.
@experimental
@JS()
class PresentationConnectionCloseEvent extends Event {
  external factory PresentationConnectionCloseEvent(
      {String type, PresentationConnectionCloseEventInit eventInitDict});

  ///  Indicates why the connection was closed. This property takes one
  /// of the following values: [error], [closed], or [wentaway].
  external PresentationConnectionCloseReason get reason;

  ///  A human-readable message that provides more information about
  /// why the connection was closed.
  external String get message;
}

@anonymous
@JS()
class PresentationConnectionCloseEventInit extends EventInit {
  external PresentationConnectionCloseReason get reason;
  external set reason(PresentationConnectionCloseReason newValue);
  external String get message;
  external set message(String newValue);

  external factory PresentationConnectionCloseEventInit(
      {PresentationConnectionCloseReason reason, String message = ''});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Presentation API provides a means for a
/// receiving browsing context to access controlling browsing
/// contexts and communicate with them.
@experimental
@JS()
class PresentationReceiver {
  ///  Returns a [Promise] that resolves with a
  /// [PresentationConnectionList] object containing a list of incoming
  /// presentation connections.
  external Promise<PresentationConnectionList> get connectionList;

  external factory PresentationReceiver();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  is the collection of incoming presentation connections.
@experimental
@JS()
class PresentationConnectionList extends EventTarget {
  ///  Returns the non-terminated set of [PresentationConnection]s in
  /// the set of presentation controllers.
  external Iterable<PresentationConnection> get connections;
  external EventHandlerNonNull? get onconnectionavailable;
  external set onconnectionavailable(EventHandlerNonNull? newValue);

  external factory PresentationConnectionList();
}
