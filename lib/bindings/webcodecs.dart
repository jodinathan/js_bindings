/// WebCodecs
///
/// https://w3c.github.io/webcodecs/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcodecs;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the WebCodecs API decodes chunks of audio.
@JS()
@staticInterop
class AudioDecoder {
  external factory AudioDecoder(AudioDecoderInit init);
  external static Future<AudioDecoderSupport> isConfigSupported(
      AudioDecoderConfig config);
}

extension PropsAudioDecoder on AudioDecoder {
  CodecState get state =>
      CodecState.fromValue(js_util.getProperty(this, 'state'));
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');
  EventHandlerNonNull? get ondequeue => js_util.getProperty(this, 'ondequeue');
  set ondequeue(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondequeue', newValue);
  }

  void configure(AudioDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  void decode(EncodedAudioChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  Future<void> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  void reset() => js_util.callMethod(this, 'reset', []);

  void close() => js_util.callMethod(this, 'close', []);
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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the WebCodecs API decodes chunks of video.
@JS()
@staticInterop
class VideoDecoder {
  external factory VideoDecoder(VideoDecoderInit init);
  external static Future<VideoDecoderSupport> isConfigSupported(
      VideoDecoderConfig config);
}

extension PropsVideoDecoder on VideoDecoder {
  CodecState get state =>
      CodecState.fromValue(js_util.getProperty(this, 'state'));
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');
  EventHandlerNonNull? get ondequeue => js_util.getProperty(this, 'ondequeue');
  set ondequeue(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondequeue', newValue);
  }

  void configure(VideoDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  void decode(EncodedVideoChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  Future<void> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  void reset() => js_util.callMethod(this, 'reset', []);

  void close() => js_util.callMethod(this, 'close', []);
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

/// The interface of the WebCodecs API encodes [AudioData] objects.
@JS()
@staticInterop
class AudioEncoder {
  external factory AudioEncoder(AudioEncoderInit init);
  external static Future<AudioEncoderSupport> isConfigSupported(
      AudioEncoderConfig config);
}

extension PropsAudioEncoder on AudioEncoder {
  CodecState get state =>
      CodecState.fromValue(js_util.getProperty(this, 'state'));
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');
  EventHandlerNonNull? get ondequeue => js_util.getProperty(this, 'ondequeue');
  set ondequeue(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondequeue', newValue);
  }

  void configure(AudioEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  void encode(AudioData data) => js_util.callMethod(this, 'encode', [data]);

  Future<void> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  void reset() => js_util.callMethod(this, 'reset', []);

  void close() => js_util.callMethod(this, 'close', []);
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
      {AudioDecoderConfig? decoderConfig});
}

extension PropsEncodedAudioChunkMetadata on EncodedAudioChunkMetadata {
  AudioDecoderConfig get decoderConfig =>
      js_util.getProperty(this, 'decoderConfig');
  set decoderConfig(AudioDecoderConfig newValue) {
    js_util.setProperty(this, 'decoderConfig', newValue);
  }
}

/// The interface of the WebCodecs API encodes [VideoFrame] objects.
@JS()
@staticInterop
class VideoEncoder {
  external factory VideoEncoder(VideoEncoderInit init);
  external static Future<VideoEncoderSupport> isConfigSupported(
      VideoEncoderConfig config);
}

extension PropsVideoEncoder on VideoEncoder {
  CodecState get state =>
      CodecState.fromValue(js_util.getProperty(this, 'state'));
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');
  EventHandlerNonNull? get ondequeue => js_util.getProperty(this, 'ondequeue');
  set ondequeue(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondequeue', newValue);
  }

  void configure(VideoEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  void encode(VideoFrame frame, [VideoEncoderEncodeOptions? options]) =>
      js_util.callMethod(this, 'encode', [frame, options]);

  Future<void> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  void reset() => js_util.callMethod(this, 'reset', []);

  void close() => js_util.callMethod(this, 'close', []);
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
      {VideoDecoderConfig? decoderConfig,
      SvcOutputMetadata? svc,
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
  external factory SvcOutputMetadata({int? temporalLayerId});
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
      {bool? supported, AudioDecoderConfig? config});
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
      {bool? supported, VideoDecoderConfig? config});
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
      {bool? supported, AudioEncoderConfig? config});
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
      {bool? supported, VideoEncoderConfig? config});
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
      int? codedWidth,
      int? codedHeight,
      int? displayAspectWidth,
      int? displayAspectHeight,
      VideoColorSpaceInit? colorSpace,
      String? hardwareAcceleration,
      bool? optimizeForLatency});

  factory VideoDecoderConfig(
          {required String codec,
          dynamic description,
          int? codedWidth,
          int? codedHeight,
          int? displayAspectWidth,
          int? displayAspectHeight,
          VideoColorSpaceInit? colorSpace,
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
          hardwareAcceleration: hardwareAcceleration?.value,
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

  HardwareAcceleration get hardwareAcceleration =>
      HardwareAcceleration.fromValue(
          js_util.getProperty(this, 'hardwareAcceleration'));
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue.value);
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
      int? sampleRate,
      int? numberOfChannels,
      int? bitrate});
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
      int? displayWidth,
      int? displayHeight,
      int? bitrate,
      double? framerate,
      String? hardwareAcceleration,
      String? alpha,
      String? scalabilityMode,
      String? bitrateMode,
      String? latencyMode});

  factory VideoEncoderConfig(
          {required String codec,
          required int width,
          required int height,
          int? displayWidth,
          int? displayHeight,
          int? bitrate,
          double? framerate,
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
          hardwareAcceleration: hardwareAcceleration?.value,
          alpha: alpha?.value,
          scalabilityMode: scalabilityMode,
          bitrateMode: bitrateMode?.value,
          latencyMode: latencyMode?.value);
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

  HardwareAcceleration get hardwareAcceleration =>
      HardwareAcceleration.fromValue(
          js_util.getProperty(this, 'hardwareAcceleration'));
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue.value);
  }

  AlphaOption get alpha =>
      AlphaOption.fromValue(js_util.getProperty(this, 'alpha'));
  set alpha(AlphaOption newValue) {
    js_util.setProperty(this, 'alpha', newValue.value);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }

  BitrateMode get bitrateMode =>
      BitrateMode.fromValue(js_util.getProperty(this, 'bitrateMode'));
  set bitrateMode(BitrateMode newValue) {
    js_util.setProperty(this, 'bitrateMode', newValue.value);
  }

  LatencyMode get latencyMode =>
      LatencyMode.fromValue(js_util.getProperty(this, 'latencyMode'));
  set latencyMode(LatencyMode newValue) {
    js_util.setProperty(this, 'latencyMode', newValue.value);
  }
}

enum HardwareAcceleration {
  noPreference('no-preference'),
  preferHardware('prefer-hardware'),
  preferSoftware('prefer-software');

  final String value;
  static HardwareAcceleration fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<HardwareAcceleration> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const HardwareAcceleration(this.value);
}

enum AlphaOption {
  keep('keep'),
  discard('discard');

  final String value;
  static AlphaOption fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AlphaOption> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AlphaOption(this.value);
}

enum LatencyMode {
  quality('quality'),
  realtime('realtime');

  final String value;
  static LatencyMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<LatencyMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const LatencyMode(this.value);
}

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

enum CodecState {
  unconfigured('unconfigured'),
  configured('configured'),
  closed('closed');

  final String value;
  static CodecState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CodecState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CodecState(this.value);
}

///  The interface of the WebCodecs API represents a chunk of encoded
/// audio data.
@JS()
@staticInterop
class EncodedAudioChunk {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension PropsEncodedAudioChunk on EncodedAudioChunk {
  EncodedAudioChunkType get type =>
      EncodedAudioChunkType.fromValue(js_util.getProperty(this, 'type'));
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int? get duration => js_util.getProperty(this, 'duration');
  int get byteLength => js_util.getProperty(this, 'byteLength');
  void copyTo(dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit._(
      {required String type,
      required int timestamp,
      int? duration,
      dynamic data});

  factory EncodedAudioChunkInit(
          {required EncodedAudioChunkType type,
          required int timestamp,
          int? duration,
          dynamic data}) =>
      EncodedAudioChunkInit._(
          type: type.value,
          timestamp: timestamp,
          duration: duration,
          data: data);
}

extension PropsEncodedAudioChunkInit on EncodedAudioChunkInit {
  EncodedAudioChunkType get type =>
      EncodedAudioChunkType.fromValue(js_util.getProperty(this, 'type'));
  set type(EncodedAudioChunkType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
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

enum EncodedAudioChunkType {
  key('key'),
  delta('delta');

  final String value;
  static EncodedAudioChunkType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<EncodedAudioChunkType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const EncodedAudioChunkType(this.value);
}

///  The interface of the WebCodecs API represents a chunk of encoded
/// video data.
@JS()
@staticInterop
class EncodedVideoChunk {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension PropsEncodedVideoChunk on EncodedVideoChunk {
  EncodedVideoChunkType get type =>
      EncodedVideoChunkType.fromValue(js_util.getProperty(this, 'type'));
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int? get duration => js_util.getProperty(this, 'duration');
  int get byteLength => js_util.getProperty(this, 'byteLength');
  void copyTo(dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit._(
      {required String type,
      required int timestamp,
      int? duration,
      dynamic data});

  factory EncodedVideoChunkInit(
          {required EncodedVideoChunkType type,
          required int timestamp,
          int? duration,
          dynamic data}) =>
      EncodedVideoChunkInit._(
          type: type.value,
          timestamp: timestamp,
          duration: duration,
          data: data);
}

extension PropsEncodedVideoChunkInit on EncodedVideoChunkInit {
  EncodedVideoChunkType get type =>
      EncodedVideoChunkType.fromValue(js_util.getProperty(this, 'type'));
  set type(EncodedVideoChunkType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
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

enum EncodedVideoChunkType {
  key('key'),
  delta('delta');

  final String value;
  static EncodedVideoChunkType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<EncodedVideoChunkType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const EncodedVideoChunkType(this.value);
}

/// The interface of the [WebCodecs API] represents an audio sample.
@JS()
@staticInterop
class AudioData {
  external factory AudioData(AudioDataInit init);
}

extension PropsAudioData on AudioData {
  AudioSampleFormat? get format {
    final ret = js_util.getProperty(this, 'format');

    return ret == null ? null : AudioSampleFormat.fromValue(ret);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  int get numberOfFrames => js_util.getProperty(this, 'numberOfFrames');
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  int get duration => js_util.getProperty(this, 'duration');
  int get timestamp => js_util.getProperty(this, 'timestamp');
  int allocationSize(AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'allocationSize', [options]);

  void copyTo(dynamic destination, AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'copyTo', [destination, options]);

  AudioData clone() => js_util.callMethod(this, 'clone', []);

  void close() => js_util.callMethod(this, 'close', []);
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
          format: format.value,
          sampleRate: sampleRate,
          numberOfFrames: numberOfFrames,
          numberOfChannels: numberOfChannels,
          timestamp: timestamp,
          data: data);
}

extension PropsAudioDataInit on AudioDataInit {
  AudioSampleFormat get format =>
      AudioSampleFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(AudioSampleFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
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
          format: format?.value);
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
      AudioSampleFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(AudioSampleFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }
}

enum AudioSampleFormat {
  u8('u8'),
  s16('s16'),
  s32('s32'),
  f32('f32'),
  u8Planar('u8-planar'),
  s16Planar('s16-planar'),
  s32Planar('s32-planar'),
  f32Planar('f32-planar');

  final String value;
  static AudioSampleFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AudioSampleFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AudioSampleFormat(this.value);
}

///  The interface of the Web Codecs API represents a frame of a
/// video.
@JS()
@staticInterop
class VideoFrame {
  external factory VideoFrame(dynamic image, [VideoFrameInit? init]);
}

extension PropsVideoFrame on VideoFrame {
  VideoPixelFormat? get format {
    final ret = js_util.getProperty(this, 'format');

    return ret == null ? null : VideoPixelFormat.fromValue(ret);
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

  void close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit._(
      {int? duration,
      int? timestamp,
      String? alpha,
      DOMRectInit? visibleRect,
      int? displayWidth,
      int? displayHeight});

  factory VideoFrameInit(
          {int? duration,
          int? timestamp,
          AlphaOption? alpha = AlphaOption.keep,
          DOMRectInit? visibleRect,
          int? displayWidth,
          int? displayHeight}) =>
      VideoFrameInit._(
          duration: duration,
          timestamp: timestamp,
          alpha: alpha?.value,
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
      AlphaOption.fromValue(js_util.getProperty(this, 'alpha'));
  set alpha(AlphaOption newValue) {
    js_util.setProperty(this, 'alpha', newValue.value);
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
      int? duration,
      Iterable<PlaneLayout>? layout,
      DOMRectInit? visibleRect,
      int? displayWidth,
      int? displayHeight,
      VideoColorSpaceInit? colorSpace});

  factory VideoFrameBufferInit(
          {required VideoPixelFormat format,
          required int codedWidth,
          required int codedHeight,
          required int timestamp,
          int? duration,
          Iterable<PlaneLayout>? layout,
          DOMRectInit? visibleRect,
          int? displayWidth,
          int? displayHeight,
          VideoColorSpaceInit? colorSpace}) =>
      VideoFrameBufferInit._(
          format: format.value,
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
      VideoPixelFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(VideoPixelFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
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
      {DOMRectInit? rect, Iterable<PlaneLayout>? layout});
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

enum VideoPixelFormat {
  i420('I420'),
  i420a('I420A'),
  i422('I422'),
  i444('I444'),
  nv12('NV12'),
  rgba('RGBA'),
  rgbx('RGBX'),
  bgra('BGRA'),
  bgrx('BGRX');

  final String value;
  static VideoPixelFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<VideoPixelFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const VideoPixelFormat(this.value);
}

///  The interface of the WebCodecs API represents the color space of
/// a video.
@JS()
@staticInterop
class VideoColorSpace {
  external factory VideoColorSpace([VideoColorSpaceInit? init]);
}

extension PropsVideoColorSpace on VideoColorSpace {
  VideoColorPrimaries? get primaries {
    final ret = js_util.getProperty(this, 'primaries');

    return ret == null ? null : VideoColorPrimaries.fromValue(ret);
  }

  VideoTransferCharacteristics? get transfer {
    final ret = js_util.getProperty(this, 'transfer');

    return ret == null ? null : VideoTransferCharacteristics.fromValue(ret);
  }

  VideoMatrixCoefficients? get matrix {
    final ret = js_util.getProperty(this, 'matrix');

    return ret == null ? null : VideoMatrixCoefficients.fromValue(ret);
  }

  bool? get fullRange => js_util.getProperty(this, 'fullRange');
  VideoColorSpaceInit toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class VideoColorSpaceInit {
  external factory VideoColorSpaceInit._(
      {String? primaries, String? transfer, String? matrix, bool? fullRange});

  factory VideoColorSpaceInit(
          {VideoColorPrimaries? primaries,
          VideoTransferCharacteristics? transfer,
          VideoMatrixCoefficients? matrix,
          bool? fullRange}) =>
      VideoColorSpaceInit._(
          primaries: primaries?.value,
          transfer: transfer?.value,
          matrix: matrix?.value,
          fullRange: fullRange);
}

extension PropsVideoColorSpaceInit on VideoColorSpaceInit {
  VideoColorPrimaries get primaries =>
      VideoColorPrimaries.fromValue(js_util.getProperty(this, 'primaries'));
  set primaries(VideoColorPrimaries newValue) {
    js_util.setProperty(this, 'primaries', newValue.value);
  }

  VideoTransferCharacteristics get transfer =>
      VideoTransferCharacteristics.fromValue(
          js_util.getProperty(this, 'transfer'));
  set transfer(VideoTransferCharacteristics newValue) {
    js_util.setProperty(this, 'transfer', newValue.value);
  }

  VideoMatrixCoefficients get matrix =>
      VideoMatrixCoefficients.fromValue(js_util.getProperty(this, 'matrix'));
  set matrix(VideoMatrixCoefficients newValue) {
    js_util.setProperty(this, 'matrix', newValue.value);
  }

  bool get fullRange => js_util.getProperty(this, 'fullRange');
  set fullRange(bool newValue) {
    js_util.setProperty(this, 'fullRange', newValue);
  }
}

enum VideoColorPrimaries {
  bt709('bt709'),
  bt470bg('bt470bg'),
  smpte170m('smpte170m');

  final String value;
  static VideoColorPrimaries fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<VideoColorPrimaries> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const VideoColorPrimaries(this.value);
}

enum VideoTransferCharacteristics {
  bt709('bt709'),
  smpte170m('smpte170m'),
  iec6196621('iec61966-2-1');

  final String value;
  static VideoTransferCharacteristics fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<VideoTransferCharacteristics> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const VideoTransferCharacteristics(this.value);
}

enum VideoMatrixCoefficients {
  rgb('rgb'),
  bt709('bt709'),
  bt470bg('bt470bg'),
  smpte170m('smpte170m');

  final String value;
  static VideoMatrixCoefficients fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<VideoMatrixCoefficients> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const VideoMatrixCoefficients(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebCodecs API provides a way to unpack and
/// decode encoded image data.
@JS()
@staticInterop
class ImageDecoder {
  external factory ImageDecoder(ImageDecoderInit init);
  external static Future<bool> isTypeSupported(String type);
}

extension PropsImageDecoder on ImageDecoder {
  String get type => js_util.getProperty(this, 'type');
  bool get complete => js_util.getProperty(this, 'complete');
  Future<void> get completed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'completed'));
  ImageTrackList get tracks => js_util.getProperty(this, 'tracks');
  Future<ImageDecodeResult> decode([ImageDecodeOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', [options]));

  void reset() => js_util.callMethod(this, 'reset', []);

  void close() => js_util.callMethod(this, 'close', []);
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
          premultiplyAlpha: premultiplyAlpha?.value,
          colorSpaceConversion: colorSpaceConversion?.value,
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

  PremultiplyAlpha get premultiplyAlpha =>
      PremultiplyAlpha.fromValue(js_util.getProperty(this, 'premultiplyAlpha'));
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue.value);
  }

  ColorSpaceConversion get colorSpaceConversion =>
      ColorSpaceConversion.fromValue(
          js_util.getProperty(this, 'colorSpaceConversion'));
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue.value);
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

///  The interface of the WebCodecs API represents a list of image
/// tracks.
@JS()
@staticInterop
class ImageTrackList {
  external factory ImageTrackList();
}

extension PropsImageTrackList on ImageTrackList {
  Future<void> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  int get length => js_util.getProperty(this, 'length');
  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  ImageTrack? get selectedTrack => js_util.getProperty(this, 'selectedTrack');
}

///  The interface of the WebCodecs API represents an individual
/// image track.
///
///
///
///    EventTarget
///
///
///
///
///
///    ImageTrack
///
///
@JS()
@staticInterop
class ImageTrack {
  external factory ImageTrack();
}

extension PropsImageTrack on ImageTrack {
  bool get animated => js_util.getProperty(this, 'animated');
  int get frameCount => js_util.getProperty(this, 'frameCount');
/* double | NaN */ dynamic get repetitionCount =>
      js_util.getProperty(this, 'repetitionCount');
  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }
}
