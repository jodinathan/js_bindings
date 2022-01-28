/// Remote Playback API
///
/// https://w3c.github.io/remote-playback/
@JS('window')
@staticInterop
library remote_playback;

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
  external factory RemotePlayback();
}

extension PropsRemotePlayback on RemotePlayback {
  ///  A [Promise] that resolves with a [callbackId] of an available
  /// remote playback device.
  ///
  /// RemotePlayback.watchAvailability(RemotePlaybackAvailabilityCallback);
  ///
  external Promise<int> watchAvailability(
      RemotePlaybackAvailabilityCallback callback);

  ///  Cancels the request to monitor the availability of remote
  /// playback devices.
  ///
  /// RemotePlayback.cancelWatchAvailability();
  /// RemotePlayback.cancelWatchAvailability(id);
  ///
  external Promise<Object> cancelWatchAvailability([int? id]);

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
  external RemotePlaybackState get state;
  external EventHandlerNonNull? get onconnecting;
  external set onconnecting(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Prompts the user to select and give permission to connect to a
  /// remote playback device.
  ///
  /// RemotePlayback.prompt();
  ///
  external Promise<Object> prompt();
}

enum RemotePlaybackState { connecting, connected, disconnected }
