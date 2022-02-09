/// WebRTC 1.0: Real-Time Communication Between Browsers
///
/// https://w3c.github.io/webrtc-pc/

// ignore_for_file: unused_import

@JS('window')
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
          iceTransportPolicy: iceTransportPolicy?.name,
          bundlePolicy: bundlePolicy?.name,
          rtcpMuxPolicy: rtcpMuxPolicy?.name,
          certificates: certificates,
          iceCandidatePoolSize: iceCandidatePoolSize);
}

extension PropsRTCConfiguration on RTCConfiguration {
  Iterable<RTCIceServer> get iceServers =>
      js_util.getProperty(this, 'iceServers');
  set iceServers(Iterable<RTCIceServer> newValue) {
    js_util.setProperty(this, 'iceServers', newValue);
  }

  RTCIceTransportPolicy get iceTransportPolicy => RTCIceTransportPolicy.values
      .byName(js_util.getProperty(this, 'iceTransportPolicy'));
  set iceTransportPolicy(RTCIceTransportPolicy newValue) {
    js_util.setProperty(this, 'iceTransportPolicy', newValue.name);
  }

  RTCBundlePolicy get bundlePolicy =>
      RTCBundlePolicy.values.byName(js_util.getProperty(this, 'bundlePolicy'));
  set bundlePolicy(RTCBundlePolicy newValue) {
    js_util.setProperty(this, 'bundlePolicy', newValue.name);
  }

  RTCRtcpMuxPolicy get rtcpMuxPolicy => RTCRtcpMuxPolicy.values
      .byName(js_util.getProperty(this, 'rtcpMuxPolicy'));
  set rtcpMuxPolicy(RTCRtcpMuxPolicy newValue) {
    js_util.setProperty(this, 'rtcpMuxPolicy', newValue.name);
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

enum RTCIceCredentialType { password }

@anonymous
@JS()
@staticInterop
class RTCIceServer {
  external factory RTCIceServer._(
      {dynamic urls,
      required String username,
      required String credential,
      String? credentialType});

  factory RTCIceServer(
          {dynamic urls,
          required String username,
          required String credential,
          RTCIceCredentialType? credentialType =
              RTCIceCredentialType.password}) =>
      RTCIceServer._(
          urls: urls,
          username: username,
          credential: credential,
          credentialType: credentialType?.name);
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

  RTCIceCredentialType get credentialType => RTCIceCredentialType.values
      .byName(js_util.getProperty(this, 'credentialType'));
  set credentialType(RTCIceCredentialType newValue) {
    js_util.setProperty(this, 'credentialType', newValue.name);
  }
}

enum RTCIceTransportPolicy { relay, all }

enum RTCBundlePolicy { balanced, maxCompat, maxBundle }

enum RTCRtcpMuxPolicy { require }

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
  stable,
  haveLocalOffer,
  haveRemoteOffer,
  haveLocalPranswer,
  haveRemotePranswer,
  closed
}

enum RTCIceGatheringState { valueNew, gathering, complete }

enum RTCPeerConnectionState {
  closed,
  failed,
  disconnected,
  valueNew,
  connecting,
  connected
}

enum RTCIceConnectionState {
  closed,
  failed,
  disconnected,
  valueNew,
  checking,
  completed,
  connected
}

@JS()
@staticInterop
class RTCPeerConnection implements EventTarget {
  external RTCPeerConnection([RTCConfiguration? configuration]);
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
  RTCSignalingState get signalingState => RTCSignalingState.values
      .byName(js_util.getProperty(this, 'signalingState'));
  RTCIceGatheringState get iceGatheringState => RTCIceGatheringState.values
      .byName(js_util.getProperty(this, 'iceGatheringState'));
  RTCIceConnectionState get iceConnectionState => RTCIceConnectionState.values
      .byName(js_util.getProperty(this, 'iceConnectionState'));
  RTCPeerConnectionState get connectionState => RTCPeerConnectionState.values
      .byName(js_util.getProperty(this, 'connectionState'));
  bool? get canTrickleIceCandidates =>
      js_util.getProperty(this, 'canTrickleIceCandidates');
  Object restartIce() => js_util.callMethod(this, 'restartIce', []);

  RTCConfiguration getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

  Object setConfiguration([RTCConfiguration? configuration]) =>
      js_util.callMethod(this, 'setConfiguration', [configuration]);

  Object close() => js_util.callMethod(this, 'close', []);

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

  Future<Object> createOffer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback,
          RTCOfferOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createOffer', [
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback),
        options
      ]));

  Future<Object> setLocalDescription(
          [RTCLocalSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'setLocalDescription', [
        description,
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<Object> createAnswer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createAnswer', [
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<Object> setRemoteDescription(
          [RTCSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'setRemoteDescription', [
        description,
        successCallback == null ? null : allowInterop(successCallback),
        failureCallback == null ? null : allowInterop(failureCallback)
      ]));

  Future<Object> addIceCandidate(
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

  Object removeTrack(RTCRtpSender sender) =>
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

  Object setIdentityProvider(String provider,
          [RTCIdentityProviderOptions? options]) =>
      js_util.callMethod(this, 'setIdentityProvider', [provider, options]);

  Future<String> getIdentityAssertion() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getIdentityAssertion', []));

  Future<RTCIdentityAssertion> get peerIdentity =>
      js_util.promiseToFuture(js_util.getProperty(this, 'peerIdentity'));
  String? get idpLoginUrl => js_util.getProperty(this, 'idpLoginUrl');
  String? get idpErrorInfo => js_util.getProperty(this, 'idpErrorInfo');
}

enum RTCSdpType { offer, pranswer, answer, rollback }

@JS()
@staticInterop
class RTCSessionDescription {
  external RTCSessionDescription(RTCSessionDescriptionInit descriptionInitDict);
}

extension PropsRTCSessionDescription on RTCSessionDescription {
  RTCSdpType get type =>
      RTCSdpType.values.byName(js_util.getProperty(this, 'type'));
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
      RTCSessionDescriptionInit._(type: type.name, sdp: sdp);
}

extension PropsRTCSessionDescriptionInit on RTCSessionDescriptionInit {
  RTCSdpType get type =>
      RTCSdpType.values.byName(js_util.getProperty(this, 'type'));
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
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
      RTCLocalSessionDescriptionInit._(type: type.name, sdp: sdp);
}

extension PropsRTCLocalSessionDescriptionInit
    on RTCLocalSessionDescriptionInit {
  RTCSdpType get type =>
      RTCSdpType.values.byName(js_util.getProperty(this, 'type'));
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  String get sdp => js_util.getProperty(this, 'sdp');
  set sdp(String newValue) {
    js_util.setProperty(this, 'sdp', newValue);
  }
}

@JS()
@staticInterop
class RTCIceCandidate {
  external RTCIceCandidate([RTCIceCandidateInit? candidateInitDict]);
}

extension PropsRTCIceCandidate on RTCIceCandidate {
  String get candidate => js_util.getProperty(this, 'candidate');
  String? get sdpMid => js_util.getProperty(this, 'sdpMid');
  int? get sdpMLineIndex => js_util.getProperty(this, 'sdpMLineIndex');
  String? get foundation => js_util.getProperty(this, 'foundation');
  RTCIceComponent? get component {
    final ret = js_util.getProperty(this, 'component');

    return ret == null ? null : RTCIceComponent.values.byName(ret);
  }

  int? get priority => js_util.getProperty(this, 'priority');
  String? get address => js_util.getProperty(this, 'address');
  RTCIceProtocol? get protocol {
    final ret = js_util.getProperty(this, 'protocol');

    return ret == null ? null : RTCIceProtocol.values.byName(ret);
  }

  int? get port => js_util.getProperty(this, 'port');
  RTCIceCandidateType? get type {
    final ret = js_util.getProperty(this, 'type');

    return ret == null ? null : RTCIceCandidateType.values.byName(ret);
  }

  RTCIceTcpCandidateType? get tcpType {
    final ret = js_util.getProperty(this, 'tcpType');

    return ret == null ? null : RTCIceTcpCandidateType.values.byName(ret);
  }

  String? get relatedAddress => js_util.getProperty(this, 'relatedAddress');
  int? get relatedPort => js_util.getProperty(this, 'relatedPort');
  String? get usernameFragment => js_util.getProperty(this, 'usernameFragment');
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

enum RTCIceProtocol { udp, tcp }

enum RTCIceTcpCandidateType { active, passive, so }

enum RTCIceCandidateType { host, srflx, prflx, relay }

@JS()
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external RTCPeerConnectionIceEvent(String type,
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

@JS()
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external RTCPeerConnectionIceErrorEvent(
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

@JS()
@staticInterop
class RTCCertificate {
  external RTCCertificate();
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
          direction: direction?.name,
          streams: streams,
          sendEncodings: sendEncodings);
}

extension PropsRTCRtpTransceiverInit on RTCRtpTransceiverInit {
  RTCRtpTransceiverDirection get direction => RTCRtpTransceiverDirection.values
      .byName(js_util.getProperty(this, 'direction'));
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.name);
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
  sendrecv,
  sendonly,
  recvonly,
  inactive,
  stopped
}

@JS()
@staticInterop
class RTCRtpSender {
  external RTCRtpSender();
}

extension PropsRTCRtpSender on RTCRtpSender {
  MediaStreamTrack? get track => js_util.getProperty(this, 'track');
  RTCDtlsTransport? get transport => js_util.getProperty(this, 'transport');
  static RTCRtpCapabilities? getCapabilities(String kind) =>
      js_util.callMethod(RTCRtpSender, 'getCapabilities', [kind]);

  Future<Object> setParameters(RTCRtpSendParameters parameters) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setParameters', [parameters]));

  RTCRtpSendParameters getParameters() =>
      js_util.callMethod(this, 'getParameters', []);

  Future<Object> replaceTrack(MediaStreamTrack? withTrack) => js_util
      .promiseToFuture(js_util.callMethod(this, 'replaceTrack', [withTrack]));

  Object setStreams(
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

  Future<Object> generateKeyFrame([Iterable<String>? rids]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'generateKeyFrame', [rids]));

  RTCDTMFSender? get dtmf => js_util.getProperty(this, 'dtmf');
}

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

@anonymous
@JS()
@staticInterop
class RTCRtpDecodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpDecodingParameters();
}

@anonymous
@JS()
@staticInterop
class RTCRtpEncodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters(
      {bool? active = true, int? maxBitrate, double? scaleResolutionDownBy});
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

  double get scaleResolutionDownBy =>
      js_util.getProperty(this, 'scaleResolutionDownBy');
  set scaleResolutionDownBy(double newValue) {
    js_util.setProperty(this, 'scaleResolutionDownBy', newValue);
  }
}

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

@JS()
@staticInterop
class RTCRtpReceiver {
  external RTCRtpReceiver();
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

@JS()
@staticInterop
class RTCRtpTransceiver {
  external RTCRtpTransceiver();
}

extension PropsRTCRtpTransceiver on RTCRtpTransceiver {
  String? get mid => js_util.getProperty(this, 'mid');
  RTCRtpSender get sender => js_util.getProperty(this, 'sender');
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');
  RTCRtpTransceiverDirection get direction => RTCRtpTransceiverDirection.values
      .byName(js_util.getProperty(this, 'direction'));
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.name);
  }

  RTCRtpTransceiverDirection? get currentDirection {
    final ret = js_util.getProperty(this, 'currentDirection');

    return ret == null ? null : RTCRtpTransceiverDirection.values.byName(ret);
  }

  Object stop() => js_util.callMethod(this, 'stop', []);

  Object setCodecPreferences(Iterable<RTCRtpCodecCapability> codecs) =>
      js_util.callMethod(this, 'setCodecPreferences', [codecs]);
}

@JS()
@staticInterop
class RTCDtlsTransport implements EventTarget {
  external RTCDtlsTransport();
}

extension PropsRTCDtlsTransport on RTCDtlsTransport {
  RTCIceTransport get iceTransport => js_util.getProperty(this, 'iceTransport');
  RTCDtlsTransportState get state =>
      RTCDtlsTransportState.values.byName(js_util.getProperty(this, 'state'));
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

enum RTCDtlsTransportState { valueNew, connecting, connected, closed, failed }

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

@JS()
@staticInterop
class RTCIceTransport implements EventTarget {
  external RTCIceTransport();
}

extension PropsRTCIceTransport on RTCIceTransport {
  RTCIceRole get role =>
      RTCIceRole.values.byName(js_util.getProperty(this, 'role'));
  RTCIceComponent get component =>
      RTCIceComponent.values.byName(js_util.getProperty(this, 'component'));
  RTCIceTransportState get state =>
      RTCIceTransportState.values.byName(js_util.getProperty(this, 'state'));
  RTCIceGathererState get gatheringState => RTCIceGathererState.values
      .byName(js_util.getProperty(this, 'gatheringState'));
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

  Object gather([RTCIceGatherOptions? options]) =>
      js_util.callMethod(this, 'gather', [options]);

  Object start(
          [RTCIceParameters? remoteParameters,
          RTCIceRole? role = RTCIceRole.controlled]) =>
      js_util.callMethod(this, 'start', [remoteParameters, role?.name]);

  Object stop() => js_util.callMethod(this, 'stop', []);

  Object addRemoteCandidate([RTCIceCandidateInit? remoteCandidate]) =>
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

enum RTCIceGathererState { valueNew, gathering, complete }

enum RTCIceTransportState {
  valueNew,
  checking,
  connected,
  completed,
  disconnected,
  failed,
  closed
}

enum RTCIceRole { unknown, controlling, controlled }

enum RTCIceComponent { rtp, rtcp }

@JS()
@staticInterop
class RTCTrackEvent implements Event {
  external RTCTrackEvent(String type, RTCTrackEventInit eventInitDict);
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

@JS()
@staticInterop
class RTCSctpTransport implements EventTarget {
  external RTCSctpTransport();
}

extension PropsRTCSctpTransport on RTCSctpTransport {
  RTCDtlsTransport get transport => js_util.getProperty(this, 'transport');
  RTCSctpTransportState get state =>
      RTCSctpTransportState.values.byName(js_util.getProperty(this, 'state'));
  /* double | NaN */ dynamic get maxMessageSize =>
      js_util.getProperty(this, 'maxMessageSize');
  int? get maxChannels => js_util.getProperty(this, 'maxChannels');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }
}

enum RTCSctpTransportState { connecting, connected, closed }

@JS()
@staticInterop
class RTCDataChannel implements EventTarget {
  external RTCDataChannel();
}

extension PropsRTCDataChannel on RTCDataChannel {
  String get label => js_util.getProperty(this, 'label');
  bool get ordered => js_util.getProperty(this, 'ordered');
  int? get maxPacketLifeTime => js_util.getProperty(this, 'maxPacketLifeTime');
  int? get maxRetransmits => js_util.getProperty(this, 'maxRetransmits');
  String get protocol => js_util.getProperty(this, 'protocol');
  bool get negotiated => js_util.getProperty(this, 'negotiated');
  int? get id => js_util.getProperty(this, 'id');
  RTCDataChannelState get readyState => RTCDataChannelState.values
      .byName(js_util.getProperty(this, 'readyState'));
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

  Object close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  BinaryType get binaryType =>
      BinaryType.values.byName(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.name);
  }

  Object send(String data) => js_util.callMethod(this, 'send', [data]);

  RTCPriorityType get priority =>
      RTCPriorityType.values.byName(js_util.getProperty(this, 'priority'));
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

enum RTCDataChannelState { connecting, open, closing, closed }

@JS()
@staticInterop
class RTCDataChannelEvent implements Event {
  external RTCDataChannelEvent(
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

@JS()
@staticInterop
class RTCDTMFSender implements EventTarget {
  external RTCDTMFSender();
}

extension PropsRTCDTMFSender on RTCDTMFSender {
  Object insertDTMF(String tones,
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

@JS()
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external RTCDTMFToneChangeEvent(String type,
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

@JS()
@staticInterop
class RTCStatsReport extends JsMap<Object, String> {
  external RTCStatsReport();
}

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
      RTCStats._(timestamp: timestamp, type: type.name, id: id);
}

extension PropsRTCStats on RTCStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  RTCStatsType get type =>
      RTCStatsType.values.byName(js_util.getProperty(this, 'type'));
  set type(RTCStatsType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

@JS()
@staticInterop
class RTCError implements DOMException {
  external RTCError(RTCErrorInit init, [String? message = '']);
}

extension PropsRTCError on RTCError {
  RTCErrorDetailType get errorDetail => RTCErrorDetailType.values
      .byName(js_util.getProperty(this, 'errorDetail'));
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
          errorDetail: errorDetail.name,
          sdpLineNumber: sdpLineNumber,
          sctpCauseCode: sctpCauseCode,
          receivedAlert: receivedAlert,
          sentAlert: sentAlert);
}

extension PropsRTCErrorInit on RTCErrorInit {
  RTCErrorDetailType get errorDetail => RTCErrorDetailType.values
      .byName(js_util.getProperty(this, 'errorDetail'));
  set errorDetail(RTCErrorDetailType newValue) {
    js_util.setProperty(this, 'errorDetail', newValue.name);
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
  dataChannelFailure,
  dtlsFailure,
  fingerprintFailure,
  sctpFailure,
  sdpSyntaxError,
  hardwareEncoderNotAvailable,
  hardwareEncoderError
}

@JS()
@staticInterop
class RTCErrorEvent implements Event {
  external RTCErrorEvent(String type, RTCErrorEventInit eventInitDict);
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
