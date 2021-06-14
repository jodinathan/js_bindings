/// WebRTC Encoded Transform
///
/// https://w3c.github.io/webrtc-encoded-transform/
@JS('window')
library webrtc_encoded_transform;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'streams.dart';
import 'webrtc.dart';
import 'web_crypto_a_p_i.dart';
import 'dom.dart';
import 'html.dart';

@anonymous
@JS()
class RTCInsertableStreams {
  external ReadableStream get readable;
  external set readable(ReadableStream newValue);
  external WritableStream get writable;
  external set writable(WritableStream newValue);

  external factory RTCInsertableStreams(
      {ReadableStream readable, WritableStream writable});
}

@JS()
enum SFrameTransformRole { encrypt, decrypt }

@anonymous
@JS()
class SFrameTransformOptions {
  external SFrameTransformRole get role;
  external set role(SFrameTransformRole newValue);

  external factory SFrameTransformOptions(
      {SFrameTransformRole role = SFrameTransformRole.encrypt});
}

@JS()
class SFrameTransform with GenericTransformStream {
  external factory SFrameTransform({SFrameTransformOptions? options});
  external Promise<Object> setEncryptionKey(CryptoKey key, [dynamic keyID]);
}

@JS()
enum RTCEncodedVideoFrameType { empty, key, delta }

@anonymous
@JS()
class RTCEncodedVideoFrameMetadata {
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

@JS()
class RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external int get timestamp;
  external ByteBuffer get data;
  external set data(ByteBuffer newValue);
  external RTCEncodedVideoFrameMetadata getMetadata();

  external factory RTCEncodedVideoFrame();
}

@anonymous
@JS()
class RTCEncodedAudioFrameMetadata {
  external int get synchronizationSource;
  external set synchronizationSource(int newValue);
  external Iterable<int> get contributingSources;
  external set contributingSources(Iterable<int> newValue);

  external factory RTCEncodedAudioFrameMetadata(
      {int synchronizationSource, Iterable<int> contributingSources});
}

@JS()
class RTCEncodedAudioFrame {
  external int get timestamp;
  external ByteBuffer get data;
  external set data(ByteBuffer newValue);
  external RTCEncodedAudioFrameMetadata getMetadata();

  external factory RTCEncodedAudioFrame();
}

@JS()
class RTCTransformEvent extends Event {
  external RTCRtpScriptTransformer get transformer;

  external factory RTCTransformEvent();
}

@JS()
class RTCRtpScriptTransformer {
  external ReadableStream get readable;
  external WritableStream get writable;
  external dynamic get options;

  external factory RTCRtpScriptTransformer();
}

@JS()
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform(
      {Worker worker, dynamic options, Iterable<dynamic>? transfer});
}
