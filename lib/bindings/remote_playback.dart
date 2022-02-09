/// Remote Playback API
///
/// https://w3c.github.io/remote-playback/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library remote_playback;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class RemotePlayback implements EventTarget {
  external RemotePlayback();
}

extension PropsRemotePlayback on RemotePlayback {
  Future<int> watchAvailability(RemotePlaybackAvailabilityCallback callback) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'watchAvailability', [allowInterop(callback)]));

  Future<Object> cancelWatchAvailability([int? id]) => js_util.promiseToFuture(
      js_util.callMethod(this, 'cancelWatchAvailability', [id]));

  RemotePlaybackState get state =>
      RemotePlaybackState.values.byName(js_util.getProperty(this, 'state'));
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

  Future<Object> prompt() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'prompt', []));
}

enum RemotePlaybackState { connecting, connected, disconnected }
