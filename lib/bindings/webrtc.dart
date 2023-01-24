/// WebRTC 1.0: Real-Time Communication Between Browsers
///
/// https://w3c.github.io/webrtc-pc/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webrtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class RTCConfiguration {
  external factory RTCConfiguration._(
      {Iterable<RTCIceServer>? iceServers = const [],
      String? iceTransportPolicy,
      String? bundlePolicy,
      String? rtcpMuxPolicy,
      Iterable<RTCCertificate>? certificates = const [],
      int? iceCandidatePoolSize = 0});

  factory RTCConfiguration(
          {Iterable<RTCIceServer>? iceServers = const [],
          RTCIceTransportPolicy? iceTransportPolicy = RTCIceTransportPolicy.all,
          RTCBundlePolicy? bundlePolicy = RTCBundlePolicy.balanced,
          RTCRtcpMuxPolicy? rtcpMuxPolicy = RTCRtcpMuxPolicy.require,
          Iterable<RTCCertificate>? certificates = const [],
          int? iceCandidatePoolSize = 0}) =>
      RTCConfiguration._(
          iceServers: iceServers,
          iceTransportPolicy: iceTransportPolicy?.value,
          bundlePolicy: bundlePolicy?.value,
          rtcpMuxPolicy: rtcpMuxPolicy?.value,
          certificates: certificates,
          iceCandidatePoolSize: iceCandidatePoolSize);
}

extension PropsRTCConfiguration on RTCConfiguration {
  Iterable<RTCIceServer> get iceServers =>
      js_util.getProperty(this, 'iceServers');
  set iceServers(Iterable<RTCIceServer> newValue) {
    js_util.setProperty(this, 'iceServers', newValue);
  }

  RTCIceTransportPolicy get iceTransportPolicy =>
      RTCIceTransportPolicy.fromValue(
          js_util.getProperty(this, 'iceTransportPolicy'));
  set iceTransportPolicy(RTCIceTransportPolicy newValue) {
    js_util.setProperty(this, 'iceTransportPolicy', newValue.value);
  }

  RTCBundlePolicy get bundlePolicy =>
      RTCBundlePolicy.fromValue(js_util.getProperty(this, 'bundlePolicy'));
  set bundlePolicy(RTCBundlePolicy newValue) {
    js_util.setProperty(this, 'bundlePolicy', newValue.value);
  }

  RTCRtcpMuxPolicy get rtcpMuxPolicy =>
      RTCRtcpMuxPolicy.fromValue(js_util.getProperty(this, 'rtcpMuxPolicy'));
  set rtcpMuxPolicy(RTCRtcpMuxPolicy newValue) {
    js_util.setProperty(this, 'rtcpMuxPolicy', newValue.value);
  }

  Iterable<RTCCertificate> get certificates =>
      js_util.getProperty(this, 'certificates');
  set certificates(Iterable<RTCCertificate> newValue) {
    js_util.setProperty(this, 'certificates', newValue);
  }

  int get iceCandidatePoolSize =>
      js_util.getProperty(this, 'iceCandidatePoolSize');
  set iceCandidatePoolSize(int newValue) {
    js_util.setProperty(this, 'iceCandidatePoolSize', newValue);
  }
}

///  The dictionary defines how to connect to a single ICE server
/// (such as a STUN or TURN server). Objects of this type are
/// provided in the configuration of an [RTCPeerConnection], in the
/// [iceServers] array.
@anonymous
@JS()
@staticInterop
class RTCIceServer {
  external factory RTCIceServer(
      {dynamic urls, required String username, required String credential});
}

extension PropsRTCIceServer on RTCIceServer {
  dynamic get urls => js_util.getProperty(this, 'urls');
  set urls(dynamic newValue) {
    js_util.setProperty(this, 'urls', newValue);
  }

  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  String get credential => js_util.getProperty(this, 'credential');
  set credential(String newValue) {
    js_util.setProperty(this, 'credential', newValue);
  }
}

enum RTCIceTransportPolicy {
  relay('relay'),
  all('all');

  final String value;
  static RTCIceTransportPolicy fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceTransportPolicy> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceTransportPolicy(this.value);
}

enum RTCBundlePolicy {
  balanced('balanced'),
  maxCompat('max-compat'),
  maxBundle('max-bundle');

  final String value;
  static RTCBundlePolicy fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCBundlePolicy> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCBundlePolicy(this.value);
}

enum RTCRtcpMuxPolicy {
  require('require');

  final String value;
  static RTCRtcpMuxPolicy fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCRtcpMuxPolicy> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCRtcpMuxPolicy(this.value);
}

@anonymous
@JS()
@staticInterop
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

@anonymous
@JS()
@staticInterop
class RTCOfferOptions implements RTCOfferAnswerOptions {
  external factory RTCOfferOptions({bool? iceRestart = false});
}

extension PropsRTCOfferOptions on RTCOfferOptions {
  bool get iceRestart => js_util.getProperty(this, 'iceRestart');
  set iceRestart(bool newValue) {
    js_util.setProperty(this, 'iceRestart', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCAnswerOptions implements RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

enum RTCSignalingState {
  stable('stable'),
  haveLocalOffer('have-local-offer'),
  haveRemoteOffer('have-remote-offer'),
  haveLocalPranswer('have-local-pranswer'),
  haveRemotePranswer('have-remote-pranswer'),
  closed('closed');

  final String value;
  static RTCSignalingState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCSignalingState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCSignalingState(this.value);
}

enum RTCIceGatheringState {
  valueNew('new'),
  gathering('gathering'),
  complete('complete');

  final String value;
  static RTCIceGatheringState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceGatheringState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceGatheringState(this.value);
}

enum RTCPeerConnectionState {
  closed('closed'),
  failed('failed'),
  disconnected('disconnected'),
  valueNew('new'),
  connecting('connecting'),
  connected('connected');

  final String value;
  static RTCPeerConnectionState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCPeerConnectionState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCPeerConnectionState(this.value);
}

enum RTCIceConnectionState {
  closed('closed'),
  failed('failed'),
  disconnected('disconnected'),
  valueNew('new'),
  checking('checking'),
  completed('completed'),
  connected('connected');

  final String value;
  static RTCIceConnectionState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceConnectionState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceConnectionState(this.value);
}

///  The interface represents a WebRTC connection between the local
/// computer and a remote peer. It provides methods to connect to a
/// remote peer, maintain and monitor the connection, and close the
/// connection once it's no longer needed.
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
///    RTCPeerConnection
///
///
@JS()
@staticInterop
class RTCPeerConnection implements EventTarget {
  external factory RTCPeerConnection([RTCConfiguration? configuration]);
}

extension PropsRTCPeerConnection on RTCPeerConnection {
  RTCSessionDescription? get localDescription =>
      js_util.getProperty(this, 'localDescription');
  RTCSessionDescription? get currentLocalDescription =>
      js_util.getProperty(this, 'currentLocalDescription');
  RTCSessionDescription? get pendingLocalDescription =>
      js_util.getProperty(this, 'pendingLocalDescription');
  RTCSessionDescription? get remoteDescription =>
      js_util.getProperty(this, 'remoteDescription');
  RTCSessionDescription? get currentRemoteDescription =>
      js_util.getProperty(this, 'currentRemoteDescription');
  RTCSessionDescription? get pendingRemoteDescription =>
      js_util.getProperty(this, 'pendingRemoteDescription');
  RTCSignalingState get signalingState =>
      RTCSignalingState.fromValue(js_util.getProperty(this, 'signalingState'));
  RTCIceGatheringState get iceGatheringState => RTCIceGatheringState.fromValue(
      js_util.getProperty(this, 'iceGatheringState'));
  RTCIceConnectionState get iceConnectionState =>
      RTCIceConnectionState.fromValue(
          js_util.getProperty(this, 'iceConnectionState'));
  RTCPeerConnectionState get connectionState =>
      RTCPeerConnectionState.fromValue(
          js_util.getProperty(this, 'connectionState'));
  bool? get canTrickleIceCandidates =>
      js_util.getProperty(this, 'canTrickleIceCandidates');
  void restartIce() => js_util.callMethod(this, 'restartIce', []);

  RTCConfiguration getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

  void setConfiguration([RTCConfiguration? configuration]) =>
      js_util.callMethod(this, 'setConfiguration', [configuration]);

  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onnegotiationneeded =>
      js_util.getProperty(this, 'onnegotiationneeded');
  set onnegotiationneeded(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnegotiationneeded', newValue);
  }

  EventHandlerNonNull? get onicecandidate =>
      js_util.getProperty(this, 'onicecandidate');
  set onicecandidate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onicecandidate', newValue);
  }

  EventHandlerNonNull? get onicecandidateerror =>
      js_util.getProperty(this, 'onicecandidateerror');
  set onicecandidateerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onicecandidateerror', newValue);
  }

  EventHandlerNonNull? get onsignalingstatechange =>
      js_util.getProperty(this, 'onsignalingstatechange');
  set onsignalingstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsignalingstatechange', newValue);
  }

  EventHandlerNonNull? get oniceconnectionstatechange =>
      js_util.getProperty(this, 'oniceconnectionstatechange');
  set oniceconnectionstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oniceconnectionstatechange', newValue);
  }

  EventHandlerNonNull? get onicegatheringstatechange =>
      js_util.getProperty(this, 'onicegatheringstatechange');
  set onicegatheringstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onicegatheringstatechange', newValue);
  }

  EventHandlerNonNull? get onconnectionstatechange =>
      js_util.getProperty(this, 'onconnectionstatechange');
  set onconnectionstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnectionstatechange', newValue);
  }

  Future<void> createOffer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback,
          RTCOfferOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createOffer', [
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback),
        options
      ]));

  Future<void> setLocalDescription(
          [RTCLocalSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'setLocalDescription', [
        description,
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<void> createAnswer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createAnswer', [
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<void> setRemoteDescription(
          [RTCSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'setRemoteDescription', [
        description,
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<void> addIceCandidate(
          [RTCIceCandidateInit? candidate,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'addIceCandidate', [
        candidate,
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  static Future<RTCCertificate> generateCertificate(dynamic keygenAlgorithm) =>
      js_util.promiseToFuture(js_util.callMethod(
          RTCPeerConnection, 'generateCertificate', [keygenAlgorithm]));

  Iterable<RTCRtpSender> getSenders() =>
      js_util.callMethod(this, 'getSenders', []);

  Iterable<RTCRtpReceiver> getReceivers() =>
      js_util.callMethod(this, 'getReceivers', []);

  Iterable<RTCRtpTransceiver> getTransceivers() =>
      js_util.callMethod(this, 'getTransceivers', []);

  RTCRtpSender addTrack(MediaStreamTrack track,
          [MediaStream? streams1,
          MediaStream? streams2,
          MediaStream? streams3]) =>
      js_util
          .callMethod(this, 'addTrack', [track, streams1, streams2, streams3]);

  void removeTrack(RTCRtpSender sender) =>
      js_util.callMethod(this, 'removeTrack', [sender]);

  RTCRtpTransceiver addTransceiver(dynamic trackOrKind,
          [RTCRtpTransceiverInit? init]) =>
      js_util.callMethod(this, 'addTransceiver', [trackOrKind, init]);

  EventHandlerNonNull? get ontrack => js_util.getProperty(this, 'ontrack');
  set ontrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontrack', newValue);
  }

  RTCSctpTransport? get sctp => js_util.getProperty(this, 'sctp');
  RTCDataChannel createDataChannel(String label,
          [RTCDataChannelInit? dataChannelDict]) =>
      js_util.callMethod(this, 'createDataChannel', [label, dataChannelDict]);

  EventHandlerNonNull? get ondatachannel =>
      js_util.getProperty(this, 'ondatachannel');
  set ondatachannel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondatachannel', newValue);
  }

  Future<RTCStatsReport> getStats([MediaStreamTrack? selector]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', [selector]));

  void setIdentityProvider(String provider,
          [RTCIdentityProviderOptions? options]) =>
      js_util.callMethod(this, 'setIdentityProvider', [provider, options]);

  Future<String> getIdentityAssertion() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getIdentityAssertion', []));

  Future<RTCIdentityAssertion> get peerIdentity =>
      js_util.promiseToFuture(js_util.getProperty(this, 'peerIdentity'));
  String? get idpLoginUrl => js_util.getProperty(this, 'idpLoginUrl');
  String? get idpErrorInfo => js_util.getProperty(this, 'idpErrorInfo');
}

enum RTCSdpType {
  offer('offer'),
  pranswer('pranswer'),
  answer('answer'),
  rollback('rollback');

  final String value;
  static RTCSdpType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCSdpType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCSdpType(this.value);
}

///  The interface describes one end of a connection—or potential
/// connection—and how it's configured. Each consists of a
/// description [type] indicating which part of the offer/answer
/// negotiation process it describes and of the SDP descriptor of the
/// session.
///  The process of negotiating a connection between two peers
/// involves exchanging objects back and forth, with each description
/// suggesting one combination of connection configuration options
/// that the sender of the description supports. Once the two peers
/// agree upon a configuration for the connection, negotiation is
/// complete.
@JS()
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension PropsRTCSessionDescription on RTCSessionDescription {
  RTCSdpType get type =>
      RTCSdpType.fromValue(js_util.getProperty(this, 'type'));
  String get sdp => js_util.getProperty(this, 'sdp');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit._(
      {required String type, String? sdp = ''});

  factory RTCSessionDescriptionInit(
          {required RTCSdpType type, String? sdp = ''}) =>
      RTCSessionDescriptionInit._(type: type.value, sdp: sdp);
}

extension PropsRTCSessionDescriptionInit on RTCSessionDescriptionInit {
  RTCSdpType get type =>
      RTCSdpType.fromValue(js_util.getProperty(this, 'type'));
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  String get sdp => js_util.getProperty(this, 'sdp');
  set sdp(String newValue) {
    js_util.setProperty(this, 'sdp', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit._(
      {required String type, String? sdp = ''});

  factory RTCLocalSessionDescriptionInit(
          {required RTCSdpType type, String? sdp = ''}) =>
      RTCLocalSessionDescriptionInit._(type: type.value, sdp: sdp);
}

extension PropsRTCLocalSessionDescriptionInit
    on RTCLocalSessionDescriptionInit {
  RTCSdpType get type =>
      RTCSdpType.fromValue(js_util.getProperty(this, 'type'));
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  String get sdp => js_util.getProperty(this, 'sdp');
  set sdp(String newValue) {
    js_util.setProperty(this, 'sdp', newValue);
  }
}

///  The interface—part of the WebRTC API—represents a candidate
/// Interactive Connectivity Establishment (ICE) configuration which
/// may be used to establish an [RTCPeerConnection].
///  An ICE candidate describes the protocols and routing needed for
/// WebRTC to be able to communicate with a remote device. When
/// starting a WebRTC peer connection, typically a number of
/// candidates are proposed by each end of the connection, until they
/// mutually agree upon one which describes the connection they
/// decide will be best. WebRTC then uses that candidate's details to
/// initiate the connection.
///  For details on how the ICE process works, see Lifetime of a
/// WebRTC session. The article WebRTC connectivity provides
/// additional useful details.
@JS()
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate([RTCIceCandidateInit? candidateInitDict]);
}

extension PropsRTCIceCandidate on RTCIceCandidate {
  String get candidate => js_util.getProperty(this, 'candidate');
  String? get sdpMid => js_util.getProperty(this, 'sdpMid');
  int? get sdpMLineIndex => js_util.getProperty(this, 'sdpMLineIndex');
  String? get foundation => js_util.getProperty(this, 'foundation');
  RTCIceComponent? get component {
    final ret = js_util.getProperty(this, 'component');

    return ret == null ? null : RTCIceComponent.fromValue(ret);
  }

  int? get priority => js_util.getProperty(this, 'priority');
  String? get address => js_util.getProperty(this, 'address');
  RTCIceProtocol? get protocol {
    final ret = js_util.getProperty(this, 'protocol');

    return ret == null ? null : RTCIceProtocol.fromValue(ret);
  }

  int? get port => js_util.getProperty(this, 'port');
  RTCIceCandidateType? get type {
    final ret = js_util.getProperty(this, 'type');

    return ret == null ? null : RTCIceCandidateType.fromValue(ret);
  }

  RTCIceTcpCandidateType? get tcpType {
    final ret = js_util.getProperty(this, 'tcpType');

    return ret == null ? null : RTCIceTcpCandidateType.fromValue(ret);
  }

  String? get relatedAddress => js_util.getProperty(this, 'relatedAddress');
  int? get relatedPort => js_util.getProperty(this, 'relatedPort');
  String? get usernameFragment => js_util.getProperty(this, 'usernameFragment');
  RTCIceServerTransportProtocol? get relayProtocol {
    final ret = js_util.getProperty(this, 'relayProtocol');

    return ret == null ? null : RTCIceServerTransportProtocol.fromValue(ret);
  }

  String? get url => js_util.getProperty(this, 'url');
  RTCIceCandidateInit toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit(
      {String? candidate = '',
      String? sdpMid,
      int? sdpMLineIndex,
      String? usernameFragment});
}

extension PropsRTCIceCandidateInit on RTCIceCandidateInit {
  String get candidate => js_util.getProperty(this, 'candidate');
  set candidate(String newValue) {
    js_util.setProperty(this, 'candidate', newValue);
  }

  String? get sdpMid => js_util.getProperty(this, 'sdpMid');
  set sdpMid(String? newValue) {
    js_util.setProperty(this, 'sdpMid', newValue);
  }

  int? get sdpMLineIndex => js_util.getProperty(this, 'sdpMLineIndex');
  set sdpMLineIndex(int? newValue) {
    js_util.setProperty(this, 'sdpMLineIndex', newValue);
  }

  String? get usernameFragment => js_util.getProperty(this, 'usernameFragment');
  set usernameFragment(String? newValue) {
    js_util.setProperty(this, 'usernameFragment', newValue);
  }
}

enum RTCIceProtocol {
  udp('udp'),
  tcp('tcp');

  final String value;
  static RTCIceProtocol fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceProtocol> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceProtocol(this.value);
}

enum RTCIceTcpCandidateType {
  active('active'),
  passive('passive'),
  so('so');

  final String value;
  static RTCIceTcpCandidateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceTcpCandidateType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceTcpCandidateType(this.value);
}

enum RTCIceCandidateType {
  host('host'),
  srflx('srflx'),
  prflx('prflx'),
  relay('relay');

  final String value;
  static RTCIceCandidateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceCandidateType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceCandidateType(this.value);
}

enum RTCIceServerTransportProtocol {
  udp('udp'),
  tcp('tcp'),
  tls('tls');

  final String value;
  static RTCIceServerTransportProtocol fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceServerTransportProtocol> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceServerTransportProtocol(this.value);
}

///  The interface represents events that occur in relation to ICE
/// candidates with the target, usually an [RTCPeerConnection].
/// Only one event is of this type: [icecandidate].
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
///    RTCPeerConnectionIceEvent
///
///
@JS()
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external factory RTCPeerConnectionIceEvent(String type,
      [RTCPeerConnectionIceEventInit? eventInitDict]);
}

extension PropsRTCPeerConnectionIceEvent on RTCPeerConnectionIceEvent {
  RTCIceCandidate? get candidate => js_util.getProperty(this, 'candidate');
  String? get url => js_util.getProperty(this, 'url');
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionIceEventInit implements EventInit {
  external factory RTCPeerConnectionIceEventInit(
      {RTCIceCandidate? candidate, String? url});
}

extension PropsRTCPeerConnectionIceEventInit on RTCPeerConnectionIceEventInit {
  RTCIceCandidate? get candidate => js_util.getProperty(this, 'candidate');
  set candidate(RTCIceCandidate? newValue) {
    js_util.setProperty(this, 'candidate', newValue);
  }

  String? get url => js_util.getProperty(this, 'url');
  set url(String? newValue) {
    js_util.setProperty(this, 'url', newValue);
  }
}

///  The interface—based upon the [Event] interface—provides details
/// pertaining to an ICE error announced by sending an
/// [icecandidateerror] event to the [RTCPeerConnection] object.
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
///    RTCPeerConnectionIceErrorEvent
///
///
@JS()
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external factory RTCPeerConnectionIceErrorEvent(
      String type, RTCPeerConnectionIceErrorEventInit eventInitDict);
}

extension PropsRTCPeerConnectionIceErrorEvent
    on RTCPeerConnectionIceErrorEvent {
  String? get address => js_util.getProperty(this, 'address');
  int? get port => js_util.getProperty(this, 'port');
  String get url => js_util.getProperty(this, 'url');
  int get errorCode => js_util.getProperty(this, 'errorCode');
  String get errorText => js_util.getProperty(this, 'errorText');
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionIceErrorEventInit implements EventInit {
  external factory RTCPeerConnectionIceErrorEventInit(
      {String? address,
      int? port,
      required String url,
      required int errorCode,
      required String errorText});
}

extension PropsRTCPeerConnectionIceErrorEventInit
    on RTCPeerConnectionIceErrorEventInit {
  String? get address => js_util.getProperty(this, 'address');
  set address(String? newValue) {
    js_util.setProperty(this, 'address', newValue);
  }

  int? get port => js_util.getProperty(this, 'port');
  set port(int? newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  int get errorCode => js_util.getProperty(this, 'errorCode');
  set errorCode(int newValue) {
    js_util.setProperty(this, 'errorCode', newValue);
  }

  String get errorText => js_util.getProperty(this, 'errorText');
  set errorText(String newValue) {
    js_util.setProperty(this, 'errorText', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration({required int expires});
}

extension PropsRTCCertificateExpiration on RTCCertificateExpiration {
  int get expires => js_util.getProperty(this, 'expires');
  set expires(int newValue) {
    js_util.setProperty(this, 'expires', newValue);
  }
}

///  The interface of the WebRTC API provides an object represents a
/// certificate that an [RTCPeerConnection] uses to authenticate.
@JS()
@staticInterop
class RTCCertificate {
  external factory RTCCertificate();
}

extension PropsRTCCertificate on RTCCertificate {
  int get expires => js_util.getProperty(this, 'expires');
  Iterable<RTCDtlsFingerprint> getFingerprints() =>
      js_util.callMethod(this, 'getFingerprints', []);
}

@anonymous
@JS()
@staticInterop
class RTCRtpTransceiverInit {
  external factory RTCRtpTransceiverInit._(
      {String? direction,
      Iterable<MediaStream>? streams = const [],
      Iterable<RTCRtpEncodingParameters>? sendEncodings = const []});

  factory RTCRtpTransceiverInit(
          {RTCRtpTransceiverDirection? direction =
              RTCRtpTransceiverDirection.sendrecv,
          Iterable<MediaStream>? streams = const [],
          Iterable<RTCRtpEncodingParameters>? sendEncodings = const []}) =>
      RTCRtpTransceiverInit._(
          direction: direction?.value,
          streams: streams,
          sendEncodings: sendEncodings);
}

extension PropsRTCRtpTransceiverInit on RTCRtpTransceiverInit {
  RTCRtpTransceiverDirection get direction =>
      RTCRtpTransceiverDirection.fromValue(
          js_util.getProperty(this, 'direction'));
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
  }

  Iterable<MediaStream> get streams => js_util.getProperty(this, 'streams');
  set streams(Iterable<MediaStream> newValue) {
    js_util.setProperty(this, 'streams', newValue);
  }

  Iterable<RTCRtpEncodingParameters> get sendEncodings =>
      js_util.getProperty(this, 'sendEncodings');
  set sendEncodings(Iterable<RTCRtpEncodingParameters> newValue) {
    js_util.setProperty(this, 'sendEncodings', newValue);
  }
}

enum RTCRtpTransceiverDirection {
  sendrecv('sendrecv'),
  sendonly('sendonly'),
  recvonly('recvonly'),
  inactive('inactive'),
  stopped('stopped');

  final String value;
  static RTCRtpTransceiverDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCRtpTransceiverDirection> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const RTCRtpTransceiverDirection(this.value);
}

///  The interface provides the ability to control and obtain details
/// about how a particular [MediaStreamTrack] is encoded and sent to
/// a remote peer.
///  With it, you can configure the encoding used for the
/// corresponding track, get information about the device's media
/// capabilities, and so forth. You can also obtain access to an
/// [RTCDTMFSender] which can be used to send DTMF codes (to simulate
/// the user pressing buttons on a telephone's dial pad) to the
/// remote peer.
@JS()
@staticInterop
class RTCRtpSender {
  external factory RTCRtpSender();
}

extension PropsRTCRtpSender on RTCRtpSender {
  MediaStreamTrack? get track => js_util.getProperty(this, 'track');
  RTCDtlsTransport? get transport => js_util.getProperty(this, 'transport');
  static RTCRtpCapabilities? getCapabilities(String kind) =>
      js_util.callMethod(RTCRtpSender, 'getCapabilities', [kind]);

  Future<void> setParameters(RTCRtpSendParameters parameters) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setParameters', [parameters]));

  RTCRtpSendParameters getParameters() =>
      js_util.callMethod(this, 'getParameters', []);

  Future<void> replaceTrack(MediaStreamTrack? withTrack) => js_util
      .promiseToFuture(js_util.callMethod(this, 'replaceTrack', [withTrack]));

  void setStreams(
          [MediaStream? streams1,
          MediaStream? streams2,
          MediaStream? streams3]) =>
      js_util.callMethod(this, 'setStreams', [streams1, streams2, streams3]);

  Future<RTCStatsReport> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));

  dynamic get transform => js_util.getProperty(this, 'transform');
  set transform(dynamic newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  Future<void> generateKeyFrame([Iterable<String>? rids]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'generateKeyFrame', [rids]));

  RTCDTMFSender? get dtmf => js_util.getProperty(this, 'dtmf');
}

///  The dictionary is the basic object describing the parameters of
/// an RTP transport. It is extended separately for senders and
/// receivers in the form of the [RTCRtpSendParameters] and
/// [RTCRtpReceiveParameters] dictionaries.
///  To obtain the parameters of a sender or receiver, call its
/// [getParameters()] method:
///
///  [getParameters()]
///  [getParameters()]
///
@anonymous
@JS()
@staticInterop
class RTCRtpParameters {
  external factory RTCRtpParameters(
      {required Iterable<RTCRtpHeaderExtensionParameters> headerExtensions,
      required RTCRtcpParameters rtcp,
      required Iterable<RTCRtpCodecParameters> codecs});
}

extension PropsRTCRtpParameters on RTCRtpParameters {
  Iterable<RTCRtpHeaderExtensionParameters> get headerExtensions =>
      js_util.getProperty(this, 'headerExtensions');
  set headerExtensions(Iterable<RTCRtpHeaderExtensionParameters> newValue) {
    js_util.setProperty(this, 'headerExtensions', newValue);
  }

  RTCRtcpParameters get rtcp => js_util.getProperty(this, 'rtcp');
  set rtcp(RTCRtcpParameters newValue) {
    js_util.setProperty(this, 'rtcp', newValue);
  }

  Iterable<RTCRtpCodecParameters> get codecs =>
      js_util.getProperty(this, 'codecs');
  set codecs(Iterable<RTCRtpCodecParameters> newValue) {
    js_util.setProperty(this, 'codecs', newValue);
  }
}

///  The WebRTC API's dictionary is used to specify the parameters
/// for an [RTCRtpSender] when calling its [setParameters()] method.
@anonymous
@JS()
@staticInterop
class RTCRtpSendParameters implements RTCRtpParameters {
  external factory RTCRtpSendParameters(
      {required String transactionId,
      required Iterable<RTCRtpEncodingParameters> encodings});
}

extension PropsRTCRtpSendParameters on RTCRtpSendParameters {
  String get transactionId => js_util.getProperty(this, 'transactionId');
  set transactionId(String newValue) {
    js_util.setProperty(this, 'transactionId', newValue);
  }

  Iterable<RTCRtpEncodingParameters> get encodings =>
      js_util.getProperty(this, 'encodings');
  set encodings(Iterable<RTCRtpEncodingParameters> newValue) {
    js_util.setProperty(this, 'encodings', newValue);
  }
}

///  The dictionary, based upon the [RTCRtpParameters] dictionary, is
/// returned by the [RTCRtpReceiver] method [getParameters()]. It
/// describes the parameters being used by the receiver's RTP
/// connection to the remote peer.
@anonymous
@JS()
@staticInterop
class RTCRtpReceiveParameters implements RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@anonymous
@JS()
@staticInterop
class RTCRtpCodingParameters {
  external factory RTCRtpCodingParameters({required String rid});
}

extension PropsRTCRtpCodingParameters on RTCRtpCodingParameters {
  String get rid => js_util.getProperty(this, 'rid');
  set rid(String newValue) {
    js_util.setProperty(this, 'rid', newValue);
  }
}

///  An instance of the WebRTC API's dictionary describes a single
/// configuration of a codec for an [RTCRtpSender].
///  This dictionary is used in the [RTCRtpSendParameters] describing
/// the configuration of an RTP sender's [encodings];
/// [RTCRtpDecodingParameters] is used to describe the configuration
/// of an RTP receiver's [encodings].
@anonymous
@JS()
@staticInterop
class RTCRtpEncodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters(
      {bool? active = true,
      int? maxBitrate,
      double? maxFramerate,
      double? scaleResolutionDownBy});
}

extension PropsRTCRtpEncodingParameters on RTCRtpEncodingParameters {
  bool get active => js_util.getProperty(this, 'active');
  set active(bool newValue) {
    js_util.setProperty(this, 'active', newValue);
  }

  int get maxBitrate => js_util.getProperty(this, 'maxBitrate');
  set maxBitrate(int newValue) {
    js_util.setProperty(this, 'maxBitrate', newValue);
  }

  double get maxFramerate => js_util.getProperty(this, 'maxFramerate');
  set maxFramerate(double newValue) {
    js_util.setProperty(this, 'maxFramerate', newValue);
  }

  double get scaleResolutionDownBy =>
      js_util.getProperty(this, 'scaleResolutionDownBy');
  set scaleResolutionDownBy(double newValue) {
    js_util.setProperty(this, 'scaleResolutionDownBy', newValue);
  }
}

///  The dictionary provides parameters of an RTCP connection. It's
/// used as the value of the [rtcp] property of the parameters of an
/// [RTCRtpSender] or [RTCRtpReceiver].
@anonymous
@JS()
@staticInterop
class RTCRtcpParameters {
  external factory RTCRtcpParameters(
      {required String cname, required bool reducedSize});
}

extension PropsRTCRtcpParameters on RTCRtcpParameters {
  String get cname => js_util.getProperty(this, 'cname');
  set cname(String newValue) {
    js_util.setProperty(this, 'cname', newValue);
  }

  bool get reducedSize => js_util.getProperty(this, 'reducedSize');
  set reducedSize(bool newValue) {
    js_util.setProperty(this, 'reducedSize', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters(
      {required String uri, required int id, bool? encrypted = false});
}

extension PropsRTCRtpHeaderExtensionParameters
    on RTCRtpHeaderExtensionParameters {
  String get uri => js_util.getProperty(this, 'uri');
  set uri(String newValue) {
    js_util.setProperty(this, 'uri', newValue);
  }

  int get id => js_util.getProperty(this, 'id');
  set id(int newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  bool get encrypted => js_util.getProperty(this, 'encrypted');
  set encrypted(bool newValue) {
    js_util.setProperty(this, 'encrypted', newValue);
  }
}

///  The dictionary, part of the WebRTC API, is used to describe the
/// configuration parameters for a single media codec.
///  In addition to being the type of the [RTCRtpParameters.codecs]
/// property, it's used when calling
/// [RTCRtpTransceiver.setCodecPreferences()] to configure a
/// transceiver's codecs before beginning the offer/answer process to
/// establish a WebRTC peer connection.
///  Most of the fields in this property take values which are
/// defined and maintained by the Internet Assigned Numbers Authority
/// (IANA). References to relevant IANA documents are provided in the
/// see also section at the end of this article.
@anonymous
@JS()
@staticInterop
class RTCRtpCodecParameters {
  external factory RTCRtpCodecParameters(
      {required int payloadType,
      required String mimeType,
      required int clockRate,
      required int channels,
      required String sdpFmtpLine});
}

extension PropsRTCRtpCodecParameters on RTCRtpCodecParameters {
  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
  }

  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  int get clockRate => js_util.getProperty(this, 'clockRate');
  set clockRate(int newValue) {
    js_util.setProperty(this, 'clockRate', newValue);
  }

  int get channels => js_util.getProperty(this, 'channels');
  set channels(int newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  String get sdpFmtpLine => js_util.getProperty(this, 'sdpFmtpLine');
  set sdpFmtpLine(String newValue) {
    js_util.setProperty(this, 'sdpFmtpLine', newValue);
  }
}

///  The dictionary is a data type used to describe the capabilities
/// of an [RTCRtpSender] or [RTCRtpReceiver] in response to a call to
/// the [RTCRtpSender.getCapabilities()] or
/// [RTCRtpReceiver.getCapabilities()] static functions, both of
/// which return an array of objects.
///  An object contains an array of objects conforming to
/// [RTCRtpCodecCapability] (each describing the capabilities of one
/// codec) and an array of the supported RTP header extensions for
/// that codec.
@anonymous
@JS()
@staticInterop
class RTCRtpCapabilities {
  external factory RTCRtpCapabilities(
      {required Iterable<RTCRtpCodecCapability> codecs,
      required Iterable<RTCRtpHeaderExtensionCapability> headerExtensions});
}

extension PropsRTCRtpCapabilities on RTCRtpCapabilities {
  Iterable<RTCRtpCodecCapability> get codecs =>
      js_util.getProperty(this, 'codecs');
  set codecs(Iterable<RTCRtpCodecCapability> newValue) {
    js_util.setProperty(this, 'codecs', newValue);
  }

  Iterable<RTCRtpHeaderExtensionCapability> get headerExtensions =>
      js_util.getProperty(this, 'headerExtensions');
  set headerExtensions(Iterable<RTCRtpHeaderExtensionCapability> newValue) {
    js_util.setProperty(this, 'headerExtensions', newValue);
  }
}

///  The WebRTC API's dictionary provides information describing the
/// capabilities of a single media codec.
@anonymous
@JS()
@staticInterop
class RTCRtpCodecCapability {
  external factory RTCRtpCodecCapability(
      {required String mimeType,
      required int clockRate,
      required int channels,
      required String sdpFmtpLine});
}

extension PropsRTCRtpCodecCapability on RTCRtpCodecCapability {
  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  int get clockRate => js_util.getProperty(this, 'clockRate');
  set clockRate(int newValue) {
    js_util.setProperty(this, 'clockRate', newValue);
  }

  int get channels => js_util.getProperty(this, 'channels');
  set channels(int newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  String get sdpFmtpLine => js_util.getProperty(this, 'sdpFmtpLine');
  set sdpFmtpLine(String newValue) {
    js_util.setProperty(this, 'sdpFmtpLine', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability({required String uri});
}

extension PropsRTCRtpHeaderExtensionCapability
    on RTCRtpHeaderExtensionCapability {
  String get uri => js_util.getProperty(this, 'uri');
  set uri(String newValue) {
    js_util.setProperty(this, 'uri', newValue);
  }
}

///  The interface of the WebRTC API manages the reception and
/// decoding of data for a [MediaStreamTrack] on an
/// [RTCPeerConnection].
@JS()
@staticInterop
class RTCRtpReceiver {
  external factory RTCRtpReceiver();
}

extension PropsRTCRtpReceiver on RTCRtpReceiver {
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
  RTCDtlsTransport? get transport => js_util.getProperty(this, 'transport');
  static RTCRtpCapabilities? getCapabilities(String kind) =>
      js_util.callMethod(RTCRtpReceiver, 'getCapabilities', [kind]);

  RTCRtpReceiveParameters getParameters() =>
      js_util.callMethod(this, 'getParameters', []);

  Iterable<RTCRtpContributingSource> getContributingSources() =>
      js_util.callMethod(this, 'getContributingSources', []);

  Iterable<RTCRtpSynchronizationSource> getSynchronizationSources() =>
      js_util.callMethod(this, 'getSynchronizationSources', []);

  Future<RTCStatsReport> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));

  dynamic get transform => js_util.getProperty(this, 'transform');
  set transform(dynamic newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }
}

///  The dictionary of the WebRTC API is used by
/// [getContributingSources()] to provide information about a given
/// contributing source (CSRC), including the most recent time a
/// packet that the source contributed was played out.
///  The information provided is based on the last ten seconds of
/// media received.
@anonymous
@JS()
@staticInterop
class RTCRtpContributingSource {
  external factory RTCRtpContributingSource(
      {required double timestamp,
      required int source,
      required double audioLevel,
      required int rtpTimestamp});
}

extension PropsRTCRtpContributingSource on RTCRtpContributingSource {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get source => js_util.getProperty(this, 'source');
  set source(int newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  double get audioLevel => js_util.getProperty(this, 'audioLevel');
  set audioLevel(double newValue) {
    js_util.setProperty(this, 'audioLevel', newValue);
  }

  int get rtpTimestamp => js_util.getProperty(this, 'rtpTimestamp');
  set rtpTimestamp(int newValue) {
    js_util.setProperty(this, 'rtpTimestamp', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCRtpSynchronizationSource implements RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

///  The WebRTC interface describes a permanent pairing of an
/// [RTCRtpSender] and an [RTCRtpReceiver], along with some shared
/// state.
///  Each SDP media section describes one bidirectional SRTP ("Secure
/// Real Time Protocol") stream (excepting the media section for
/// [RTCDataChannel], if present). This pairing of send and receive
/// SRTP streams is significant for some applications, so is used to
/// represent this pairing, along with other important state from the
/// media section. Each non-disabled SRTP media section is always
/// represented by exactly one transceiver.
///  A transceiver is uniquely identified using its [mid] property,
/// which is the same as the media ID ([mid]) of its corresponding
/// m-line. An is associated with an m-line if its [mid] is non-null;
/// otherwise it's considered disassociated.
@JS()
@staticInterop
class RTCRtpTransceiver {
  external factory RTCRtpTransceiver();
}

extension PropsRTCRtpTransceiver on RTCRtpTransceiver {
  String? get mid => js_util.getProperty(this, 'mid');
  RTCRtpSender get sender => js_util.getProperty(this, 'sender');
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');
  RTCRtpTransceiverDirection get direction =>
      RTCRtpTransceiverDirection.fromValue(
          js_util.getProperty(this, 'direction'));
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
  }

  RTCRtpTransceiverDirection? get currentDirection {
    final ret = js_util.getProperty(this, 'currentDirection');

    return ret == null ? null : RTCRtpTransceiverDirection.fromValue(ret);
  }

  void stop() => js_util.callMethod(this, 'stop', []);

  void setCodecPreferences(Iterable<RTCRtpCodecCapability> codecs) =>
      js_util.callMethod(this, 'setCodecPreferences', [codecs]);
}

///  The interface provides access to information about the Datagram
/// Transport Layer Security (DTLS) transport over which a
/// [RTCPeerConnection]'s RTP and RTCP packets are sent and received
/// by its [RTCRtpSender] and [RTCRtpReceiver] objects.
///  A object is also used to provide information about SCTP packets
/// transmitted and received by an connection's data channels.
///  Features of the DTLS transport include the addition of security
/// to the underlying transport; the interface can be used to obtain
/// information about the underlying transport and the security added
/// to it by the DTLS layer.
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
///    RTCDtlsTransport
///
///
@JS()
@staticInterop
class RTCDtlsTransport implements EventTarget {
  external factory RTCDtlsTransport();
}

extension PropsRTCDtlsTransport on RTCDtlsTransport {
  RTCIceTransport get iceTransport => js_util.getProperty(this, 'iceTransport');
  RTCDtlsTransportState get state =>
      RTCDtlsTransportState.fromValue(js_util.getProperty(this, 'state'));
  Iterable<ByteBuffer> getRemoteCertificates() =>
      js_util.callMethod(this, 'getRemoteCertificates', []);

  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

enum RTCDtlsTransportState {
  valueNew('new'),
  connecting('connecting'),
  connected('connected'),
  closed('closed'),
  failed('failed');

  final String value;
  static RTCDtlsTransportState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCDtlsTransportState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCDtlsTransportState(this.value);
}

@anonymous
@JS()
@staticInterop
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint(
      {required String algorithm, required String value});
}

extension PropsRTCDtlsFingerprint on RTCDtlsFingerprint {
  String get algorithm => js_util.getProperty(this, 'algorithm');
  set algorithm(String newValue) {
    js_util.setProperty(this, 'algorithm', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

///
///   The interface provides access to information about the ICE
/// transport layer over which the data is being sent and received.
///   This is particularly useful if you need to access state
/// information about the connection.
///
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
///    RTCIceTransport
///
///
@JS()
@staticInterop
class RTCIceTransport implements EventTarget {
  external factory RTCIceTransport();
}

extension PropsRTCIceTransport on RTCIceTransport {
  RTCIceRole get role =>
      RTCIceRole.fromValue(js_util.getProperty(this, 'role'));
  RTCIceComponent get component =>
      RTCIceComponent.fromValue(js_util.getProperty(this, 'component'));
  RTCIceTransportState get state =>
      RTCIceTransportState.fromValue(js_util.getProperty(this, 'state'));
  RTCIceGathererState get gatheringState => RTCIceGathererState.fromValue(
      js_util.getProperty(this, 'gatheringState'));
  Iterable<RTCIceCandidate> getLocalCandidates() =>
      js_util.callMethod(this, 'getLocalCandidates', []);

  Iterable<RTCIceCandidate> getRemoteCandidates() =>
      js_util.callMethod(this, 'getRemoteCandidates', []);

  RTCIceCandidatePair? getSelectedCandidatePair() =>
      js_util.callMethod(this, 'getSelectedCandidatePair', []);

  RTCIceParameters? getLocalParameters() =>
      js_util.callMethod(this, 'getLocalParameters', []);

  RTCIceParameters? getRemoteParameters() =>
      js_util.callMethod(this, 'getRemoteParameters', []);

  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  EventHandlerNonNull? get ongatheringstatechange =>
      js_util.getProperty(this, 'ongatheringstatechange');
  set ongatheringstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongatheringstatechange', newValue);
  }

  EventHandlerNonNull? get onselectedcandidatepairchange =>
      js_util.getProperty(this, 'onselectedcandidatepairchange');
  set onselectedcandidatepairchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselectedcandidatepairchange', newValue);
  }

  void gather([RTCIceGatherOptions? options]) =>
      js_util.callMethod(this, 'gather', [options]);

  void start(
          [RTCIceParameters? remoteParameters,
          RTCIceRole? role = RTCIceRole.controlled]) =>
      js_util.callMethod(this, 'start', [remoteParameters, role?.value]);

  void stop() => js_util.callMethod(this, 'stop', []);

  void addRemoteCandidate([RTCIceCandidateInit? remoteCandidate]) =>
      js_util.callMethod(this, 'addRemoteCandidate', [remoteCandidate]);

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onicecandidate =>
      js_util.getProperty(this, 'onicecandidate');
  set onicecandidate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onicecandidate', newValue);
  }
}

///  The dictionary specifies the username fragment and password
/// assigned to an ICE session.
///  During ICE negotiation, each peer's username fragment and
/// password are recorded in an object, which can be obtained from
/// the [RTCIceTransport] by calling its [getLocalParameters()] or
/// [getRemoteParameters()] method, depending on which end interests
/// you.
@anonymous
@JS()
@staticInterop
class RTCIceParameters {
  external factory RTCIceParameters(
      {required String usernameFragment, required String password});
}

extension PropsRTCIceParameters on RTCIceParameters {
  String get usernameFragment => js_util.getProperty(this, 'usernameFragment');
  set usernameFragment(String newValue) {
    js_util.setProperty(this, 'usernameFragment', newValue);
  }

  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }
}

///  The dictionary describes a pair of ICE candidates which together
/// comprise a description of a viable connection between two WebRTC
/// endpoints. It is used as the return value from
/// [RTCIceTransport.getSelectedCandidatePair()] to identify the
/// currently-selected candidate pair identified by the ICE agent.
@anonymous
@JS()
@staticInterop
class RTCIceCandidatePair {
  external factory RTCIceCandidatePair(
      {required RTCIceCandidate local, required RTCIceCandidate remote});
}

extension PropsRTCIceCandidatePair on RTCIceCandidatePair {
  RTCIceCandidate get local => js_util.getProperty(this, 'local');
  set local(RTCIceCandidate newValue) {
    js_util.setProperty(this, 'local', newValue);
  }

  RTCIceCandidate get remote => js_util.getProperty(this, 'remote');
  set remote(RTCIceCandidate newValue) {
    js_util.setProperty(this, 'remote', newValue);
  }
}

enum RTCIceGathererState {
  valueNew('new'),
  gathering('gathering'),
  complete('complete');

  final String value;
  static RTCIceGathererState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceGathererState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceGathererState(this.value);
}

enum RTCIceTransportState {
  valueNew('new'),
  checking('checking'),
  connected('connected'),
  completed('completed'),
  disconnected('disconnected'),
  failed('failed'),
  closed('closed');

  final String value;
  static RTCIceTransportState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceTransportState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceTransportState(this.value);
}

enum RTCIceRole {
  unknown('unknown'),
  controlling('controlling'),
  controlled('controlled');

  final String value;
  static RTCIceRole fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceRole> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceRole(this.value);
}

enum RTCIceComponent {
  rtp('rtp'),
  rtcp('rtcp');

  final String value;
  static RTCIceComponent fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCIceComponent> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCIceComponent(this.value);
}

///  The WebRTC API interface represents the [track] event, which is
/// sent when a new [MediaStreamTrack] is added to an
/// [RTCRtpReceiver] which is part of the [RTCPeerConnection].
///  The target is the [RTCPeerConnection] object to which the track
/// is being added.
///  This event is sent by the WebRTC layer to the web site or
/// application, so you will not typically need to instantiate an
/// yourself.
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
///    RTCTrackEvent
///
///
@JS()
@staticInterop
class RTCTrackEvent implements Event {
  external factory RTCTrackEvent(String type, RTCTrackEventInit eventInitDict);
}

extension PropsRTCTrackEvent on RTCTrackEvent {
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
  Iterable<MediaStream> get streams => js_util.getProperty(this, 'streams');
  RTCRtpTransceiver get transceiver => js_util.getProperty(this, 'transceiver');
}

@anonymous
@JS()
@staticInterop
class RTCTrackEventInit implements EventInit {
  external factory RTCTrackEventInit(
      {required RTCRtpReceiver receiver,
      required MediaStreamTrack track,
      Iterable<MediaStream>? streams = const [],
      RTCRtpTransceiver? transceiver});
}

extension PropsRTCTrackEventInit on RTCTrackEventInit {
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');
  set receiver(RTCRtpReceiver newValue) {
    js_util.setProperty(this, 'receiver', newValue);
  }

  MediaStreamTrack get track => js_util.getProperty(this, 'track');
  set track(MediaStreamTrack newValue) {
    js_util.setProperty(this, 'track', newValue);
  }

  Iterable<MediaStream> get streams => js_util.getProperty(this, 'streams');
  set streams(Iterable<MediaStream> newValue) {
    js_util.setProperty(this, 'streams', newValue);
  }

  RTCRtpTransceiver get transceiver => js_util.getProperty(this, 'transceiver');
  set transceiver(RTCRtpTransceiver newValue) {
    js_util.setProperty(this, 'transceiver', newValue);
  }
}

///  The interface provides information which describes a Stream
/// Control Transmission Protocol (SCTP) transport. This provides
/// information about limitations of the transport, but also provides
/// a way to access the underlying Datagram Transport Layer Security
/// (DTLS) transport over which SCTP packets for all of an
/// [RTCPeerConnection]'s data channels are sent and received.
///  You don't create objects yourself; instead, you get access to
/// the for a given [RTCPeerConnection] through its [sctp] property.
///  Possibly the most useful property on this interface is its
/// [maxMessageSize] property, which you can use to determine the
/// upper limit on the size of messages you can send over a data
/// channel on the peer connection.
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
///    RTCSctpTransport
///
///
@JS()
@staticInterop
class RTCSctpTransport implements EventTarget {
  external factory RTCSctpTransport();
}

extension PropsRTCSctpTransport on RTCSctpTransport {
  RTCDtlsTransport get transport => js_util.getProperty(this, 'transport');
  RTCSctpTransportState get state =>
      RTCSctpTransportState.fromValue(js_util.getProperty(this, 'state'));
/* double | NaN */ dynamic get maxMessageSize =>
      js_util.getProperty(this, 'maxMessageSize');
  int? get maxChannels => js_util.getProperty(this, 'maxChannels');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }
}

enum RTCSctpTransportState {
  connecting('connecting'),
  connected('connected'),
  closed('closed');

  final String value;
  static RTCSctpTransportState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCSctpTransportState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCSctpTransportState(this.value);
}

///  The interface represents a network channel which can be used for
/// bidirectional peer-to-peer transfers of arbitrary data. Every
/// data channel is associated with an [RTCPeerConnection], and each
/// peer connection can have up to a theoretical maximum of 65,534
/// data channels (the actual limit may vary from browser to
/// browser).
///  To create a data channel and ask a remote peer to join you, call
/// the [RTCPeerConnection]'s [createDataChannel()] method. The peer
/// being invited to exchange data receives a [datachannel] event
/// (which has type [RTCDataChannelEvent]) to let it know the data
/// channel has been added to the connection.
///  is a transferable object.
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
///    RTCDataChannel
///
///
@JS()
@staticInterop
class RTCDataChannel implements EventTarget {
  external factory RTCDataChannel();
}

extension PropsRTCDataChannel on RTCDataChannel {
  String get label => js_util.getProperty(this, 'label');
  bool get ordered => js_util.getProperty(this, 'ordered');
  int? get maxPacketLifeTime => js_util.getProperty(this, 'maxPacketLifeTime');
  int? get maxRetransmits => js_util.getProperty(this, 'maxRetransmits');
  String get protocol => js_util.getProperty(this, 'protocol');
  bool get negotiated => js_util.getProperty(this, 'negotiated');
  int? get id => js_util.getProperty(this, 'id');
  RTCDataChannelState get readyState =>
      RTCDataChannelState.fromValue(js_util.getProperty(this, 'readyState'));
  int get bufferedAmount => js_util.getProperty(this, 'bufferedAmount');
  int get bufferedAmountLowThreshold =>
      js_util.getProperty(this, 'bufferedAmountLowThreshold');
  set bufferedAmountLowThreshold(int newValue) {
    js_util.setProperty(this, 'bufferedAmountLowThreshold', newValue);
  }

  EventHandlerNonNull? get onopen => js_util.getProperty(this, 'onopen');
  set onopen(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onopen', newValue);
  }

  EventHandlerNonNull? get onbufferedamountlow =>
      js_util.getProperty(this, 'onbufferedamountlow');
  set onbufferedamountlow(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbufferedamountlow', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onclosing => js_util.getProperty(this, 'onclosing');
  set onclosing(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclosing', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  BinaryType get binaryType =>
      BinaryType.fromValue(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.value);
  }

  void send(String data) => js_util.callMethod(this, 'send', [data]);

  RTCPriorityType get priority =>
      RTCPriorityType.fromValue(js_util.getProperty(this, 'priority'));
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelInit {
  external factory RTCDataChannelInit(
      {bool? ordered = true,
      int? maxPacketLifeTime,
      int? maxRetransmits,
      String? protocol = '',
      bool? negotiated = false,
      int? id});
}

extension PropsRTCDataChannelInit on RTCDataChannelInit {
  bool get ordered => js_util.getProperty(this, 'ordered');
  set ordered(bool newValue) {
    js_util.setProperty(this, 'ordered', newValue);
  }

  int get maxPacketLifeTime => js_util.getProperty(this, 'maxPacketLifeTime');
  set maxPacketLifeTime(int newValue) {
    js_util.setProperty(this, 'maxPacketLifeTime', newValue);
  }

  int get maxRetransmits => js_util.getProperty(this, 'maxRetransmits');
  set maxRetransmits(int newValue) {
    js_util.setProperty(this, 'maxRetransmits', newValue);
  }

  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  bool get negotiated => js_util.getProperty(this, 'negotiated');
  set negotiated(bool newValue) {
    js_util.setProperty(this, 'negotiated', newValue);
  }

  int get id => js_util.getProperty(this, 'id');
  set id(int newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

enum RTCDataChannelState {
  connecting('connecting'),
  open('open'),
  closing('closing'),
  closed('closed');

  final String value;
  static RTCDataChannelState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCDataChannelState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCDataChannelState(this.value);
}

///
///  The interface
///  represents an event related to a specific [RTCDataChannel].
///
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
///    RTCDataChannelEvent
///
///
@JS()
@staticInterop
class RTCDataChannelEvent implements Event {
  external factory RTCDataChannelEvent(
      String type, RTCDataChannelEventInit eventInitDict);
}

extension PropsRTCDataChannelEvent on RTCDataChannelEvent {
  RTCDataChannel get channel => js_util.getProperty(this, 'channel');
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelEventInit implements EventInit {
  external factory RTCDataChannelEventInit({required RTCDataChannel channel});
}

extension PropsRTCDataChannelEventInit on RTCDataChannelEventInit {
  RTCDataChannel get channel => js_util.getProperty(this, 'channel');
  set channel(RTCDataChannel newValue) {
    js_util.setProperty(this, 'channel', newValue);
  }
}

///  The interface provides a mechanism for transmitting DTMF codes
/// on a WebRTC [RTCPeerConnection]. You gain access to the
/// connection's through the [RTCRtpSender.dtmf] property on the
/// audio track you wish to send DTMF with.
///  The primary purpose for WebRTC's DTMF support is to allow
/// WebRTC-based communication clients to be connected to a
/// public-switched telephone network (PSTN) or other legacy
/// telephone service, including extant voice over IP (VoIP)
/// services. For that reason, DTMF can't be used between two
/// WebRTC-based devices, because there is no mechanism provided by
/// WebRTC for receiving DTMF codes.
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
///    RTCDTMFSender
///
///
@JS()
@staticInterop
class RTCDTMFSender implements EventTarget {
  external factory RTCDTMFSender();
}

extension PropsRTCDTMFSender on RTCDTMFSender {
  void insertDTMF(String tones,
          [int? duration = 100, int? interToneGap = 70]) =>
      js_util.callMethod(this, 'insertDTMF', [tones, duration, interToneGap]);

  EventHandlerNonNull? get ontonechange =>
      js_util.getProperty(this, 'ontonechange');
  set ontonechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontonechange', newValue);
  }

  bool get canInsertDTMF => js_util.getProperty(this, 'canInsertDTMF');
  String get toneBuffer => js_util.getProperty(this, 'toneBuffer');
}

///  The interface represents events sent to indicate that DTMF tones
/// have started or finished playing. This interface is used by the
/// [tonechange] event.
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
///    RTCDTMFToneChangeEvent
///
///
@JS()
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external factory RTCDTMFToneChangeEvent(String type,
      [RTCDTMFToneChangeEventInit? eventInitDict]);
}

extension PropsRTCDTMFToneChangeEvent on RTCDTMFToneChangeEvent {
  String get tone => js_util.getProperty(this, 'tone');
}

@anonymous
@JS()
@staticInterop
class RTCDTMFToneChangeEventInit implements EventInit {
  external factory RTCDTMFToneChangeEventInit({String? tone = ''});
}

extension PropsRTCDTMFToneChangeEventInit on RTCDTMFToneChangeEventInit {
  String get tone => js_util.getProperty(this, 'tone');
  set tone(String newValue) {
    js_util.setProperty(this, 'tone', newValue);
  }
}

///  The interface provides a statistics report obtained by calling
/// one of the [RTCPeerConnection.getStats()],
/// [RTCRtpReceiver.getStats()], and [RTCRtpSender.getStats()]
/// methods.
///  This statistics report contains a mapping of statistic category
/// string names to objects containing the corresponding statistics
/// data.
///  Calling [getStats()] on an [RTCPeerConnection] lets you specify
/// whether you wish to obtain statistics for outbound, inbound, or
/// all streams on the connection. The [RTCRtpReceiver] and
/// [RTCRtpSender] versions of [getStats()] specifically only return
/// statistics available to the incoming or outgoing stream on which
/// you call them.
@JS()
@staticInterop
class RTCStatsReport extends JsMap<Object, String> {
  external factory RTCStatsReport();
}

///  The dictionary is the basic statistics object used by WebRTC's
/// statistics monitoring model, providing the properties required of
/// all statistics data objects.
///  Specific classes of statistic are defined as dictionaries based
/// on . For example, statistics about a received RTP stream are
/// represented by [RTCReceivedRtpStreamStats].
@anonymous
@JS()
@staticInterop
class RTCStats {
  external factory RTCStats._(
      {required double timestamp, required String type, required String id});

  factory RTCStats(
          {required double timestamp,
          required RTCStatsType type,
          required String id}) =>
      RTCStats._(timestamp: timestamp, type: type.value, id: id);
}

extension PropsRTCStats on RTCStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  RTCStatsType get type =>
      RTCStatsType.fromValue(js_util.getProperty(this, 'type'));
  set type(RTCStatsType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

///  The interface describes an error which has occurred while
/// handling WebRTC operations. It's based upon the standard
/// [Exception] interface that describes general DOM errors.
///
///
///
///    DOMException
///
///
///
///
///
///
///
///    RTCError
///
///
@JS()
@staticInterop
class RTCError implements DOMException {
  external factory RTCError(RTCErrorInit init, [String? message = '']);
}

extension PropsRTCError on RTCError {
  RTCErrorDetailType get errorDetail =>
      RTCErrorDetailType.fromValue(js_util.getProperty(this, 'errorDetail'));
  int? get sdpLineNumber => js_util.getProperty(this, 'sdpLineNumber');
  int? get sctpCauseCode => js_util.getProperty(this, 'sctpCauseCode');
  int? get receivedAlert => js_util.getProperty(this, 'receivedAlert');
  int? get sentAlert => js_util.getProperty(this, 'sentAlert');
  int? get httpRequestStatusCode =>
      js_util.getProperty(this, 'httpRequestStatusCode');
}

@anonymous
@JS()
@staticInterop
class RTCErrorInit {
  external factory RTCErrorInit._(
      {required String errorDetail,
      required int sdpLineNumber,
      required int sctpCauseCode,
      required int receivedAlert,
      required int sentAlert});

  factory RTCErrorInit(
          {required RTCErrorDetailType errorDetail,
          required int sdpLineNumber,
          required int sctpCauseCode,
          required int receivedAlert,
          required int sentAlert}) =>
      RTCErrorInit._(
          errorDetail: errorDetail.value,
          sdpLineNumber: sdpLineNumber,
          sctpCauseCode: sctpCauseCode,
          receivedAlert: receivedAlert,
          sentAlert: sentAlert);
}

extension PropsRTCErrorInit on RTCErrorInit {
  RTCErrorDetailType get errorDetail =>
      RTCErrorDetailType.fromValue(js_util.getProperty(this, 'errorDetail'));
  set errorDetail(RTCErrorDetailType newValue) {
    js_util.setProperty(this, 'errorDetail', newValue.value);
  }

  int get sdpLineNumber => js_util.getProperty(this, 'sdpLineNumber');
  set sdpLineNumber(int newValue) {
    js_util.setProperty(this, 'sdpLineNumber', newValue);
  }

  int get sctpCauseCode => js_util.getProperty(this, 'sctpCauseCode');
  set sctpCauseCode(int newValue) {
    js_util.setProperty(this, 'sctpCauseCode', newValue);
  }

  int get receivedAlert => js_util.getProperty(this, 'receivedAlert');
  set receivedAlert(int newValue) {
    js_util.setProperty(this, 'receivedAlert', newValue);
  }

  int get sentAlert => js_util.getProperty(this, 'sentAlert');
  set sentAlert(int newValue) {
    js_util.setProperty(this, 'sentAlert', newValue);
  }
}

enum RTCErrorDetailType {
  dataChannelFailure('data-channel-failure'),
  dtlsFailure('dtls-failure'),
  fingerprintFailure('fingerprint-failure'),
  sctpFailure('sctp-failure'),
  sdpSyntaxError('sdp-syntax-error'),
  hardwareEncoderNotAvailable('hardware-encoder-not-available'),
  hardwareEncoderError('hardware-encoder-error');

  final String value;
  static RTCErrorDetailType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCErrorDetailType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCErrorDetailType(this.value);
}

///  The WebRTC API's interface represents an error sent to a WebRTC
/// object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
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
///    RTCErrorEvent
///
///
@JS()
@staticInterop
class RTCErrorEvent implements Event {
  external factory RTCErrorEvent(String type, RTCErrorEventInit eventInitDict);
}

extension PropsRTCErrorEvent on RTCErrorEvent {
  RTCError get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class RTCErrorEventInit implements EventInit {
  external factory RTCErrorEventInit({required RTCError error});
}

extension PropsRTCErrorEventInit on RTCErrorEventInit {
  RTCError get error => js_util.getProperty(this, 'error');
  set error(RTCError newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}
