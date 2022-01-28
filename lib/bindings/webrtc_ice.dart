/// IceTransport Extensions for WebRTC
///
/// https://w3c.github.io/webrtc-ice/
@JS('window')
@staticInterop
library webrtc_ice;

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
      Iterable<RTCIceServer> iceServers});
}

extension PropsRTCIceGatherOptions on RTCIceGatherOptions {
  external RTCIceTransportPolicy get gatherPolicy;
  external set gatherPolicy(RTCIceTransportPolicy newValue);
  external Iterable<RTCIceServer> get iceServers;
  external set iceServers(Iterable<RTCIceServer> newValue);
}
