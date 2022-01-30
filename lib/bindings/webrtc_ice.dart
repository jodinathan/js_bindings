/// IceTransport Extensions for WebRTC
///
/// https://w3c.github.io/webrtc-ice/
@JS('window')
@staticInterop
library webrtc_ice;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webrtc
html */

@anonymous
@JS()
@staticInterop
class RTCIceGatherOptions {
  external factory RTCIceGatherOptions(
      {RTCIceTransportPolicy gatherPolicy = RTCIceTransportPolicy.all,
      Iterable<RTCIceServer>? iceServers});
}

extension PropsRTCIceGatherOptions on RTCIceGatherOptions {
  RTCIceTransportPolicy get gatherPolicy =>
      js_util.getProperty(this, 'gatherPolicy');
  set gatherPolicy(RTCIceTransportPolicy newValue) {
    js_util.setProperty(this, 'gatherPolicy', newValue);
  }

  Iterable<RTCIceServer> get iceServers =>
      js_util.getProperty(this, 'iceServers');
  set iceServers(Iterable<RTCIceServer> newValue) {
    js_util.setProperty(this, 'iceServers', newValue);
  }
}
