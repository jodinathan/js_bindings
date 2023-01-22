/// WebSockets Standard
///
/// https://websockets.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library websockets;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum BinaryType {
  blob('blob'),
  arraybuffer('arraybuffer');

  final String value;
  static BinaryType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const BinaryType(this.value);
}

///  The object provides the API for creating and managing a
/// WebSocket connection to a server, as well as for sending and
/// receiving data on the connection.
/// To construct a , use the [WebSocket()] constructor.
///  Note: This feature is available in Web Workers
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
///    WebSocket
///
///
@JS()
@staticInterop
class WebSocket implements EventTarget {
  external factory WebSocket(String url, [dynamic protocols = const []]);
  @JS('CONNECTING')
  external static int get connecting;

  @JS('OPEN')
  external static int get open;

  @JS('CLOSING')
  external static int get closing;

  @JS('CLOSED')
  external static int get closed;
}

extension PropsWebSocket on WebSocket {
  String get url => js_util.getProperty(this, 'url');
  int get readyState => js_util.getProperty(this, 'readyState');
  int get bufferedAmount => js_util.getProperty(this, 'bufferedAmount');
  EventHandlerNonNull? get onopen => js_util.getProperty(this, 'onopen');
  set onopen(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onopen', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  String get extensions => js_util.getProperty(this, 'extensions');
  String get protocol => js_util.getProperty(this, 'protocol');
  void close([int? code, String? reason]) =>
      js_util.callMethod(this, 'close', [code, reason]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  BinaryType get binaryType =>
      BinaryType.fromValue(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.value);
  }

  void send(dynamic data) => js_util.callMethod(this, 'send', [data]);
}

///  A is sent to clients using WebSockets when the connection is
/// closed. This is delivered to the listener indicated by the
/// [WebSocket] object's [onclose] attribute.
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
///    CloseEvent
///
///
@JS()
@staticInterop
class CloseEvent implements Event {
  external factory CloseEvent(String type, [CloseEventInit? eventInitDict]);
}

extension PropsCloseEvent on CloseEvent {
  bool get wasClean => js_util.getProperty(this, 'wasClean');
  int get code => js_util.getProperty(this, 'code');
  String get reason => js_util.getProperty(this, 'reason');
}

@anonymous
@JS()
@staticInterop
class CloseEventInit implements EventInit {
  external factory CloseEventInit(
      {bool? wasClean = false, int? code = 0, String? reason = ''});
}

extension PropsCloseEventInit on CloseEventInit {
  bool get wasClean => js_util.getProperty(this, 'wasClean');
  set wasClean(bool newValue) {
    js_util.setProperty(this, 'wasClean', newValue);
  }

  int get code => js_util.getProperty(this, 'code');
  set code(int newValue) {
    js_util.setProperty(this, 'code', newValue);
  }

  String get reason => js_util.getProperty(this, 'reason');
  set reason(String newValue) {
    js_util.setProperty(this, 'reason', newValue);
  }
}
