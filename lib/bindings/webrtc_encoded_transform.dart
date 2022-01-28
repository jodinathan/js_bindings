/// WebRTC Encoded Transform
///
/// https://w3c.github.io/webrtc-encoded-transform/
@JS('window')
@staticInterop
library webrtc_encoded_transform;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: streams
webrtc
web_crypto_a_p_i
dom
html */

@anonymous
@JS()
@staticInterop
class RTCInsertableStreams {
  external factory RTCInsertableStreams(
      {ReadableStream readable, WritableStream writable});
}

extension PropsRTCInsertableStreams on RTCInsertableStreams {
  external ReadableStream get readable;
  external set readable(ReadableStream newValue);
  external WritableStream get writable;
  external set writable(WritableStream newValue);
}

enum SFrameTransformRole { encrypt, decrypt }

@anonymous
@JS()
@staticInterop
class SFrameTransformOptions {
  external factory SFrameTransformOptions(
      {SFrameTransformRole role = SFrameTransformRole.encrypt});
}

extension PropsSFrameTransformOptions on SFrameTransformOptions {
  external SFrameTransformRole get role;
  external set role(SFrameTransformRole newValue);
}

@JS()
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform([SFrameTransformOptions? options]);
}

extension PropsSFrameTransform on SFrameTransform {
  external Promise<Object> setEncryptionKey(CryptoKey key, [dynamic keyID]);
}

enum RTCEncodedVideoFrameType { empty, key, delta }

@anonymous
@JS()
@staticInterop
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata(
      {int frameId,
      Iterable<int> dependencies,
      int width,
      int height,
      int spatialIndex,
      int temporalIndex,
      int synchronizationSource,
      Iterable<int> contributingSources});
}

extension PropsRTCEncodedVideoFrameMetadata on RTCEncodedVideoFrameMetadata {
  external int get frameId;
  external set frameId(int newValue);
  external Iterable<int> get dependencies;
  external set dependencies(Iterable<int> newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get spatialIndex;
  external set spatialIndex(int newValue);
  external int get temporalIndex;
  external set temporalIndex(int newValue);
  external int get synchronizationSource;
  external set synchronizationSource(int newValue);
  external Iterable<int> get contributingSources;
  external set contributingSources(Iterable<int> newValue);
}

@JS()
@staticInterop
class RTCEncodedVideoFrame {
  external factory RTCEncodedVideoFrame();
}

extension PropsRTCEncodedVideoFrame on RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external int get timestamp;
  external ByteBuffer get data;
  external set data(ByteBuffer newValue);
  external RTCEncodedVideoFrameMetadata getMetadata();
}

@anonymous
@JS()
@staticInterop
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata(
      {int synchronizationSource, Iterable<int> contributingSources});
}

extension PropsRTCEncodedAudioFrameMetadata on RTCEncodedAudioFrameMetadata {
  external int get synchronizationSource;
  external set synchronizationSource(int newValue);
  external Iterable<int> get contributingSources;
  external set contributingSources(Iterable<int> newValue);
}

@JS()
@staticInterop
class RTCEncodedAudioFrame {
  external factory RTCEncodedAudioFrame();
}

extension PropsRTCEncodedAudioFrame on RTCEncodedAudioFrame {
  external int get timestamp;
  external ByteBuffer get data;
  external set data(ByteBuffer newValue);
  external RTCEncodedAudioFrameMetadata getMetadata();
}

@JS()
@staticInterop
class RTCTransformEvent implements Event {
  external factory RTCTransformEvent();
}

extension PropsRTCTransformEvent on RTCTransformEvent {
  external RTCRtpScriptTransformer get transformer;
}

@JS()
@staticInterop
class RTCRtpScriptTransformer {
  external factory RTCRtpScriptTransformer();
}

extension PropsRTCRtpScriptTransformer on RTCRtpScriptTransformer {
  external ReadableStream get readable;
  external WritableStream get writable;
  external dynamic get options;
}

@JS()
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform(Worker worker,
      [dynamic options, Iterable<dynamic>? transfer]);
}
