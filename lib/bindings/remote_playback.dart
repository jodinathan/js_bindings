/// Remote Playback API
///
/// https://w3c.github.io/remote-playback/
@JS('window')
@staticInterop
library remote_playback;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  The interface of the Remote Playback API allows the page to
/// detect availability of remote playback devices, then connect to
/// and control playing on these devices.
@JS()
@staticInterop
class RemotePlayback implements EventTarget {
  external RemotePlayback();
}

extension PropsRemotePlayback on RemotePlayback {
  ///  A [Promise] that resolves with a [callbackId] of an available
  /// remote playback device.
  ///
  /// RemotePlayback.watchAvailability(RemotePlaybackAvailabilityCallback);
  ///
  Future<int> watchAvailability(RemotePlaybackAvailabilityCallback callback) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'watchAvailability', [allowInterop(callback)]));

  ///  Cancels the request to monitor the availability of remote
  /// playback devices.
  ///
  /// RemotePlayback.cancelWatchAvailability();
  /// RemotePlayback.cancelWatchAvailability(id);
  ///
  Future<Object> cancelWatchAvailability([int? id]) => js_util.promiseToFuture(
      js_util.callMethod(this, 'cancelWatchAvailability', [id]));

  /// Represents the [RemotePlayback] connection's state. One of:
  ///
  ///    ["connecting"]
  ///
  ///      The user agent is attempting to initiate remote playback
  /// with the selected device.
  ///
  ///    ["connected"]
  ///
  ///      The transition from local to remote playback has happened,
  /// all commands will now take place on the remote device.
  ///
  ///    ["disconnected"]
  ///
  ///      The remote playback has not been initiated, has failed to
  /// initiate, or has been stopped.
  ///
  ///
  ///
  RemotePlaybackState get state => js_util.getProperty(this, 'state');
  EventHandlerNonNull? get onconnecting =>
      js_util.getProperty(this, 'onconnecting');
  set onconnecting(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnecting', newValue);
  }

  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  ///  Prompts the user to select and give permission to connect to a
  /// remote playback device.
  ///
  /// RemotePlayback.prompt();
  ///
  Future<Object> prompt() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'prompt', []));
}

enum RemotePlaybackState { connecting, connected, disconnected }
