/// WebRTC Encoded Transform
///
/// https://w3c.github.io/webrtc-encoded-transform/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webrtc_encoded_transform;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum SFrameTransformRole {
  encrypt('encrypt'),
  decrypt('decrypt');

  final String value;
  static SFrameTransformRole fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SFrameTransformRole> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const SFrameTransformRole(this.value);
}

@anonymous
@JS()
@staticInterop
class SFrameTransformOptions {
  external factory SFrameTransformOptions._({String? role});

  factory SFrameTransformOptions(
          {SFrameTransformRole? role = SFrameTransformRole.encrypt}) =>
      SFrameTransformOptions._(role: role?.value);
}

extension PropsSFrameTransformOptions on SFrameTransformOptions {
  SFrameTransformRole get role =>
      SFrameTransformRole.fromValue(js_util.getProperty(this, 'role'));
  set role(SFrameTransformRole newValue) {
    js_util.setProperty(this, 'role', newValue.value);
  }
}

@JS()
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform([SFrameTransformOptions? options]);
}

extension PropsSFrameTransform on SFrameTransform {
  Future<void> setEncryptionKey(CryptoKey key, [dynamic keyID]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'setEncryptionKey', [key, keyID]));

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

enum SFrameTransformErrorEventType {
  authentication('authentication'),
  keyID('keyID'),
  syntax('syntax');

  final String value;
  static SFrameTransformErrorEventType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SFrameTransformErrorEventType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const SFrameTransformErrorEventType(this.value);
}

@JS()
@staticInterop
class SFrameTransformErrorEvent implements Event {
  external factory SFrameTransformErrorEvent(
      String type, SFrameTransformErrorEventInit eventInitDict);
}

extension PropsSFrameTransformErrorEvent on SFrameTransformErrorEvent {
  SFrameTransformErrorEventType get errorType =>
      SFrameTransformErrorEventType.fromValue(
          js_util.getProperty(this, 'errorType'));
  dynamic get keyID => js_util.getProperty(this, 'keyID');
  dynamic get frame => js_util.getProperty(this, 'frame');
}

@anonymous
@JS()
@staticInterop
class SFrameTransformErrorEventInit implements EventInit {
  external factory SFrameTransformErrorEventInit._(
      {required String errorType, dynamic frame, dynamic keyID});

  factory SFrameTransformErrorEventInit(
          {required SFrameTransformErrorEventType errorType,
          dynamic frame,
          dynamic keyID}) =>
      SFrameTransformErrorEventInit._(
          errorType: errorType.value, frame: frame, keyID: keyID);
}

extension PropsSFrameTransformErrorEventInit on SFrameTransformErrorEventInit {
  SFrameTransformErrorEventType get errorType =>
      SFrameTransformErrorEventType.fromValue(
          js_util.getProperty(this, 'errorType'));
  set errorType(SFrameTransformErrorEventType newValue) {
    js_util.setProperty(this, 'errorType', newValue.value);
  }

  dynamic get frame => js_util.getProperty(this, 'frame');
  set frame(dynamic newValue) {
    js_util.setProperty(this, 'frame', newValue);
  }

  dynamic get keyID => js_util.getProperty(this, 'keyID');
  set keyID(dynamic newValue) {
    js_util.setProperty(this, 'keyID', newValue);
  }
}

enum RTCEncodedVideoFrameType {
  empty('empty'),
  key('key'),
  delta('delta');

  final String value;
  static RTCEncodedVideoFrameType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCEncodedVideoFrameType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const RTCEncodedVideoFrameType(this.value);
}

@anonymous
@JS()
@staticInterop
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata(
      {required int frameId,
      required Iterable<int> dependencies,
      required int width,
      required int height,
      required int spatialIndex,
      required int temporalIndex,
      required int synchronizationSource,
      required int payloadType,
      required Iterable<int> contributingSources});
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

  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
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
  external factory RTCEncodedVideoFrame();
}

extension PropsRTCEncodedVideoFrame on RTCEncodedVideoFrame {
  RTCEncodedVideoFrameType get type =>
      RTCEncodedVideoFrameType.fromValue(js_util.getProperty(this, 'type'));
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
      {required int synchronizationSource,
      required int payloadType,
      required Iterable<int> contributingSources});
}

extension PropsRTCEncodedAudioFrameMetadata on RTCEncodedAudioFrameMetadata {
  int get synchronizationSource =>
      js_util.getProperty(this, 'synchronizationSource');
  set synchronizationSource(int newValue) {
    js_util.setProperty(this, 'synchronizationSource', newValue);
  }

  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
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
  external factory RTCEncodedAudioFrame();
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
  external factory RTCTransformEvent();
}

extension PropsRTCTransformEvent on RTCTransformEvent {
  RTCRtpScriptTransformer get transformer =>
      js_util.getProperty(this, 'transformer');
}

@JS()
@staticInterop
class RTCRtpScriptTransformer {
  external factory RTCRtpScriptTransformer();
}

extension PropsRTCRtpScriptTransformer on RTCRtpScriptTransformer {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
  dynamic get options => js_util.getProperty(this, 'options');
  Future<int> generateKeyFrame([String? rid]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'generateKeyFrame', [rid]));

  Future<void> sendKeyFrameRequest() => js_util
      .promiseToFuture(js_util.callMethod(this, 'sendKeyFrameRequest', []));
}

@JS()
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform(Worker worker,
      [dynamic options, Iterable<dynamic>? transfer]);
}
