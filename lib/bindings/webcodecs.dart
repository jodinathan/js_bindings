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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the WebCodecs API decodes chunks of audio.
@JS()
@staticInterop
class AudioDecoder {
  external AudioDecoder(AudioDecoderInit init);
}

extension PropsAudioDecoder on AudioDecoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for decoding.
  ///
  CodecState get state => js_util.getProperty(this, 'state');

  /// An integer representing the number of decode queue requests.
  ///
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');

  ///  Enqueues a control message to configure the audio decoder for
  /// decoding chunks.
  ///
  /// AudioDecoder.configure(config)
  ///
  Object configure(

          /// A dictionary object containing the following members:
          ///
          ///    [codec]
          ///
          ///      : A [string] containing a valid codec string.
          ///
          ///
          ///    [sampleRate]
          ///
          ///       : An integer representing the number of frame samples per
          /// second.
          ///
          ///
          ///    [numberOfChannels]
          ///
          ///      : An integer representing the number of audio channels.
          ///
          ///
          ///    [description]Optional
          ///
          ///       A [BufferSource] containing a sequence of codec specific
          /// bytes, commonly known as extradata.
          ///
          ///
          ///
          ///
          AudioDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  /// Enqueues a control message to decode a given chunk of audio.
  ///
  /// AudioDecoder.decode(chunk)
  ///
  Object decode(

          ///  An [EncodedAudioChunk] object representing a chunk of encoded
          /// audio.
          ///
          EncodedAudioChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// AudioDecoder.flush()
  ///
  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// AudioDecoder.reset()
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  /// Ends all pending work and releases system resources.
  ///
  /// AudioDecoder.close()
  ///
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
      {AudioDataOutputCallback output, WebCodecsErrorCallback error});
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
  external VideoDecoder(VideoDecoderInit init);
}

extension PropsVideoDecoder on VideoDecoder {
  ///  Indicates whether the underlying codec is configured for
  /// decoding.
  ///
  CodecState get state => js_util.getProperty(this, 'state');

  /// An integer representing the number of decode queue requests.
  ///
  int get decodeQueueSize => js_util.getProperty(this, 'decodeQueueSize');

  ///  Enqueues a control message to configure the video decoder for
  /// decoding chunks.
  ///
  /// VideoDecoder.configure(config)
  ///
  Object configure(

          /// An object containing the following members:
          ///
          ///    [codec]
          ///
          ///     A [string] containing a valid codec string.
          ///
          ///    [description]Optional
          ///
          ///      A [BufferSource] containing a sequence of codec specific
          /// bytes, commonly known as extradata.
          ///
          ///    [codedWidth]Optional
          ///
          ///      An integer representing the width of the [VideoFrame] in
          /// pixels, including any non-visible padding, before any ratio
          /// adjustments.
          ///
          ///    [codedHeight]Optional
          ///
          ///      An integer representing the height of the [VideoFrame] in
          /// pixels, including any non-visible padding, before any ratio
          /// adjustments.
          ///
          ///    [displayAspectWidth]Optional
          ///
          ///      An integer representing the horizontal dimension of the
          /// [VideoFrame] in pixels when displayed.
          ///
          ///    [displayAspectHeight]Optional
          ///
          ///      An integer representing the vertical dimension of the
          /// [VideoFrame] in pixels when displayed.
          ///
          ///    [colorSpace]
          ///
          ///      An object. representing a [VideoColorSpace], containing the
          /// following members:
          ///
          ///      [primaries]
          ///
          ///        A string representing the color gamut of the video sample.
          /// One of:
          ///
          ///        ["bt709"]
          ///        ["bt470bg"]
          ///        ["smpte170m"]
          ///
          ///
          ///      [transfer]
          ///
          ///       A string representing transfer characteristics. One of:
          ///
          ///        ["bt709"]
          ///        ["smpte170m"]
          ///        ["iec61966-2-1"]
          ///
          ///
          ///      [matrix]
          ///
          ///       A string representing a matrix coefficient. One of:
          ///
          ///        ["rgb"]
          ///        ["bt709"]
          ///        ["bt470bg"]
          ///        ["smpte170m"]
          ///
          ///
          ///
          ///
          VideoDecoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  /// Enqueues a control message to decode a given chunk of video.
  ///
  /// VideoDecoder.decode(chunk)
  ///
  Object decode(

          ///  An [EncodedVideoChunk] object representing a chunk of encoded
          /// video.
          ///
          EncodedVideoChunk chunk) =>
      js_util.callMethod(this, 'decode', [chunk]);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// VideoDecoder.flush()
  ///
  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// VideoDecoder.reset()
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  /// Ends all pending work and releases system resources.
  ///
  /// VideoDecoder.close()
  ///
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
      {VideoFrameOutputCallback output, WebCodecsErrorCallback error});
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
  external AudioEncoder(AudioEncoderInit init);
}

extension PropsAudioEncoder on AudioEncoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for encoding.
  ///
  CodecState get state => js_util.getProperty(this, 'state');

  /// An integer representing the number of encode queue requests.
  ///
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');

  ///  Enqueues a control message to configure the audio encoder for
  /// encoding chunks.
  ///
  /// AudioEncoder.configure(config)
  ///
  Object configure(

          /// A dictionary object containing the following members:
          ///
          ///    [codec]
          ///
          ///     A [string] containing a valid codec string.
          ///
          ///    [sampleRate]Optional
          ///
          ///      An integer representing the number of frame samples per
          /// second.
          ///
          ///    [numberOfChannels]Optional
          ///
          ///     An integer representing the number of audio channels.
          ///
          ///    [bitrate]Optional
          ///
          ///     An integer representing the bitrate.
          ///
          ///
          ///
          AudioEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  ///  Enqueues a control message to encode a given [AudioData]
  /// objects.
  ///
  /// AudioEncoder.encode(data);
  ///
  Object encode(

          /// An [AudioData] object.
          ///
          AudioData data) =>
      js_util.callMethod(this, 'encode', [data]);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// AudioEncoder.flush()
  ///
  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// AudioEncoder.reset()
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  /// Ends all pending work and releases system resources.
  ///
  /// AudioEncoder.close()
  ///
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
      {EncodedAudioChunkOutputCallback output, WebCodecsErrorCallback error});
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
      {AudioDecoderConfig decoderConfig});
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
  external VideoEncoder(VideoEncoderInit init);
}

extension PropsVideoEncoder on VideoEncoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for encoding.
  ///
  CodecState get state => js_util.getProperty(this, 'state');

  /// An integer representing the number of encode queue requests.
  ///
  int get encodeQueueSize => js_util.getProperty(this, 'encodeQueueSize');

  ///  Enqueues a control message to configure the video encoder for
  /// encoding chunks.
  ///
  /// VideoEncoder.configure(config)
  ///
  Object configure(

          /// A dictionary object containing the following members:
          ///
          ///    [codec]
          ///
          ///     A [string] containing a valid codec string.
          ///
          ///    [width]Optional
          ///
          ///      An integer representing the width of each output
          /// [EncodedVideoChunk] in pixels, before any ratio adjustments.
          ///
          ///    [height]Optional
          ///
          ///      An integer representing the height of each output
          /// [EncodedVideoChunk] in pixels, before any ratio adjustments.
          ///
          ///    [displayWidth]Optional
          ///
          ///      An integer representing the intended display width of each
          /// output [EncodedVideoChunk] in pixels when displayed.
          ///
          ///    [displayHeight]Optional
          ///
          ///      An integer representing the vertical dimension of each
          /// output [EncodedVideoChunk] in pixels when displayed.
          ///
          ///    [hardwareAcceleration]
          ///
          ///      A hint that configures the hardware acceleration method of
          /// this codec. One of:
          ///
          ///      ["no-preference"]
          ///      ["prefer-hardware"]
          ///      ["prefer-software"]
          ///
          ///
          ///    [bitrate]
          ///
          ///      An integer containing the average bitrate of the encoded
          /// video in units of bits per second.
          ///
          ///    [framerate]
          ///
          ///      An integer containing the expected frame rate in frames per
          /// second.
          ///
          ///    [alpha]
          ///
          ///      A string indicating whether the alpha component of the
          /// [VideoFrame] inputs should be kept or discarded prior to
          /// encoding. One of:
          ///
          ///      ["discard"] (default)
          ///      ["keep"]
          ///
          ///
          ///    [scalabilityMode]
          ///
          ///      A [string] containing an encoding scalability mode
          /// identifier as defined in WebRTC.
          ///
          ///    [bitrateMode]
          ///
          ///     A string containing a bitrate mode. One of:
          ///
          ///      ["constant"]
          ///      ["variable"] (default)
          ///
          ///
          ///    [latencyMode]
          ///
          ///      A string containing a value that configures the latency
          /// behavior of this codec. One of:
          ///
          ///      ["quality"] (default)
          ///      ["realtime"]
          ///
          ///
          ///
          ///
          VideoEncoderConfig config) =>
      js_util.callMethod(this, 'configure', [config]);

  /// Enqueues a control message to encode a given [VideoFrame].
  ///
  /// VideoEncoder.encode(frame);
  /// VideoEncoder.encode(frame, options);
  ///
  Object encode(

          /// A [VideoFrame] object.
          ///
          VideoFrame frame,
          [

          /// An object containing the following member:
          ///
          ///    [keyFrame]
          ///
          ///      A [bool], defaulting to [false] giving the user agent
          /// flexibility to decide if this frame should be encoded as a key
          /// frame. If [true] this indicates that the given frame must be
          /// encoded as a key frame.
          ///
          ///
          ///
          VideoEncoderEncodeOptions? options]) =>
      js_util.callMethod(this, 'encode', [frame, options]);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// VideoEncoder.flush()
  ///
  Future<Object> flush() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'flush', []));

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// VideoEncoder.reset()
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  /// Ends all pending work and releases system resources.
  ///
  /// VideoEncoder.close()
  ///
  Object close() => js_util.callMethod(this, 'close', []);

  static Future<bool> isConfigSupported(VideoEncoderConfig config) =>
      js_util.promiseToFuture(
          js_util.callMethod(VideoEncoder, 'isConfigSupported', [config]));
}

@anonymous
@JS()
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit(
      {EncodedVideoChunkOutputCallback output, WebCodecsErrorCallback error});
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
      {VideoDecoderConfig decoderConfig, int temporalLayerId});
}

extension PropsEncodedVideoChunkMetadata on EncodedVideoChunkMetadata {
  VideoDecoderConfig get decoderConfig =>
      js_util.getProperty(this, 'decoderConfig');
  set decoderConfig(VideoDecoderConfig newValue) {
    js_util.setProperty(this, 'decoderConfig', newValue);
  }

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
      {bool supported, AudioDecoderConfig config});
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
      {bool supported, VideoDecoderConfig config});
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
      {bool supported, AudioEncoderConfig config});
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
      {bool supported, VideoEncoderConfig config});
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
      {String codec,
      int sampleRate,
      int numberOfChannels,
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
  external factory VideoDecoderConfig(
      {String codec,
      dynamic description,
      int codedWidth,
      int codedHeight,
      int displayAspectWidth,
      int displayAspectHeight,
      HardwareAcceleration hardwareAcceleration = HardwareAcceleration.allow});
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

  HardwareAcceleration get hardwareAcceleration =>
      js_util.getProperty(this, 'hardwareAcceleration');
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig(
      {String codec, int sampleRate, int numberOfChannels, int bitrate});
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
  external factory VideoEncoderConfig(
      {String codec,
      int bitrate,
      int width,
      int height,
      int displayWidth,
      int displayHeight,
      HardwareAcceleration hardwareAcceleration = HardwareAcceleration.allow,
      String? scalabilityMode,
      BitrateMode? bitrateMode = BitrateMode.variable});
}

extension PropsVideoEncoderConfig on VideoEncoderConfig {
  String get codec => js_util.getProperty(this, 'codec');
  set codec(String newValue) {
    js_util.setProperty(this, 'codec', newValue);
  }

  int get bitrate => js_util.getProperty(this, 'bitrate');
  set bitrate(int newValue) {
    js_util.setProperty(this, 'bitrate', newValue);
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

  HardwareAcceleration get hardwareAcceleration =>
      js_util.getProperty(this, 'hardwareAcceleration');
  set hardwareAcceleration(HardwareAcceleration newValue) {
    js_util.setProperty(this, 'hardwareAcceleration', newValue);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }

  BitrateMode get bitrateMode => js_util.getProperty(this, 'bitrateMode');
  set bitrateMode(BitrateMode newValue) {
    js_util.setProperty(this, 'bitrateMode', newValue);
  }
}

enum HardwareAcceleration { allow, deny, require }

@anonymous
@JS()
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions({bool keyFrame = false});
}

extension PropsVideoEncoderEncodeOptions on VideoEncoderEncodeOptions {
  bool get keyFrame => js_util.getProperty(this, 'keyFrame');
  set keyFrame(bool newValue) {
    js_util.setProperty(this, 'keyFrame', newValue);
  }
}

enum CodecState { unconfigured, configured, closed }

///  The interface of the WebCodecs API represents a chunk of encoded
/// audio data.
@JS()
@staticInterop
class EncodedAudioChunk {
  external EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension PropsEncodedAudioChunk on EncodedAudioChunk {
  ///  Returns a string indicating whether this chunk of data is a key
  /// chunk.
  ///
  EncodedAudioChunkType get type => js_util.getProperty(this, 'type');

  ///  Returns an integer representing the timestamp of the audio in
  /// microseconds.
  ///
  int get timestamp => js_util.getProperty(this, 'timestamp');

  ///  Returns an integer representing the duration of the audio in
  /// microseconds.
  ///
  int get duration => js_util.getProperty(this, 'duration');

  ///  Returns an integer representing the length of the audio in
  /// bytes.
  ///
  int get byteLength => js_util.getProperty(this, 'byteLength');

  /// Copies the encoded audio data.
  ///
  /// EncodedAudioChunk.copyTo(destination)
  ///
  Object copyTo(

          /// A [BufferSource] that the data can be copied to.
          ///
          dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit(
      {EncodedAudioChunkType type, int timestamp, dynamic data});
}

extension PropsEncodedAudioChunkInit on EncodedAudioChunkInit {
  EncodedAudioChunkType get type => js_util.getProperty(this, 'type');
  set type(EncodedAudioChunkType newValue) {
    js_util.setProperty(this, 'type', newValue);
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

enum EncodedAudioChunkType { key, delta }

///  The interface of the WebCodecs API represents a chunk of encoded
/// video data.
@JS()
@staticInterop
class EncodedVideoChunk {
  external EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension PropsEncodedVideoChunk on EncodedVideoChunk {
  ///  Returns a string indicating whether this chunk of data is a key
  /// chunk.
  ///
  EncodedVideoChunkType get type => js_util.getProperty(this, 'type');

  ///  Returns an integer representing the timestamp of the video in
  /// microseconds.
  ///
  int get timestamp => js_util.getProperty(this, 'timestamp');

  ///  Returns an integer representing the duration of the video in
  /// microseconds.
  ///
  int? get duration => js_util.getProperty(this, 'duration');

  ///  Returns an integer representing the length of the video in
  /// bytes.
  ///
  int get byteLength => js_util.getProperty(this, 'byteLength');

  /// Copies the encoded video data.
  ///
  /// EncodedVideoChunk.copyTo(destination)
  ///
  Object copyTo(

          /// A [BufferSource] that the data can be copied to.
          ///
          dynamic destination) =>
      js_util.callMethod(this, 'copyTo', [destination]);
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit(
      {EncodedVideoChunkType type, int timestamp, int duration, dynamic data});
}

extension PropsEncodedVideoChunkInit on EncodedVideoChunkInit {
  EncodedVideoChunkType get type => js_util.getProperty(this, 'type');
  set type(EncodedVideoChunkType newValue) {
    js_util.setProperty(this, 'type', newValue);
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

/// The interface of the [WebCodecs API] represents an audio sample.
@JS()
@staticInterop
class AudioData {
  external AudioData(AudioDataInit init);
}

extension PropsAudioData on AudioData {
  /// Returns the sample format of the audio.
  ///
  AudioSampleFormat get format => js_util.getProperty(this, 'format');

  /// Returns the sample rate of the audio in Hz.
  ///
  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  int get numberOfFrames => js_util.getProperty(this, 'numberOfFrames');
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');

  /// Returns the duration of the audio in microseconds.
  ///
  int get duration => js_util.getProperty(this, 'duration');

  /// Returns the timestamp of the audio in microseconds.
  ///
  int get timestamp => js_util.getProperty(this, 'timestamp');

  ///  Returns the number of bytes required to hold the sample as
  /// filtered by options passed into the method.
  ///
  /// AudioData.allocationSize(options)
  ///
  int allocationSize(

          /// An object containing the following:
          ///
          ///    [planeIndex]
          ///
          ///     The index of the plane to return the size of.
          ///
          ///    [frameOffset]Optional
          ///
          ///      An integer giving an offset into the plane data indicating
          /// which plane to begin from. Defaults to [0].
          ///
          ///    [frameCount]Optional
          ///
          ///      An integer giving the number of frames to return the size
          /// of. If omitted then all frames in the plane will be used,
          /// beginning with the frame specified in [frameOffset].
          ///
          ///
          ///
          AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'allocationSize', [options]);

  ///  Copies the samples from the specified plane of the [AudioData]
  /// object to the destination.
  ///
  /// AudioData.copyTo(destination, options)
  ///
  Object copyTo(

          /// The [buffer] to copy the plane to.
          ///
          dynamic destination,

          /// An object containing the following:
          ///
          ///    [planeIndex]
          ///
          ///     The index of the plane to copy from.
          ///
          ///    [frameOffset]Optional
          ///
          ///      An integer giving an offset into the plane data indicating
          /// which plane to begin copying from. Defaults to [0].
          ///
          ///    [frameCount]Optional
          ///
          ///      An integer giving the number of frames to copy. If omitted
          /// then all frames in the plane will be copied, beginning with the
          /// frame specified in [frameOffset].
          ///
          ///
          ///
          AudioDataCopyToOptions options) =>
      js_util.callMethod(this, 'copyTo', [destination, options]);

  ///  Creates a new [AudioData] object with reference to the same
  /// media resource as the original.
  ///
  /// AudioData.clone()
  ///
  AudioData clone() => js_util.callMethod(this, 'clone', []);

  ///  Clears all states and releases the reference to the media
  /// resource.
  ///
  /// AudioData.close()
  ///
  Object close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class AudioDataInit {
  external factory AudioDataInit(
      {AudioSampleFormat format,
      double sampleRate,
      int numberOfFrames,
      int numberOfChannels,
      int timestamp,
      dynamic data});
}

extension PropsAudioDataInit on AudioDataInit {
  AudioSampleFormat get format => js_util.getProperty(this, 'format');
  set format(AudioSampleFormat newValue) {
    js_util.setProperty(this, 'format', newValue);
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
  external factory AudioDataCopyToOptions(
      {int planeIndex, int frameOffset = 0, int? frameCount});
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
}

enum AudioSampleFormat { u8, s16, s24, s32, flt, u8p, s16p, s24p, s32p, fltp }

///  The interface of the Web Codecs API represents a frame of a
/// video.
@JS()
@staticInterop
class VideoFrame {
  external VideoFrame(dynamic image, [VideoFrameInit? init]);
}

extension PropsVideoFrame on VideoFrame {
  /// Returns the pixel format of the [VideoFrame].
  ///
  PixelFormat get format => js_util.getProperty(this, 'format');

  ///  Returns the width of the [VideoFrame] in pixels, potentially
  /// including non-visible padding, and prior to considering potential
  /// ratio adjustments.
  ///
  int get codedWidth => js_util.getProperty(this, 'codedWidth');

  ///  Returns the height of the [VideoFrame] in pixels, potentially
  /// including non-visible padding, and prior to considering potential
  /// ratio adjustments.
  ///
  int get codedHeight => js_util.getProperty(this, 'codedHeight');

  ///  Returns a [DOMRectReadOnly] with the width and height matching
  /// [codedWidth] and [codedHeight].
  ///
  VideoFrameRect get codedRect => js_util.getProperty(this, 'codedRect');

  ///  Returns a [DOMRectReadOnly] describing the visible rectangle of
  /// pixels for this [VideoFrame].
  ///
  VideoFrameRect get visibleRect => js_util.getProperty(this, 'visibleRect');

  ///  Returns the width of the [VideoFrame] when displayed after
  /// applying aspect ratio adjustments.
  ///
  int get displayWidth => js_util.getProperty(this, 'displayWidth');

  ///  Returns the height of the [VideoFrame] when displayed after
  /// applying aspect ratio adjustments.
  ///
  int get displayHeight => js_util.getProperty(this, 'displayHeight');

  ///  Returns an integer indicating the duration of the video in
  /// microseconds.
  ///
  int? get duration => js_util.getProperty(this, 'duration');

  ///  Returns an integer indicating the timestamp of the video in
  /// microseconds.
  ///
  int? get timestamp => js_util.getProperty(this, 'timestamp');

  ///  Returns the number of bytes required to hold the [VideoFrame] as
  /// filtered by options passed into the method.
  ///
  /// VideoFrame.allocationSize();
  /// VideoFrame.allocationSize(options);
  ///
  int allocationSize(
          [

          /// An object containing the following:
          ///
          ///    [rect]Optional
          ///
          ///      The rectangle of pixels to copy from the [VideoFrame]. If
          /// unspecified the [visibleRect] will be used. This is in the format
          /// of a dictionary object containing:
          ///
          ///      [x]: The x-coordinate.
          ///      [y]: The y-coordinate.
          ///      [width]: The width of the frame.
          ///      [height]: The height of the frame.
          ///
          ///
          ///    [layout]Optional
          ///
          ///      A list containing the following values for each plane in the
          /// [VideoFrame]. Planes may not overlap. If unspecified the planes
          /// will be tightly packed:
          ///
          ///       [offset]: An integer representing the offset in bytes where
          /// the given plane begins.
          ///       [stride]: An integer representing the number of bytes,
          /// including padding, used by each row of the plane.
          ///
          ///
          ///
          ///
          VideoFrameCopyToOptions? options]) =>
      js_util.callMethod(this, 'allocationSize', [options]);

  Future<Iterable<PlaneLayout>> copyTo(dynamic destination,
          [VideoFrameCopyToOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'copyTo', [destination, options]));

  ///  Creates a new [VideoFrame] object with reference to the same
  /// media resource as the original.
  ///
  /// VideoFrame.clone()
  ///
  VideoFrame clone() => js_util.callMethod(this, 'clone', []);

  ///  Clears all states and releases the reference to the media
  /// resource.
  ///
  /// VideoFrame.close()
  ///
  Object close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit({int duration, int timestamp});
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
}

@anonymous
@JS()
@staticInterop
class VideoFramePlaneInit {
  external factory VideoFramePlaneInit(
      {PixelFormat format,
      int codedWidth,
      int codedHeight,
      VideoFrameRect visibleRect,
      int displayWidth,
      int displayHeight,
      int duration,
      int timestamp});
}

extension PropsVideoFramePlaneInit on VideoFramePlaneInit {
  PixelFormat get format => js_util.getProperty(this, 'format');
  set format(PixelFormat newValue) {
    js_util.setProperty(this, 'format', newValue);
  }

  int get codedWidth => js_util.getProperty(this, 'codedWidth');
  set codedWidth(int newValue) {
    js_util.setProperty(this, 'codedWidth', newValue);
  }

  int get codedHeight => js_util.getProperty(this, 'codedHeight');
  set codedHeight(int newValue) {
    js_util.setProperty(this, 'codedHeight', newValue);
  }

  VideoFrameRect get visibleRect => js_util.getProperty(this, 'visibleRect');
  set visibleRect(VideoFrameRect newValue) {
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

  int get duration => js_util.getProperty(this, 'duration');
  set duration(int newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }
}

@JS()
@staticInterop
class Plane {
  external Plane();
}

extension PropsPlane on Plane {
  int get stride => js_util.getProperty(this, 'stride');
  int get rows => js_util.getProperty(this, 'rows');
  int get length => js_util.getProperty(this, 'length');
  Object readInto(dynamic dst) => js_util.callMethod(this, 'readInto', [dst]);
}

@anonymous
@JS()
@staticInterop
class PlaneInit {
  external factory PlaneInit({dynamic data, int stride, int offset = 0});
}

extension PropsPlaneInit on PlaneInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  int get stride => js_util.getProperty(this, 'stride');
  set stride(int newValue) {
    js_util.setProperty(this, 'stride', newValue);
  }

  int get offset => js_util.getProperty(this, 'offset');
  set offset(int newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }
}

enum PixelFormat { i420 }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebCodecs API provides a way to unpack and
/// decode encoded image data.
@JS()
@staticInterop
class ImageDecoder {
  external ImageDecoder(ImageDecoderInit init);
}

extension PropsImageDecoder on ImageDecoder {
  ///  Returns a [bool] indicating whether the data is completely
  /// buffered.
  ///
  bool get complete => js_util.getProperty(this, 'complete');

  /// Returns a [Future] that resolves once [complete] is true.
  ///
  Future<Object> get completed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'completed'));

  ///  Returns an [ImageTrackList] object listing the available tracks
  /// and providing a method for selecting a track to decode.
  ///
  ImageTrackList get tracks => js_util.getProperty(this, 'tracks');

  /// Enqueues a control message to decode the frame of an image.
  ///
  /// ImageDecoder.decode(options)
  ///
  Future<ImageDecodeResult> decode(
          [

          /// An object containing the following members:
          ///
          ///    [frameIndex]Optional
          ///
          ///      An integer representing the index of the frame to decode.
          /// Defaults to [0] (the first frame).
          ///
          ///    [completeFramesOnly]Optional
          ///
          ///      A [bool] defaulting to [true]. When [false] indicates that
          /// for progressive images the decoder may output an image with
          /// reduced detail.
          ///
          ///
          ///
          ImageDecodeOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', [options]));

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// ImageDecoder.reset()
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  /// Ends all pending work and releases system resources.
  ///
  /// ImageDecoder.close()
  ///
  Object close() => js_util.callMethod(this, 'close', []);

  static Future<bool> isTypeSupported(String type) => js_util.promiseToFuture(
      js_util.callMethod(ImageDecoder, 'isTypeSupported', [type]));
}

@anonymous
@JS()
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit(
      {String type,
      dynamic data,
      PremultiplyAlpha premultiplyAlpha = PremultiplyAlpha.valueDefault,
      ColorSpaceConversion? colorSpaceConversion =
          ColorSpaceConversion.valueDefault,
      int? desiredWidth,
      int? desiredHeight,
      bool? preferAnimation});
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
      js_util.getProperty(this, 'premultiplyAlpha');
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue);
  }

  ColorSpaceConversion get colorSpaceConversion =>
      js_util.getProperty(this, 'colorSpaceConversion');
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue);
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
      {int frameIndex = 0, bool? completeFramesOnly = true});
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
  external factory ImageDecodeResult({VideoFrame image, bool complete});
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
  external ImageTrackList();
}

extension PropsImageTrackList on ImageTrackList {
  ///  Returns a [promise] that resolves once the [ImageTrackList] has
  /// been populated with [tracks].
  ///
  Future<Object> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));

  ///  Returns an integer indicating the length of the
  /// [ImageTrackList].
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns an integer indicating the index of the [selectedTrack].
  ///
  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  ImageTrack? get selectedTrack => js_util.getProperty(this, 'selectedTrack');
}

///  The interface of the WebCodecs API represents an individual
/// image track.
@JS()
@staticInterop
class ImageTrack implements EventTarget {
  external ImageTrack();
}

extension PropsImageTrack on ImageTrack {
  ///  Returns a [bool] indicating whether the track is animated and
  /// therefore has multiple frames.
  ///
  bool get animated => js_util.getProperty(this, 'animated');

  /// Returns an integer indicating the number of frames in the track.
  ///
  int get frameCount => js_util.getProperty(this, 'frameCount');

  ///  Returns an integer indicating the number of times that the
  /// animation repeats.
  ///
  /* double | NaN */ dynamic get repetitionCount =>
      js_util.getProperty(this, 'repetitionCount');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  ///  Returns a [bool] indicating whether the track is selected for
  /// decoding.
  ///
  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions(
      {VideoFrameRect rect, Iterable<PlaneLayout> layout});
}

extension PropsVideoFrameCopyToOptions on VideoFrameCopyToOptions {
  VideoFrameRect get rect => js_util.getProperty(this, 'rect');
  set rect(VideoFrameRect newValue) {
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
class VideoFrameRect {
  external factory VideoFrameRect({int left, int top, int width, int height});
}

extension PropsVideoFrameRect on VideoFrameRect {
  int get left => js_util.getProperty(this, 'left');
  set left(int newValue) {
    js_util.setProperty(this, 'left', newValue);
  }

  int get top => js_util.getProperty(this, 'top');
  set top(int newValue) {
    js_util.setProperty(this, 'top', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PlaneLayout {
  external factory PlaneLayout({int offset, int stride});
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
