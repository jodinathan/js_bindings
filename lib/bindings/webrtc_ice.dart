/// IceTransport Extensions for WebRTC
///
/// https://w3c.github.io/webrtc-ice/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webrtc_ice;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class RTCIceGatherOptions {
  external factory RTCIceGatherOptions._(
      {String? gatherPolicy, Iterable<RTCIceServer>? iceServers});

  factory RTCIceGatherOptions(
          {RTCIceTransportPolicy? gatherPolicy,
          Iterable<RTCIceServer>? iceServers}) =>
      RTCIceGatherOptions._(
          gatherPolicy: gatherPolicy?.value ?? RTCIceTransportPolicy.all.value,
          iceServers: iceServers ?? undefined);
}

extension PropsRTCIceGatherOptions on RTCIceGatherOptions {
  RTCIceTransportPolicy get gatherPolicy => RTCIceTransportPolicy.fromValue(
      js_util.getProperty(this, 'gatherPolicy'));
  set gatherPolicy(RTCIceTransportPolicy newValue) {
    js_util.setProperty(this, 'gatherPolicy', newValue.value);
  }

  Iterable<RTCIceServer> get iceServers =>
      js_util.getProperty(this, 'iceServers');
  set iceServers(Iterable<RTCIceServer> newValue) {
    js_util.setProperty(this, 'iceServers', newValue);
  }
}
