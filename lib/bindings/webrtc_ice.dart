/// IceTransport Extensions for WebRTC
///
/// https://w3c.github.io/webrtc-ice/
@JS('window')
library webrtc_ice;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webrtc.dart';
import 'html.dart';

@anonymous
@JS()
class RTCIceGatherOptions {
  external RTCIceTransportPolicy get gatherPolicy;
  external set gatherPolicy(RTCIceTransportPolicy newValue);
  external Iterable<RTCIceServer> get iceServers;
  external set iceServers(Iterable<RTCIceServer> newValue);

  external factory RTCIceGatherOptions(
      {RTCIceTransportPolicy gatherPolicy = RTCIceTransportPolicy.all,
      Iterable<RTCIceServer> iceServers});
}
