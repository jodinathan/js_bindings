/// WebCodecs
///
/// https://w3c.github.io/webcodecs/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webcodecs;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class AudioDecoder {
  external AudioDecoder(AudioDecoderInit init);
}

extension PropsAudioDecoder on AudioDecoder {
  CodecState get state =>
      CodecState.values.byName(js_util.getProperty(this, 'state'));
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');
  Object configure(AudioDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  Object decode(EncodedAudioChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  Object reset() => js_util.callMethod(this, 'reset', []);

  Object close() => js_util.callMethod(this, 'close', []);

  static Future<AudioDecoderSupport> isConfigSupported(
          AudioDecoderConfig config) =>
      js_util.promiseToFuture(
          js_util.callMethod(AudioDecoder, 'isConfigSupported', [config]));
}

@anonymous
@JS()
@staticInterop
class AudioDecoderInit {
  external factory AudioDecoderInit(
      {required AudioDataOutputCallback output,
      required WebCodecsErrorCallback error});
}

extension PropsAudioDecoderInit on AudioDecoderInit {
  AudioDataOutputCallback get output => js_util.getProperty(this, 'output');
  set output(AudioDataOutputCallback newValue) {
    js_util.setProperty(this, 'output', newValue);
  }

  WebCodecsErrorCallback get error => js_util.getProperty(this, 'error');
  set error(WebCodecsErrorCallback newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@JS()
@staticInterop
class VideoDecoder {
  external VideoDecoder(VideoDecoderInit init);
}

extension PropsVideoDecoder on VideoDecoder {
  CodecState get state =>
      CodecState.values.byName(js_util.getProperty(this, 'state'));
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');
  Object configure(VideoDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  Object decode(EncodedVideoChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  Object reset() => js_util.callMethod(this, 'reset', []);

  Object close() => js_util.callMethod(this, 'close', []);

  static Future<VideoDecoderSupport> isConfigSupported(
          VideoDecoderConfig config) =>
      js_util.promiseToFuture(
          js_util.callMethod(VideoDecoder, 'isConfigSupported', [config]));
}

@anonymous
@JS()
@staticInterop
class VideoDecoderInit {
  external factory VideoDecoderInit(
      {required VideoFrameOutputCallback output,
      required WebCodecsErrorCallback error});
}

extension PropsVideoDecoderInit on VideoDecoderInit {
  VideoFrameOutputCallback get output => js_util.getProperty(this, 'output');
  set output(VideoFrameOutputCallback newValue) {
    js_util.setProperty(this, 'output', newValue);
  }

  WebCodecsErrorCallback get error => js_util.getProperty(this, 'error');
  set error(WebCodecsErrorCallback newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@JS()
@staticInterop
class AudioEncoder {
  external AudioEncoder(AudioEncoderInit init);
}

extension PropsAudioEncoder on AudioEncoder {
  CodecState get state =>
      CodecState.values.byName(js_util.getProperty(this, 'state'));
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');
  Object configure(AudioEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  Object encode(AudioData data) => js_util.callMethod(this, 'encode', [data]);

  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  Object reset() => js_util.callMethod(this, 'reset', []);

  Object close() => js_util.callMethod(this, 'close', []);

  static Future<AudioEncoderSupport> isConfigSupported(
          AudioEncoderConfig config) =>
      js_util.promiseToFuture(
          js_util.callMethod(AudioEncoder, 'isConfigSupported', [config]));
}

@anonymous
@JS()
@staticInterop
class AudioEncoderInit {
  external factory AudioEncoderInit(
      {required EncodedAudioChunkOutputCallback output,
      required WebCodecsErrorCallback error});
}

extension PropsAudioEncoderInit on AudioEncoderInit {
  EncodedAudioChunkOutputCallback get output =>
      js_util.getProperty(this, 'output');
  set output(EncodedAudioChunkOutputCallback newValue) {
    js_util.setProperty(this, 'output', newValue);
  }

  WebCodecsErrorCallback get error => js_util.getProperty(this, 'error');
  set error(WebCodecsErrorCallback newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata(
      {required AudioDecoderConfig decoderConfig});
}

extension PropsEncodedAudioChunkMetadata on EncodedAudioChunkMetadata {
  AudioDecoderConfig get decoderConfig =>
      js_util.getProperty(this, 'decoderConfig');
  set decoderConfig(AudioDecoderConfig newValue) {
    js_util.setProperty(this, 'decoderConfig', newValue);
  }
}

@JS()
@staticInterop
class VideoEncoder {
  external VideoEncoder(VideoEncoderInit init);
}

extension PropsVideoEncoder on VideoEncoder {
  CodecState get state =>
      CodecState.values.byName(js_util.getProperty(this, 'state'));
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');
  Object configure(VideoEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  Object encode(VideoFrame frame, [VideoEncoderEncodeOptions? options]) =>
      js_util.callMethod(this, 'encode', [frame, options]);

  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  Object reset() => js_util.callMethod(this, 'reset', []);

  Object close() => js_util.callMethod(this, 'close', []);

  static Future<VideoEncoderSupport> isConfigSupported(
          VideoEncoderConfig config) =>
      js_util.promiseToFuture(
          js_util.callMethod(VideoEncoder, 'isConfigSupported', [config]));
}

@anonymous
@JS()
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit(
      {required EncodedVideoChunkOutputCallback output,
      required WebCodecsErrorCallback error});
}

extension PropsVideoEncoderInit on VideoEncoderInit {
  EncodedVideoChunkOutputCallback get output =>
      js_util.getProperty(this, 'output');
  set output(EncodedVideoChunkOutputCallback newValue) {
    js_util.setProperty(this, 'output', newValue);
  }

  WebCodecsErrorCallback get error => js_util.getProperty(this, 'error');
  set error(WebCodecsErrorCallback newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata(
      {required VideoDecoderConfig decoderConfig,
      required SvcOutputMetadata svc,
      dynamic alphaSideData});
}

extension PropsEncodedVideoChunkMetadata on EncodedVideoChunkMetadata {
  VideoDecoderConfig get decoderConfig =>
      js_util.getProperty(this, 'decoderConfig');
  set decoderConfig(VideoDecoderConfig newValue) {
    js_util.setProperty(this, 'decoderConfig', newValue);
  }

  SvcOutputMetadata get svc => js_util.getProperty(this, 'svc');
  set svc(SvcOutputMetadata newValue) {
    js_util.setProperty(this, 'svc', newValue);
  }

  dynamic get alphaSideData => js_util.getProperty(this, 'alphaSideData');
  set alphaSideData(dynamic newValue) {
    js_util.setProperty(this, 'alphaSideData', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SvcOutputMetadata {
  external factory SvcOutputMetadata({required int temporalLayerId});
}

extension PropsSvcOutputMetadata on SvcOutputMetadata {
  int get temporalLayerId => js_util.getProperty(this, 'temporalLayerId');
  set temporalLayerId(int newValue) {
    js_util.setProperty(this, 'temporalLayerId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioDecoderSupport {
  external factory AudioDecoderSupport(
      {required bool supported, required AudioDecoderConfig config});
}

extension PropsAudioDecoderSupport on AudioDecoderSupport {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  AudioDecoderConfig get config => js_util.getProperty(this, 'config');
  set config(AudioDecoderConfig newValue) {
    js_util.setProperty(this, 'config', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoDecoderSupport {
  external factory VideoDecoderSupport(
      {required bool supported, required VideoDecoderConfig config});
}

extension PropsVideoDecoderSupport on VideoDecoderSupport {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  VideoDecoderConfig get config => js_util.getProperty(this, 'config');
  set config(VideoDecoderConfig newValue) {
    js_util.setProperty(this, 'config', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioEncoderSupport {
  external factory AudioEncoderSupport(
      {required bool supported, required AudioEncoderConfig config});
}

extension PropsAudioEncoderSupport on AudioEncoderSupport {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  AudioEncoderConfig get config => js_util.getProperty(this, 'config');
  set config(AudioEncoderConfig newValue) {
    js_util.setProperty(this, 'config', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoEncoderSupport {
  external factory VideoEncoderSupport(
      {required bool supported, required VideoEncoderConfig config});
}

extension PropsVideoEncoderSupport on VideoEncoderSupport {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  VideoEncoderConfig get config => js_util.getProperty(this, 'config');
  set config(VideoEncoderConfig newValue) {
    js_util.setProperty(this, 'config', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioDecoderConfig {
  external factory AudioDecoderConfig(
      {required String codec,
      required int sampleRate,
      required int numberOfChannels,
      dynamic description});
}

extension PropsAudioDecoderConfig on AudioDecoderConfig {
  String get codec => js_util.getProperty(this, 'codec');
  set codec(String newValue) {
    js_util.setProperty(this, 'codec', newValue);
  }

  int get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(int newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  set numberOfChannels(int newValue) {
    js_util.setProperty(this, 'numberOfChannels', newValue);
  }

  dynamic get description => js_util.getProperty(this, 'description');
  set description(dynamic newValue) {
    js_util.setProperty(this, 'description', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoDecoderConfig {
  external factory VideoDecoderConfig._(
      {required String codec,
      dynamic description,
      required int codedWidth,
      required int codedHeight,
      required int displayAspectWidth,
      required int displayAspectHeight,
      required VideoColorSpaceInit colorSpace,
      String? hardwareAcceleration,
      bool? optimizeForLatency});

  factory VideoDecoderConfig(
          {required String codec,
          dynamic description,
          required int codedWidth,
          required int codedHeight,
          required int displayAspectWidth,
          required int displayAspectHeight,
          required VideoColorSpaceInit colorSpace,
          HardwareAcceleration? hardwareAcceleration =
              HardwareAcceleration.noPreference,
          bool? optimizeForLatency}) =>
      VideoDecoderConfig._(
          codec: codec,
          description: description,
          codedWidth: codedWidth,
          codedHeight: codedHeight,
          displayAspectWidth: displayAspectWidth,
          displayAspectHeight: displayAspectHeight,
          colorSpace: colorSpace,
          hardwareAcceleration: hardwareAcceleration?.name,
          optimizeForLatency: optimizeForLatency);
}

extension PropsVideoDecoderConfig on VideoDecoderConfig {
  String get codec => js_util.getProperty(this, 'codec');
  set codec(String newValue) {
    js_util.setProperty(this, 'codec', newValue);
  }

  dynamic get description => js_util.getProperty(this, 'description');
  set description(dynamic newValue) {
    js_util.setProperty(this, 'description', newValue);
  }

  int get codedWidth => js_util.getProperty(this, 'codedWidth');
  set codedWidth(int newValue) {
    js_util.setProperty(this, 'codedWidth', newValue);
  }

  int get codedHeight => js_util.getProperty(this, 'codedHeight');
  set codedHeight(int newValue) {
    js_util.setProperty(this, 'codedHeight', newValue);
  }

  int get displayAspectWidth => js_util.getProperty(this, 'displayAspectWidth');
  set displayAspectWidth(int newValue) {
    js_util.setProperty(this, 'displayAspectWidth', newValue);
  }

  int get displayAspectHeight =>
      js_util.getProperty(this, 'displayAspectHeight');
  set displayAspectHeight(int newValue) {
    js_util.setProperty(this, 'displayAspectHeight', newValue);
  }

  VideoColorSpaceInit get colorSpace => js_util.getProperty(this, 'colorSpace');
  set colorSpace(VideoColorSpaceInit newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
  }

  HardwareAcceleration get hardwareAcceleration => HardwareAcceleration.values
      .byName(js_util.getProperty(this, 'hardwareAcceleration'));
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue.name);
  }

  bool get optimizeForLatency =>
      js_util.getProperty(this, 'optimizeForLatency');
  set optimizeForLatency(bool newValue) {
    js_util.setProperty(this, 'optimizeForLatency', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig(
      {required String codec,
      required int sampleRate,
      required int numberOfChannels,
      required int bitrate});
}

extension PropsAudioEncoderConfig on AudioEncoderConfig {
  String get codec => js_util.getProperty(this, 'codec');
  set codec(String newValue) {
    js_util.setProperty(this, 'codec', newValue);
  }

  int get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(int newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  set numberOfChannels(int newValue) {
    js_util.setProperty(this, 'numberOfChannels', newValue);
  }

  int get bitrate => js_util.getProperty(this, 'bitrate');
  set bitrate(int newValue) {
    js_util.setProperty(this, 'bitrate', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoEncoderConfig {
  external factory VideoEncoderConfig._(
      {required String codec,
      required int width,
      required int height,
      required int displayWidth,
      required int displayHeight,
      required int bitrate,
      required double framerate,
      String? hardwareAcceleration,
      String? alpha,
      String? scalabilityMode,
      String? bitrateMode,
      String? latencyMode});

  factory VideoEncoderConfig(
          {required String codec,
          required int width,
          required int height,
          required int displayWidth,
          required int displayHeight,
          required int bitrate,
          required double framerate,
          HardwareAcceleration? hardwareAcceleration =
              HardwareAcceleration.noPreference,
          AlphaOption? alpha = AlphaOption.discard,
          String? scalabilityMode,
          BitrateMode? bitrateMode = BitrateMode.variable,
          LatencyMode? latencyMode = LatencyMode.quality}) =>
      VideoEncoderConfig._(
          codec: codec,
          width: width,
          height: height,
          displayWidth: displayWidth,
          displayHeight: displayHeight,
          bitrate: bitrate,
          framerate: framerate,
          hardwareAcceleration: hardwareAcceleration?.name,
          alpha: alpha?.name,
          scalabilityMode: scalabilityMode,
          bitrateMode: bitrateMode?.name,
          latencyMode: latencyMode?.name);
}

extension PropsVideoEncoderConfig on VideoEncoderConfig {
  String get codec => js_util.getProperty(this, 'codec');
  set codec(String newValue) {
    js_util.setProperty(this, 'codec', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get displayWidth => js_util.getProperty(this, 'displayWidth');
  set displayWidth(int newValue) {
    js_util.setProperty(this, 'displayWidth', newValue);
  }

  int get displayHeight => js_util.getProperty(this, 'displayHeight');
  set displayHeight(int newValue) {
    js_util.setProperty(this, 'displayHeight', newValue);
  }

  int get bitrate => js_util.getProperty(this, 'bitrate');
  set bitrate(int newValue) {
    js_util.setProperty(this, 'bitrate', newValue);
  }

  double get framerate => js_util.getProperty(this, 'framerate');
  set framerate(double newValue) {
    js_util.setProperty(this, 'framerate', newValue);
  }

  HardwareAcceleration get hardwareAcceleration => HardwareAcceleration.values
      .byName(js_util.getProperty(this, 'hardwareAcceleration'));
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue.name);
  }

  AlphaOption get alpha =>
      AlphaOption.values.byName(js_util.getProperty(this, 'alpha'));
  set alpha(AlphaOption newValue) {
    js_util.setProperty(this, 'alpha', newValue.name);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }

  BitrateMode get bitrateMode =>
      BitrateMode.values.byName(js_util.getProperty(this, 'bitrateMode'));
  set bitrateMode(BitrateMode newValue) {
    js_util.setProperty(this, 'bitrateMode', newValue.name);
  }

  LatencyMode get latencyMode =>
      LatencyMode.values.byName(js_util.getProperty(this, 'latencyMode'));
  set latencyMode(LatencyMode newValue) {
    js_util.setProperty(this, 'latencyMode', newValue.name);
  }
}

enum HardwareAcceleration { noPreference, preferHardware, preferSoftware }

enum AlphaOption { keep, discard }

enum LatencyMode { quality, realtime }

@anonymous
@JS()
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions({bool? keyFrame = false});
}

extension PropsVideoEncoderEncodeOptions on VideoEncoderEncodeOptions {
  bool get keyFrame => js_util.getProperty(this, 'keyFrame');
  set keyFrame(bool newValue) {
    js_util.setProperty(this, 'keyFrame', newValue);
  }
}

enum CodecState { unconfigured, configured, closed }

@JS()
@staticInterop
class EncodedAudioChunk {
  external EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension PropsEncodedAudioChunk on EncodedAudioChunk {
  EncodedAudioChunkType get type =>
      EncodedAudioChunkType.values.byName(js_util.getProperty(this, 'type'));
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int? get duration => js_util.getProperty(this, 'duration');
  int get byteLength => js_util.getProperty(this, 'byteLength');
  Object copyTo(dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit._(
      {required String type,
      required int timestamp,
      required int duration,
      dynamic data});

  factory EncodedAudioChunkInit(
          {required EncodedAudioChunkType type,
          required int timestamp,
          required int duration,
          dynamic data}) =>
      EncodedAudioChunkInit._(
          type: type.name,
          timestamp: timestamp,
          duration: duration,
          data: data);
}

extension PropsEncodedAudioChunkInit on EncodedAudioChunkInit {
  EncodedAudioChunkType get type =>
      EncodedAudioChunkType.values.byName(js_util.getProperty(this, 'type'));
  set type(EncodedAudioChunkType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get duration => js_util.getProperty(this, 'duration');
  set duration(int newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

enum EncodedAudioChunkType { key, delta }

@JS()
@staticInterop
class EncodedVideoChunk {
  external EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension PropsEncodedVideoChunk on EncodedVideoChunk {
  EncodedVideoChunkType get type =>
      EncodedVideoChunkType.values.byName(js_util.getProperty(this, 'type'));
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int? get duration => js_util.getProperty(this, 'duration');
  int get byteLength => js_util.getProperty(this, 'byteLength');
  Object copyTo(dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit._(
      {required String type,
      required int timestamp,
      required int duration,
      dynamic data});

  factory EncodedVideoChunkInit(
          {required EncodedVideoChunkType type,
          required int timestamp,
          required int duration,
          dynamic data}) =>
      EncodedVideoChunkInit._(
          type: type.name,
          timestamp: timestamp,
          duration: duration,
          data: data);
}

extension PropsEncodedVideoChunkInit on EncodedVideoChunkInit {
  EncodedVideoChunkType get type =>
      EncodedVideoChunkType.values.byName(js_util.getProperty(this, 'type'));
  set type(EncodedVideoChunkType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get duration => js_util.getProperty(this, 'duration');
  set duration(int newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

enum EncodedVideoChunkType { key, delta }

@JS()
@staticInterop
class AudioData {
  external AudioData(AudioDataInit init);
}

extension PropsAudioData on AudioData {
  AudioSampleFormat? get format {
    final ret = js_util.getProperty(this, 'format');

    return ret == null ? null : AudioSampleFormat.values.byName(ret);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  int get numberOfFrames => js_util.getProperty(this, 'numberOfFrames');
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  int get duration => js_util.getProperty(this, 'duration');
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int allocationSize(AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'allocationSize', [options]);

  Object copyTo(dynamic destination, AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'copyTo', [destination, options]);

  AudioData clone() => js_util.callMethod(this, 'clone', []);

  Object close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class AudioDataInit {
  external factory AudioDataInit._(
      {required String format,
      required double sampleRate,
      required int numberOfFrames,
      required int numberOfChannels,
      required int timestamp,
      dynamic data});

  factory AudioDataInit(
          {required AudioSampleFormat format,
          required double sampleRate,
          required int numberOfFrames,
          required int numberOfChannels,
          required int timestamp,
          dynamic data}) =>
      AudioDataInit._(
          format: format.name,
          sampleRate: sampleRate,
          numberOfFrames: numberOfFrames,
          numberOfChannels: numberOfChannels,
          timestamp: timestamp,
          data: data);
}

extension PropsAudioDataInit on AudioDataInit {
  AudioSampleFormat get format =>
      AudioSampleFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(AudioSampleFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  int get numberOfFrames => js_util.getProperty(this, 'numberOfFrames');
  set numberOfFrames(int newValue) {
    js_util.setProperty(this, 'numberOfFrames', newValue);
  }

  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  set numberOfChannels(int newValue) {
    js_util.setProperty(this, 'numberOfChannels', newValue);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions._(
      {required int planeIndex,
      int? frameOffset = 0,
      int? frameCount,
      String? format});

  factory AudioDataCopyToOptions(
          {required int planeIndex,
          int? frameOffset = 0,
          int? frameCount,
          AudioSampleFormat? format}) =>
      AudioDataCopyToOptions._(
          planeIndex: planeIndex,
          frameOffset: frameOffset,
          frameCount: frameCount,
          format: format?.name);
}

extension PropsAudioDataCopyToOptions on AudioDataCopyToOptions {
  int get planeIndex => js_util.getProperty(this, 'planeIndex');
  set planeIndex(int newValue) {
    js_util.setProperty(this, 'planeIndex', newValue);
  }

  int get frameOffset => js_util.getProperty(this, 'frameOffset');
  set frameOffset(int newValue) {
    js_util.setProperty(this, 'frameOffset', newValue);
  }

  int get frameCount => js_util.getProperty(this, 'frameCount');
  set frameCount(int newValue) {
    js_util.setProperty(this, 'frameCount', newValue);
  }

  AudioSampleFormat get format =>
      AudioSampleFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(AudioSampleFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }
}

enum AudioSampleFormat {
  u8,
  s16,
  s32,
  f32,
  u8Planar,
  s16Planar,
  s32Planar,
  f32Planar
}

@JS()
@staticInterop
class VideoFrame {
  external VideoFrame(dynamic image, [VideoFrameInit? init]);
}

extension PropsVideoFrame on VideoFrame {
  VideoPixelFormat? get format {
    final ret = js_util.getProperty(this, 'format');

    return ret == null ? null : VideoPixelFormat.values.byName(ret);
  }

  int get codedWidth => js_util.getProperty(this, 'codedWidth');
  int get codedHeight => js_util.getProperty(this, 'codedHeight');
  DOMRectReadOnly? get codedRect => js_util.getProperty(this, 'codedRect');
  DOMRectReadOnly? get visibleRect => js_util.getProperty(this, 'visibleRect');
  int get displayWidth => js_util.getProperty(this, 'displayWidth');
  int get displayHeight => js_util.getProperty(this, 'displayHeight');
  int? get duration => js_util.getProperty(this, 'duration');
  int? get timestamp => js_util.getProperty(this, 'timestamp');
  VideoColorSpace get colorSpace => js_util.getProperty(this, 'colorSpace');
  int allocationSize([VideoFrameCopyToOptions? options]) =>
      js_util.callMethod(this, 'allocationSize', [options]);

  Future<Iterable<PlaneLayout>> copyTo(dynamic destination,
          [VideoFrameCopyToOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'copyTo', [destination, options]));

  VideoFrame clone() => js_util.callMethod(this, 'clone', []);

  Object close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit._(
      {required int duration,
      required int timestamp,
      String? alpha,
      DOMRectInit? visibleRect,
      int? displayWidth,
      int? displayHeight});

  factory VideoFrameInit(
          {required int duration,
          required int timestamp,
          AlphaOption? alpha = AlphaOption.keep,
          DOMRectInit? visibleRect,
          int? displayWidth,
          int? displayHeight}) =>
      VideoFrameInit._(
          duration: duration,
          timestamp: timestamp,
          alpha: alpha?.name,
          visibleRect: visibleRect,
          displayWidth: displayWidth,
          displayHeight: displayHeight);
}

extension PropsVideoFrameInit on VideoFrameInit {
  int get duration => js_util.getProperty(this, 'duration');
  set duration(int newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  AlphaOption get alpha =>
      AlphaOption.values.byName(js_util.getProperty(this, 'alpha'));
  set alpha(AlphaOption newValue) {
    js_util.setProperty(this, 'alpha', newValue.name);
  }

  DOMRectInit get visibleRect => js_util.getProperty(this, 'visibleRect');
  set visibleRect(DOMRectInit newValue) {
    js_util.setProperty(this, 'visibleRect', newValue);
  }

  int get displayWidth => js_util.getProperty(this, 'displayWidth');
  set displayWidth(int newValue) {
    js_util.setProperty(this, 'displayWidth', newValue);
  }

  int get displayHeight => js_util.getProperty(this, 'displayHeight');
  set displayHeight(int newValue) {
    js_util.setProperty(this, 'displayHeight', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoFrameBufferInit {
  external factory VideoFrameBufferInit._(
      {required String format,
      required int codedWidth,
      required int codedHeight,
      required int timestamp,
      required int duration,
      required Iterable<PlaneLayout> layout,
      required DOMRectInit visibleRect,
      required int displayWidth,
      required int displayHeight,
      required VideoColorSpaceInit colorSpace});

  factory VideoFrameBufferInit(
          {required VideoPixelFormat format,
          required int codedWidth,
          required int codedHeight,
          required int timestamp,
          required int duration,
          required Iterable<PlaneLayout> layout,
          required DOMRectInit visibleRect,
          required int displayWidth,
          required int displayHeight,
          required VideoColorSpaceInit colorSpace}) =>
      VideoFrameBufferInit._(
          format: format.name,
          codedWidth: codedWidth,
          codedHeight: codedHeight,
          timestamp: timestamp,
          duration: duration,
          layout: layout,
          visibleRect: visibleRect,
          displayWidth: displayWidth,
          displayHeight: displayHeight,
          colorSpace: colorSpace);
}

extension PropsVideoFrameBufferInit on VideoFrameBufferInit {
  VideoPixelFormat get format =>
      VideoPixelFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(VideoPixelFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  int get codedWidth => js_util.getProperty(this, 'codedWidth');
  set codedWidth(int newValue) {
    js_util.setProperty(this, 'codedWidth', newValue);
  }

  int get codedHeight => js_util.getProperty(this, 'codedHeight');
  set codedHeight(int newValue) {
    js_util.setProperty(this, 'codedHeight', newValue);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get duration => js_util.getProperty(this, 'duration');
  set duration(int newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  Iterable<PlaneLayout> get layout => js_util.getProperty(this, 'layout');
  set layout(Iterable<PlaneLayout> newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }

  DOMRectInit get visibleRect => js_util.getProperty(this, 'visibleRect');
  set visibleRect(DOMRectInit newValue) {
    js_util.setProperty(this, 'visibleRect', newValue);
  }

  int get displayWidth => js_util.getProperty(this, 'displayWidth');
  set displayWidth(int newValue) {
    js_util.setProperty(this, 'displayWidth', newValue);
  }

  int get displayHeight => js_util.getProperty(this, 'displayHeight');
  set displayHeight(int newValue) {
    js_util.setProperty(this, 'displayHeight', newValue);
  }

  VideoColorSpaceInit get colorSpace => js_util.getProperty(this, 'colorSpace');
  set colorSpace(VideoColorSpaceInit newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions(
      {required DOMRectInit rect, required Iterable<PlaneLayout> layout});
}

extension PropsVideoFrameCopyToOptions on VideoFrameCopyToOptions {
  DOMRectInit get rect => js_util.getProperty(this, 'rect');
  set rect(DOMRectInit newValue) {
    js_util.setProperty(this, 'rect', newValue);
  }

  Iterable<PlaneLayout> get layout => js_util.getProperty(this, 'layout');
  set layout(Iterable<PlaneLayout> newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PlaneLayout {
  external factory PlaneLayout({required int offset, required int stride});
}

extension PropsPlaneLayout on PlaneLayout {
  int get offset => js_util.getProperty(this, 'offset');
  set offset(int newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  int get stride => js_util.getProperty(this, 'stride');
  set stride(int newValue) {
    js_util.setProperty(this, 'stride', newValue);
  }
}

enum VideoPixelFormat { i420, i420a, i422, i444, nv12, rgba, rgbx, bgra, bgrx }

@JS()
@staticInterop
class VideoColorSpace {
  external VideoColorSpace([VideoColorSpaceInit? init]);
}

extension PropsVideoColorSpace on VideoColorSpace {
  VideoColorPrimaries? get primaries {
    final ret = js_util.getProperty(this, 'primaries');

    return ret == null ? null : VideoColorPrimaries.values.byName(ret);
  }

  VideoTransferCharacteristics? get transfer {
    final ret = js_util.getProperty(this, 'transfer');

    return ret == null ? null : VideoTransferCharacteristics.values.byName(ret);
  }

  VideoMatrixCoefficients? get matrix {
    final ret = js_util.getProperty(this, 'matrix');

    return ret == null ? null : VideoMatrixCoefficients.values.byName(ret);
  }

  bool? get fullRange => js_util.getProperty(this, 'fullRange');
  VideoColorSpaceInit toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class VideoColorSpaceInit {
  external factory VideoColorSpaceInit._(
      {required String primaries,
      required String transfer,
      required String matrix,
      required bool fullRange});

  factory VideoColorSpaceInit(
          {required VideoColorPrimaries primaries,
          required VideoTransferCharacteristics transfer,
          required VideoMatrixCoefficients matrix,
          required bool fullRange}) =>
      VideoColorSpaceInit._(
          primaries: primaries.name,
          transfer: transfer.name,
          matrix: matrix.name,
          fullRange: fullRange);
}

extension PropsVideoColorSpaceInit on VideoColorSpaceInit {
  VideoColorPrimaries get primaries =>
      VideoColorPrimaries.values.byName(js_util.getProperty(this, 'primaries'));
  set primaries(VideoColorPrimaries newValue) {
    js_util.setProperty(this, 'primaries', newValue.name);
  }

  VideoTransferCharacteristics get transfer =>
      VideoTransferCharacteristics.values
          .byName(js_util.getProperty(this, 'transfer'));
  set transfer(VideoTransferCharacteristics newValue) {
    js_util.setProperty(this, 'transfer', newValue.name);
  }

  VideoMatrixCoefficients get matrix => VideoMatrixCoefficients.values
      .byName(js_util.getProperty(this, 'matrix'));
  set matrix(VideoMatrixCoefficients newValue) {
    js_util.setProperty(this, 'matrix', newValue.name);
  }

  bool get fullRange => js_util.getProperty(this, 'fullRange');
  set fullRange(bool newValue) {
    js_util.setProperty(this, 'fullRange', newValue);
  }
}

enum VideoColorPrimaries { bt709, bt470bg, smpte170m }

enum VideoTransferCharacteristics { bt709, smpte170m, iec6196621 }

enum VideoMatrixCoefficients { rgb, bt709, bt470bg, smpte170m }

@JS()
@staticInterop
class ImageDecoder {
  external ImageDecoder(ImageDecoderInit init);
}

extension PropsImageDecoder on ImageDecoder {
  bool get complete => js_util.getProperty(this, 'complete');
  Future<Object> get completed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'completed'));
  ImageTrackList get tracks => js_util.getProperty(this, 'tracks');
  Future<ImageDecodeResult> decode([ImageDecodeOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', [options]));

  Object reset() => js_util.callMethod(this, 'reset', []);

  Object close() => js_util.callMethod(this, 'close', []);

  static Future<bool> isTypeSupported(String type) => js_util.promiseToFuture(
      js_util.callMethod(ImageDecoder, 'isTypeSupported', [type]));
}

@anonymous
@JS()
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit._(
      {required String type,
      dynamic data,
      String? premultiplyAlpha,
      String? colorSpaceConversion,
      int? desiredWidth,
      int? desiredHeight,
      bool? preferAnimation});

  factory ImageDecoderInit(
          {required String type,
          dynamic data,
          PremultiplyAlpha? premultiplyAlpha = PremultiplyAlpha.valueDefault,
          ColorSpaceConversion? colorSpaceConversion =
              ColorSpaceConversion.valueDefault,
          int? desiredWidth,
          int? desiredHeight,
          bool? preferAnimation}) =>
      ImageDecoderInit._(
          type: type,
          data: data,
          premultiplyAlpha: premultiplyAlpha?.name,
          colorSpaceConversion: colorSpaceConversion?.name,
          desiredWidth: desiredWidth,
          desiredHeight: desiredHeight,
          preferAnimation: preferAnimation);
}

extension PropsImageDecoderInit on ImageDecoderInit {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  PremultiplyAlpha get premultiplyAlpha => PremultiplyAlpha.values
      .byName(js_util.getProperty(this, 'premultiplyAlpha'));
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue.name);
  }

  ColorSpaceConversion get colorSpaceConversion => ColorSpaceConversion.values
      .byName(js_util.getProperty(this, 'colorSpaceConversion'));
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue.name);
  }

  int get desiredWidth => js_util.getProperty(this, 'desiredWidth');
  set desiredWidth(int newValue) {
    js_util.setProperty(this, 'desiredWidth', newValue);
  }

  int get desiredHeight => js_util.getProperty(this, 'desiredHeight');
  set desiredHeight(int newValue) {
    js_util.setProperty(this, 'desiredHeight', newValue);
  }

  bool get preferAnimation => js_util.getProperty(this, 'preferAnimation');
  set preferAnimation(bool newValue) {
    js_util.setProperty(this, 'preferAnimation', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ImageDecodeOptions {
  external factory ImageDecodeOptions(
      {int? frameIndex = 0, bool? completeFramesOnly = true});
}

extension PropsImageDecodeOptions on ImageDecodeOptions {
  int get frameIndex => js_util.getProperty(this, 'frameIndex');
  set frameIndex(int newValue) {
    js_util.setProperty(this, 'frameIndex', newValue);
  }

  bool get completeFramesOnly =>
      js_util.getProperty(this, 'completeFramesOnly');
  set completeFramesOnly(bool newValue) {
    js_util.setProperty(this, 'completeFramesOnly', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ImageDecodeResult {
  external factory ImageDecodeResult(
      {required VideoFrame image, required bool complete});
}

extension PropsImageDecodeResult on ImageDecodeResult {
  VideoFrame get image => js_util.getProperty(this, 'image');
  set image(VideoFrame newValue) {
    js_util.setProperty(this, 'image', newValue);
  }

  bool get complete => js_util.getProperty(this, 'complete');
  set complete(bool newValue) {
    js_util.setProperty(this, 'complete', newValue);
  }
}

@JS()
@staticInterop
class ImageTrackList {
  external ImageTrackList();
}

extension PropsImageTrackList on ImageTrackList {
  Future<Object> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  int get length => js_util.getProperty(this, 'length');
  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  ImageTrack? get selectedTrack => js_util.getProperty(this, 'selectedTrack');
}

@JS()
@staticInterop
class ImageTrack implements EventTarget {
  external ImageTrack();
}

extension PropsImageTrack on ImageTrack {
  bool get animated => js_util.getProperty(this, 'animated');
  int get frameCount => js_util.getProperty(this, 'frameCount');
  /* double | NaN */ dynamic get repetitionCount =>
      js_util.getProperty(this, 'repetitionCount');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }
}
