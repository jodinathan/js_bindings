/// WebRTC 1.0: Real-Time Communication Between Browsers
///
/// https://w3c.github.io/webrtc-pc/
@JS('window')
@staticInterop
library webrtc;

import 'dart:js_util' as js_util;
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
  Iterable<RTCIceServer> get iceServers =>
      js_util.getProperty(this, 'iceServers');
  set iceServers(Iterable<RTCIceServer> newValue) {
    js_util.setProperty(this, 'iceServers', newValue);
  }

  RTCIceTransportPolicy get iceTransportPolicy =>
      js_util.getProperty(this, 'iceTransportPolicy');
  set iceTransportPolicy(RTCIceTransportPolicy newValue) {
    js_util.setProperty(this, 'iceTransportPolicy', newValue);
  }

  RTCBundlePolicy get bundlePolicy => js_util.getProperty(this, 'bundlePolicy');
  set bundlePolicy(RTCBundlePolicy newValue) {
    js_util.setProperty(this, 'bundlePolicy', newValue);
  }

  RTCRtcpMuxPolicy get rtcpMuxPolicy =>
      js_util.getProperty(this, 'rtcpMuxPolicy');
  set rtcpMuxPolicy(RTCRtcpMuxPolicy newValue) {
    js_util.setProperty(this, 'rtcpMuxPolicy', newValue);
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
  dynamic get urls => js_util.getProperty(this, 'urls');
  set urls(dynamic newValue) {
    js_util.setProperty(this, 'urls', newValue);
  }

  ///  If the [RTCIceServer] is a TURN server, then this is the
  /// username to use during the authentication process.
  ///
  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  ///  The credential to use when logging into the server. This is only
  /// used if the [RTCIceServer] represents a TURN server.
  ///
  String get credential => js_util.getProperty(this, 'credential');
  set credential(String newValue) {
    js_util.setProperty(this, 'credential', newValue);
  }

  ///  If the [RTCIceServer] represents a TURN server, this attribute
  /// specifies what kind of [credential] is to be used when
  /// connecting. This must be one of the values defined by the
  /// [RTCIceCredentialType] enum. The default is [password].
  ///
  RTCIceCredentialType get credentialType =>
      js_util.getProperty(this, 'credentialType');
  set credentialType(RTCIceCredentialType newValue) {
    js_util.setProperty(this, 'credentialType', newValue);
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
  external factory RTCOfferOptions({bool iceRestart = false});
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
  external RTCPeerConnection([RTCConfiguration? configuration]);
}

extension PropsRTCPeerConnection on RTCPeerConnection {
  ///
  ///    Returns an [RTCSessionDescription]
  ///    describing the session for the local end of the connection.
  ///    If it has not yet been set, returns [null].
  ///
  ///
  RTCSessionDescription? get localDescription =>
      js_util.getProperty(this, 'localDescription');

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
  RTCSessionDescription? get currentLocalDescription =>
      js_util.getProperty(this, 'currentLocalDescription');

  ///
  ///    Returns an [RTCSessionDescription] object
  ///     describing a pending configuration change for the local end
  /// of the connection.
  ///    This does not describe the connection as it currently stands,
  ///    but as it may exist in the near future.
  ///
  ///
  RTCSessionDescription? get pendingLocalDescription =>
      js_util.getProperty(this, 'pendingLocalDescription');

  ///
  ///    Returns an [RTCSessionDescription] object
  ///    describing the session,
  ///    including configuration and media information,
  ///    for the remote end of the connection.
  ///    If this hasn't been set yet, this returns [null].
  ///
  ///
  RTCSessionDescription? get remoteDescription =>
      js_util.getProperty(this, 'remoteDescription');

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
  RTCSessionDescription? get currentRemoteDescription =>
      js_util.getProperty(this, 'currentRemoteDescription');

  ///
  ///    Returns an [RTCSessionDescription] object
  ///     describing a pending configuration change for the remote end
  /// of the connection.
  ///    This does not describe the connection as it currently stands,
  ///    but as it may exist in the near future.
  ///
  ///
  RTCSessionDescription? get pendingRemoteDescription =>
      js_util.getProperty(this, 'pendingRemoteDescription');

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
  RTCSignalingState get signalingState =>
      js_util.getProperty(this, 'signalingState');

  ///
  ///    Returns a string
  ///    that describes connection's ICE gathering state.
  ///    This lets you detect, for example,
  ///    when collection of ICE candidates has finished.
  ///    Possible values are:
  ///    [new], [gathering], or [complete].
  ///
  ///
  RTCIceGatheringState get iceGatheringState =>
      js_util.getProperty(this, 'iceGatheringState');

  ///
  ///     Returns a string which state of the ICE agent associated with
  /// this RTCPeerConnection.
  ///    It can be one of the following values:
  ///    [new], [checking], [connected], [completed],
  ///    [failed], [disconnected], or [closed].
  ///
  ///
  RTCIceConnectionState get iceConnectionState =>
      js_util.getProperty(this, 'iceConnectionState');

  ///
  ///    Indicates the current state of the peer connection
  ///    by returning one of the strings
  ///    [new], [connecting], [connected], [disconnected],
  ///    [failed], or [closed].
  ///
  ///
  RTCPeerConnectionState get connectionState =>
      js_util.getProperty(this, 'connectionState');

  ///
  ///    Returns a boolean value which indicates whether or not
  ///    the remote peer can accept trickled ICE candidates.
  ///
  ///
  bool? get canTrickleIceCandidates =>
      js_util.getProperty(this, 'canTrickleIceCandidates');

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
  Object restartIce() => js_util.callMethod(this, 'restartIce', []);

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
  RTCConfiguration getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

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
  Object setConfiguration([RTCConfiguration? configuration]) =>
      js_util.callMethod(this, 'setConfiguration', [configuration]);

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
  Promise<Object> createOffer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback,
          RTCOfferOptions? options]) =>
      js_util.callMethod(
          this, 'createOffer', [successCallback, failureCallback, options]);

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
  Promise<Object> setLocalDescription(
          [RTCLocalSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.callMethod(this, 'setLocalDescription',
          [description, successCallback, failureCallback]);

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
  Promise<Object> createAnswer(
          [RTCSessionDescriptionCallback? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util
          .callMethod(this, 'createAnswer', [successCallback, failureCallback]);

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
  Promise<Object> setRemoteDescription(
          [RTCSessionDescriptionInit? description,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.callMethod(this, 'setRemoteDescription',
          [description, successCallback, failureCallback]);

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
  Promise<Object> addIceCandidate(
          [RTCIceCandidateInit? candidate,
          VoidFunction? successCallback,
          RTCPeerConnectionErrorCallback? failureCallback]) =>
      js_util.callMethod(this, 'addIceCandidate',
          [candidate, successCallback, failureCallback]);

  external static Promise<RTCCertificate> generateCertificate(
      dynamic keygenAlgorithm);
  Iterable<RTCRtpSender> getSenders() =>
      js_util.callMethod(this, 'getSenders', []);

  Iterable<RTCRtpReceiver> getReceivers() =>
      js_util.callMethod(this, 'getReceivers', []);

  Iterable<RTCRtpTransceiver> getTransceivers() =>
      js_util.callMethod(this, 'getTransceivers', []);

  RTCRtpSender addTrack(MediaStreamTrack track, [MediaStream? streams]) =>
      js_util.callMethod(this, 'addTrack', [track, streams]);

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

  Promise<RTCStatsReport> getStats([MediaStreamTrack? selector]) =>
      js_util.callMethod(this, 'getStats', [selector]);

  Object setIdentityProvider(String provider,
          [RTCIdentityProviderOptions? options]) =>
      js_util.callMethod(this, 'setIdentityProvider', [provider, options]);

  Promise<String> getIdentityAssertion() =>
      js_util.callMethod(this, 'getIdentityAssertion', []);

  Promise<RTCIdentityAssertion> get peerIdentity =>
      js_util.getProperty(this, 'peerIdentity');
  String? get idpLoginUrl => js_util.getProperty(this, 'idpLoginUrl');
  String? get idpErrorInfo => js_util.getProperty(this, 'idpErrorInfo');
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
  external RTCSessionDescription(RTCSessionDescriptionInit descriptionInitDict);
}

extension PropsRTCSessionDescription on RTCSessionDescription {
  ///  An enum of type [RTCSdpType] describing the session
  /// description's type.
  ///
  RTCSdpType get type => js_util.getProperty(this, 'type');

  /// A [DOMString] containing the SDP describing the session.
  ///
  String get sdp => js_util.getProperty(this, 'sdp');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

extension PropsRTCSessionDescriptionInit on RTCSessionDescriptionInit {
  RTCSdpType get type => js_util.getProperty(this, 'type');
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue);
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
  external factory RTCLocalSessionDescriptionInit(
      {RTCSdpType type, String sdp = ''});
}

extension PropsRTCLocalSessionDescriptionInit
    on RTCLocalSessionDescriptionInit {
  RTCSdpType get type => js_util.getProperty(this, 'type');
  set type(RTCSdpType newValue) {
    js_util.setProperty(this, 'type', newValue);
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
  external RTCIceCandidate([RTCIceCandidateInit? candidateInitDict]);
}

extension PropsRTCIceCandidate on RTCIceCandidate {
  ///  A [DOMString] representing the transport address for the
  /// candidate that can be used for connectivity checks. The format of
  /// this address is a [candidate-attribute] as defined in RFC 5245.
  /// This string is empty ([""]) if the [RTCIceCandidate] is an "end
  /// of candidates" indicator.
  ///
  String get candidate => js_util.getProperty(this, 'candidate');

  ///  A [DOMString] specifying the candidate's media stream
  /// identification tag which uniquely identifies the media stream
  /// within the component with which the candidate is associated, or
  /// [null] if no such association exists.
  ///
  String? get sdpMid => js_util.getProperty(this, 'sdpMid');

  ///  If not [null], indicates the zero-based index number of the
  /// media description (as defined in RFC 4566) in the SDP with which
  /// the candidate is associated.
  ///
  int? get sdpMLineIndex => js_util.getProperty(this, 'sdpMLineIndex');

  ///  Returns a [DOMString] containing a unique identifier that is the
  /// same for any candidates of the same type, share the same base
  /// (the address from which the ICE agent sent the candidate), and
  /// come from the same STUN server. This is used to help optimize ICE
  /// performance while prioritizing and correlating candidates that
  /// appear on multiple [RTCIceTransport] objects.
  ///
  String? get foundation => js_util.getProperty(this, 'foundation');

  ///  A string which indicates whether the candidate is an RTP or an
  /// RTCP candidate; its value is either [rtp] or [rtcp], and is
  /// derived from the ["component-id"] field in the [candidate] a-line
  /// string.
  ///
  RTCIceComponent? get component => js_util.getProperty(this, 'component');

  /// A long integer value indicating the candidate's priority.
  ///
  int? get priority => js_util.getProperty(this, 'priority');

  /// A [DOMString] containing the IP address of the candidate.
  ///
  String? get address => js_util.getProperty(this, 'address');

  ///  A string indicating whether the candidate's protocol is ["tcp"]
  /// or ["udp"].
  ///
  RTCIceProtocol? get protocol => js_util.getProperty(this, 'protocol');

  /// An integer value indicating the candidate's port number.
  ///
  int? get port => js_util.getProperty(this, 'port');

  ///  A [DOMString] indicating the type of candidate as one of the
  /// strings listed on [RTCIceCandidate.type].
  ///
  RTCIceCandidateType? get type => js_util.getProperty(this, 'type');

  ///  If [protocol] is ["tcp"], represents the type of TCP candidate.
  /// Otherwise, is [null].
  ///
  RTCIceTcpCandidateType? get tcpType => js_util.getProperty(this, 'tcpType');

  ///  If the candidate is derived from another candidate, is a
  /// [DOMString] containing that host candidate's IP address. For host
  /// candidates, this value is [null].
  ///
  String? get relatedAddress => js_util.getProperty(this, 'relatedAddress');

  ///  For a candidate that is derived from another, such as a relay or
  /// reflexive candidate, the is a number indicating the port number
  /// of the candidate from which this candidate is derived. For host
  /// candidates, the property is [null].
  ///
  int? get relatedPort => js_util.getProperty(this, 'relatedPort');

  ///  A [DOMString] containing a randomly-generated username fragment
  /// ("ice-ufrag") which ICE uses for message integrity along with a
  /// randomly-generated password ("ice-pwd"). You can use this string
  /// to verify generations of ICE generation; each generation of the
  /// same ICE process will use the same , even across ICE restarts.
  ///
  String? get usernameFragment => js_util.getProperty(this, 'usernameFragment');

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
  RTCIceCandidateInit toJSON() => js_util.callMethod(this, 'toJSON', []);
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

///  The interface represents events that occur in relation to ICE
/// candidates with the target, usually an [RTCPeerConnection].
/// Only one event is of this type: [icecandidate].
@experimental
@JS()
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external RTCPeerConnectionIceEvent(String type,
      [RTCPeerConnectionIceEventInit? eventInitDict]);
}

extension PropsRTCPeerConnectionIceEvent on RTCPeerConnectionIceEvent {
  ///  Contains the [RTCIceCandidate] containing the candidate
  /// associated with the event, or [null] if this event indicates that
  /// there are no further candidates to come.
  ///
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
@JS()
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external RTCPeerConnectionIceErrorEvent(
      String type, RTCPeerConnectionIceErrorEventInit eventInitDict);
}

extension PropsRTCPeerConnectionIceErrorEvent
    on RTCPeerConnectionIceErrorEvent {
  ///  A [DOMString] providing the local IP address used to communicate
  /// with the STUN or TURN server being used to negotiate the
  /// connection, or [null] if the local IP address has not yet been
  /// exposed as part of a local ICE candidate.
  ///
  String? get address => js_util.getProperty(this, 'address');

  ///  An unsigned integer value giving the port number over which
  /// communication with the STUN or TURN server is taking place, using
  /// the IP address given in [address]. [null] if the connection
  /// hasn't been established (that is, if [address] is [null]).
  ///
  int? get port => js_util.getProperty(this, 'port');

  ///  A [DOMString] indicating the URL of the STUN or TURN server with
  /// which the error occurred.
  ///
  String get url => js_util.getProperty(this, 'url');

  ///  An unsigned integer value stating the numeric STUN error code
  /// returned by the STUN or TURN server. If no host candidate can
  /// reach the server, this property is set to the number 701, which
  /// is outside the range of valid STUN error codes. The 701 error is
  /// fired only once per server URL, and only while the is
  /// [icegatheringstate] is [gathering].
  ///
  int get errorCode => js_util.getProperty(this, 'errorCode');

  ///  A [DOMString] containing the STUN reason text returned by the
  /// STUN or TURN server. If communication with the STUN or TURN
  /// server couldn't be established at all, this string will be a
  /// browser-specific string explaining the error.
  ///
  String get errorText => js_util.getProperty(this, 'errorText');
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
  external factory RTCCertificateExpiration({int expires});
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
  external RTCCertificate();
}

extension PropsRTCCertificate on RTCCertificate {
  /// Returns the expiration date of the certificate.
  ///
  int get expires => js_util.getProperty(this, 'expires');
  Iterable<RTCDtlsFingerprint> getFingerprints() =>
      js_util.callMethod(this, 'getFingerprints', []);
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
  RTCRtpTransceiverDirection get direction =>
      js_util.getProperty(this, 'direction');
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue);
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
  external RTCRtpSender();
}

extension PropsRTCRtpSender on RTCRtpSender {
  ///  The [MediaStreamTrack] which is being handled by the
  /// [RTCRtpSender]. If is [null], the [RTCRtpSender] doesn't transmit
  /// anything.
  ///
  MediaStreamTrack? get track => js_util.getProperty(this, 'track');

  ///  The [RTCDtlsTransport] over which the sender is exchanging the
  /// RTP and RTCP packets used to manage transmission of media and
  /// control data. This value is [null] until the transport is
  /// established. When bundling is in use, more than transceiver may
  /// be sharing the same transport object.
  ///
  RTCDtlsTransport? get transport => js_util.getProperty(this, 'transport');
  external static RTCRtpCapabilities? getCapabilities(String kind);

  ///  Applies changes to parameters which configure how the [track] is
  /// encoded and transmitted to the remote peer.
  ///
  /// var promise = rtcRtpSender.setParameters(parameters)
  ///
  Promise<Object> setParameters(RTCRtpSendParameters parameters) =>
      js_util.callMethod(this, 'setParameters', [parameters]);

  ///  Returns a [RTCRtpParameters] object describing the current
  /// configuration for the encoding and transmission of media on the
  /// [track].
  ///
  /// var rtpSendParameters = rtpSender.getParameters()
  ///
  RTCRtpSendParameters getParameters() =>
      js_util.callMethod(this, 'getParameters', []);

  ///  Attempts to replace the track currently being sent by the
  /// [RTCRtpSender] with another track, without performing
  /// renegotiation. This method can be used, for example, to toggle
  /// between the front- and rear-facing cameras on a device.
  ///
  /// trackReplacedPromise = sender.replaceTrack(newTrack);
  ///
  Promise<Object> replaceTrack(MediaStreamTrack? withTrack) =>
      js_util.callMethod(this, 'replaceTrack', [withTrack]);

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
  Object setStreams([MediaStream? streams]) =>
      js_util.callMethod(this, 'setStreams', [streams]);

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
  Promise<RTCStatsReport> getStats() =>
      js_util.callMethod(this, 'getStats', []);

  dynamic get transform => js_util.getProperty(this, 'transform');
  set transform(dynamic newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

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
  Iterable<RTCRtpHeaderExtensionParameters> get headerExtensions =>
      js_util.getProperty(this, 'headerExtensions');
  set headerExtensions(Iterable<RTCRtpHeaderExtensionParameters> newValue) {
    js_util.setProperty(this, 'headerExtensions', newValue);
  }

  ///  An [RTCRtcpParameters] object providing the configuration
  /// parameters used for RTCP on the sender or receiver. This
  /// parameter cannot be changed once initially set.
  ///
  RTCRtcpParameters get rtcp => js_util.getProperty(this, 'rtcp');
  set rtcp(RTCRtcpParameters newValue) {
    js_util.setProperty(this, 'rtcp', newValue);
  }

  ///  An array of [RTCRtpCodecParameters] objects describing the set
  /// of codecs from which the sender or receiver will choose. This
  /// parameter cannot be changed once initially set.
  ///
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
      {String transactionId, Iterable<RTCRtpEncodingParameters> encodings});
}

extension PropsRTCRtpSendParameters on RTCRtpSendParameters {
  ///  A string containing a unique ID for the last set of parameters
  /// applied; this value is used to ensure that [setParameters()] can
  /// only be called to alter changes made by a specific previous call
  /// to [getParameters()]. Once this parameter is initially set, it
  /// cannot be changed.
  ///
  String get transactionId => js_util.getProperty(this, 'transactionId');
  set transactionId(String newValue) {
    js_util.setProperty(this, 'transactionId', newValue);
  }

  ///  An array of [RTCRtpEncodingParameters] objects, each specifying
  /// the parameters for a single codec that could be used to encode
  /// the track's media.
  ///
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
  external factory RTCRtpCodingParameters({String rid});
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
  bool get active => js_util.getProperty(this, 'active');
  set active(bool newValue) {
    js_util.setProperty(this, 'active', newValue);
  }

  ///  An unsigned long integer indicating the maximum number of bits
  /// per second to allow for this encoding. Other parameters may
  /// further constrain the bit rate, such as the value of
  /// [maxFramerate] or transport or physical network limitations.
  ///
  int get maxBitrate => js_util.getProperty(this, 'maxBitrate');
  set maxBitrate(int newValue) {
    js_util.setProperty(this, 'maxBitrate', newValue);
  }

  ///  Only used for senders whose track's [kind] is [video], this is a
  /// double-precision floating-point value specifying a factor by
  /// which to scale down the video during encoding. The default value,
  /// 1.0, means that the sent video's size will be the same as the
  /// original. A value of 2.0 scales the video frames down by a factor
  /// of 2 in each dimension, resulting in a video 1/4 the size of the
  /// original. The value must not be less than 1.0 (you can't use this
  /// to scale the video up).
  ///
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
  external factory RTCRtcpParameters({String cname, bool reducedSize});
}

extension PropsRTCRtcpParameters on RTCRtcpParameters {
  ///  The Canonical Name (CNAME) being used by RTCP. This is used, for
  /// example, in SDES (SDP security descriptions) messages, described
  /// in RFC 4568. This property cannot be changed once initialized.
  ///
  String get cname => js_util.getProperty(this, 'cname');
  set cname(String newValue) {
    js_util.setProperty(this, 'cname', newValue);
  }

  ///  A Boolean value indicating whether or not reduced size RTCP is
  /// configured. If this value is [true], reduced size RTCP (described
  /// in RFC 5506) is in effect. If [false], compound RTCP is in use,
  /// as found in RFC 3550. This property cannot be changed once
  /// initialized.
  ///
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
      {String uri, int id, bool encrypted = false});
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
      {int payloadType,
      String mimeType,
      int clockRate,
      int channels,
      String sdpFmtpLine});
}

extension PropsRTCRtpCodecParameters on RTCRtpCodecParameters {
  /// The RTP payload type used to identify this codec.
  ///
  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
  }

  ///  The codec's MIME media type and subtype specified as a
  /// [DOMString] of the form ["type/subtype"]. IANA maintains a
  /// registry of valid MIME types.
  ///
  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  ///  An unsigned long integer value specifying the codec's clock rate
  /// in hertz (Hz). The clock rate is the rate at which the codec's
  /// RTP timestamp advances. Most codecs have specific values or
  /// ranges of values they permit; see the IANA payload format media
  /// type registry for details.
  ///
  int get clockRate => js_util.getProperty(this, 'clockRate');
  set clockRate(int newValue) {
    js_util.setProperty(this, 'clockRate', newValue);
  }

  ///  An unsigned short integer indicating the number of channels the
  /// codec should support. For example, for audio codecs, a value of 1
  /// specifies monaural sound while 2 indicates stereo.
  ///
  int get channels => js_util.getProperty(this, 'channels');
  set channels(int newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  ///  A [DOMString] containing the format-specific parameters field
  /// from the ["a=fmtp"] line in the codec's SDP, if one is present;
  /// see section 5.8 of the IETF specification for JSEP.
  ///
  ///     Note: On an [RTCRtpReceiver], the format-specific parameters
  /// come from the SDP sent by the remote peer, while for
  /// [RTCRtpSender], they're provided by the local description.
  ///
  ///
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
      {Iterable<RTCRtpCodecCapability> codecs,
      Iterable<RTCRtpHeaderExtensionCapability> headerExtensions});
}

extension PropsRTCRtpCapabilities on RTCRtpCapabilities {
  ///  An array of [RTCRtpCodecCapability] objects, each describing one
  /// of the codecs supported by the [RTCRtpSender] or
  /// [RTCRtpReceiver]. There are some special entries in this array,
  /// described below in the section The codecs array.
  ///
  Iterable<RTCRtpCodecCapability> get codecs =>
      js_util.getProperty(this, 'codecs');
  set codecs(Iterable<RTCRtpCodecCapability> newValue) {
    js_util.setProperty(this, 'codecs', newValue);
  }

  ///  An array of objects conforming to the
  /// [RTCRtpHeaderExtensionCapability] dictionary. Each object
  /// contains a single [DOMString], [uri], specifying the URI of the
  /// header extension, as described in RFC 5285.
  ///
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
      {String mimeType, int clockRate, int channels, String sdpFmtpLine});
}

extension PropsRTCRtpCodecCapability on RTCRtpCodecCapability {
  ///  A [DOMString] indicating the codec's MIME media type and
  /// subtype. See Codecs used by WebRTC for details about potential
  /// codecs that might be referenced here.
  ///
  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  ///  An unsigned long integer specifying the codec's clock rate in
  /// Hertz (Hz). The IANA maintains a list of codecs and their
  /// parameters, including their clock rates.
  ///
  int get clockRate => js_util.getProperty(this, 'clockRate');
  set clockRate(int newValue) {
    js_util.setProperty(this, 'clockRate', newValue);
  }

  ///  An unsigned integer value indicating the maximum number of
  /// channels supported by the codec; for example, a codec that
  /// supports only mono sound would have a value of 1; stereo codecs
  /// would have a 2, etc.
  ///
  int get channels => js_util.getProperty(this, 'channels');
  set channels(int newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  ///  A [DOMString] giving the format specific parameters field from
  /// the [a=fmtp] line in the SDP which corresponds to the codec, if
  /// such a line exists. If there is no parameters field, this
  /// property is left out.
  ///
  String get sdpFmtpLine => js_util.getProperty(this, 'sdpFmtpLine');
  set sdpFmtpLine(String newValue) {
    js_util.setProperty(this, 'sdpFmtpLine', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability({String uri});
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
  external RTCRtpReceiver();
}

extension PropsRTCRtpReceiver on RTCRtpReceiver {
  ///  Returns the [MediaStreamTrack] associated with the current
  /// [RTCRtpReceiver] instance.
  ///
  MediaStreamTrack get track => js_util.getProperty(this, 'track');

  ///  Returns the [RTCDtlsTransport] instance over which the media for
  /// the receiver's track is received.
  ///
  RTCDtlsTransport? get transport => js_util.getProperty(this, 'transport');
  external static RTCRtpCapabilities? getCapabilities(String kind);

  ///  Returns an [RTCRtpParameters] object which contains information
  /// about how the RTC data is to be decoded.
  ///
  /// let rtpReceiveParameters = rtpReceiver.getParameters();
  ///
  RTCRtpReceiveParameters getParameters() =>
      js_util.callMethod(this, 'getParameters', []);

  ///  Returns an array of [RTCRtpContributingSource] instances for
  /// each unique CSRC (contributing source) identifier received by the
  /// current [RTCRtpReceiver] in the last ten seconds.
  ///
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  ///
  Iterable<RTCRtpContributingSource> getContributingSources() =>
      js_util.callMethod(this, 'getContributingSources', []);

  ///  Returns an array including one [RTCRtpSynchronizationSource]
  /// instance for each unique SSRC (synchronization source) identifier
  /// received by the current [RTCRtpReceiver] in the last ten seconds.
  ///
  /// var rtcRtpContributingSources = rtcRtpReceiver.getContributingSources()
  ///
  Iterable<RTCRtpSynchronizationSource> getSynchronizationSources() =>
      js_util.callMethod(this, 'getSynchronizationSources', []);

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
  Promise<RTCStatsReport> getStats() =>
      js_util.callMethod(this, 'getStats', []);

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
      {double timestamp, int source, double audioLevel, int rtpTimestamp});
}

extension PropsRTCRtpContributingSource on RTCRtpContributingSource {
  ///  A [DOMHighResTimeStamp] indicating the most recent time at which
  /// a frame originating from this source was delivered to the
  /// receiver's [MediaStreamTrack]
  ///
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  ///  A 32-bit unsigned integer value specifying the CSRC identifier
  /// of the contributing source.
  ///
  int get source => js_util.getProperty(this, 'source');
  set source(int newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  ///  A double-precision floating-point value between 0 and 1
  /// specifying the audio level contained in the last RTP packet
  /// played from this source.
  ///
  double get audioLevel => js_util.getProperty(this, 'audioLevel');
  set audioLevel(double newValue) {
    js_util.setProperty(this, 'audioLevel', newValue);
  }

  ///  The RTP timestamp of the media played out at the time indicated
  /// by [timestamp]. This value is a source-generated time value which
  /// can be used to help with sequencing and synchronization.
  ///
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
  external RTCRtpTransceiver();
}

extension PropsRTCRtpTransceiver on RTCRtpTransceiver {
  ///  The media ID of the m-line associated with this transceiver.
  /// This association is established, when possible, whenever either a
  /// local or remote description is applied. This field is [null] if
  /// neither a local or remote description has been applied, or if its
  /// associated m-line is rejected by either a remote offer or any
  /// answer.
  ///
  String? get mid => js_util.getProperty(this, 'mid');

  ///  The [RTCRtpSender] object responsible for encoding and sending
  /// data to the remote peer.
  ///
  RTCRtpSender get sender => js_util.getProperty(this, 'sender');

  ///  The [RTCRtpReceiver] object that handles receiving and decoding
  /// incoming media.
  ///
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');

  ///  A string which is used to set the transceiver's desired
  /// direction.
  ///
  RTCRtpTransceiverDirection get direction =>
      js_util.getProperty(this, 'direction');
  set direction(RTCRtpTransceiverDirection newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  ///  A read-only string which indicates the transceiver's current
  /// directionality, or [null] if the transceiver is stopped or has
  /// never participated in an exchange of offers and answers. To
  /// change the transceiver's directionality, set the value of the
  /// [direction] property.
  ///
  RTCRtpTransceiverDirection? get currentDirection =>
      js_util.getProperty(this, 'currentDirection');

  ///  Permanently stops the [RTCRtpTransceiver]. The associated sender
  /// stops sending data, and the associated receiver likewise stops
  /// receiving and decoding incoming data.
  ///
  /// RTCRtpTransceiver.stop()
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);

  ///  A list of [RTCRtpCodecParameters] objects which override the
  /// default preferences used by the user agent for the transceiver's
  /// codecs.
  ///
  /// rtcRtpTransceiver.setCodecPreferences(codecs)
  ///
  Object setCodecPreferences(Iterable<RTCRtpCodecCapability> codecs) =>
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
///    RTCDtlsTransport
///
///
@experimental
@JS()
@staticInterop
class RTCDtlsTransport implements EventTarget {
  external RTCDtlsTransport();
}

extension PropsRTCDtlsTransport on RTCDtlsTransport {
  /// Returns a reference to the underlying [RTCIceTransport] object.
  ///
  RTCIceTransport get iceTransport => js_util.getProperty(this, 'iceTransport');

  ///
  ///    Returns a string
  ///     which describes the underlying Datagram Transport Layer
  /// Security (DTLS) transport state.
  ///    It can be one of the following values:
  ///    [new], [connecting], [connected], [closed], or [failed].
  ///
  ///
  RTCDtlsTransportState get state => js_util.getProperty(this, 'state');

  ///  Returns an array of [ArrayBuffer] containing the certificates of
  /// the remote peer of the connection.
  ///
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
  external factory RTCDtlsFingerprint({String algorithm, String value});
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
@JS()
@staticInterop
class RTCIceTransport implements EventTarget {
  external RTCIceTransport();
}

extension PropsRTCIceTransport on RTCIceTransport {
  ///  Returns a [DOMString] whose value is one of the members of the
  /// [RTCIceRole] enumerated type: ["controlling"] or ["controlled"];
  /// this indicates whether the ICE agent is the one that makes the
  /// final decision as to the candidate pair to use or not.
  ///
  RTCIceRole get role => js_util.getProperty(this, 'role');

  ///  The ICE component being used by the transport. The value is one
  /// of the strings from the [RTCIceTransport] enumerated type:
  /// ["RTP"] or ["RTSP"].
  ///
  RTCIceComponent get component => js_util.getProperty(this, 'component');

  ///  A [DOMString] indicating what the current state of the ICE agent
  /// is. The value of can be used to determine whether the ICE agent
  /// has made an initial connection using a viable candidate pair
  /// (["connected"]), made its final selection of candidate pairs
  /// (["completed"]), or in an error state (["failed"]), among other
  /// states. See the [RTCIceTransportState] enumerated type for a
  /// complete list of states.
  ///
  RTCIceTransportState get state => js_util.getProperty(this, 'state');

  ///  A [DOMString] indicating which current gathering state of the
  /// ICE agent: ["new"], ["gathering"], or ["complete"].
  ///
  RTCIceGathererState get gatheringState =>
      js_util.getProperty(this, 'gatheringState');

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
  Iterable<RTCIceCandidate> getLocalCandidates() =>
      js_util.callMethod(this, 'getLocalCandidates', []);

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
  Iterable<RTCIceCandidate> getRemoteCandidates() =>
      js_util.callMethod(this, 'getRemoteCandidates', []);

  ///  Returns a [RTCIceCandidatePair] object that identifies the two
  /// candidates—one for each end of the connection—that have been
  /// selected so far. It's possible that a better pair will be found
  /// and selected later; if you need to keep up with this, watch for
  /// the [selectedcandidatepairchange] event. If no candidate pair has
  /// been selected yet, the return value is [null].
  ///
  /// candidatePair = RTCIceTransport.getSelectedCandidatePair();
  ///
  RTCIceCandidatePair? getSelectedCandidatePair() =>
      js_util.callMethod(this, 'getSelectedCandidatePair', []);

  ///  Returns a [RTCIceParameters] object describing the ICE
  /// parameters established by a call to the
  /// [RTCPeerConnection.setLocalDescription()] method. Returns [null]
  /// if parameters have not yet been received.
  ///
  /// parameters = RTCIceTransport.getLocalParameters();
  ///
  RTCIceParameters? getLocalParameters() =>
      js_util.callMethod(this, 'getLocalParameters', []);

  ///  Returns a [RTCIceParameters] object containing the ICE
  /// parameters for the remote device, as set by a call to
  /// [RTCPeerConnection.setRemoteDescription()]. If
  /// [setRemoteDescription()] hasn't been called yet, the return value
  /// is [null].
  ///
  /// parameters = RTCIceTransport.getRemoteParameters();
  ///
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
      js_util.callMethod(this, 'start', [remoteParameters, role]);

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
  String get usernameFragment => js_util.getProperty(this, 'usernameFragment');
  set usernameFragment(String newValue) {
    js_util.setProperty(this, 'usernameFragment', newValue);
  }

  /// A [DOMString] specifying the session's password string.
  ///
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
      {RTCIceCandidate local, RTCIceCandidate remote});
}

extension PropsRTCIceCandidatePair on RTCIceCandidatePair {
  ///  An [RTCIceCandidate] describing the configuration of the local
  /// end of the connection.
  ///
  RTCIceCandidate get local => js_util.getProperty(this, 'local');
  set local(RTCIceCandidate newValue) {
    js_util.setProperty(this, 'local', newValue);
  }

  ///  The [RTCIceCandidate] describing the configuration of the remote
  /// end of the connection.
  ///
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
  external RTCTrackEvent(String type, RTCTrackEventInit eventInitDict);
}

extension PropsRTCTrackEvent on RTCTrackEvent {
  ///  The [RTCRtpReceiver] used by the track that's been added to the
  /// [RTCPeerConnection].
  ///
  RTCRtpReceiver get receiver => js_util.getProperty(this, 'receiver');

  /// The [MediaStreamTrack] which has been added to the connection.
  ///
  MediaStreamTrack get track => js_util.getProperty(this, 'track');

  ///  An array of [MediaStream] objects, each representing one of the
  /// media streams to which the added [track] belongs. By default, the
  /// array is empty, indicating a streamless track.
  ///
  Iterable<MediaStream> get streams => js_util.getProperty(this, 'streams');

  /// The [RTCRtpTransceiver] being used by the new track.
  ///
  RTCRtpTransceiver get transceiver => js_util.getProperty(this, 'transceiver');
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
  external RTCSctpTransport();
}

extension PropsRTCSctpTransport on RTCSctpTransport {
  ///  An [RTCDtlsTransport] object representing the DTLS transport
  /// used for the transmission and receipt of data packets.
  ///
  RTCDtlsTransport get transport => js_util.getProperty(this, 'transport');

  ///  A [DOMString] enumerated value indicating the state of the SCTP
  /// transport.
  ///
  RTCSctpTransportState get state => js_util.getProperty(this, 'state');

  ///  An integer value indicating the maximum size, in bytes, of a
  /// message which can be sent using the [RTCDataChannel.send()]
  /// method.
  ///
  /* double | NaN */ dynamic get maxMessageSize =>
      js_util.getProperty(this, 'maxMessageSize');

  ///  An integer value indicating the maximum number of
  /// [RTCDataChannel]s that can be open simultaneously.
  ///
  int? get maxChannels => js_util.getProperty(this, 'maxChannels');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }
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
  external RTCDataChannel();
}

extension PropsRTCDataChannel on RTCDataChannel {
  ///
  ///     Returns a string that contains a name describing the data
  /// channel.
  ///    These labels are not required to be unique.
  ///
  ///
  String get label => js_util.getProperty(this, 'label');

  ///
  ///     Indicates whether or not the data channel guarantees in-order
  /// delivery of messages;
  ///     the default is [true], which indicates that the data channel
  /// is indeed ordered.
  ///
  ///
  bool get ordered => js_util.getProperty(this, 'ordered');

  ///
  ///    Returns the amount of time,
  ///    in milliseconds,
  ///     the browser is allowed to take to attempt to transmit a
  /// message,
  ///    as set when the data channel was created,
  ///    or [null].
  ///
  ///
  int? get maxPacketLifeTime => js_util.getProperty(this, 'maxPacketLifeTime');

  ///
  ///    Returns the maximum number of times
  ///     the browser should try to retransmit a message before giving
  /// up,
  ///    as set when the data channel was created,
  ///    or [null], which indicates that there is no maximum.
  ///
  ///
  int? get maxRetransmits => js_util.getProperty(this, 'maxRetransmits');

  ///
  ///     Returns a string containing the name of the subprotocol in
  /// use.
  ///    If no protocol was specified
  ///    when the data channel was created,
  ///    then this property's value is the empty string ([""]).
  ///
  ///
  String get protocol => js_util.getProperty(this, 'protocol');

  ///
  ///    Indicates
  ///     whether the [RTCDataChannel]'s connection was negotiated by
  /// the Web app
  ///    ([true])
  ///    or by the WebRTC layer ([false]).
  ///    The default is [false].
  ///
  ///
  bool get negotiated => js_util.getProperty(this, 'negotiated');

  ///
  ///    Returns an ID number (between 0 and 65,534)
  ///    which uniquely identifies the [RTCDataChannel].
  ///
  ///
  int? get id => js_util.getProperty(this, 'id');

  ///
  ///    Returns a string
  ///     which indicates the state of the data channel's underlying
  /// data connection.
  ///    It can have on of the following values:
  ///    [connecting], [open], [closing], or [closed].
  ///
  ///
  RTCDataChannelState get readyState => js_util.getProperty(this, 'readyState');

  ///
  ///    Returns the number of bytes of data
  ///    currently queued to be sent over the data channel.
  ///
  ///
  int get bufferedAmount => js_util.getProperty(this, 'bufferedAmount');

  ///
  ///     Specifies the number of bytes of buffered outgoing data that
  /// is considered "low".
  ///    The default value is 0.
  ///
  ///
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
  Object close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

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
  BinaryType get binaryType => js_util.getProperty(this, 'binaryType');
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue);
  }

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
  Object send(String data) => js_util.callMethod(this, 'send', [data]);

  RTCPriorityType get priority => js_util.getProperty(this, 'priority');
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
  external RTCDataChannelEvent(
      String type, RTCDataChannelEventInit eventInitDict);
}

extension PropsRTCDataChannelEvent on RTCDataChannelEvent {
  /// Returns the [RTCDataChannel] associated with the event.
  ///
  RTCDataChannel get channel => js_util.getProperty(this, 'channel');
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelEventInit implements EventInit {
  external factory RTCDataChannelEventInit({RTCDataChannel channel});
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
///    RTCDTMFSender
///
///
@JS()
@staticInterop
class RTCDTMFSender implements EventTarget {
  external RTCDTMFSender();
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
  Object insertDTMF(String tones,
          [int? duration = 100, int? interToneGap = 70]) =>
      js_util.callMethod(this, 'insertDTMF', [tones, duration, interToneGap]);

  EventHandlerNonNull? get ontonechange =>
      js_util.getProperty(this, 'ontonechange');
  set ontonechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontonechange', newValue);
  }

  bool get canInsertDTMF => js_util.getProperty(this, 'canInsertDTMF');

  ///  A [DOMString] which contains the list of DTMF tones currently in
  /// the queue to be transmitted (tones which have already been played
  /// are no longer included in the string). See for details on the
  /// format of the tone buffer.
  ///
  String get toneBuffer => js_util.getProperty(this, 'toneBuffer');
}

///  The interface represents events sent to indicate that DTMF tones
/// have started or finished playing. This interface is used by the
/// [tonechange] event.
@JS()
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external RTCDTMFToneChangeEvent(String type,
      [RTCDTMFToneChangeEventInit? eventInitDict]);
}

extension PropsRTCDTMFToneChangeEvent on RTCDTMFToneChangeEvent {
  ///  A [DOMString] specifying the tone which has begun playing, or an
  /// empty string ([""]) if the previous tone has finished playing.
  ///
  String get tone => js_util.getProperty(this, 'tone');
}

@anonymous
@JS()
@staticInterop
class RTCDTMFToneChangeEventInit implements EventInit {
  external factory RTCDTMFToneChangeEventInit({String tone = ''});
}

extension PropsRTCDTMFToneChangeEventInit on RTCDTMFToneChangeEventInit {
  String get tone => js_util.getProperty(this, 'tone');
  set tone(String newValue) {
    js_util.setProperty(this, 'tone', newValue);
  }
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
  external RTCStatsReport();
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
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  ///  A [DOMString] indicating the type of statistics the object
  /// contains, taken from the enum type [RTCStatsType].
  ///
  RTCStatsType get type => js_util.getProperty(this, 'type');
  set type(RTCStatsType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  A [DOMString] which uniquely identifies the object which was
  /// inspected to produce this object based on [RTCStats].
  ///
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

///  The interface describes an error which has occurred while
/// handling WebRTC operations. It's based upon the standard
/// [DOMException] interface that describes general DOM errors.
@JS()
@staticInterop
class RTCError implements DOMException {
  external RTCError(RTCErrorInit init, [String? message = '']);
}

extension PropsRTCError on RTCError {
  ///  A [DOMString] specifying the WebRTC-specific error code
  /// identifying the type of error that occurred.
  ///
  RTCErrorDetailType get errorDetail =>
      js_util.getProperty(this, 'errorDetail');

  ///  If [errorDetail] is [sdp-syntax-error], this property is a long
  /// integer identifying the line number of the SDP on which the
  /// syntax error occurred. [null] if the error isn't an SDP syntax
  /// error.
  ///
  int? get sdpLineNumber => js_util.getProperty(this, 'sdpLineNumber');

  ///  If [errorDetail] is [sctp-failure], this property is a long
  /// integer specifying the SCTP cause code indicating the cause of
  /// the failed SCTP negotiation. [null] if the error isn't an SCTP
  /// error.
  ///
  int? get sctpCauseCode => js_util.getProperty(this, 'sctpCauseCode');

  ///  An unsigned long integer value indicating the fatal DTLS error
  /// which was received from the network. Only valid if the
  /// [errorDetail] string is [dtls-failure]. If [null], no DTLS error
  /// was received.
  ///
  int? get receivedAlert => js_util.getProperty(this, 'receivedAlert');

  ///  If [errorDetail] is [dtls-failure], this property is an unsigned
  /// long integer indicating the fatal DTLS error that was sent out by
  /// this device. If [null], no DTLS error was transmitted.
  ///
  int? get sentAlert => js_util.getProperty(this, 'sentAlert');
  int? get httpRequestStatusCode =>
      js_util.getProperty(this, 'httpRequestStatusCode');
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
  RTCErrorDetailType get errorDetail =>
      js_util.getProperty(this, 'errorDetail');
  set errorDetail(RTCErrorDetailType newValue) {
    js_util.setProperty(this, 'errorDetail', newValue);
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

///  The WebRTC API's interface represents an error sent to a WebRTC
/// object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
@JS()
@staticInterop
class RTCErrorEvent implements Event {
  external RTCErrorEvent(String type, RTCErrorEventInit eventInitDict);
}

extension PropsRTCErrorEvent on RTCErrorEvent {
  ///  An [RTCError] object specifying the error which occurred; this
  /// object includes the type of error that occurred, information
  /// about where the error occurred (such as which line number in the
  /// SDP or what SCTP cause code was at issue).
  ///
  RTCError get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class RTCErrorEventInit implements EventInit {
  external factory RTCErrorEventInit({RTCError error});
}

extension PropsRTCErrorEventInit on RTCErrorEventInit {
  RTCError get error => js_util.getProperty(this, 'error');
  set error(RTCError newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}
