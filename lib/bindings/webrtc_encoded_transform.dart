/// WebRTC Encoded Transform
///
/// https://w3c.github.io/webrtc-encoded-transform/
@JS('window')
@staticInterop
library webrtc_encoded_transform;

import 'dart:js_util' as js_util;
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
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  set readable(ReadableStream newValue) {
    js_util.setProperty(this, 'readable', newValue);
  }

  WritableStream get writable => js_util.getProperty(this, 'writable');
  set writable(WritableStream newValue) {
    js_util.setProperty(this, 'writable', newValue);
  }
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
  SFrameTransformRole get role => js_util.getProperty(this, 'role');
  set role(SFrameTransformRole newValue) {
    js_util.setProperty(this, 'role', newValue);
  }
}

@JS()
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external SFrameTransform([SFrameTransformOptions? options]);
}

extension PropsSFrameTransform on SFrameTransform {
  Promise<Object> setEncryptionKey(CryptoKey key, [dynamic keyID]) =>
      js_util.callMethod(this, 'setEncryptionKey', [key, keyID]);
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
  int get frameId => js_util.getProperty(this, 'frameId');
  set frameId(int newValue) {
    js_util.setProperty(this, 'frameId', newValue);
  }

  Iterable<int> get dependencies => js_util.getProperty(this, 'dependencies');
  set dependencies(Iterable<int> newValue) {
    js_util.setProperty(this, 'dependencies', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get spatialIndex => js_util.getProperty(this, 'spatialIndex');
  set spatialIndex(int newValue) {
    js_util.setProperty(this, 'spatialIndex', newValue);
  }

  int get temporalIndex => js_util.getProperty(this, 'temporalIndex');
  set temporalIndex(int newValue) {
    js_util.setProperty(this, 'temporalIndex', newValue);
  }

  int get synchronizationSource =>
      js_util.getProperty(this, 'synchronizationSource');
  set synchronizationSource(int newValue) {
    js_util.setProperty(this, 'synchronizationSource', newValue);
  }

  Iterable<int> get contributingSources =>
      js_util.getProperty(this, 'contributingSources');
  set contributingSources(Iterable<int> newValue) {
    js_util.setProperty(this, 'contributingSources', newValue);
  }
}

@JS()
@staticInterop
class RTCEncodedVideoFrame {
  external RTCEncodedVideoFrame();
}

extension PropsRTCEncodedVideoFrame on RTCEncodedVideoFrame {
  RTCEncodedVideoFrameType get type => js_util.getProperty(this, 'type');
  int get timestamp => js_util.getProperty(this, 'timestamp');
  ByteBuffer get data => js_util.getProperty(this, 'data');
  set data(ByteBuffer newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  RTCEncodedVideoFrameMetadata getMetadata() =>
      js_util.callMethod(this, 'getMetadata', []);
}

@anonymous
@JS()
@staticInterop
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata(
      {int synchronizationSource, Iterable<int> contributingSources});
}

extension PropsRTCEncodedAudioFrameMetadata on RTCEncodedAudioFrameMetadata {
  int get synchronizationSource =>
      js_util.getProperty(this, 'synchronizationSource');
  set synchronizationSource(int newValue) {
    js_util.setProperty(this, 'synchronizationSource', newValue);
  }

  Iterable<int> get contributingSources =>
      js_util.getProperty(this, 'contributingSources');
  set contributingSources(Iterable<int> newValue) {
    js_util.setProperty(this, 'contributingSources', newValue);
  }
}

@JS()
@staticInterop
class RTCEncodedAudioFrame {
  external RTCEncodedAudioFrame();
}

extension PropsRTCEncodedAudioFrame on RTCEncodedAudioFrame {
  int get timestamp => js_util.getProperty(this, 'timestamp');
  ByteBuffer get data => js_util.getProperty(this, 'data');
  set data(ByteBuffer newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  RTCEncodedAudioFrameMetadata getMetadata() =>
      js_util.callMethod(this, 'getMetadata', []);
}

@JS()
@staticInterop
class RTCTransformEvent implements Event {
  external RTCTransformEvent();
}

extension PropsRTCTransformEvent on RTCTransformEvent {
  RTCRtpScriptTransformer get transformer =>
      js_util.getProperty(this, 'transformer');
}

@JS()
@staticInterop
class RTCRtpScriptTransformer {
  external RTCRtpScriptTransformer();
}

extension PropsRTCRtpScriptTransformer on RTCRtpScriptTransformer {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
  dynamic get options => js_util.getProperty(this, 'options');
}

@JS()
@staticInterop
class RTCRtpScriptTransform {
  external RTCRtpScriptTransform(Worker worker,
      [dynamic options, Iterable<dynamic>? transfer]);
}
