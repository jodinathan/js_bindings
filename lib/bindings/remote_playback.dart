/// Remote Playback API
///
/// https://w3c.github.io/remote-playback/
@JS('window')
library remote_playback;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@JS()
class RemotePlayback extends EventTarget {
  external Promise<int> watchAvailability(
      RemotePlaybackAvailabilityCallback callback);
  external Promise<Object> cancelWatchAvailability([int? id]);
  external RemotePlaybackState get state;
  external EventHandlerNonNull? get onconnecting;
  external set onconnecting(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);
  external Promise<Object> prompt();

  external factory RemotePlayback();
}

@JS()
enum RemotePlaybackState { connecting, connected, disconnected }
