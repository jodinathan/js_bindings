/// WebRTC 1.0: Real-Time Communication Between Browsers
///
/// https://w3c.github.io/webrtc-pc/
@JS('window')
@staticInterop
library webrtc;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
web_crypto_a_p_i
mediacapture_streams
hr_time_3
file_a_p_i
webrtc_stats
web_i_d_l_1
webrtc_encoded_transform
webrtc_priority
mst_content_hint
webrtc_ice
webrtc
webrtc_identity */

@anonymous
@JS()
@staticInterop
class RTCConfiguration {
  external factory RTCConfiguration(
      {Iterable<RTCIceServer> iceServers,
      RTCIceTransportPolicy iceTransportPolicy,
      RTCBundlePolicy bundlePolicy,
      RTCRtcpMuxPolicy rtcpMuxPolicy,
      Iterable<RTCCertificate> certificates,
      int iceCandidatePoolSize = 0});
}

extension PropsRTCConfiguration on RTCConfiguration {
  external Iterable<RTCIceServer> get iceServers;
  external set iceServers(Iterable<RTCIceServer> newValue);
  external RTCIceTransportPolicy get iceTransportPolicy;
  external set iceTransportPolicy(RTCIceTransportPolicy newValue);
  external RTCBundlePolicy get bundlePolicy;
  external set bundlePolicy(RTCBundlePolicy newValue);
  external RTCRtcpMuxPolicy get rtcpMuxPolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy newValue);
  external Iterable<RTCCertificate> get certificates;
  external set certificates(Iterable<RTCCertificate> newValue);
  external int get iceCandidatePoolSize;
  external set iceCandidatePoolSize(int newValue);
}

enum RTCIceCredentialType { password }

///  The dictionary defines how to connect to a single ICE server
/// (such as a STUN or TURN server). Objects of this type are
/// provided in the configuration of an [RTCPeerConnection], in the
/// [iceServers] array.
@experimental
@anonymous
@JS()
@staticInterop
class RTCIceServer {
  external factory RTCIceServer(
      {dynamic urls,
      String username,
      String credential,
      RTCIceCredentialType credentialType = RTCIceCredentialType.password});
}

extension PropsRTCIceServer on RTCIceServer {
  ///  This required property is either a single [DOMString] or an
  /// array of [DOMString]s, each specifying a URL which can be used to
  /// connect to the server.
  ///
  external dynamic get urls;
  external set urls(dynamic newValue);

  ///  If the [RTCIceServer] is a TURN server, then this is the
  /// username to use during the authentication process.
  ///
  external String get username;
  external set username(String newValue);

  ///  The credential to use when logging into the server. This is only
  /// used if the [RTCIceServer] represents a TURN server.
  ///
  external String get credential;
  external set credential(String newValue);

  ///  If the [RTCIceServer] represents a TURN server, this attribute
  /// specifies what kind of [credential] is to be used when
  /// connecting. This must be one of the values defined by the
  /// [RTCIceCredentialType] enum. The default is [password].
  ///
  external RTCIceCredentialType get credentialType;
  external set credentialType(RTCIceCredentialType newValue);
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
  external factory RTCOfferOptions({bool iceRestart = false});
}

extension PropsRTCOfferOptions on RTCOfferOptions {
  external bool get iceRestart;
  external set iceRestart(bool newValue);
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
///    RTCPeerConnection
///
///
@JS()
@staticInterop
class RTCPeerConnection implements EventTarget {
  external factory RTCPeerConnection([RTCConfiguration? configuration]);
}

extension PropsRTCPeerConnection on RTCPeerConnection {
  ///
  ///    Returns an [RTCSessionDescription]
  ///    describing the session for the local end of the connection.
  ///    If it has not yet been set, returns [null].
  ///
  ///
  external RTCSessionDescription? get localDescription;

  ///
  ///    Returns an [RTCSessionDescription] object describing
  ///    the local end of the connection
  ///    as it was most recently successfully negotiated
  ///    since the last time
  ///     this [RTCPeerConnection] finished negotiating and connecting
  /// to a remote peer.
  ///    Also included is a list of any ICE candidates
  ///    that may already have been generated by the ICE agent
  ///     since the offer or answer represented by the description was
  /// first instantiated.
  ///
  ///
  external RTCSessionDescription? get currentLocalDescription;

  ///
  ///    Returns an [RTCSessionDescription] object
  ///     describing a pending configuration change for the local end
  /// of the connection.
  ///    This does not describe the connection as it currently stands,
  ///    but as it may exist in the near future.
  ///
  ///
  external RTCSessionDescription? get pendingLocalDescription;

  ///
  ///    Returns an [RTCSessionDescription] object
  ///    describing the session,
  ///    including configuration and media information,
  ///    for the remote end of the connection.
  ///    If this hasn't been set yet, this returns [null].
  ///
  ///
  external RTCSessionDescription? get remoteDescription;

  ///
  ///    Returns an [RTCSessionDescription] object describing
  ///    the remote end of the connection
  ///    as it was most recently successfully negotiated
  ///    since the last time
  ///     this [RTCPeerConnection] finished negotiating and connecting
  /// to a remote peer.
  ///    Also included is a list of any ICE candidates
  ///    that may already have been generated by the ICE agent
  ///     since the offer or answer represented by the description was
  /// first instantiated.
  ///
  ///
  external RTCSessionDescription? get currentRemoteDescription;

  ///
  ///    Returns an [RTCSessionDescription] object
  ///     describing a pending configuration change for the remote end
  /// of the connection.
  ///    This does not describe the connection as it currently stands,
  ///    but as it may exist in the near future.
  ///
  ///
  external RTCSessionDescription? get pendingRemoteDescription;

  ///
  ///    Returns a string
  ///     describing the state of the signaling process on the local
  /// end of the connection
  ///    while connecting or reconnecting to another peer.
  ///    It is one of the following values:
  ///    [stable], [have-local-offer], [have-remote-offer],
  ///    [have-local-pranswer], [have-remote-pranswer], or [closed].
  ///
  ///
  external RTCSignalingState get signalingState;

  ///
  ///    Returns a string
  ///    that describes connection's ICE gathering state.
  ///    This lets you detect, for example,
  ///    when collection of ICE candidates has finished.
  ///    Possible values are:
  ///    [new], [gathering], or [complete].
  ///
  ///
  external RTCIceGatheringState get iceGatheringState;

  ///
  ///     Returns a string which state of the ICE agent associated with
  /// this RTCPeerConnection.
  ///    It can be one of the following values:
  ///    [new], [checking], [connected], [completed],
  ///    [failed], [disconnected], or [closed].
  ///
  ///
  external RTCIceConnectionState get iceConnectionState;

  ///
  ///    Indicates the current state of the peer connection
  ///    by returning one of the strings
  ///    [new], [connecting], [connected], [disconnected],
  ///    [failed], or [closed].
  ///
  ///
  external RTCPeerConnectionState get connectionState;

  ///
  ///    Returns a boolean value which indicates whether or not
  ///    the remote peer can accept trickled ICE candidates.
  ///
  ///
  external bool? get canTrickleIceCandidates;

  ///
  ///    Allows to easily request
  ///    that ICE candidate gathering be redone
  ///    on both ends of the connection.
  ///    This simplifies the process
  ///    by allowing the same method
  ///     to be used by either the caller or the receiver to trigger an
  /// ICE restart.
  ///
  ///
  /// rtcPeerConnection.restartIce();
  ///
  ///
  ///  This example creates a handler for the
  ///  iceconnectionstatechange event that handles a transition to the failed
  ///  state by restarting ICE in order to try again.
  ///
  /// pc.addEventListener("iceconnectionstatechange", event => {
  ///  if (pc.iceConnectionState === "failed") {
  ///   /* possibly reconfigure the connection in some way here */
  ///   /* then request ICE restart */
  ///   pc.restartIce();
  ///  }
  /// });
  ///  With this code in place, a transition to the failed state during ICE
  ///  negotiation will cause a negotiationneeded event to be fired, in response to which your code should
  ///  renegotiate as usual. However, because you have called restartIce(), your
  ///  call to createOffer() which occurs in
  ///  the handler for negotiationneeded will trigger an ICE restart rather than
  ///  just a regular renegotiation.
  ///
  external Object restartIce();

  ///
  ///    Returns an object
  ///    which indicates the current configuration of the connection.
  ///
  ///
  /// var configuration = RTCPeerConnection.getConfiguration();
  ///
  ///
  ///  This example adds a new certificate to an active connection if it doesn't already have
  ///  one in use.
  ///
  /// let configuration = myPeerConnection.getConfiguration();
  ///
  /// if ((configuration.certificates != undefined) && (!configuration.certificates.length)) {
  ///   RTCPeerConnection.generateCertificate({
  ///    name: 'RSASSA-PKCS1-v1_5',
  ///    hash: 'SHA-256',
  ///    modulusLength: 2048,
  ///    publicExponent: new Uint8Array([1, 0, 1])
  ///  }).then(function(cert) {
  ///   configuration.certificates = [cert];
  ///   myPeerConnection.setConfiguration(configuration);
  ///  });
  /// }
  ///  This example fetches the current configuration of the RTCPeerConnection,
  ///  then looks to see if it has any certificates set by examining whether or not (a) the
  ///  configuration has a value for certificates, and (b) whether its length is
  ///  zero.
  ///  If it's determined that there are no certificates in place,
  ///  RTCPeerConnection.generateCertificate() is called to create a new
  ///  certificate; we provide a fulfillment handler which adds a new array containing the one
  ///  newly-created certificate to the current configuration and passes it to
  ///  setConfiguration() to add the
  ///  certificate to the connection.
  ///
  external RTCConfiguration getConfiguration();

  ///
  ///    Sets the current configuration of the connection
  ///    based on the values included in the specified object.
  ///    This lets you change the ICE servers
  ///    used by the connection
  ///    and which transport policies to use.
  ///
  ///
  /// RTCPeerConnection.setConfiguration(configuration);
  ///
  ///
  ///  In this example, it has already been determined that ICE restart is needed, and that
  ///  negotiation needs to be done using a different ICE server.
  ///
  /// var restartConfig = {
  ///  iceServers: [{
  ///   urls: "turn:asia.myturnserver.net",
  ///   username: "allie@oopcode.com",
  ///   credential: "topsecretpassword"
  ///  }]
  /// };
  ///
  /// myPeerConnection.setConfiguration(restartConfig);
  ///
  /// myPeerConnection.createOffer({"iceRestart": true}).then(function(offer) {
  ///  return myPeerConnection.setLocalDescription(offer);
  /// })
  /// .then(function() {
  ///  // send the offer to the other peer using the signaling server
  /// })
  /// .catch(reportError);
  ///  First, a new object is created, restartConfig,
  ///  specifying the new ICE server and its credentials. This is then passed into
  ///  setConfiguration(). ICE negotiation is restarted by calling
  ///  createOffer(), specifying
  ///  true as the value of the iceRestart option. From there, we
  ///  handle the process as usual, by setting the local description to the returned offer and
  ///  then sending that offer to the other peer.
  ///
  external Object setConfiguration([RTCConfiguration? configuration]);

  /// Closes the current peer connection.
  ///
  /// peerConnection.close();
  ///
  /// This method has no parameters, and returns nothing.
  ///
  ///  Calling this method terminates the RTCPeerConnection's ICE agent, ending any ongoing
  ///  ICE processing and any active streams. This also releases any resources in use by the
  ///  ICE agent, including TURN permissions. All RTCRtpSender objects are
  ///  considered to be stopped once this returns (they may still be in the process of
  ///  stopping, but for all intents and purposes, they're stopped).
  ///  Once this method returns, the signaling state as returned by
  ///  RTCPeerConnection.signalingState is closed.
  ///  Make sure that you delete all references to the previous
  ///  RTCPeerConnection before attempting to create a new one that connects
  ///  to the same remote peer, as not doing so might result in some errors depending on the
  ///  browser.
  ///
  /// var pc = new RTCPeerConnection();
  /// var dc = pc.createDataChannel("my channel");
  ///
  /// dc.onmessage = function (event) {
  ///  console.log("received: " + event.data);
  ///  pc.close(); // We decided to close after the first received message
  /// };
  ///
  /// dc.onopen = function () {
  ///  console.log("datachannel open");
  /// };
  ///
  /// dc.onclose = function () {
  ///  console.log("datachannel close");
  /// };
  ///
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

  ///
  ///    Initiates the creation of an SDP offer
  ///     for the purpose of starting a new WebRTC connection to a
  /// remote peer.
  ///     The SDP offer includes information about any
  /// [MediaStreamTrack] objects
  ///     already attached to the WebRTC session, codec, and options
  /// supported by the browser,
  ///    as well as any candidates already gathered by the ICE agent,
  ///     for the purpose of being sent over the signaling channel to a
  /// potential peer
  ///     to request a connection or to update the configuration of an
  /// existing connection.
  ///
  ///
  /// aPromise = myPeerConnection.createOffer([options]);
  ///
  /// myPeerConnection.createOffer(successCallback, failureCallback, [options])
  ///
  ///
  ///
  ///
  ///  Here we see a handler for the negotiationneeded event which creates the
  ///  offer and sends it to the remote system over a signaling channel.
  ///
  ///   Note: Keep in mind that this is part of the signaling process, the
  ///   transport layer for which is an implementation detail that's entirely up to you. In
  ///   this case, a WebSocket connection is
  ///   used to send a JSON message with a type field with the
  ///   value "video-offer" to the other peer. The contents of the object being passed to the
  ///   sendToServer() function, along with everything else in the promise
  ///   fulfillment handler, depend entirely on your design.
  ///
  ///
  ///  myPeerConnection.createOffer().then(function(offer) {
  ///   return myPeerConnection.setLocalDescription(offer);
  ///  })
  ///  .then(function() {
  ///   sendToServer({
  ///    name: myUsername,
  ///    target: targetUsername,
  ///    type: "video-offer",
  ///    sdp: myPeerConnection.localDescription
  ///   });
  ///  })
  ///  .catch(function(reason) {
  ///   // An error occurred, so handle the failure to connect
  ///  });
  ///  In this code, the offer is created, and once successful, the local end of the
  ///  RTCPeerConnection is configured to match by passing the offer (which is
  ///  represented using an object conforming to RTCSessionDescriptionInit) into
  ///  setLocalDescription(). Once
  ///  that's done, the offer is sent to the remote system over the signaling channel; in this
  ///  case, by using a custom function called sendToServer(). The implementation
  ///  of the signaling server is independent from the WebRTC specification, so it doesn't
  ///  matter how the offer is sent as long as both the caller and potential receiver are using
  ///  the same one.
  ///
  /// Use Promise.catch() to trap and handle errors.
  ///
  ///  See Signaling and
  /// video calling for the complete example from which this snippet is derived; this
  ///  will help you to understand how the signaling code here works.
  ///
  external Promise<Object> createOffer(
      [RTCSessionDescriptionCallback? successCallback,
      RTCPeerConnectionErrorCallback failureCallback,
      RTCOfferOptions? options]);

  ///
  ///    Changes the local description associated with the connection.
  ///     This description specifies the properties of the local end of
  /// the connection,
  ///    including the media format.
  ///    It returns a [Promise]
  ///    which is fulfilled
  ///    once the description has been changed, asynchronously.
  ///
  ///
  /// aPromise = RTCPeerConnection.setLocalDescription(sessionDescription);
  ///
  /// pc.setLocalDescription(sessionDescription, successCallback, errorCallback);
  ///
  ///
  ///
  external Promise<Object> setLocalDescription(
      [RTCLocalSessionDescriptionInit? description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);

  ///
  ///    Initiates the creation an SDP answer
  ///    to an offer received from a remote peer
  ///    during the offer/answer negotiation of a WebRTC connection.
  ///    The answer contains information
  ///    about any media already attached to the session,
  ///    codecs and options supported by the browser,
  ///    and any ICE candidates already gathered.
  ///
  ///
  /// aPromise = RTCPeerConnection.createAnswer([options]);
  ///
  /// RTCPeerConnection.createAnswer(successCallback, failureCallback[, options]);
  ///
  ///
  ///
  ///
  ///  Here is a segment of code taken from the code that goes with the article Signaling and video
  /// calling. This code comes from the handler for the message sent to carry an offer
  ///  to another peer across the signaling channel.
  ///
  ///   Note: Keep in mind that this is part of the signaling process, the transport layer for
  ///   which is an implementation detail that's entirely up to you. In this case, a WebSocket connection is used to send a
  ///   JSON message with a type field with the value
  ///   "video-answer" to the other peer, carrying the answer to the device which sent the
  ///   offer to connect. The contents of the object being passed to the
  ///   sendToServer() function, along with everything else in the promise
  ///   fulfillment handler, depend entirely on your design
  ///
  ///
  /// pc.createAnswer().then(function(answer) {
  ///  return pc.setLocalDescription(answer);
  /// })
  /// .then(function() {
  ///  // Send the answer to the remote peer through the signaling server.
  /// })
  /// .catch(handleGetUserMediaError);
  ///  This asks RTCPeerConnection to create and return a new answer. In our
  ///  promise handler, the returned answer is set as the description of the local end of the
  ///  connection by calling setLocalDescription().
  ///  Once that succeeds, the answer is sent to the signaling server using whatever protocol
  ///  you see fit.
  ///
  /// Promise.catch() is used to trap and handle errors.
  ///
  ///  See Handling the invitation in Signaling and video calling to see the complete code, in context, from which this
  ///  snippet is derived; that will help you understand the signaling process and how answers
  ///  work.
  ///
  external Promise<Object> createAnswer(
      [RTCSessionDescriptionCallback? successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);

  ///
  ///    Sets the specified session description
  ///    as the remote peer's current offer or answer.
  ///     The description specifies the properties of the remote end of
  /// the connection,
  ///    including the media format.
  ///    It returns a [Promise]
  ///    which is fulfilled
  ///    once the description has been changed, asynchronously.
  ///
  ///
  /// aPromise = rtcPeerConnection.setRemoteDescription(sessionDescription);
  ///
  ///
  ///  Here we see a function which handles an offer received from the remote peer. This code
  ///  is derived from the example and tutorial in the article Signaling and
  /// video calling; take a look at that for more details and a more in-depth
  ///  explanation of what's going on.
  ///
  /// function handleOffer(msg) {
  ///  createMyPeerConnection();
  ///
  ///  myPeerConnection
  ///   .setRemoteDescription(msg.description)
  ///   .then(function () {
  ///    return navigator.mediaDevices.getUserMedia(mediaConstraints);
  ///   })
  ///   .then(function (stream) {
  ///    document.getElementById("local_video").srcObject = stream;
  ///    return myPeerConnection.addStream(stream);
  ///   })
  ///   .then(function () {
  ///    return myPeerConnection.createAnswer();
  ///   })
  ///   .then(function (answer) {
  ///    return myPeerConnection.setLocalDescription(answer);
  ///   })
  ///   .then(function () {
  ///    // Send the answer to the remote peer using the signaling server
  ///   })
  ///   .catch(handleGetUserMediaError);
  /// }
  ///  After creating our RTCPeerConnection and saving it as
  ///  myPeerConnection, we pass the description included in the received offer
  ///  message, msg, directly into setRemoteDescription() to tell
  ///  the user agent's WebRTC layer what configuration the caller has proposed using. When
  ///  our promise fulfillment handler is called, indicating that this has been done, we
  ///  create a stream, add it to the connection, then create an SDP answer and call
  ///  setLocalDescription() to set
  ///  that as the configuration at our end of the call before forwarding that answer to the
  ///  caller.
  ///
  external Promise<Object> setRemoteDescription(
      [RTCSessionDescriptionInit? description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback]);

  ///
  ///     Adds a new remote candidate to the [RTCPeerConnection]'s
  /// remote description,
  ///     which describes the state of the remote end of the
  /// connection.
  ///
  ///
  /// addIceCandidate(candidate)
  /// addIceCandidate(candidate, successCallback, failureCallback) // deprecated
  ///
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

enum RTCSdpType { offer, pranswer, answer, rollback }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
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
@experimental
@JS()
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension PropsRTCSessionDescription on RTCSessionDescription {
  ///  An enum of type [RTCSdpType] describing the session
  /// description's type.
  ///
  external RTCSdpType get type;

  /// A [DOMString] containing the SDP describing the session.
  ///
  external String get sdp;
  external dynamic toJSON();
}

@anonymous
@JS()
@staticInterop
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

extension PropsRTCSessionDescriptionInit on RTCSessionDescriptionInit {
  external RTCSdpType get type;
  external set type(RTCSdpType newValue);
  external String get sdp;
  external set sdp(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

extension PropsRTCLocalSessionDescriptionInit
    on RTCLocalSessionDescriptionInit {
  external RTCSdpType get type;
  external set type(RTCSdpType newValue);
  external String get sdp;
  external set sdp(String newValue);
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
  ///  A [DOMString] representing the transport address for the
  /// candidate that can be used for connectivity checks. The format of
  /// this address is a [candidate-attribute] as defined in RFC 5245.
  /// This string is empty ([""]) if the [RTCIceCandidate] is an "end
  /// of candidates" indicator.
  ///
  external String get candidate;

  ///  A [DOMString] specifying the candidate's media stream
  /// identification tag which uniquely identifies the media stream
  /// within the component with which the candidate is associated, or
  /// [null] if no such association exists.
  ///
  external String? get sdpMid;

  ///  If not [null], indicates the zero-based index number of the
  /// media description (as defined in RFC 4566) in the SDP with which
  /// the candidate is associated.
  ///
  external int? get sdpMLineIndex;

  ///  Returns a [DOMString] containing a unique identifier that is the
  /// same for any candidates of the same type, share the same base
  /// (the address from which the ICE agent sent the candidate), and
  /// come from the same STUN server. This is used to help optimize ICE
  /// performance while prioritizing and correlating candidates that
  /// appear on multiple [RTCIceTransport] objects.
  ///
  external String? get foundation;

  ///  A string which indicates whether the candidate is an RTP or an
  /// RTCP candidate; its value is either [rtp] or [rtcp], and is
  /// derived from the ["component-id"] field in the [candidate] a-line
  /// string.
  ///
  external RTCIceComponent? get component;

  /// A long integer value indicating the candidate's priority.
  ///
  external int? get priority;

  /// A [DOMString] containing the IP address of the candidate.
  ///
  external String? get address;

  ///  A string indicating whether the candidate's protocol is ["tcp"]
  /// or ["udp"].
  ///
  external RTCIceProtocol? get protocol;

  /// An integer value indicating the candidate's port number.
  ///
  external int? get port;

  ///  A [DOMString] indicating the type of candidate as one of the
  /// strings listed on [RTCIceCandidate.type].
  ///
  external RTCIceCandidateType? get type;

  ///  If [protocol] is ["tcp"], represents the type of TCP candidate.
  /// Otherwise, is [null].
  ///
  external RTCIceTcpCandidateType? get tcpType;

  ///  If the candidate is derived from another candidate, is a
  /// [DOMString] containing that host candidate's IP address. For host
  /// candidates, this value is [null].
  ///
  external String? get relatedAddress;

  ///  For a candidate that is derived from another, such as a relay or
  /// reflexive candidate, the is a number indicating the port number
  /// of the candidate from which this candidate is derived. For host
  /// candidates, the property is [null].
  ///
  external int? get relatedPort;

  ///  A [DOMString] containing a randomly-generated username fragment
  /// ("ice-ufrag") which ICE uses for message integrity along with a
  /// randomly-generated password ("ice-pwd"). You can use this string
  /// to verify generations of ICE generation; each generation of the
  /// same ICE process will use the same , even across ICE restarts.
  ///
  external String? get usernameFragment;

  ///
  ///     Returns a JSON representation of the [RTCIceCandidate]'s
  /// current configuration.
  ///     The format of the representation is the same as the
  /// [candidateInfo] object that can optionally be passed to the
  /// [RTCIceCandidate() constructor] to configure a candidate.
  ///
  ///
  /// toJSON()
  ///
  /// This simple example obtains a JSON string representing an RTCIceCandidate found in the variable candidate.
  /// let jsonString = candidate.toJSON().stringify();
  ///
  external RTCIceCandidateInit toJSON();
}

@anonymous
@JS()
@staticInterop
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit(
      {String candidate = '',
      String? sdpMid,
      int? sdpMLineIndex,
      String? usernameFragment});
}

extension PropsRTCIceCandidateInit on RTCIceCandidateInit {
  external String get candidate;
  external set candidate(String newValue);
  external String? get sdpMid;
  external set sdpMid(String? newValue);
  external int? get sdpMLineIndex;
  external set sdpMLineIndex(int? newValue);
  external String? get usernameFragment;
  external set usernameFragment(String? newValue);
}

enum RTCIceProtocol { udp, tcp }

enum RTCIceTcpCandidateType { active, passive, so }

enum RTCIceCandidateType { host, srflx, prflx, relay }

///  The interface represents events that occur in relation to ICE
/// candidates with the target, usually an [RTCPeerConnection].
/// Only one event is of this type: [icecandidate].
@experimental
@JS()
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external factory RTCPeerConnectionIceEvent(String type,
      [RTCPeerConnectionIceEventInit? eventInitDict]);
}

extension PropsRTCPeerConnectionIceEvent on RTCPeerConnectionIceEvent {
  ///  Contains the [RTCIceCandidate] containing the candidate
  /// associated with the event, or [null] if this event indicates that
  /// there are no further candidates to come.
  ///
  external RTCIceCandidate? get candidate;
  external String? get url;
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionIceEventInit implements EventInit {
  external factory RTCPeerConnectionIceEventInit(
      {RTCIceCandidate? candidate, String? url});
}

extension PropsRTCPeerConnectionIceEventInit on RTCPeerConnectionIceEventInit {
  external RTCIceCandidate? get candidate;
  external set candidate(RTCIceCandidate? newValue);
  external String? get url;
  external set url(String? newValue);
}

///  The interface—based upon the [Event] interface—provides details
/// pertaining to an ICE error announced by sending an
/// [icecandidateerror] event to the [RTCPeerConnection] object.
@JS()
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external factory RTCPeerConnectionIceErrorEvent(
      String type, RTCPeerConnectionIceErrorEventInit eventInitDict);
}

extension PropsRTCPeerConnectionIceErrorEvent
    on RTCPeerConnectionIceErrorEvent {
  ///  A [DOMString] providing the local IP address used to communicate
  /// with the STUN or TURN server being used to negotiate the
  /// connection, or [null] if the local IP address has not yet been
  /// exposed as part of a local ICE candidate.
  ///
  external String? get address;

  ///  An unsigned integer value giving the port number over which
  /// communication with the STUN or TURN server is taking place, using
  /// the IP address given in [address]. [null] if the connection
  /// hasn't been established (that is, if [address] is [null]).
  ///
  external int? get port;

  ///  A [DOMString] indicating the URL of the STUN or TURN server with
  /// which the error occurred.
  ///
  external String get url;

  ///  An unsigned integer value stating the numeric STUN error code
  /// returned by the STUN or TURN server. If no host candidate can
  /// reach the server, this property is set to the number 701, which
  /// is outside the range of valid STUN error codes. The 701 error is
  /// fired only once per server URL, and only while the is
  /// [icegatheringstate] is [gathering].
  ///
  external int get errorCode;

  ///  A [DOMString] containing the STUN reason text returned by the
  /// STUN or TURN server. If communication with the STUN or TURN
  /// server couldn't be established at all, this string will be a
  /// browser-specific string explaining the error.
  ///
  external String get errorText;
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionIceErrorEventInit implements EventInit {
  external factory RTCPeerConnectionIceErrorEventInit(
      {String? address,
      int? port,
      String url,
      int errorCode,
      String errorText});
}

extension PropsRTCPeerConnectionIceErrorEventInit
    on RTCPeerConnectionIceErrorEventInit {
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
}

@anonymous
@JS()
@staticInterop
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration({int expires});
}

extension PropsRTCCertificateExpiration on RTCCertificateExpiration {
  external int get expires;
  external set expires(int newValue);
}

///  The interface of the WebRTC API provides an object represents a
/// certificate that an [RTCPeerConnection] uses to authenticate.
@JS()
@staticInterop
class RTCCertificate {
  external factory RTCCertificate();
}

extension PropsRTCCertificate on RTCCertificate {
  /// Returns the expiration date of the certificate.
  ///
  external int get expires;
  external Iterable<RTCDtlsFingerprint> getFingerprints();
}

@anonymous
@JS()
@staticInterop
class RTCRtpTransceiverInit {
  external factory RTCRtpTransceiverInit(
      {RTCRtpTransceiverDirection direction =
          RTCRtpTransceiverDirection.sendrecv,
      Iterable<MediaStream> streams = const [],
      Iterable<RTCRtpEncodingParameters> sendEncodings = const []});
}

extension PropsRTCRtpTransceiverInit on RTCRtpTransceiverInit {
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection newValue);
  external Iterable<MediaStream> get streams;
  external set streams(Iterable<MediaStream> newValue);
  external Iterable<RTCRtpEncodingParameters> get sendEncodings;
  external set sendEncodings(Iterable<RTCRtpEncodingParameters> newValue);
}

enum RTCRtpTransceiverDirection {
  sendrecv,
  sendonly,
  recvonly,
  inactive,
  stopped
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
  ///  The [MediaStreamTrack] which is being handled by the
  /// [RTCRtpSender]. If is [null], the [RTCRtpSender] doesn't transmit
  /// anything.
  ///
  external MediaStreamTrack? get track;

  ///  The [RTCDtlsTransport] over which the sender is exchanging the
  /// RTP and RTCP packets used to manage transmission of media and
  /// control data. This value is [null] until the transport is
  /// established. When bundling is in use, more than transceiver may
  /// be sharing the same transport object.
  ///
  external RTCDtlsTransport? get transport;
  external static RTCRtpCapabilities? getCapabilities(String kind);

  ///  Applies changes to parameters which configure how the [track] is
  /// encoded and transmitted to the remote peer.
  ///
  /// var promise = rtcRtpSender.setParameters(parameters)
  ///
  external Promise<Object> setParameters(RTCRtpSendParameters parameters);

  ///  Returns a [RTCRtpParameters] object describing the current
  /// configuration for the encoding and transmission of media on the
  /// [track].
  ///
  /// var rtpSendParameters = rtpSender.getParameters()
  ///
  external RTCRtpSendParameters getParameters();

  ///  Attempts to replace the track currently being sent by the
  /// [RTCRtpSender] with another track, without performing
  /// renegotiation. This method can be used, for example, to toggle
  /// between the front- and rear-facing cameras on a device.
  ///
  /// trackReplacedPromise = sender.replaceTrack(newTrack);
  ///
  external Promise<Object> replaceTrack(MediaStreamTrack? withTrack);

  ///  Sets the [MediaStream](s) associated with the [track] being
  /// transmitted by this sender.
  ///
  /// rtcRtpSender.setStreams(mediaStream);
  /// rtcRtpSender.setStreams([mediaStream...]);
  ///
  ///
  ///  This example adds all of an RTCPeerConnection's tracks to the specified
  ///  stream.
  ///
  /// function addTracksToStream(stream) {
  ///  let senders = pc.getSenders();
  ///
  ///  senders.forEach((sender) => {
  ///   if (sender.track && (sender.transport.state === connected)) {
  ///    sender.setStreams(stream);
  ///   }
  ///  });
  /// }
  ///  After calling the RTCPeerConnection method
  ///  getSenders() to get the list of the
  ///  connection's senders, the addTracksToStream() function iterates over the
  ///  list. For each sender, if the sender's track is non-null and its transport's state is
  ///  connected, we call setStreams() to add the track to the
  ///  stream specified.
  ///
  external Object setStreams([MediaStream streams]);

  ///  Returns a [Promise] which is fulfilled with a [RTCStatsReport]
  /// which provides statistics data for all outbound streams being
  /// sent using this [RTCRtpSender].
  ///
  /// var promise = RTCRtpSender.getStats();
  ///
  ///
  ///  This simple example obtains the statistics for an RTCRtpSender and updates
  ///  an element's innerText to display the current round
  ///  trip time for requests on the sender.
  ///
  /// sender.getStats().then(function(stats) {
  ///  document.getElementById("currentRTT").innerText =
  ///      stats.roundTripTime;
  /// });
  ///
  external Promise<RTCStatsReport> getStats();
  external dynamic get transform;
  external set transform(dynamic newValue);
  external RTCDTMFSender? get dtmf;
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
      {Iterable<RTCRtpHeaderExtensionParameters> headerExtensions,
      RTCRtcpParameters rtcp,
      Iterable<RTCRtpCodecParameters> codecs});
}

extension PropsRTCRtpParameters on RTCRtpParameters {
  ///  An array of zero or more RTP header extensions, each identifying
  /// an extension supported by the sender or receiver. Header
  /// extensions are described in RFC 3550: 5.3.1. This parameter
  /// cannot be changed once initially set.
  ///
  external Iterable<RTCRtpHeaderExtensionParameters> get headerExtensions;
  external set headerExtensions(
      Iterable<RTCRtpHeaderExtensionParameters> newValue);

  ///  An [RTCRtcpParameters] object providing the configuration
  /// parameters used for RTCP on the sender or receiver. This
  /// parameter cannot be changed once initially set.
  ///
  external RTCRtcpParameters get rtcp;
  external set rtcp(RTCRtcpParameters newValue);

  ///  An array of [RTCRtpCodecParameters] objects describing the set
  /// of codecs from which the sender or receiver will choose. This
  /// parameter cannot be changed once initially set.
  ///
  external Iterable<RTCRtpCodecParameters> get codecs;
  external set codecs(Iterable<RTCRtpCodecParameters> newValue);
}

///  The WebRTC API's dictionary is used to specify the parameters
/// for an [RTCRtpSender] when calling its [setParameters()] method.
@anonymous
@JS()
@staticInterop
class RTCRtpSendParameters implements RTCRtpParameters {
  external factory RTCRtpSendParameters(
      {String transactionId, Iterable<RTCRtpEncodingParameters> encodings});
}

extension PropsRTCRtpSendParameters on RTCRtpSendParameters {
  ///  A string containing a unique ID for the last set of parameters
  /// applied; this value is used to ensure that [setParameters()] can
  /// only be called to alter changes made by a specific previous call
  /// to [getParameters()]. Once this parameter is initially set, it
  /// cannot be changed.
  ///
  external String get transactionId;
  external set transactionId(String newValue);

  ///  An array of [RTCRtpEncodingParameters] objects, each specifying
  /// the parameters for a single codec that could be used to encode
  /// the track's media.
  ///
  external Iterable<RTCRtpEncodingParameters> get encodings;
  external set encodings(Iterable<RTCRtpEncodingParameters> newValue);
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
  external factory RTCRtpCodingParameters({String rid});
}

extension PropsRTCRtpCodingParameters on RTCRtpCodingParameters {
  external String get rid;
  external set rid(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRtpDecodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpDecodingParameters();
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
      {bool active = true, int maxBitrate, double scaleResolutionDownBy});
}

extension PropsRTCRtpEncodingParameters on RTCRtpEncodingParameters {
  ///  If [true], the described encoding is currently actively being
  /// used. That is, for RTP senders, the encoding is currently being
  /// used to send data, while for receivers, the encoding is being
  /// used to decode received data. The default value is [true].
  ///
  external bool get active;
  external set active(bool newValue);

  ///  An unsigned long integer indicating the maximum number of bits
  /// per second to allow for this encoding. Other parameters may
  /// further constrain the bit rate, such as the value of
  /// [maxFramerate] or transport or physical network limitations.
  ///
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
  ///
  external double get scaleResolutionDownBy;
  external set scaleResolutionDownBy(double newValue);
}

///  The dictionary provides parameters of an RTCP connection. It's
/// used as the value of the [rtcp] property of the parameters of an
/// [RTCRtpSender] or [RTCRtpReceiver].
@anonymous
@JS()
@staticInterop
class RTCRtcpParameters {
  external factory RTCRtcpParameters({String cname, bool reducedSize});
}

extension PropsRTCRtcpParameters on RTCRtcpParameters {
  ///  The Canonical Name (CNAME) being used by RTCP. This is used, for
  /// example, in SDES (SDP security descriptions) messages, described
  /// in RFC 4568. This property cannot be changed once initialized.
  ///
  external String get cname;
  external set cname(String newValue);

  ///  A Boolean value indicating whether or not reduced size RTCP is
  /// configured. If this value is [true], reduced size RTCP (described
  /// in RFC 5506) is in effect. If [false], compound RTCP is in use,
  /// as found in RFC 3550. This property cannot be changed once
  /// initialized.
  ///
  external bool get reducedSize;
  external set reducedSize(bool newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters(
      {String uri, int id, bool encrypted = false});
}

extension PropsRTCRtpHeaderExtensionParameters
    on RTCRtpHeaderExtensionParameters {
  external String get uri;
  external set uri(String newValue);
  external int get id;
  external set id(int newValue);
  external bool get encrypted;
  external set encrypted(bool newValue);
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
      {int payloadType,
      String mimeType,
      int clockRate,
      int channels,
      String sdpFmtpLine});
}

extension PropsRTCRtpCodecParameters on RTCRtpCodecParameters {
  /// The RTP payload type used to identify this codec.
  ///
  external int get payloadType;
  external set payloadType(int newValue);

  ///  The codec's MIME media type and subtype specified as a
  /// [DOMString] of the form ["type/subtype"]. IANA maintains a
  /// registry of valid MIME types.
  ///
  external String get mimeType;
  external set mimeType(String newValue);

  ///  An unsigned long integer value specifying the codec's clock rate
  /// in hertz (Hz). The clock rate is the rate at which the codec's
  /// RTP timestamp advances. Most codecs have specific values or
  /// ranges of values they permit; see the IANA payload format media
  /// type registry for details.
  ///
  external int get clockRate;
  external set clockRate(int newValue);

  ///  An unsigned short integer indicating the number of channels the
  /// codec should support. For example, for audio codecs, a value of 1
  /// specifies monaural sound while 2 indicates stereo.
  ///
  external int get channels;
  external set channels(int newValue);

  ///  A [DOMString] containing the format-specific parameters field
  /// from the ["a=fmtp"] line in the codec's SDP, if one is present;
  /// see section 5.8 of the IETF specification for JSEP.
  ///
  ///     Note: On an [RTCRtpReceiver], the format-specific parameters
  /// come from the SDP sent by the remote peer, while for
  /// [RTCRtpSender], they're provided by the local description.
  ///
  ///
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String newValue);
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
      {Iterable<RTCRtpCodecCapability> codecs,
      Iterable<RTCRtpHeaderExtensionCapability> headerExtensions});
}

extension PropsRTCRtpCapabilities on RTCRtpCapabilities {
  ///  An array of [RTCRtpCodecCapability] objects, each describing one
  /// of the codecs supported by the [RTCRtpSender] or
  /// [RTCRtpReceiver]. There are some special entries in this array,
  /// described below in the section The codecs array.
  ///
  external Iterable<RTCRtpCodecCapability> get codecs;
  external set codecs(Iterable<RTCRtpCodecCapability> newValue);

  ///  An array of objects conforming to the
  /// [RTCRtpHeaderExtensionCapability] dictionary. Each object
  /// contains a single [DOMString], [uri], specifying the URI of the
  /// header extension, as described in RFC 5285.
  ///
  external Iterable<RTCRtpHeaderExtensionCapability> get headerExtensions;
  external set headerExtensions(
      Iterable<RTCRtpHeaderExtensionCapability> newValue);
}

///  The WebRTC API's dictionary provides information describing the
/// capabilities of a single media codec.
@anonymous
@JS()
@staticInterop
class RTCRtpCodecCapability {
  external factory RTCRtpCodecCapability(
      {String mimeType, int clockRate, int channels, String sdpFmtpLine});
}

extension PropsRTCRtpCodecCapability on RTCRtpCodecCapability {
  ///  A [DOMString] indicating the codec's MIME media type and
  /// subtype. See Codecs used by WebRTC for details about potential
  /// codecs that might be referenced here.
  ///
  external String get mimeType;
  external set mimeType(String newValue);

  ///  An unsigned long integer specifying the codec's clock rate in
  /// Hertz (Hz). The IANA maintains a list of codecs and their
  /// parameters, including their clock rates.
  ///
  external int get clockRate;
  external set clockRate(int newValue);

  ///  An unsigned integer value indicating the maximum number of
  /// channels supported by the codec; for example, a codec that
  /// supports only mono sound would have a value of 1; stereo codecs
  /// would have a 2, etc.
  ///
  external int get channels;
  external set channels(int newValue);

  ///  A [DOMString] giving the format specific parameters field from
  /// the [a=fmtp] line in the SDP which corresponds to the codec, if
  /// such a line exists. If there is no parameters field, this
  /// property is left out.
  ///
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability({String uri});
}

extension PropsRTCRtpHeaderExtensionCapability
    on RTCRtpHeaderExtensionCapability {
  external String get uri;
  external set uri(String newValue);
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
  ///  Returns the [MediaStreamTrack] associated with the current
  /// [RTCRtpReceiver] instance.
  ///
  external MediaStreamTrack get track;

  ///  Returns the [RTCDtlsTransport] instance over which the media for
  /// the receiver's track is received.
  ///
  external RTCDtlsTransport? get transport;
  external static RTCRtpCapabilities? getCapabilities(String kind);

  ///  Returns an [RTCRtpParameters] object which contains information
  /// about how the RTC data is to be decoded.
  ///
  /// let rtpReceiveParameters = rtpReceiver.getParameters();
  ///
  external RTCRtpReceiveParameters getParameters();

  ///  Returns an array of [RTCRtpContributingSource] instances for
  /// each unique CSRC (contributing source) identifier received by the
  /// current [RTCRtpReceiver] in the last ten seconds.
  ///
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  ///
  external Iterable<RTCRtpContributingSource> getContributingSources();

  ///  Returns an array including one [RTCRtpSynchronizationSource]
  /// instance for each unique SSRC (synchronization source) identifier
  /// received by the current [RTCRtpReceiver] in the last ten seconds.
  ///
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  ///
  external Iterable<RTCRtpSynchronizationSource> getSynchronizationSources();

  ///  Returns a [Promise] whose fulfillment handler receives a
  /// [RTCStatsReport] which contains statistics about the incoming
  /// streams and their dependencies.
  ///
  /// var promise = RTCRtpReceiver.getStats();
  ///
  ///
  ///  This simple example obtains the statistics for an RTCRtpReceiver and
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
      {double timestamp, int source, double audioLevel, int rtpTimestamp});
}

extension PropsRTCRtpContributingSource on RTCRtpContributingSource {
  ///  A [DOMHighResTimeStamp] indicating the most recent time at which
  /// a frame originating from this source was delivered to the
  /// receiver's [MediaStreamTrack]
  ///
  external double get timestamp;
  external set timestamp(double newValue);

  ///  A 32-bit unsigned integer value specifying the CSRC identifier
  /// of the contributing source.
  ///
  external int get source;
  external set source(int newValue);

  ///  A double-precision floating-point value between 0 and 1
  /// specifying the audio level contained in the last RTP packet
  /// played from this source.
  ///
  external double get audioLevel;
  external set audioLevel(double newValue);

  ///  The RTP timestamp of the media played out at the time indicated
  /// by [timestamp]. This value is a source-generated time value which
  /// can be used to help with sequencing and synchronization.
  ///
  external int get rtpTimestamp;
  external set rtpTimestamp(int newValue);
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
  ///  The media ID of the m-line associated with this transceiver.
  /// This association is established, when possible, whenever either a
  /// local or remote description is applied. This field is [null] if
  /// neither a local or remote description has been applied, or if its
  /// associated m-line is rejected by either a remote offer or any
  /// answer.
  ///
  external String? get mid;

  ///  The [RTCRtpSender] object responsible for encoding and sending
  /// data to the remote peer.
  ///
  external RTCRtpSender get sender;

  ///  The [RTCRtpReceiver] object that handles receiving and decoding
  /// incoming media.
  ///
  external RTCRtpReceiver get receiver;

  ///  A string which is used to set the transceiver's desired
  /// direction.
  ///
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection newValue);

  ///  A read-only string which indicates the transceiver's current
  /// directionality, or [null] if the transceiver is stopped or has
  /// never participated in an exchange of offers and answers. To
  /// change the transceiver's directionality, set the value of the
  /// [direction] property.
  ///
  external RTCRtpTransceiverDirection? get currentDirection;

  ///  Permanently stops the [RTCRtpTransceiver]. The associated sender
  /// stops sending data, and the associated receiver likewise stops
  /// receiving and decoding incoming data.
  ///
  /// RTCRtpTransceiver.stop()
  ///
  external Object stop();

  ///  A list of [RTCRtpCodecParameters] objects which override the
  /// default preferences used by the user agent for the transceiver's
  /// codecs.
  ///
  /// rtcRtpTransceiver.setCodecPreferences(codecs)
  ///
  external Object setCodecPreferences(Iterable<RTCRtpCodecCapability> codecs);
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
///    RTCDtlsTransport
///
///
@experimental
@JS()
@staticInterop
class RTCDtlsTransport implements EventTarget {
  external factory RTCDtlsTransport();
}

extension PropsRTCDtlsTransport on RTCDtlsTransport {
  /// Returns a reference to the underlying [RTCIceTransport] object.
  ///
  external RTCIceTransport get iceTransport;

  ///
  ///    Returns a string
  ///     which describes the underlying Datagram Transport Layer
  /// Security (DTLS) transport state.
  ///    It can be one of the following values:
  ///    [new], [connecting], [connected], [closed], or [failed].
  ///
  ///
  external RTCDtlsTransportState get state;

  ///  Returns an array of [ArrayBuffer] containing the certificates of
  /// the remote peer of the connection.
  ///
  external Iterable<ByteBuffer> getRemoteCertificates();
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
}

enum RTCDtlsTransportState { valueNew, connecting, connected, closed, failed }

@anonymous
@JS()
@staticInterop
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint({String algorithm, String value});
}

extension PropsRTCDtlsFingerprint on RTCDtlsFingerprint {
  external String get algorithm;
  external set algorithm(String newValue);
  external String get value;
  external set value(String newValue);
}

///
///   The interface provides access to information about the ICE
/// transport layer over which the data is being sent and received.
///   This is particularly useful if you need to access state
/// information about the connection.
///
@JS()
@staticInterop
class RTCIceTransport implements EventTarget {
  external factory RTCIceTransport();
}

extension PropsRTCIceTransport on RTCIceTransport {
  ///  Returns a [DOMString] whose value is one of the members of the
  /// [RTCIceRole] enumerated type: ["controlling"] or ["controlled"];
  /// this indicates whether the ICE agent is the one that makes the
  /// final decision as to the candidate pair to use or not.
  ///
  external RTCIceRole get role;

  ///  The ICE component being used by the transport. The value is one
  /// of the strings from the [RTCIceTransport] enumerated type:
  /// ["RTP"] or ["RTSP"].
  ///
  external RTCIceComponent get component;

  ///  A [DOMString] indicating what the current state of the ICE agent
  /// is. The value of can be used to determine whether the ICE agent
  /// has made an initial connection using a viable candidate pair
  /// (["connected"]), made its final selection of candidate pairs
  /// (["completed"]), or in an error state (["failed"]), among other
  /// states. See the [RTCIceTransportState] enumerated type for a
  /// complete list of states.
  ///
  external RTCIceTransportState get state;

  ///  A [DOMString] indicating which current gathering state of the
  /// ICE agent: ["new"], ["gathering"], or ["complete"].
  ///
  external RTCIceGathererState get gatheringState;

  ///  Returns an array of [RTCIceCandidate] objects, each describing
  /// one of the ICE candidates that have been gathered so far for the
  /// local device. These are the same candidates which have already
  /// been sent to the remote peer by sending an [icecandidate] event
  /// to the [RTCPeerConnection] for transmission.
  ///
  /// localCandidates = RTCIceTransport.getLocalCandidates();
  ///
  ///
  ///  This simple example gets the local candidate list from the
  ///  RTCIceTransport for the first RTCRtpSender on the
  ///  RTCPeerConnection, then outputs to the console all of the candidates in
  ///  the list.
  ///
  /// var localCandidates = pc.getSenders()[0].transport.transport.getLocalCandidates();
  ///
  /// localCandidates.forEach(function(candidate, index)) {
  ///  console.log("Candidate " + index + ": " + candidate.candidate);
  /// });
  ///
  external Iterable<RTCIceCandidate> getLocalCandidates();

  ///  Returns an array of [RTCIceCandidate] objects, one for each of
  /// the remote device's ICE candidates that have been received by the
  /// local end of the [RTCPeerConnection] and delivered to ICE by
  /// calling [addIceCandidate()].
  ///
  /// remoteCandidates = RTCIceTransport.getRemoteCandidates();
  ///
  ///
  ///  This simple example gets the remote candidate list from the
  ///  RTCIceTransport for the first RTCRtpSender on the
  ///  RTCPeerConnection, then outputs to the console all of the candidates in
  ///  the list.
  ///
  /// var remoteCandidates = pc.getSenders()[0].transport.transport.getRemoteCandidates();
  ///
  /// remoteCandidates.forEach(function(candidate, index)) {
  ///  console.log("Candidate " + index + ": " + candidate.candidate);
  /// });
  ///
  external Iterable<RTCIceCandidate> getRemoteCandidates();

  ///  Returns a [RTCIceCandidatePair] object that identifies the two
  /// candidates—one for each end of the connection—that have been
  /// selected so far. It's possible that a better pair will be found
  /// and selected later; if you need to keep up with this, watch for
  /// the [selectedcandidatepairchange] event. If no candidate pair has
  /// been selected yet, the return value is [null].
  ///
  /// candidatePair = RTCIceTransport.getSelectedCandidatePair();
  ///
  external RTCIceCandidatePair? getSelectedCandidatePair();

  ///  Returns a [RTCIceParameters] object describing the ICE
  /// parameters established by a call to the
  /// [RTCPeerConnection.setLocalDescription()] method. Returns [null]
  /// if parameters have not yet been received.
  ///
  /// parameters = RTCIceTransport.getLocalParameters();
  ///
  external RTCIceParameters? getLocalParameters();

  ///  Returns a [RTCIceParameters] object containing the ICE
  /// parameters for the remote device, as set by a call to
  /// [RTCPeerConnection.setRemoteDescription()]. If
  /// [setRemoteDescription()] hasn't been called yet, the return value
  /// is [null].
  ///
  /// parameters = RTCIceTransport.getRemoteParameters();
  ///
  external RTCIceParameters? getRemoteParameters();
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongatheringstatechange;
  external set ongatheringstatechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectedcandidatepairchange;
  external set onselectedcandidatepairchange(EventHandlerNonNull? newValue);
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
  external factory RTCIceParameters({String usernameFragment, String password});
}

extension PropsRTCIceParameters on RTCIceParameters {
  ///  A [DOMString] specifying the value of the ICE session's username
  /// fragment field, [ufrag].
  ///
  external String get usernameFragment;
  external set usernameFragment(String newValue);

  /// A [DOMString] specifying the session's password string.
  ///
  external String get password;
  external set password(String newValue);
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
      {RTCIceCandidate local, RTCIceCandidate remote});
}

extension PropsRTCIceCandidatePair on RTCIceCandidatePair {
  ///  An [RTCIceCandidate] describing the configuration of the local
  /// end of the connection.
  ///
  external RTCIceCandidate get local;
  external set local(RTCIceCandidate newValue);

  ///  The [RTCIceCandidate] describing the configuration of the remote
  /// end of the connection.
  ///
  external RTCIceCandidate get remote;
  external set remote(RTCIceCandidate newValue);
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

///  The WebRTC API interface represents the [track] event, which is
/// sent when a new [MediaStreamTrack] is added to an
/// [RTCRtpReceiver] which is part of the [RTCPeerConnection].
///  The target is the [RTCPeerConnection] object to which the track
/// is being added.
///  This event is sent by the WebRTC layer to the web site or
/// application, so you will not typically need to instantiate an
/// yourself.
@JS()
@staticInterop
class RTCTrackEvent implements Event {
  external factory RTCTrackEvent(String type, RTCTrackEventInit eventInitDict);
}

extension PropsRTCTrackEvent on RTCTrackEvent {
  ///  The [RTCRtpReceiver] used by the track that's been added to the
  /// [RTCPeerConnection].
  ///
  external RTCRtpReceiver get receiver;

  /// The [MediaStreamTrack] which has been added to the connection.
  ///
  external MediaStreamTrack get track;

  ///  An array of [MediaStream] objects, each representing one of the
  /// media streams to which the added [track] belongs. By default, the
  /// array is empty, indicating a streamless track.
  ///
  external Iterable<MediaStream> get streams;

  /// The [RTCRtpTransceiver] being used by the new track.
  ///
  external RTCRtpTransceiver get transceiver;
}

@anonymous
@JS()
@staticInterop
class RTCTrackEventInit implements EventInit {
  external factory RTCTrackEventInit(
      {RTCRtpReceiver receiver,
      MediaStreamTrack track,
      Iterable<MediaStream> streams = const [],
      RTCRtpTransceiver transceiver});
}

extension PropsRTCTrackEventInit on RTCTrackEventInit {
  external RTCRtpReceiver get receiver;
  external set receiver(RTCRtpReceiver newValue);
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack newValue);
  external Iterable<MediaStream> get streams;
  external set streams(Iterable<MediaStream> newValue);
  external RTCRtpTransceiver get transceiver;
  external set transceiver(RTCRtpTransceiver newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
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
@experimental
@JS()
@staticInterop
class RTCSctpTransport implements EventTarget {
  external factory RTCSctpTransport();
}

extension PropsRTCSctpTransport on RTCSctpTransport {
  ///  An [RTCDtlsTransport] object representing the DTLS transport
  /// used for the transmission and receipt of data packets.
  ///
  external RTCDtlsTransport get transport;

  ///  A [DOMString] enumerated value indicating the state of the SCTP
  /// transport.
  ///
  external RTCSctpTransportState get state;

  ///  An integer value indicating the maximum size, in bytes, of a
  /// message which can be sent using the [RTCDataChannel.send()]
  /// method.
  ///
  external /* double | NaN */ dynamic get maxMessageSize;

  ///  An integer value indicating the maximum number of
  /// [RTCDataChannel]s that can be open simultaneously.
  ///
  external int? get maxChannels;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
}

enum RTCSctpTransportState { connecting, connected, closed }

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
///
///
///
///    EventTarget
///
///
///
///
///
///    RTCDataChannel
///
///
@experimental
@JS()
@staticInterop
class RTCDataChannel implements EventTarget {
  external factory RTCDataChannel();
}

extension PropsRTCDataChannel on RTCDataChannel {
  ///
  ///     Returns a string that contains a name describing the data
  /// channel.
  ///    These labels are not required to be unique.
  ///
  ///
  external String get label;

  ///
  ///     Indicates whether or not the data channel guarantees in-order
  /// delivery of messages;
  ///     the default is [true], which indicates that the data channel
  /// is indeed ordered.
  ///
  ///
  external bool get ordered;

  ///
  ///    Returns the amount of time,
  ///    in milliseconds,
  ///     the browser is allowed to take to attempt to transmit a
  /// message,
  ///    as set when the data channel was created,
  ///    or [null].
  ///
  ///
  external int? get maxPacketLifeTime;

  ///
  ///    Returns the maximum number of times
  ///     the browser should try to retransmit a message before giving
  /// up,
  ///    as set when the data channel was created,
  ///    or [null], which indicates that there is no maximum.
  ///
  ///
  external int? get maxRetransmits;

  ///
  ///     Returns a string containing the name of the subprotocol in
  /// use.
  ///    If no protocol was specified
  ///    when the data channel was created,
  ///    then this property's value is the empty string ([""]).
  ///
  ///
  external String get protocol;

  ///
  ///    Indicates
  ///     whether the [RTCDataChannel]'s connection was negotiated by
  /// the Web app
  ///    ([true])
  ///    or by the WebRTC layer ([false]).
  ///    The default is [false].
  ///
  ///
  external bool get negotiated;

  ///
  ///    Returns an ID number (between 0 and 65,534)
  ///    which uniquely identifies the [RTCDataChannel].
  ///
  ///
  external int? get id;

  ///
  ///    Returns a string
  ///     which indicates the state of the data channel's underlying
  /// data connection.
  ///    It can have on of the following values:
  ///    [connecting], [open], [closing], or [closed].
  ///
  ///
  external RTCDataChannelState get readyState;

  ///
  ///    Returns the number of bytes of data
  ///    currently queued to be sent over the data channel.
  ///
  ///
  external int get bufferedAmount;

  ///
  ///     Specifies the number of bytes of buffered outgoing data that
  /// is considered "low".
  ///    The default value is 0.
  ///
  ///
  external int get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(int newValue);
  external EventHandlerNonNull? get onopen;
  external set onopen(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbufferedamountlow;
  external set onbufferedamountlow(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclosing;
  external set onclosing(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);

  ///
  ///    Closes the[RTCDataChannel].
  ///    Either peer is permitted to call this method
  ///    to initiate closure of the channel.
  ///
  ///
  /// RTCDataChannel.close();
  ///
  /// var pc = new RTCPeerConnection();
  /// var dc = pc.createDataChannel("my channel");
  ///
  /// dc.onmessage = function (event) {
  ///  console.log("received: " + event.data);
  ///  dc.close(); // We decided to close after the first received message
  /// };
  ///
  /// dc.onopen = function () {
  ///  console.log("datachannel open");
  /// };
  ///
  /// dc.onclose = function (
  ///  console.log("datachannel close");
  /// };
  ///
  /// // Now negotiate the connection and so forth...
  ///
  external Object close();
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  ///
  ///    Is a string specifying the type of object
  ///     that should be used to represent binary data received on the
  /// [RTCDataChannel].
  ///     Values are the same as allowed on the [WebSocket.binaryType]
  /// property:
  ///    [blob] if [Blob] objects are being used,
  ///    or [arraybuffer] if [ArrayBuffer] objects are being used.
  ///    The default is [blob].
  ///
  ///
  external BinaryType get binaryType;
  external set binaryType(BinaryType newValue);

  /// Sends data across the data channel to the remote peer.
  ///
  /// RTCDataChannel.send(data);
  ///
  ///
  ///  In this example, a routine called sendMessage() is created; it accepts an
  ///  object as input and sends to the remote peer, over the RTCDataChannel, a
  ///  JSON string with the specified object and a time stamp.
  ///
  /// var pc = new RTCPeerConnection();
  /// var dc = pc.createDataChannel("BackChannel");
  ///
  /// function sendMessage(msg) {
  ///  let obj = {
  ///   "message": msg,
  ///   "timestamp": new Date()
  ///  }
  ///  dc.send(JSON.stringify(obj));
  /// }
  ///
  external Object send(String data);
  external RTCPriorityType get priority;
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelInit {
  external factory RTCDataChannelInit(
      {bool ordered = true,
      int maxPacketLifeTime,
      int maxRetransmits,
      String protocol = '',
      bool negotiated = false,
      int id});
}

extension PropsRTCDataChannelInit on RTCDataChannelInit {
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
}

enum RTCDataChannelState { connecting, open, closing, closed }

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
  /// Returns the [RTCDataChannel] associated with the event.
  ///
  external RTCDataChannel get channel;
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelEventInit implements EventInit {
  external factory RTCDataChannelEventInit({RTCDataChannel channel});
}

extension PropsRTCDataChannelEventInit on RTCDataChannelEventInit {
  external RTCDataChannel get channel;
  external set channel(RTCDataChannel newValue);
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
///    RTCDTMFSender
///
///
@JS()
@staticInterop
class RTCDTMFSender implements EventTarget {
  external factory RTCDTMFSender();
}

extension PropsRTCDTMFSender on RTCDTMFSender {
  ///  Given a string describing a set of DTMF codes and, optionally,
  /// the duration of and inter-tone gap between the tones,
  /// [insertDTMF()] starts sending the specified tones. Calling
  /// [insertDTMF()] replaces any already-pending tones from the
  /// [toneBuffer]. You can abort sending queued tones by specifying an
  /// empty string ([""]) as the set of tones to play.
  ///
  /// RTCDTMFSender.insertDTMF(tones[, duration[, interToneGap]]);
  ///
  /// tbd
  external Object insertDTMF(String tones,
      [int? duration = 100, int? interToneGap = 70]);
  external EventHandlerNonNull? get ontonechange;
  external set ontonechange(EventHandlerNonNull? newValue);
  external bool get canInsertDTMF;

  ///  A [DOMString] which contains the list of DTMF tones currently in
  /// the queue to be transmitted (tones which have already been played
  /// are no longer included in the string). See for details on the
  /// format of the tone buffer.
  ///
  external String get toneBuffer;
}

///  The interface represents events sent to indicate that DTMF tones
/// have started or finished playing. This interface is used by the
/// [tonechange] event.
@JS()
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external factory RTCDTMFToneChangeEvent(String type,
      [RTCDTMFToneChangeEventInit? eventInitDict]);
}

extension PropsRTCDTMFToneChangeEvent on RTCDTMFToneChangeEvent {
  ///  A [DOMString] specifying the tone which has begun playing, or an
  /// empty string ([""]) if the previous tone has finished playing.
  ///
  external String get tone;
}

@anonymous
@JS()
@staticInterop
class RTCDTMFToneChangeEventInit implements EventInit {
  external factory RTCDTMFToneChangeEventInit({String tone = ''});
}

extension PropsRTCDTMFToneChangeEventInit on RTCDTMFToneChangeEventInit {
  external String get tone;
  external set tone(String newValue);
}

///  Draft: This page is not complete.This page is currently
/// incomplete and under active construction. Please be aware that
/// it's not going to answer all of your questions just yet.
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
class RTCStatsReport {
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
  external factory RTCStats({double timestamp, RTCStatsType type, String id});
}

extension PropsRTCStats on RTCStats {
  ///  A [DOMHighResTimeStamp] object indicating the time at which the
  /// sample was taken for this statistics object.
  ///
  external double get timestamp;
  external set timestamp(double newValue);

  ///  A [DOMString] indicating the type of statistics the object
  /// contains, taken from the enum type [RTCStatsType].
  ///
  external RTCStatsType get type;
  external set type(RTCStatsType newValue);

  ///  A [DOMString] which uniquely identifies the object which was
  /// inspected to produce this object based on [RTCStats].
  ///
  external String get id;
  external set id(String newValue);
}

///  The interface describes an error which has occurred while
/// handling WebRTC operations. It's based upon the standard
/// [DOMException] interface that describes general DOM errors.
@JS()
@staticInterop
class RTCError implements DOMException {
  external factory RTCError(RTCErrorInit init, [String? message = '']);
}

extension PropsRTCError on RTCError {
  ///  A [DOMString] specifying the WebRTC-specific error code
  /// identifying the type of error that occurred.
  ///
  external RTCErrorDetailType get errorDetail;

  ///  If [errorDetail] is [sdp-syntax-error], this property is a long
  /// integer identifying the line number of the SDP on which the
  /// syntax error occurred. [null] if the error isn't an SDP syntax
  /// error.
  ///
  external int? get sdpLineNumber;

  ///  If [errorDetail] is [sctp-failure], this property is a long
  /// integer specifying the SCTP cause code indicating the cause of
  /// the failed SCTP negotiation. [null] if the error isn't an SCTP
  /// error.
  ///
  external int? get sctpCauseCode;

  ///  An unsigned long integer value indicating the fatal DTLS error
  /// which was received from the network. Only valid if the
  /// [errorDetail] string is [dtls-failure]. If [null], no DTLS error
  /// was received.
  ///
  external int? get receivedAlert;

  ///  If [errorDetail] is [dtls-failure], this property is an unsigned
  /// long integer indicating the fatal DTLS error that was sent out by
  /// this device. If [null], no DTLS error was transmitted.
  ///
  external int? get sentAlert;
  external int? get httpRequestStatusCode;
}

@anonymous
@JS()
@staticInterop
class RTCErrorInit {
  external factory RTCErrorInit(
      {RTCErrorDetailType errorDetail,
      int sdpLineNumber,
      int sctpCauseCode,
      int receivedAlert,
      int sentAlert});
}

extension PropsRTCErrorInit on RTCErrorInit {
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

///  The WebRTC API's interface represents an error sent to a WebRTC
/// object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
@JS()
@staticInterop
class RTCErrorEvent implements Event {
  external factory RTCErrorEvent(String type, RTCErrorEventInit eventInitDict);
}

extension PropsRTCErrorEvent on RTCErrorEvent {
  ///  An [RTCError] object specifying the error which occurred; this
  /// object includes the type of error that occurred, information
  /// about where the error occurred (such as which line number in the
  /// SDP or what SCTP cause code was at issue).
  ///
  external RTCError get error;
}

@anonymous
@JS()
@staticInterop
class RTCErrorEventInit implements EventInit {
  external factory RTCErrorEventInit({RTCError error});
}

extension PropsRTCErrorEventInit on RTCErrorEventInit {
  external RTCError get error;
  external set error(RTCError newValue);
}
