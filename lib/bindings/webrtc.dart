/// WebRTC 1.0: Real-Time Communication Between Browsers
///
/// https://w3c.github.io/webrtc-pc/
@JS('window')
library webrtc;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'web_crypto_a_p_i.dart';
import 'mediacapture_streams.dart';
import 'hr_time_3.dart';
import 'file_a_p_i.dart';
import 'webrtc_stats.dart';
import 'web_i_d_l_1.dart';
import 'webrtc_encoded_transform.dart';
import 'webrtc_priority.dart';
import 'mst_content_hint.dart';
import 'webrtc_ice.dart';
import 'webrtc.dart';
import 'webrtc_identity.dart';

///
///
///  The dictionary is used to provide configuration options for an
/// [RTCPeerConnection]. It may be passed into the constructor when
/// instantiating a connection, or used with the
/// [RTCPeerConnection.getConfiguration()] and
/// [RTCPeerConnection.setConfiguration()] methods, which allow
/// inspecting and changing the configuration while a connection is
/// established.
///
///  The options include ICE server and transport settings and
/// identity information.
@anonymous
@JS()
class RTCConfiguration {
  ///  An array of [RTCIceServer] objects, each describing one server
  /// which may be used by the ICE agent; these are typically STUN
  /// and/or TURN servers. If this isn't specified, the connection
  /// attempt will be made with no STUN or TURN server available, which
  /// limits the connection to local peers.
  external Iterable<RTCIceServer> get iceServers;
  external set iceServers(Iterable<RTCIceServer> newValue);

  ///  The current ICE transport policy; this must be one of the values
  /// from the [RTCIceTransportPolicy] enumeration. If the policy isn't
  /// specified, [all] is assumed by default, allowing all candidates
  /// to be considered. A value of [relay] limits the candidates to
  /// those relayed through another server, such as a STUN or TURN
  /// server.
  external RTCIceTransportPolicy get iceTransportPolicy;
  external set iceTransportPolicy(RTCIceTransportPolicy newValue);

  ///  Specifies how to handle negotiation of candidates when the
  /// remote peer is not compatible with the SDP BUNDLE standard. This
  /// must be one of the values from the enum [RTCBundlePolicy]. If
  /// this value isn't included in the dictionary, ["balanced"] is
  /// assumed.
  external RTCBundlePolicy get bundlePolicy;
  external set bundlePolicy(RTCBundlePolicy newValue);

  ///  The RTCP mux policy to use when gathering ICE candidates, in
  /// order to support non-multiplexed RTCP. The value must be one of
  /// those from the [RTCRtcpMuxPolicy] enum. The default is
  /// ["require"].
  external RTCRtcpMuxPolicy get rtcpMuxPolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy newValue);

  ///  An [Array] of objects of type [RTCCertificate] which are used by
  /// the connection for authentication. If this property isn't
  /// specified, a set of certificates is generated automatically for
  /// each [RTCPeerConnection] instance. Although only one certificate
  /// is used by a given connection, providing certificates for
  /// multiple algorithms may improve the odds of successfully
  /// connecting in some circumstances. See Using certificates for
  /// further information.
  ///   This configuration option cannot be changed after it is first
  /// specified; once the certificates have been set, this property is
  /// ignored in future calls to
  /// [RTCPeerConnection.setConfiguration()].
  ///
  external Iterable<RTCCertificate> get certificates;
  external set certificates(Iterable<RTCCertificate> newValue);

  ///  An unsigned 16-bit integer value which specifies the size of the
  /// prefetched ICE candidate pool. The default value is 0 (meaning no
  /// candidate prefetching will occur). You may find in some cases
  /// that connections can be established more quickly by allowing the
  /// ICE agent to start fetching ICE candidates before you start
  /// trying to connect, so that they're already available for
  /// inspection when [RTCPeerConnection.setLocalDescription()] is
  /// called.
  ///   Changing the size of the ICE candidate pool may trigger the
  /// beginning of ICE gathering.
  ///
  external int get iceCandidatePoolSize;
  external set iceCandidatePoolSize(int newValue);

  external factory RTCConfiguration(
      {Iterable<RTCIceServer> iceServers,
      RTCIceTransportPolicy iceTransportPolicy,
      RTCBundlePolicy bundlePolicy,
      RTCRtcpMuxPolicy rtcpMuxPolicy,
      Iterable<RTCCertificate> certificates,
      int iceCandidatePoolSize = 0});
}

@JS()
enum RTCIceCredentialType { password }

///
///
///  The [RTCIceServer] dictionary defines how to connect to a single
/// ICE server (such as a STUN or TURN server). Objects of this type
/// are provided in the configuration of an [RTCPeerConnection], in
/// the [iceServers] array.
@experimental
@anonymous
@JS()
class RTCIceServer {
  ///  This required property is either a single [DOMString] or an
  /// array of [DOMString]s, each specifying a URL which can be used to
  /// connect to the server.
  external dynamic get urls;
  external set urls(dynamic newValue);

  ///  If the [RTCIceServer] is a TURN server, then this is the
  /// username to use during the authentication process.
  external String get username;
  external set username(String newValue);

  ///  The credential to use when logging into the server. This is only
  /// used if the [RTCIceServer] represents a TURN server.
  external String get credential;
  external set credential(String newValue);

  ///  If the [RTCIceServer] represents a TURN server, this attribute
  /// specifies what kind of [credential] is to be used when
  /// connecting. This must be one of the values defined by the
  /// [RTCIceCredentialType] enum. The default is [password].
  external RTCIceCredentialType get credentialType;
  external set credentialType(RTCIceCredentialType newValue);

  external factory RTCIceServer(
      {dynamic urls,
      String username,
      String credential,
      RTCIceCredentialType credentialType = RTCIceCredentialType.password});
}

@JS()
enum RTCIceTransportPolicy { relay, all }

@JS()
enum RTCBundlePolicy {
  balanced,
  @JS('max-compat')
  maxCompat,
  @JS('max-bundle')
  maxBundle
}

@JS()
enum RTCRtcpMuxPolicy { require }

///
///
///  The WebRTC API's [RTCOfferAnswerOptions] dictionary is used to
/// specify options that configure and control the process of
/// creating WebRTC offers or answers. It's used as the base type for
/// the [options] parameter when calling [createOffer()] or
/// [createAnswer()] on an [RTCPeerConnection].
///
///  Each of [createOffer()] and [createAnswer()] use as the base
/// type for their [options] parameter's dictionary. [createOffer()]
/// uses [RTCOfferOptions] and [createAnswer()] uses
/// [RTCAnswerOptions].
@anonymous
@JS()
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

///
///
///  The [RTCOfferOptions] dictionary is used to provide optional
/// settings when creating an [RTCPeerConnection] offer with the
/// [createOffer()] method.
@anonymous
@JS()
class RTCOfferOptions // null -> {} -> RTCOfferAnswerOptions
    with
        RTCOfferAnswerOptions {
  ///  A Boolean which, when set to [true], tells [createOffer()] to
  /// generate and use new values for the identifying properties of the
  /// SDP it creates, resulting in a request that triggers
  /// renegotiation of the ICE connection. This is useful if network
  /// conditions have changed in a way that make the current
  /// configuration untenable or impractical, for instance.
  external bool get iceRestart;
  external set iceRestart(bool newValue);

  external factory RTCOfferOptions({bool iceRestart = false});
}

///
///
///  The [RTCAnswerOptions] dictionary is used to provide optional
/// settings when creating an SDP answer using
/// [RTCPeerConnection.createOffer()] after receiving an offer from a
/// remote peer. The [createOffer()] method's [options] parameter is
/// of this type.
@anonymous
@JS()
class RTCAnswerOptions // null -> {} -> RTCOfferAnswerOptions
    with
        RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

@JS()
enum RTCSignalingState {
  stable,
  @JS('have-local-offer')
  haveLocalOffer,
  @JS('have-remote-offer')
  haveRemoteOffer,
  @JS('have-local-pranswer')
  haveLocalPranswer,
  @JS('have-remote-pranswer')
  haveRemotePranswer,
  closed
}

@JS()
enum RTCIceGatheringState {
  @JS('new')
  valueNew,
  gathering,
  complete
}

@JS()
enum RTCPeerConnectionState {
  closed,
  failed,
  disconnected,
  @JS('new')
  valueNew,
  connecting,
  connected
}

@JS()
enum RTCIceConnectionState {
  closed,
  failed,
  disconnected,
  @JS('new')
  valueNew,
  checking,
  completed,
  connected
}

///
@JS()
class RTCPeerConnection // null -> {} -> EventTarget
    with
        EventTarget {
  external factory RTCPeerConnection([RTCConfiguration? configuration]);
  external RTCSessionDescription? get localDescription;
  external RTCSessionDescription? get currentLocalDescription;
  external RTCSessionDescription? get pendingLocalDescription;
  external RTCSessionDescription? get remoteDescription;
  external RTCSessionDescription? get currentRemoteDescription;
  external RTCSessionDescription? get pendingRemoteDescription;
  external RTCSignalingState get signalingState;
  external RTCIceGatheringState get iceGatheringState;
  external RTCIceConnectionState get iceConnectionState;
  external RTCPeerConnectionState get connectionState;
  external bool? get canTrickleIceCandidates;
  external Object restartIce();
  external RTCConfiguration getConfiguration();
  external Object setConfiguration([RTCConfiguration? configuration]);
  external Object close();
  external EventHandlerNonNull? get onnegotiationneeded;
  external set onnegotiationneeded(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onicecandidate;
  external set onicecandidate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onicecandidateerror;
  external set onicecandidateerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsignalingstatechange;
  external set onsignalingstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oniceconnectionstatechange;
  external set oniceconnectionstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onicegatheringstatechange;
  external set onicegatheringstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onconnectionstatechange;
  external set onconnectionstatechange(EventHandlerNonNull? newValue);
  external Promise<Object> createOffer(
      [RTCSessionDescriptionCallback? successCallback,
      RTCPeerConnectionErrorCallback failureCallback,
      RTCOfferOptions? options]);
  external Promise<Object> setLocalDescription(
      [RTCLocalSessionDescriptionInit? description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);
  external Promise<Object> createAnswer(
      [RTCSessionDescriptionCallback? successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);
  external Promise<Object> setRemoteDescription(
      [RTCSessionDescriptionInit? description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);
  external Promise<Object> addIceCandidate(
      [RTCIceCandidateInit? candidate,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);
  external static Promise<RTCCertificate> generateCertificate(
      dynamic keygenAlgorithm);
  external Iterable<RTCRtpSender> getSenders();
  external Iterable<RTCRtpReceiver> getReceivers();
  external Iterable<RTCRtpTransceiver> getTransceivers();
  external RTCRtpSender addTrack(MediaStreamTrack track, [MediaStream streams]);
  external Object removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(dynamic trackOrKind,
      [RTCRtpTransceiverInit? init]);
  external EventHandlerNonNull? get ontrack;
  external set ontrack(EventHandlerNonNull? newValue);
  external RTCSctpTransport? get sctp;
  external RTCDataChannel createDataChannel(String label,
      [RTCDataChannelInit? dataChannelDict]);
  external EventHandlerNonNull? get ondatachannel;
  external set ondatachannel(EventHandlerNonNull? newValue);
  external Promise<RTCStatsReport> getStats([MediaStreamTrack? selector]);
  external Object setIdentityProvider(String provider,
      [RTCIdentityProviderOptions? options]);
  external Promise<String> getIdentityAssertion();
  external Promise<RTCIdentityAssertion> get peerIdentity;
  external String? get idpLoginUrl;
  external String? get idpErrorInfo;
}

@JS()
enum RTCSdpType { offer, pranswer, answer, rollback }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface describes one end of a connection—or potential
/// connection—and how it's configured. Each consists of a
/// description [type] indicating which part of the offer/answer
/// negotiation process it describes and of the SDP descriptor of the
/// session.
///
///  The process of negotiating a connection between two peers
/// involves exchanging objects back and forth, with each description
/// suggesting one combination of connection configuration options
/// that the sender of the description supports. Once the two peers
/// agree upon a configuration for the connection, negotiation is
/// complete.
@experimental
@JS()
class RTCSessionDescription {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);

  ///  An enum of type [RTCSdpType] describing the session
  /// description's type.
  external RTCSdpType get type;

  /// A [DOMString] containing the SDP describing the session.
  external String get sdp;
  external dynamic toJSON();
}

@anonymous
@JS()
class RTCSessionDescriptionInit {
  external RTCSdpType get type;
  external set type(RTCSdpType newValue);
  external String get sdp;
  external set sdp(String newValue);

  external factory RTCSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

@anonymous
@JS()
class RTCLocalSessionDescriptionInit {
  external RTCSdpType get type;
  external set type(RTCSdpType newValue);
  external String get sdp;
  external set sdp(String newValue);

  external factory RTCLocalSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

///
///
///  The interface—part of the WebRTC API—represents a candidate
/// Internet Connectivity Establishment (ICE) configuration which may
/// be used to establish an [RTCPeerConnection].
///
///  An ICE candidate describes the protocols and routing needed for
/// WebRTC to be able to communicate with a remote device. When
/// starting a WebRTC peer connection, typically a number of
/// candidates are proposed by each end of the connection, until they
/// mutually agree upon one which describes the connection they
/// decide will be best. WebRTC then uses that candidate's details to
/// initiate the connection.
///
///  For details on how the ICE process works, see Lifetime of a
/// WebRTC session. The article WebRTC connectivity provides
/// additional useful details.
@JS()
class RTCIceCandidate {
  external factory RTCIceCandidate([RTCIceCandidateInit? candidateInitDict]);

  ///  A [DOMString] representing the transport address for the
  /// candidate that can be used for connectivity checks. The format of
  /// this address is a [candidate-attribute] as defined in RFC 5245.
  /// This string is empty ([""]) if the [RTCIceCandidate] is an "end
  /// of candidates" indicator.
  external String get candidate;

  ///  A [DOMString] specifying the candidate's media stream
  /// identification tag which uniquely identifies the media stream
  /// within the component with which the candidate is associated, or
  /// [null] if no such association exists.
  external String? get sdpMid;

  ///  If not [null], indicates the zero-based index number of the
  /// media description (as defined in RFC 4566) in the SDP with which
  /// the candidate is associated.
  external int? get sdpMLineIndex;

  ///  Returns a [DOMString] containing a unique identifier that is the
  /// same for any candidates of the same type, share the same base
  /// (the address from which the ICE agent sent the candidate), and
  /// come from the same STUN server. This is used to help optimize ICE
  /// performance while prioritizing and correlating candidates that
  /// appear on multiple [RTCIceTransport] objects.
  external String? get foundation;

  ///  A [DOMString] which indicates whether the candidate is an RTP or
  /// an RTCP candidate; its value is either ["rtp"] or ["rtcp"], and
  /// is derived from the ["component-id"] field in the [candidate]
  /// a-line string. The permitted values are listed in the
  /// [RTCIceComponent] enumerated type.
  external RTCIceComponent? get component;

  /// A long integer value indicating the candidate's priority.
  external int? get priority;

  /// The address of the candidate.
  external String? get address;

  ///  A string indicating whether the candidate's protocol is ["tcp"]
  /// or ["udp"]. The string is one of those in the enumerated type
  /// [RTCIceProtocol].
  external RTCIceProtocol? get protocol;

  /// An integer value indicating the candidate's port number.
  external int? get port;

  ///  A [DOMString] indicating the type of candidate as one of the
  /// strings from the [RTCIceCandidateType] enumerated type.
  external RTCIceCandidateType? get type;

  ///  If [protocol] is ["tcp"], represents the type of TCP candidate.
  /// Otherwise, is [null].
  external RTCIceTcpCandidateType? get tcpType;

  ///  If the candidate is derived from another candidate, is a
  /// [DOMString] containing that host candidate's IP address. For host
  /// candidates, this value is [null].
  external String? get relatedAddress;

  ///  For a candidate that is derived from another, such as a relay or
  /// reflexive candidate, the [relatedPort] is a number indicating the
  /// port number of the candidate from which this candidate is
  /// derived. For host candidates, the property is [null].
  external int? get relatedPort;

  ///  A [DOMString] containing a randomly-generated username fragment
  /// ("ice-ufrag") which ICE uses for message integrity along with a
  /// randomly-generated password ("ice-pwd"). You can use this string
  /// to verify generations of ICE generation; each generation of the
  /// same ICE process will use the same , even across ICE restarts.
  external String? get usernameFragment;

  ///  Given the [RTCIceCandidate]'s current configuration, [toJSON()]
  /// returns a [DOMString] containing a JSON representation of that
  /// configuration in the form of a [RTCIceCandidateInit] object.
  /// json = rtcIceCandidate.toJSON();
  /// This simple example obtains a JSON string representing an RTCIceCandidate
  ///  found in the variable candidate.
  ///
  /// var jsonString = candidate.toJSON().stringify();
  external RTCIceCandidateInit toJSON();
}

///
///
///  The WebRTC API's dictionary, which contains the information
/// needed to fundamentally describe an [RTCIceCandidate]. is used
/// when using [new RTCIceCandidate()] to create a new ICE candidate
/// object. It's also used as the return value from the
/// [RTCIceCandidate.toJSON()] method, and can be passed directly
/// into [RTCPeerConnection.addIceCandidate()] to add a candidate to
/// the peer connection.
@anonymous
@JS()
class RTCIceCandidateInit {
  ///  The ICE [candidate-attribute]. If the candidate is an indicator
  /// that there are no further candidates (rather than representing a
  /// new candidate), this is the empty string ([""]). The default is
  /// the empty string.
  external String get candidate;
  external set candidate(String newValue);

  ///  The identification tag of the media stream with which the
  /// candidate is associated, or [null] if there is no associated
  /// media stream. The default is [null].
  external String? get sdpMid;
  external set sdpMid(String? newValue);

  ///  The zero-based index of the m-line within the SDP of the media
  /// description with which the candidate is associated, or [null] if
  /// no such associated exists. The default is [null].
  external int? get sdpMLineIndex;
  external set sdpMLineIndex(int? newValue);

  ///  A [DOMString] containing a string which uniquely identifies the
  /// remote peer. This string is generated by WebRTC at the beginning
  /// of the session, and at least 24 bits worth of the string contain
  /// random data. The string may be up to 256 characters long. This
  /// property has no default value and is not present unless set
  /// explicitly.
  external String? get usernameFragment;
  external set usernameFragment(String? newValue);

  external factory RTCIceCandidateInit(
      {String candidate = '',
      String? sdpMid,
      int? sdpMLineIndex,
      String? usernameFragment});
}

@JS()
enum RTCIceProtocol { udp, tcp }

@JS()
enum RTCIceTcpCandidateType { active, passive, so }

@JS()
enum RTCIceCandidateType { host, srflx, prflx, relay }

///
///
///  The interface represents events that occurs in relation to ICE
/// candidates with the target, usually an [RTCPeerConnection]. Only
/// one event is of this type: [icecandidate].
@experimental
@JS()
class RTCPeerConnectionIceEvent // null -> {} -> Event
    with
        Event {
  external factory RTCPeerConnectionIceEvent(String type,
      [RTCPeerConnectionIceEventInit? eventInitDict]);

  ///  Contains the [RTCIceCandidate] containing the candidate
  /// associated with the event, or [null] if this event indicates that
  /// there are no further candidates to come.
  external RTCIceCandidate? get candidate;
  external String? get url;
}

@anonymous
@JS()
class RTCPeerConnectionIceEventInit // null -> {} -> EventInit
    with
        EventInit {
  external RTCIceCandidate? get candidate;
  external set candidate(RTCIceCandidate? newValue);
  external String? get url;
  external set url(String? newValue);

  external factory RTCPeerConnectionIceEventInit(
      {RTCIceCandidate? candidate, String? url});
}

///
///
///  The [RTCPeerConnectionIceErrorEvent] interface—based upon the
/// [Event] interface—provides details pertaining to an ICE error
/// announced by sending an [icecandidateerror] event to the
/// [RTCPeerConnection] object.
@JS()
class RTCPeerConnectionIceErrorEvent // null -> {} -> Event
    with
        Event {
  external factory RTCPeerConnectionIceErrorEvent(
      String type, RTCPeerConnectionIceErrorEventInit eventInitDict);

  ///  A [DOMString] providing the local IP address used to communicate
  /// with the STUN or TURN server being used to negotiate the
  /// connection, or [null] if the local IP address has not yet been
  /// exposed as part of a local ICE candidate.
  external String? get address;

  ///  An unsigned integer value giving the port number over which
  /// communication with the STUN or TURN server is taking place, using
  /// the IP address given in [address]. [null] if the connection
  /// hasn't been established (that is, if [address] is [null]).
  external int? get port;

  ///  A [DOMString] indicating the URL of the STUN or TURN server with
  /// which the error occurred.
  external String get url;

  ///  An unsigned integer value stating the numeric STUN error code
  /// returned by the STUN or TURN server. If no host candidate can
  /// reach the server, this property is set to the number 701, which
  /// is outside the range of valid STUN error codes. The 701 error is
  /// fired only once per server URL, and only while the is
  /// [icegatheringstate] is [gathering].
  external int get errorCode;

  ///  A [DOMString] containing the STUN reason text returned by the
  /// STUN or TURN server. If communication with the STUN or TURN
  /// server couldn't be established at all, this string will be a
  /// browser-specific string explaining the error.
  external String get errorText;
}

@anonymous
@JS()
class RTCPeerConnectionIceErrorEventInit // null -> {} -> EventInit
    with
        EventInit {
  external String? get address;
  external set address(String? newValue);
  external int? get port;
  external set port(int? newValue);
  external String get url;
  external set url(String newValue);
  external int get errorCode;
  external set errorCode(int newValue);
  external String get errorText;
  external set errorText(String newValue);

  external factory RTCPeerConnectionIceErrorEventInit(
      {String? address,
      int? port,
      String url,
      int errorCode,
      String errorText});
}

@anonymous
@JS()
class RTCCertificateExpiration {
  external int get expires;
  external set expires(int newValue);

  external factory RTCCertificateExpiration({int expires});
}

///
///
///  The interface of the WebRTC API provides an object represents a
/// certificate that an [RTCPeerConnection] uses to authenticate.
@JS()
class RTCCertificate {
  /// Returns the expiration date of the certificate.
  external int get expires;
  external Iterable<RTCDtlsFingerprint> getFingerprints();

  external factory RTCCertificate();
}

///
///
///  The dictionary is used when calling the WebRTC function
/// [RTCPeerConnection.addTransceiver()] to provide configuration
/// options for the new transceiver.
@anonymous
@JS()
class RTCRtpTransceiverInit {
  ///  The new transceiver's preferred directionality. This value is
  /// used to initialize the new [RTCRtpTransceiver] object's
  /// [RTCRtpTransceiver.direction] property.
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection newValue);

  ///  A list of [MediaStream] objects to add to the
  /// transceiver's[RTCRtpReceiver]; when the remote peer's
  /// [RTCPeerConnection]'s [track] event occurs, these are the streams
  /// that will be specified by that event.
  external Iterable<MediaStream> get streams;
  external set streams(Iterable<MediaStream> newValue);

  ///  A list of encodings to allow when sending RTP media from the
  /// [RTCRtpSender]. Each entry is of type [RTCRtpEncodingParameters].
  external Iterable<RTCRtpEncodingParameters> get sendEncodings;
  external set sendEncodings(Iterable<RTCRtpEncodingParameters> newValue);

  external factory RTCRtpTransceiverInit(
      {RTCRtpTransceiverDirection direction =
          RTCRtpTransceiverDirection.sendrecv,
      Iterable<MediaStream> streams = const [],
      Iterable<RTCRtpEncodingParameters> sendEncodings = const []});
}

@JS()
enum RTCRtpTransceiverDirection {
  sendrecv,
  sendonly,
  recvonly,
  inactive,
  stopped
}

///
///  The interface provides the ability to control and obtain details
/// about how a particular [MediaStreamTrack] is encoded and sent to
/// a remote peer. With it, you can configure the encoding used for
/// the corresponding track, get information about the device's media
/// capabilities, and so forth. You can also obtain access to an
/// [RTCDTMFSender] which can be used to send DTMF codes (to simulate
/// the user pressing buttons on a telephone's dial pad) to the
/// remote peer.
///
@JS()
class RTCRtpSender {
  ///  The [MediaStreamTrack] which is being handled by the
  /// [RTCRtpSender]. If is [null], the [RTCRtpSender] doesn't transmit
  /// anything.
  external MediaStreamTrack? get track;

  ///  The [RTCDtlsTransport] over which the sender is exchanging the
  /// RTP and RTCP packets used to manage transmission of media and
  /// control data. This value is [null] until the transport is
  /// established. When bundling is in use, more than transceiver may
  /// be sharing the same transport object.
  external RTCDtlsTransport? get transport;
  external static RTCRtpCapabilities? getCapabilities(String kind);
  external Promise<Object> setParameters(RTCRtpSendParameters parameters);
  external RTCRtpSendParameters getParameters();
  external Promise<Object> replaceTrack(MediaStreamTrack? withTrack);
  external Object setStreams([MediaStream streams]);
  external Promise<RTCStatsReport> getStats();
  external dynamic get transform;
  external set transform(dynamic newValue);
  external RTCDTMFSender? get dtmf;

  external factory RTCRtpSender();
}

///
///
///  The [RTCRtpParameters] dictionary is the basic object describing
/// the parameters of an RTP transport. It is extended separately for
/// senders and receivers in the form of the [RTCRtpSendParameters]
/// and [RTCRtpReceiveParameters] dictionaries.
///
///  To obtain the parameters of a sender or receiver, call its
/// [getParameters()] method:
///  [getParameters()]
///  [getParameters()]
///
@anonymous
@JS()
class RTCRtpParameters {
  ///  An array of zero or more RTP header extensions, each identifying
  /// an extension supported by the sender or receiver. Header
  /// extensions are described in RFC 3550: 5.3.1. This parameter
  /// cannot be changed once initially set.
  external Iterable<RTCRtpHeaderExtensionParameters> get headerExtensions;
  external set headerExtensions(
      Iterable<RTCRtpHeaderExtensionParameters> newValue);

  ///  An [RTCRtcpParameters] object providing the configuration
  /// parameters used for RTCP on the sender or receiver. This
  /// parameter cannot be changed once initially set.
  external RTCRtcpParameters get rtcp;
  external set rtcp(RTCRtcpParameters newValue);

  ///  An array of [RTCRtpCodecParameters] objects describing the set
  /// of codecs from which the sender or receiver will choose. This
  /// parameter cannot be changed once initially set.
  external Iterable<RTCRtpCodecParameters> get codecs;
  external set codecs(Iterable<RTCRtpCodecParameters> newValue);

  external factory RTCRtpParameters(
      {Iterable<RTCRtpHeaderExtensionParameters> headerExtensions,
      RTCRtcpParameters rtcp,
      Iterable<RTCRtpCodecParameters> codecs});
}

///
///
///  The WebRTC API's [RTCRtpSendParameters] dictionary is used to
/// specify the parameters for an [RTCRtpSender] when calling its
/// [setParameters()] method.
@anonymous
@JS()
class RTCRtpSendParameters // null -> {} -> RTCRtpParameters
    with
        RTCRtpParameters {
  ///  A string containing a unique ID for the last set of parameters
  /// applied; this value is used to ensure that [setParameters()] can
  /// only be called to alter changes made by a specific previous call
  /// to [getParameters()]. Once this parameter is initially set, it
  /// cannot be changed.
  external String get transactionId;
  external set transactionId(String newValue);

  ///  An array of [RTCRtpEncodingParameters] objects, each specifying
  /// the parameters for a single codec that could be used to encode
  /// the track's media.
  external Iterable<RTCRtpEncodingParameters> get encodings;
  external set encodings(Iterable<RTCRtpEncodingParameters> newValue);

  external factory RTCRtpSendParameters(
      {String transactionId, Iterable<RTCRtpEncodingParameters> encodings});
}

///
///
///  The [RTCRtpReceiveParameters] dictionary, based upon the
/// [RTCRtpParameters] dictionary, is returned by the
/// [RTCRtpReceiver] method [getParameters()]. It describes the
/// parameters being used by the receiver's RTP connection to the
/// remote peer.
@anonymous
@JS()
class RTCRtpReceiveParameters // null -> {} -> RTCRtpParameters
    with
        RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@anonymous
@JS()
class RTCRtpCodingParameters {
  external String get rid;
  external set rid(String newValue);

  external factory RTCRtpCodingParameters({String rid});
}

@anonymous
@JS()
class RTCRtpDecodingParameters // null -> {} -> RTCRtpCodingParameters
    with
        RTCRtpCodingParameters {
  external factory RTCRtpDecodingParameters();
}

///
///
///  An instance of the WebRTC API's dictionary describes a single
/// configuration of a codec for an [RTCRtpSender]. It's used in the
/// [RTCRtpSendParameters] describing the configuration of an RTP
/// sender's [encodings]; [RTCRtpDecodingParameters] is used to
/// describe the configuration of an RTP receiver's [encodings].
@anonymous
@JS()
class RTCRtpEncodingParameters // null -> {} -> RTCRtpCodingParameters
    with
        RTCRtpCodingParameters {
  ///  If [true], the described encoding is currently actively being
  /// used. That is, for RTP senders, the encoding is currently being
  /// used to send data, while for receivers, the encoding is being
  /// used to decode received data. The default value is [true].
  external bool get active;
  external set active(bool newValue);

  ///  An unsigned long integer indicating the maximum number of bits
  /// per second to allow for this encoding. Other parameters may
  /// further constrain the bit rate, such as the value of
  /// [maxFramerate] or transport or physical network limitations.
  external int get maxBitrate;
  external set maxBitrate(int newValue);

  ///  Only used for senders whose track's [kind] is [video], this is a
  /// double-precision floating-point value specifying a factor by
  /// which to scale down the video during encoding. The default value,
  /// 1.0, means that the sent video's size will be the same as the
  /// original. A value of 2.0 scales the video frames down by a factor
  /// of 2 in each dimension, resulting in a video 1/4 the size of the
  /// original. The value must not be less than 1.0 (you can't use this
  /// to scale the video up).
  external double get scaleResolutionDownBy;
  external set scaleResolutionDownBy(double newValue);

  external factory RTCRtpEncodingParameters(
      {bool active = true, int maxBitrate, double scaleResolutionDownBy});
}

///
///
///  The [RTCRtcpParameters] dictionary provides parameters of an
/// RTCP connection. It's used as the value of the [rtcp] property of
/// the parameters of an [RTCRtpSender] or [RTCRtpReceiver].
@anonymous
@JS()
class RTCRtcpParameters {
  ///  The Canonical Name (CNAME) being used by RTCP. This is used, for
  /// example, in SDES (SDP security descriptions) messages, described
  /// in RFC 4568. This property cannot be changed once initialized.
  external String get cname;
  external set cname(String newValue);

  ///  A Boolean value indicating whether or not reduced size RTCP is
  /// configured. If this value is [true], reduced size RTCP (described
  /// in RFC 5506) is in effect. If [false], compund RTCP is in use, as
  /// found in RFC 3550. This property cannot be changed once
  /// initialized.
  external bool get reducedSize;
  external set reducedSize(bool newValue);

  external factory RTCRtcpParameters({String cname, bool reducedSize});
}

@anonymous
@JS()
class RTCRtpHeaderExtensionParameters {
  external String get uri;
  external set uri(String newValue);
  external int get id;
  external set id(int newValue);
  external bool get encrypted;
  external set encrypted(bool newValue);

  external factory RTCRtpHeaderExtensionParameters(
      {String uri, int id, bool encrypted = false});
}

///
///
///  The dictionary, part of the WebRTC API, is used to describe the
/// configuration parameters for a single media codec. In addition to
/// being the type of the [RTCRtpParameters.codecs] property, it's
/// used when calling [RTCRtpTransceiver.setCodecPreferences()] to
/// configure a transceiver's codecs before beginning the
/// offer/answer process to establish a WebRTC peer connection.
///
///  Most of the fields in this property take values which are
/// defined and maintained by the Internet Assigned Numbers Authority
/// (IANA). References to relevant IANA documents are provided in the
/// see also section at the end of this article.
@anonymous
@JS()
class RTCRtpCodecParameters {
  /// The RTP payload type used to identify this codec.
  external int get payloadType;
  external set payloadType(int newValue);

  ///  The codec's MIME media type and subtype specified as a
  /// [DOMString] of the form ["type/subtype"]. IANA maintains a
  /// registry of valid MIME types.
  external String get mimeType;
  external set mimeType(String newValue);

  ///  An unsigned long integer value specifying the codec's clock rate
  /// in hertz (Hz). The clock rate is the rate at which the codec's
  /// RTP timestamp advances. Most codecs have specific values or
  /// ranges of values they permit; see the IANA payload format media
  /// type registry for details.
  external int get clockRate;
  external set clockRate(int newValue);

  ///  An unsigned short integer indicating the number of channels the
  /// codec should support. For example, for audio codecs, a value of 1
  /// specifies monaural sound while 2 indicates stereo.
  external int get channels;
  external set channels(int newValue);

  ///  A [DOMString] containing the format-specific parameters field
  /// from the ["a=fmtp"] line in the codec's SDP, if one is present;
  /// see section 5.8 of the IETF specification for JSEP.
  ///   Note: On an [RTCRtpReceiver], the format-specific parameters
  /// come from the SDP sent by the remote peer, while for
  /// [RTCRtpSender], they're provided by the local description.
  ///
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String newValue);

  external factory RTCRtpCodecParameters(
      {int payloadType,
      String mimeType,
      int clockRate,
      int channels,
      String sdpFmtpLine});
}

///
///
///  The [RTCRtpCapabilities] dictionary is a data type used to
/// describe the capabilities of an [RTCRtpSender] or
/// [RTCRtpReceiver] in response to a call to the
/// [RTCRtpSender.getCapabilities()] or
/// [RTCRtpReceiver.getCapabilities()] static functions, both of
/// which return an array of objects.
///
///  An object contains an array of objects conforming to
/// [RTCRtpCodecCapability] (each describing the capabilities of one
/// codec) and an array of the supported RTP header extensions for
/// that codec.
@anonymous
@JS()
class RTCRtpCapabilities {
  ///  An array of [RTCRtpCodecCapability] objects, each describing one
  /// of the codecs supported by the [RTCRtpSender] or
  /// [RTCRtpReceiver]. There are some special entries in this array,
  /// described below in the section The codecs array.
  external Iterable<RTCRtpCodecCapability> get codecs;
  external set codecs(Iterable<RTCRtpCodecCapability> newValue);

  ///  An array of objects conforming to the
  /// [RTCRtpHeaderExtensionCapability] dictionary. Each object
  /// contains a single [DOMString], [uri], specifying the URI of the
  /// header extension, as described in RFC 5285.
  external Iterable<RTCRtpHeaderExtensionCapability> get headerExtensions;
  external set headerExtensions(
      Iterable<RTCRtpHeaderExtensionCapability> newValue);

  external factory RTCRtpCapabilities(
      {Iterable<RTCRtpCodecCapability> codecs,
      Iterable<RTCRtpHeaderExtensionCapability> headerExtensions});
}

///
///
///  The WebRTC API's [RTCRtpCodecCapability] dictionary provides
/// information describing the capabilities of a single media codec.
@anonymous
@JS()
class RTCRtpCodecCapability {
  ///  A [DOMString] indicating the codec's MIME media type and
  /// subtype. See Codecs used by WebRTC for details about potential
  /// codecs that might be referenced here.
  external String get mimeType;
  external set mimeType(String newValue);

  ///  An unsigned long integer specifying the codec's clock rate in
  /// Hertz (Hz). The IANA maintains a list of codecs and their
  /// parameters, including their clock rates.
  external int get clockRate;
  external set clockRate(int newValue);

  ///  An unsigned integer value indicating the maximum number of
  /// channels supported by the codec; for example, a codec that
  /// supports only mono sound would have a value of 1; stereo codecs
  /// would have a 2, etc.
  external int get channels;
  external set channels(int newValue);

  ///  A [DOMString] giving the format specific parameters field from
  /// the [a=fmtp] line in the SDP which corresponds to the codec, if
  /// such a line exists. If there is no parameters field, this
  /// property is left out.
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String newValue);

  external factory RTCRtpCodecCapability(
      {String mimeType, int clockRate, int channels, String sdpFmtpLine});
}

@anonymous
@JS()
class RTCRtpHeaderExtensionCapability {
  external String get uri;
  external set uri(String newValue);

  external factory RTCRtpHeaderExtensionCapability({String uri});
}

///
///
///  The interface of the WebRTC API manages the reception and
/// decoding of data for a [MediaStreamTrack] on an
/// [RTCPeerConnection].
@JS()
class RTCRtpReceiver {
  ///  Returns the [MediaStreamTrack] associated with the current
  /// [RTCRtpReceiver] instance.
  external MediaStreamTrack get track;

  ///  Returns the [RTCDtlsTransport] instance over which the media for
  /// the receiver's track is received.
  external RTCDtlsTransport? get transport;
  external static RTCRtpCapabilities? getCapabilities(String kind);

  ///  Returns an [RTCRtpParameters] object which contains information
  /// about how the RTC data is to be decoded.
  /// let rtpReceiveParameters = rtpReceiver.getParameters();
  external RTCRtpReceiveParameters getParameters();

  ///  Returns an array of [RTCRtpContributingSource] instances for
  /// each unique CSRC (contributing source) identifier received by the
  /// current [RTCRtpReceiver] in the last ten seconds.
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  external Iterable<RTCRtpContributingSource> getContributingSources();

  ///  Returns an array including one [RTCRtpSynchronizationSource]
  /// instance for each unique SSRC (synchronization source) identifier
  /// received by the current [RTCRtpReceiver] in the last ten seconds.
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  external Iterable<RTCRtpSynchronizationSource> getSynchronizationSources();

  ///  Returns a [Promise] whose fulfillment handler receives a
  /// [RTCStatsReport] which contains statistics about the incoming
  /// streams and their dependencies.
  /// var promise = RTCRtpReceiver.getStats();
  ///
  /// This simple example obtains the statistics for an RTCRtpReceiver and
  ///  updates an element's innerText to display the number of
  ///  packets lost.
  ///
  /// receiver.getStats().then(function(stats) {
  ///  document.getElementById("lostpackets").innerText =
  ///      stats.packetsLost;
  /// });
  ///
  external Promise<RTCStatsReport> getStats();
  external dynamic get transform;
  external set transform(dynamic newValue);

  external factory RTCRtpReceiver();
}

///
///
///  The dictionary of the WebRTC API is used by
/// [getContributingSources()] to provide information about a given
/// contributing source (CSRC), including the most recent time a
/// packet that the source contributed was played out.
///
///  The information provided is based on the last ten seconds of
/// media received.
@anonymous
@JS()
class RTCRtpContributingSource {
  ///  A [DOMHighResTimeStamp] indicating the most recent time at which
  /// a frame originating from this source was delivered to the
  /// receiver's [MediaStreamTrack]
  external double get timestamp;
  external set timestamp(double newValue);

  ///  A 32-bit unsigned integer value specifying the CSRC identifier
  /// of the contributing source.
  external int get source;
  external set source(int newValue);

  ///  A double-precision floating-point value between 0 and 1
  /// specifying the audio level contained in the last RTP packet
  /// played from this source.
  external double get audioLevel;
  external set audioLevel(double newValue);

  ///  The RTP timestamp of the media played out at the time indicated
  /// by [timestamp]. This value is a source-generated time value which
  /// can be used to help with sequencing and synchronization.
  external int get rtpTimestamp;
  external set rtpTimestamp(int newValue);

  external factory RTCRtpContributingSource(
      {double timestamp, int source, double audioLevel, int rtpTimestamp});
}

///
///
///  The dictionary of the WebRTC API is used by
/// [getSynchronizationSources()] to describe a particular
/// synchronization source (SSRC). A synchronization source is a
/// single source that shares timing and sequence number space. Since
/// implements [RTCRtpContributingSource], its properties are also
/// available.
///
///  The information provided is based on the last ten seconds of
/// media received.
///  While the published specification describes this as an
/// interface, it has since been changed to a dictionary in follow-up
/// drafts.
///
@anonymous
@JS()
class RTCRtpSynchronizationSource // null -> {} -> RTCRtpContributingSource
    with
        RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

///
///
///  The WebRTC interface describes a permanent pairing of an
/// [RTCRtpSender] and an [RTCRtpReceiver], along with some shared
/// state.
///
///  Each SDP media section describes one bidirectional SRTP ("Secure
/// Real Time Protocol") stream (excepting the media section for
/// [RTCDataChannel], if present). This pairing of send and receive
/// SRTP streams is significant for some applications, so is used to
/// represent this pairing, along with other important state from the
/// media section. Each non-disabled SRTP media section is always
/// represented by exactly one transceiver.
///
///  A transceiver is uniquely identified using its [mid] property,
/// which is the same as the media ID ([mid]) of its corresponding
/// m-line. An is associated with an m-line if its [mid] is non-null;
/// otherwise it's considered disassociated.
@JS()
class RTCRtpTransceiver {
  ///  The media ID of the m-line associated with this transceiver.
  /// This association is established, when possible, whenever either a
  /// local or remote description is applied. This field is [null] if
  /// neither a local or remote description has been applied, or if its
  /// associated m-line is rejected by either a remote offer or any
  /// answer.
  external String? get mid;

  ///  The [RTCRtpSender] object responsible for encoding and sending
  /// data to the remote peer.
  external RTCRtpSender get sender;

  ///  The [RTCRtpReceiver] object that handles receiving and decoding
  /// incoming media.
  external RTCRtpReceiver get receiver;

  ///  A string from the enum [RTCRtpTransceiverDirection] which is
  /// used to set the transceiver's desired direction.
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection newValue);

  ///  A read-only string from the enum [RTCRtpTransceiverDirection]
  /// which indicates the transceiver's current directionality, or
  /// [null] if the transceiver is stopped or has never participated in
  /// an exchange of offers and answers. To change the transceiver's
  /// directionality, set the value of the [direction] property.
  external RTCRtpTransceiverDirection? get currentDirection;

  ///  Permanently stops the [RTCRtpTransceiver]. The associated sender
  /// stops sending data, and the associated receiver likewise stops
  /// receiving and decoding incoming data.
  /// RTCRtpTransceiver.stop()
  external Object stop();

  ///  A list of [RTCRtpCodecParameters] objects which override the
  /// default preferences used by the user agent for the transceiver's
  /// codecs.
  /// rtcRtpTransceiver.setCodecPreferences(codecs)
  external Object setCodecPreferences(Iterable<RTCRtpCodecCapability> codecs);

  external factory RTCRtpTransceiver();
}

///
@experimental
@JS()
class RTCDtlsTransport // null -> {} -> EventTarget
    with
        EventTarget {
  /// The read-only [RTCDtlsTransport]
  ///   property [iceTransport] contains a reference
  ///   to the underlying [RTCIceTransport].
  @experimental
  external RTCIceTransport get iceTransport;

  /// [WebRTC]
  external RTCDtlsTransportState get state;
  external Iterable<ByteBuffer> getRemoteCertificates();
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  external factory RTCDtlsTransport();
}

@JS()
enum RTCDtlsTransportState {
  @JS('new')
  valueNew,
  connecting,
  connected,
  closed,
  failed
}

@anonymous
@JS()
class RTCDtlsFingerprint {
  external String get algorithm;
  external set algorithm(String newValue);
  external String get value;
  external set value(String newValue);

  external factory RTCDtlsFingerprint({String algorithm, String value});
}

///
///
///  The [RTCIceTransport] interface provides access to information
/// about the ICE transport layer over which the data is being sent
/// and received. This is particularly useful if you need to access
/// state information about the connection.
@JS()
class RTCIceTransport // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns a [DOMString] whose value is one of the members of the
  /// [RTCIceRole] enumerated type: ["controlling"] or ["controlled"];
  /// this indicates whether the ICE agent is the one that makes the
  /// final decision as to the candidate pair to use or not.
  external RTCIceRole get role;

  ///  The ICE component being used by the transport. The value is one
  /// of the strings from the [RTCIceTransport] enumerated type:
  /// ["RTP"] or ["RTSP"].
  external RTCIceComponent get component;

  ///  A [DOMString] indicating what the current state of the ICE agent
  /// is. The value of can be used to determine whether the ICE agent
  /// has made an initial connection using a viable candidate pair
  /// (["connected"]), made its final selection of candidate pairs
  /// (["completed"]), or in an error state (["failed"]), among other
  /// states. See the [RTCIceTransportState] enumerated type for a
  /// complete list of states.
  external RTCIceTransportState get state;

  ///  A [DOMString] indicating which gathering state the ICE agent is
  /// currently in. The value is one of those included in the
  /// [RTCIceGathererState] enumerated type: ["new"], ["gathering"], or
  /// ["complete"].
  external RTCIceGathererState get gatheringState;

  ///  Returns an array of [RTCIceCandidate] objects, each describing
  /// one of the ICE candidates that have been gathered so far for the
  /// local device. These are the same candidates which have already
  /// been sent to the remote peer by sending an [icecandidate] event
  /// to the [RTCPeerConnection] for transmission.
  /// localCandidates = RTCIceTransport.getLocalCandidates();
  /// This simple example gets the local candidate list from the
  ///  RTCIceTransport for the first RTCRtpSender on the
  ///  RTCPeerConnection, then outputs to the console all of the candidates in
  ///  the list.
  ///
  /// var localCandidates = pc.getSenders()[0].transport.transport.getLocalCandidates();
  ///
  /// localCandidates.forEach(function(candidate, index)) {
  ///  console.log("Candidate " + index + ": " + candidate.candidate);
  /// });
  external Iterable<RTCIceCandidate> getLocalCandidates();

  ///  Returns an array of [RTCIceCandidate] objects, one for each of
  /// the remote device's ICE candidates that have been received by the
  /// local end of the [RTCPeerConnection] and delivered to ICE by
  /// calling [addIceCandidate()].
  /// remoteCandidates = RTCIceTransport.getRemoteCandidates();
  /// This simple example gets the remote candidate list from the
  ///  RTCIceTransport for the first RTCRtpSender on the
  ///  RTCPeerConnection, then outputs to the console all of the candidates in
  ///  the list.
  ///
  /// var remoteCandidates = pc.getSenders()[0].transport.transport.getRemoteCandidates();
  ///
  /// remoteCandidates.forEach(function(candidate, index)) {
  ///  console.log("Candidate " + index + ": " + candidate.candidate);
  /// });
  external Iterable<RTCIceCandidate> getRemoteCandidates();

  ///  Returns a [RTCIceCandidatePair] object that identifies the two
  /// candidates—one for each end of the connection—that have been
  /// selected so far. It's possible that a better pair will be found
  /// and selected later; if you need to keep up with this, watch for
  /// the [selectedcandidatepairchange] event. If no candidate pair has
  /// been selected yet, the return value is [null].
  /// candidatePair = RTCIceTransport.getSelectedCandidatePair();
  ///
  /// In this example, an event handler for selectedcandidatepairchange is set
  ///  up to update an on-screen display showing the protocol used by the currently selected
  ///  candidate pair.var iceTransport = pc.getSenders()[0].transport.iceTransport;
  /// var localProto = document.getElementById("local-protocol");
  /// var remoteProto = document.getElementById("remote-protocol");
  ///
  /// iceTransport.onselectedcandidatepairchange = function(event) {
  ///  var pair = iceTransport.getSelectedCandidatePair();
  ///  localProtocol.innerText = pair.local.protocol.toUpperCase();
  ///  remoteProtocol.innerText = pair.remote.protocol.toUpperCase();
  /// }
  ///
  external RTCIceCandidatePair? getSelectedCandidatePair();

  ///  Returns a [RTCIceParameters] object describing the ICE
  /// parameters established by a call to the
  /// [RTCPeerConnection.setLocalDescription()] method. Returns [null]
  /// if parameters have not yet been received.
  /// parameters = RTCIceTransport.getLocalParameters();
  external RTCIceParameters? getLocalParameters();

  ///  Returns a [RTCIceParameters] object containing the ICE
  /// parameters for the remote device, as set by a call to
  /// [RTCPeerConnection.setRemoteDescription()]. If
  /// [setRemoteDescription()] hasn't been called yet, the return value
  /// is [null].
  /// parameters = RTCIceTransport.getRemoteParameters();
  external RTCIceParameters? getRemoteParameters();
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongatheringstatechange;
  external set ongatheringstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectedcandidatepairchange;
  external set onselectedcandidatepairchange(EventHandlerNonNull? newValue);

  external factory RTCIceTransport();
  external Object gather([RTCIceGatherOptions? options]);
  external Object start(
      [RTCIceParameters? remoteParameters,
      RTCIceRole? role = RTCIceRole.controlled]);
  external Object stop();
  external Object addRemoteCandidate([RTCIceCandidateInit? remoteCandidate]);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onicecandidate;
  external set onicecandidate(EventHandlerNonNull? newValue);
}

///
///
///  The [RTCIceParameters] dictionary specifies the username
/// fragment and password assigned to an ICE session. During ICE
/// negotiation, each peer's username fragment and password are
/// recorded in an object, which can be obtained from the
/// [RTCIceTransport] by calling its [getLocalParameters()] or
/// [getRemoteParameters()] method, depending on which end interests
/// you.
@anonymous
@JS()
class RTCIceParameters {
  ///  A [DOMString] specifying the value of the ICE session's username
  /// fragment field, [ufrag].
  external String get usernameFragment;
  external set usernameFragment(String newValue);

  /// A [DOMString] specifying the session's password string.
  external String get password;
  external set password(String newValue);

  external factory RTCIceParameters({String usernameFragment, String password});
}

///
///
///  The [RTCIceCandidatePair] dictionary describes a pair of ICE
/// candidates which together comprise a description of a viable
/// connection between two WebRTC endpoints. It is used as the return
/// value from [RTCIceTransport.getSelectedCandidatePair()] to
/// identify the currently-selected candidate pair identified by the
/// ICE agent.
@anonymous
@JS()
class RTCIceCandidatePair {
  ///  An [RTCIceCandidate] describing the configuration of the local
  /// end of the connection.
  external RTCIceCandidate get local;
  external set local(RTCIceCandidate newValue);

  ///  The [RTCIceCandidate] describing the configuration of the remote
  /// end of the connection.
  external RTCIceCandidate get remote;
  external set remote(RTCIceCandidate newValue);

  external factory RTCIceCandidatePair(
      {RTCIceCandidate local, RTCIceCandidate remote});
}

@JS()
enum RTCIceGathererState {
  @JS('new')
  valueNew,
  gathering,
  complete
}

@JS()
enum RTCIceTransportState {
  @JS('new')
  valueNew,
  checking,
  connected,
  completed,
  disconnected,
  failed,
  closed
}

@JS()
enum RTCIceRole { unknown, controlling, controlled }

@JS()
enum RTCIceComponent { rtp, rtcp }

///
///
///  The WebRTC API interface [RTCTrackEvent] represents the [track]
/// event, which is sent when a new [MediaStreamTrack] is added to an
/// [RTCRtpReceiver] which is part of the [RTCPeerConnection]. The
/// target is the [RTCPeerConnection] object to which the track is
/// being added.
///
///  This event is sent by the WebRTC layer to the web site or
/// application, so you will not typically need to instantiate an
/// yourself.
@JS()
class RTCTrackEvent // null -> {} -> Event
    with
        Event {
  external factory RTCTrackEvent(String type, RTCTrackEventInit eventInitDict);

  ///  The [RTCRtpReceiver] used by the track that's been added to the
  /// [RTCPeerConnection].
  external RTCRtpReceiver get receiver;

  /// The [MediaStreamTrack] which has been added to the connection.
  external MediaStreamTrack get track;

  ///  An array of [MediaStream] objects, each representing one of the
  /// media streams to which the added [track] belongs. By default, the
  /// array is empty, indicating a streamless track.
  external Iterable<MediaStream> get streams;

  /// The [RTCRtpTransceiver] being used by the new track.
  external RTCRtpTransceiver get transceiver;
}

///
///
///  The WebRTC API's [RTCTrackEventInit] dictionary is used to
/// provide information describing an [RTCTrackEvent] when
/// instantiating a new [track] event using [new RTCTrackEvent()].
@anonymous
@JS()
class RTCTrackEventInit // null -> {} -> EventInit
    with
        EventInit {
  ///  The [RTCRtpReceiver] which is being used to receive the track's
  /// media.
  external RTCRtpReceiver get receiver;
  external set receiver(RTCRtpReceiver newValue);

  /// The [MediaStreamTrack] the event is associated with.
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack newValue);

  ///  An array of [MediaStream] objects representing each of the
  /// streams that comprise the event's corresponding track.
  external Iterable<MediaStream> get streams;
  external set streams(Iterable<MediaStream> newValue);

  /// The [RTCRtpTransceiver] associated with the event.
  external RTCRtpTransceiver get transceiver;
  external set transceiver(RTCRtpTransceiver newValue);

  external factory RTCTrackEventInit(
      {RTCRtpReceiver receiver,
      MediaStreamTrack track,
      Iterable<MediaStream> streams = const [],
      RTCRtpTransceiver transceiver});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface provides information which describes a Stream
/// Control Transmission Protocol (SCTP) transport. This provides
/// information about limitations of the transport, but also provides
/// a way to access the underlying Datagram Transport Layer Security
/// (DTLS) transport over which SCTP packets for all of an
/// [RTCPeerConnection]'s data channels are sent and received.
///
///  You don't create objects yourself; instead, you get access to
/// the for a given [RTCPeerConnection] through its [sctp] property.
///
///  Possibly the most useful property on this interface is its
/// [maxMessageSize] property, which you can use to determine the
/// upper limit on the size of messages you can send over a data
/// channel on the peer connection.
@experimental
@JS()
class RTCSctpTransport // null -> {} -> EventTarget
    with
        EventTarget {
  ///  An [RTCDtlsTransport] object representing the DTLS transport
  /// used for the transmission and receipt of data packets.
  external RTCDtlsTransport get transport;

  ///  A [DOMString] enumerated value indicating the state of the SCTP
  /// transport.
  external RTCSctpTransportState get state;

  ///  An integer value indicating the maximum size, in bytes, of a
  /// message which can be sent using the [RTCDataChannel.send()]
  /// method.
  external /* double | NaN */ dynamic get maxMessageSize;

  ///  An integer value indicating the maximum number of
  /// [RTCDataChannel]s that can be open simultaneously.
  external int? get maxChannels;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  external factory RTCSctpTransport();
}

@JS()
enum RTCSctpTransportState { connecting, connected, closed }

///
@experimental
@JS()
class RTCDataChannel // null -> {} -> EventTarget
    with
        EventTarget {
  /// The read-only [RTCDataChannel] property [label]
  ///   returns a [DOMString] containing a name describing the data
  /// channel. These
  ///  labels are not required to be unique.
  @experimental
  external String get label;

  /// The read-only [RTCDataChannel] property
  ///   [ordered] indicates whether or not the data channel
  ///    guarantees in-order delivery of messages; the default is
  /// [true], which
  ///   indicates that the data channel is indeed ordered.
  @experimental
  external bool get ordered;

  /// The read-only [RTCDataChannel] property
  ///   [maxPacketLifeTime] returns the amount of time, in
  ///    milliseconds, the browser is allowed to take to attempt to
  /// transmit a message, as set
  ///   when the data channel was created, or [null].
  @experimental
  external int? get maxPacketLifeTime;

  /// The read-only [RTCDataChannel] property
  ///   [maxRetransmits] returns the maximum number of times the
  ///    browser should try to retransmit a message before giving up,
  /// as set when the data
  ///    channel was created, or [null], which indicates that there is
  /// no
  ///   maximum.
  @experimental
  external int? get maxRetransmits;

  /// The read-only [RTCDataChannel] property
  ///  [protocol] returns a [DOMString] containing the
  ///   name of the subprotocol in use. If no protocol was specified
  /// when the data channel was
  ///  created, then this property's value is "" (the empty string).
  @experimental
  external String get protocol;

  /// The read-only [RTCDataChannel] property
  ///   [negotiated] indicates whether the
  ///   [RTCDataChannel]'s connection was negotiated by the Web app
  ///   ([true]) or by the WebRTC layer ([false]).
  external bool get negotiated;

  /// The read-only [RTCDataChannel] property
  ///   [id] returns an ID number (between 0 and 65,534) which
  ///   uniquely identifies the [RTCDataChannel].
  @experimental
  external int? get id;

  ///  The read-only [RTCDataChannel] property [readyState] returns an
  /// enum of type [RTCDataChannelState] which indicates the state of
  /// the data channel's underlying data connection.
  @experimental
  external RTCDataChannelState get readyState;

  /// The read-only [RTCDataChannel] property
  ///   [bufferedAmount] returns the number of bytes of data
  ///   currently queued to be sent over the data channel.
  @experimental
  external int get bufferedAmount;

  /// The [RTCDataChannel] property
  ///   [bufferedAmountLowThreshold] is used to specify the number
  ///    of bytes of buffered outgoing data that is considered "low."
  /// The default value is
  ///   0.
  @experimental
  external int get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(int newValue);

  /// The [RTCDataChannel.onopen] property is an
  ///   [Event_handlers] which specifies a function to be called when
  /// the
  ///  [open] event is fired; this is a simple [Event] which is sent
  ///   when the data channel's underlying data transport—the link over
  /// which the
  ///   [RTCDataChannel]'s messages flow—is established or
  /// re-established.
  @experimental
  external EventHandlerNonNull? get onopen;
  external set onopen(EventHandlerNonNull? newValue);

  /// The [RTCDataChannel.onbufferedamountlow] property is an
  ///   [Event_handlers] which specifies a function the browser calls
  /// when the
  ///  [bufferedamountlow] event is sent to the [RTCDataChannel]. This
  ///   event, which is represented by a simple [Event] object, is sent
  /// when the
  ///   amount of data buffered to be sent falls to or below the
  /// threshold specified by the
  ///  channel's [RTCDataChannel.bufferedAmountLowThreshold].
  @experimental
  external EventHandlerNonNull? get onbufferedamountlow;
  external set onbufferedamountlow(EventHandlerNonNull? newValue);

  /// The [RTCDataChannel.onerror] property is an
  ///   [Event_handlers] which specifies a function to be called when
  /// the
  ///   [error] event is received. When an error occurs on the data
  /// channel, the
  ///   function receives as input an [ErrorEvent] object describing
  /// the error
  ///  which occurred.
  @experimental
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  /// The [RTCDataChannel.onclosing] property is an
  ///   [Event_handlers] which specifies a function to be called by the
  /// browser when
  ///   the [closing] event is received by the [RTCDataChannel]. This
  /// is
  ///   a simple [Event] which indicates that the data channel is being
  /// closed,
  ///   that is, [RTCDataChannel] transitions to "closing" state. For
  /// example,
  ///  after [RTCDataChannel.close] was called but the
  ///  underlying data transport might not have been closed yet.
  @experimental
  external EventHandlerNonNull? get onclosing;
  external set onclosing(EventHandlerNonNull? newValue);

  /// The [RTCDataChannel.onclose] property is an
  ///   [Event_handlers] which specifies a function to be called by the
  /// browser when
  ///   the [close] event is received by the [RTCDataChannel]. This is
  /// a
  ///   simple [Event] which indicates that the data channel has closed
  /// down.
  @experimental
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);
  external Object close();

  /// The [RTCDataChannel.onmessage] property stores an
  ///   [Event_handlers] which specifies a function to be called when
  /// the
  ///   [message] event is fired on the channel. This event is
  /// represented by the
  ///   [MessageEvent] interface. This event is sent to the channel
  /// when a message
  ///  is received from the other peer.
  @experimental
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  /// The property [binaryType] on the
  ///   [RTCDataChannel] interface is a [DOMString] which specifies
  ///    the type of JavaScript object which should be used to
  /// represent binary data received
  ///   on the [RTCDataChannel]. Values allowed by the
  ///   [WebSocket.binaryType] property are also permitted here:
  ///   ["blob"] if [Blob] objects are being used or
  ///   ["arraybuffer"] if [ArrayBuffer] objects are being used. The
  ///   default is ["blob"].
  @experimental
  external BinaryType get binaryType;
  external set binaryType(BinaryType newValue);
  external Object send(String data);
  external RTCPriorityType get priority;

  external factory RTCDataChannel();
}

@anonymous
@JS()
class RTCDataChannelInit {
  external bool get ordered;
  external set ordered(bool newValue);
  external int get maxPacketLifeTime;
  external set maxPacketLifeTime(int newValue);
  external int get maxRetransmits;
  external set maxRetransmits(int newValue);
  external String get protocol;
  external set protocol(String newValue);
  external bool get negotiated;
  external set negotiated(bool newValue);
  external int get id;
  external set id(int newValue);

  external factory RTCDataChannelInit(
      {bool ordered = true,
      int maxPacketLifeTime,
      int maxRetransmits,
      String protocol = '',
      bool negotiated = false,
      int id});
}

@JS()
enum RTCDataChannelState { connecting, open, closing, closed }

///
@experimental
@JS()
class RTCDataChannelEvent // null -> {} -> Event
    with
        Event {
  external factory RTCDataChannelEvent(
      String type, RTCDataChannelEventInit eventInitDict);
  external RTCDataChannel get channel;
}

@anonymous
@JS()
class RTCDataChannelEventInit // null -> {} -> EventInit
    with
        EventInit {
  external RTCDataChannel get channel;
  external set channel(RTCDataChannel newValue);

  external factory RTCDataChannelEventInit({RTCDataChannel channel});
}

///
///  The interface provides a mechanism for transmitting DTMF codes
/// on a WebRTC [RTCPeerConnection]. You gain access to the
/// connection's through the [RTCRtpSender.dtmf] property on the
/// audio track you wish to send DTMF with.
///
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
@JS()
class RTCDTMFSender // null -> {} -> EventTarget
    with
        EventTarget {
  external Object insertDTMF(String tones,
      [int? duration = 100, int? interToneGap = 70]);
  external EventHandlerNonNull? get ontonechange;
  external set ontonechange(EventHandlerNonNull? newValue);
  external bool get canInsertDTMF;

  ///  A [DOMString] which contains the list of DTMF tones currently in
  /// the queue to be transmitted (tones which have already been played
  /// are no longer included in the string). See for details on the
  /// format of the tone buffer.
  external String get toneBuffer;

  external factory RTCDTMFSender();
}

///
///
///  The interface represents events sent to indicate that DTMF tones
/// have started or finished playing. This interface is used by the
/// [tonechange] event.
@JS()
class RTCDTMFToneChangeEvent // null -> {} -> Event
    with
        Event {
  external factory RTCDTMFToneChangeEvent(String type,
      [RTCDTMFToneChangeEventInit? eventInitDict]);

  ///  A [DOMString] specifying the tone which has begun playing, or an
  /// empty string ([""]) if the previous tone has finished playing.
  external String get tone;
}

@anonymous
@JS()
class RTCDTMFToneChangeEventInit // null -> {} -> EventInit
    with
        EventInit {
  external String get tone;
  external set tone(String newValue);

  external factory RTCDTMFToneChangeEventInit({String tone = ''});
}

///
///   Draft
///   This page is not complete.
///    This page is currently incomplete and under active
/// construction. Please be aware that it's not going to answer all
/// of your questions just yet.
///  The [RTCStatsReport] interface provides a statistics report
/// obtained by calling one of the [RTCPeerConnection.getStats()],
/// [RTCRtpReceiver.getStats()], and [RTCRtpSender.getStats()]
/// methods. This statistics report contains a mapping of statistic
/// category string names to objects containing the corresponding
/// statistics data.
///
///  Calling [getStats()] on an [RTCPeerConnection] lets you specify
/// whether you wish to obtain statistics for outbound, inbound, or
/// all streams on the connection. The [RTCRtpReceiver] and
/// [RTCRtpSender] versions of [getStats()] specifically only return
/// statistics available to the incoming or outgoing stream on which
/// you call them.
@JS()
class RTCStatsReport {
  external dynamic operator [](String index);

  external factory RTCStatsReport();
}

///
///
///  The dictionary is the basic statistics object used by WebRTC's
/// statistics monitoring model, providing the properties required of
/// all statistics data objects. Specific classes of statistic are
/// defined as dictionaries based on . For example, statistics about
/// a received RTP stream are represented by
/// [RTCReceivedRtpStreamStats].
@anonymous
@JS()
class RTCStats {
  ///  A [DOMHighResTimeStamp] object indicating the time at which the
  /// sample was taken for this statistics object.
  external double get timestamp;
  external set timestamp(double newValue);

  ///  A [DOMString] indicating the type of statistics the object
  /// contains, taken from the enum type [RTCStatsType].
  external RTCStatsType get type;
  external set type(RTCStatsType newValue);

  ///  A [DOMString] which uniquely identifies the object which was
  /// inspected to produce this object based on [RTCStats].
  external String get id;
  external set id(String newValue);

  external factory RTCStats({double timestamp, RTCStatsType type, String id});
}

///
///
///  The [RTCError] interface describes an error which has occurred
/// while handling WebRTC operations. It's based upon the standard
/// [DOMException] interface that describes general DOM errors.
@JS()
class RTCError // null -> {} -> DOMException
    with
        DOMException {
  external factory RTCError(RTCErrorInit init, [String? message = '']);

  ///  A [DOMString] specifying the WebRTC-specific error code
  /// identifying the type of error that occurred.
  external RTCErrorDetailType get errorDetail;

  ///  If [errorDetail] is [sdp-syntax-error], this property is a long
  /// integer identifying the line number of the SDP on which the
  /// syntax error occurred. [null] if the error isn't an SDP syntax
  /// error.
  external int? get sdpLineNumber;

  ///  If [errorDetail] is [sctp-failure], this property is a long
  /// integer specifying the SCTP cause code indicating the cause of
  /// the failed SCTP negotiation. [null] if the error isn't an SCTP
  /// error.
  external int? get sctpCauseCode;

  ///  An unsigned long integer value indicating the fatal DTLS error
  /// which was received from the network. Only valid if the
  /// [errorDetail] string is [dtls-failure]. If [null], no DTLS error
  /// was received.
  external int? get receivedAlert;

  ///  If [errorDetail] is [dtls-failure], this property is an unsigned
  /// long integer indicating the fatal DTLS error that was sent out by
  /// this device. If [null], no DTLS error was transmitted.
  external int? get sentAlert;
  external int? get httpRequestStatusCode;
}

@anonymous
@JS()
class RTCErrorInit {
  external RTCErrorDetailType get errorDetail;
  external set errorDetail(RTCErrorDetailType newValue);
  external int get sdpLineNumber;
  external set sdpLineNumber(int newValue);
  external int get sctpCauseCode;
  external set sctpCauseCode(int newValue);
  external int get receivedAlert;
  external set receivedAlert(int newValue);
  external int get sentAlert;
  external set sentAlert(int newValue);

  external factory RTCErrorInit(
      {RTCErrorDetailType errorDetail,
      int sdpLineNumber,
      int sctpCauseCode,
      int receivedAlert,
      int sentAlert});
}

@JS()
enum RTCErrorDetailType {
  @JS('data-channel-failure')
  dataChannelFailure,
  @JS('dtls-failure')
  dtlsFailure,
  @JS('fingerprint-failure')
  fingerprintFailure,
  @JS('sctp-failure')
  sctpFailure,
  @JS('sdp-syntax-error')
  sdpSyntaxError,
  @JS('hardware-encoder-not-available')
  hardwareEncoderNotAvailable,
  @JS('hardware-encoder-error')
  hardwareEncoderError
}

///
///
///  The WebRTC API's interface represents an error sent to a WebRTC
/// object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
@JS()
class RTCErrorEvent // null -> {} -> Event
    with
        Event {
  external factory RTCErrorEvent(String type, RTCErrorEventInit eventInitDict);

  ///  An [RTCError] object specifying the error which occurred; this
  /// object includes the type of error that occurred, information
  /// about where the error occurred (such as which line number in the
  /// SDP or what SCTP cause code was at issue).
  external RTCError get error;
}

@anonymous
@JS()
class RTCErrorEventInit // null -> {} -> EventInit
    with
        EventInit {
  external RTCError get error;
  external set error(RTCError newValue);

  external factory RTCErrorEventInit({RTCError error});
}
