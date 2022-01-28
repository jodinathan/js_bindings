/// WebCodecs
///
/// https://w3c.github.io/webcodecs/
@JS('window')
@staticInterop
library webcodecs;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: mediastream_recording
html
streams
dom */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the WebCodecs API decodes chunks of audio.
@JS()
@staticInterop
class AudioDecoder {
  external factory AudioDecoder(AudioDecoderInit init);
}

extension PropsAudioDecoder on AudioDecoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for decoding.
  ///
  external CodecState get state;

  /// An integer representing the number of decode queue requests.
  ///
  external int get decodeQueueSize;

  ///  Enqueues a control message to configure the audio decoder for
  /// decoding chunks.
  ///
  /// AudioDecoder.configure(config)
  ///
  external Object configure(AudioDecoderConfig config);

  /// Enqueues a control message to decode a given chunk of audio.
  ///
  /// AudioDecoder.decode(chunk)
  ///
  external Object decode(EncodedAudioChunk chunk);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// AudioDecoder.flush()
  ///
  external Promise<Object> flush();

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// AudioDecoder.reset()
  ///
  external Object reset();

  /// Ends all pending work and releases system resources.
  ///
  /// AudioDecoder.close()
  ///
  external Object close();
  external static Promise<AudioDecoderSupport> isConfigSupported(
      AudioDecoderConfig config);
}

@anonymous
@JS()
@staticInterop
class AudioDecoderInit {
  external factory AudioDecoderInit(
      {AudioDataOutputCallback output, WebCodecsErrorCallback error});
}

extension PropsAudioDecoderInit on AudioDecoderInit {
  external AudioDataOutputCallback get output;
  external set output(AudioDataOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the WebCodecs API decodes chunks of video.
@JS()
@staticInterop
class VideoDecoder {
  external factory VideoDecoder(VideoDecoderInit init);
}

extension PropsVideoDecoder on VideoDecoder {
  ///  Indicates whether the underlying codec is configured for
  /// decoding.
  ///
  external CodecState get state;

  /// An integer representing the number of decode queue requests.
  ///
  external int get decodeQueueSize;

  ///  Enqueues a control message to configure the video decoder for
  /// decoding chunks.
  ///
  /// VideoDecoder.configure(config)
  ///
  external Object configure(VideoDecoderConfig config);

  /// Enqueues a control message to decode a given chunk of video.
  ///
  /// VideoDecoder.decode(chunk)
  ///
  external Object decode(EncodedVideoChunk chunk);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// VideoDecoder.flush()
  ///
  external Promise<Object> flush();

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// VideoDecoder.reset()
  ///
  external Object reset();

  /// Ends all pending work and releases system resources.
  ///
  /// VideoDecoder.close()
  ///
  external Object close();
  external static Promise<VideoDecoderSupport> isConfigSupported(
      VideoDecoderConfig config);
}

@anonymous
@JS()
@staticInterop
class VideoDecoderInit {
  external factory VideoDecoderInit(
      {VideoFrameOutputCallback output, WebCodecsErrorCallback error});
}

extension PropsVideoDecoderInit on VideoDecoderInit {
  external VideoFrameOutputCallback get output;
  external set output(VideoFrameOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);
}

/// The interface of the WebCodecs API encodes [AudioData] objects.
@JS()
@staticInterop
class AudioEncoder {
  external factory AudioEncoder(AudioEncoderInit init);
}

extension PropsAudioEncoder on AudioEncoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for encoding.
  ///
  external CodecState get state;

  /// An integer representing the number of encode queue requests.
  ///
  external int get encodeQueueSize;

  ///  Enqueues a control message to configure the audio encoder for
  /// encoding chunks.
  ///
  /// AudioEncoder.configure(config)
  ///
  external Object configure(AudioEncoderConfig config);

  ///  Enqueues a control message to encode a given [AudioData]
  /// objects.
  ///
  /// AudioEncoder.encode(data);
  ///
  external Object encode(AudioData data);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// AudioEncoder.flush()
  ///
  external Promise<Object> flush();

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// AudioEncoder.reset()
  ///
  external Object reset();

  /// Ends all pending work and releases system resources.
  ///
  /// AudioEncoder.close()
  ///
  external Object close();
  external static Promise<AudioEncoderSupport> isConfigSupported(
      AudioEncoderConfig config);
}

@anonymous
@JS()
@staticInterop
class AudioEncoderInit {
  external factory AudioEncoderInit(
      {EncodedAudioChunkOutputCallback output, WebCodecsErrorCallback error});
}

extension PropsAudioEncoderInit on AudioEncoderInit {
  external EncodedAudioChunkOutputCallback get output;
  external set output(EncodedAudioChunkOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata(
      {AudioDecoderConfig decoderConfig});
}

extension PropsEncodedAudioChunkMetadata on EncodedAudioChunkMetadata {
  external AudioDecoderConfig get decoderConfig;
  external set decoderConfig(AudioDecoderConfig newValue);
}

/// The interface of the WebCodecs API encodes [VideoFrame] objects.
@JS()
@staticInterop
class VideoEncoder {
  external factory VideoEncoder(VideoEncoderInit init);
}

extension PropsVideoEncoder on VideoEncoder {
  ///  Represents the state of the underlying codec and whether it is
  /// configured for encoding.
  ///
  external CodecState get state;

  /// An integer representing the number of encode queue requests.
  ///
  external int get encodeQueueSize;

  ///  Enqueues a control message to configure the video encoder for
  /// encoding chunks.
  ///
  /// VideoEncoder.configure(config)
  ///
  external Object configure(VideoEncoderConfig config);

  /// Enqueues a control message to encode a given [VideoFrame].
  ///
  /// VideoEncoder.encode(frame);
  /// VideoEncoder.encode(frame, options);
  ///
  external Object encode(VideoFrame frame,
      [VideoEncoderEncodeOptions? options]);

  ///  Returns a promise that resolves once all pending messages in the
  /// queue have been completed.
  ///
  /// VideoEncoder.flush()
  ///
  external Promise<Object> flush();

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// VideoEncoder.reset()
  ///
  external Object reset();

  /// Ends all pending work and releases system resources.
  ///
  /// VideoEncoder.close()
  ///
  external Object close();
  external static Promise<bool> isConfigSupported(VideoEncoderConfig config);
}

@anonymous
@JS()
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit(
      {EncodedVideoChunkOutputCallback output, WebCodecsErrorCallback error});
}

extension PropsVideoEncoderInit on VideoEncoderInit {
  external EncodedVideoChunkOutputCallback get output;
  external set output(EncodedVideoChunkOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata(
      {VideoDecoderConfig decoderConfig, int temporalLayerId});
}

extension PropsEncodedVideoChunkMetadata on EncodedVideoChunkMetadata {
  external VideoDecoderConfig get decoderConfig;
  external set decoderConfig(VideoDecoderConfig newValue);
  external int get temporalLayerId;
  external set temporalLayerId(int newValue);
}

@anonymous
@JS()
@staticInterop
class AudioDecoderSupport {
  external factory AudioDecoderSupport(
      {bool supported, AudioDecoderConfig config});
}

extension PropsAudioDecoderSupport on AudioDecoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external AudioDecoderConfig get config;
  external set config(AudioDecoderConfig newValue);
}

@anonymous
@JS()
@staticInterop
class VideoDecoderSupport {
  external factory VideoDecoderSupport(
      {bool supported, VideoDecoderConfig config});
}

extension PropsVideoDecoderSupport on VideoDecoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external VideoDecoderConfig get config;
  external set config(VideoDecoderConfig newValue);
}

@anonymous
@JS()
@staticInterop
class AudioEncoderSupport {
  external factory AudioEncoderSupport(
      {bool supported, AudioEncoderConfig config});
}

extension PropsAudioEncoderSupport on AudioEncoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external AudioEncoderConfig get config;
  external set config(AudioEncoderConfig newValue);
}

@anonymous
@JS()
@staticInterop
class VideoEncoderSupport {
  external factory VideoEncoderSupport(
      {bool supported, VideoEncoderConfig config});
}

extension PropsVideoEncoderSupport on VideoEncoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external VideoEncoderConfig get config;
  external set config(VideoEncoderConfig newValue);
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
  external String get codec;
  external set codec(String newValue);
  external int get sampleRate;
  external set sampleRate(int newValue);
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external dynamic get description;
  external set description(dynamic newValue);
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
  external String get codec;
  external set codec(String newValue);
  external dynamic get description;
  external set description(dynamic newValue);
  external int get codedWidth;
  external set codedWidth(int newValue);
  external int get codedHeight;
  external set codedHeight(int newValue);
  external int get displayAspectWidth;
  external set displayAspectWidth(int newValue);
  external int get displayAspectHeight;
  external set displayAspectHeight(int newValue);
  external HardwareAcceleration get hardwareAcceleration;
  external set hardwareAcceleration(HardwareAcceleration newValue);
}

@anonymous
@JS()
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig(
      {String codec, int sampleRate, int numberOfChannels, int bitrate});
}

extension PropsAudioEncoderConfig on AudioEncoderConfig {
  external String get codec;
  external set codec(String newValue);
  external int get sampleRate;
  external set sampleRate(int newValue);
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external int get bitrate;
  external set bitrate(int newValue);
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
      String scalabilityMode,
      BitrateMode bitrateMode = BitrateMode.variable});
}

extension PropsVideoEncoderConfig on VideoEncoderConfig {
  external String get codec;
  external set codec(String newValue);
  external int get bitrate;
  external set bitrate(int newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get displayWidth;
  external set displayWidth(int newValue);
  external int get displayHeight;
  external set displayHeight(int newValue);
  external HardwareAcceleration get hardwareAcceleration;
  external set hardwareAcceleration(HardwareAcceleration newValue);
  external String get scalabilityMode;
  external set scalabilityMode(String newValue);
  external BitrateMode get bitrateMode;
  external set bitrateMode(BitrateMode newValue);
}

enum HardwareAcceleration { allow, deny, require }

@anonymous
@JS()
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions({bool keyFrame = false});
}

extension PropsVideoEncoderEncodeOptions on VideoEncoderEncodeOptions {
  external bool get keyFrame;
  external set keyFrame(bool newValue);
}

enum CodecState { unconfigured, configured, closed }

///  The interface of the WebCodecs API represents a chunk of encoded
/// audio data.
@JS()
@staticInterop
class EncodedAudioChunk {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension PropsEncodedAudioChunk on EncodedAudioChunk {
  ///  Returns a string indicating whether this chunk of data is a key
  /// chunk.
  ///
  external EncodedAudioChunkType get type;

  ///  Returns an integer representing the timestamp of the audio in
  /// microseconds.
  ///
  external int get timestamp;

  ///  Returns an integer representing the duration of the audio in
  /// microseconds.
  ///
  external int get duration;

  ///  Returns an integer representing the length of the audio in
  /// bytes.
  ///
  external int get byteLength;

  /// Copies the encoded audio data.
  ///
  /// EncodedAudioChunk.copyTo(destination)
  ///
  external Object copyTo(dynamic destination);
}

@anonymous
@JS()
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit(
      {EncodedAudioChunkType type, int timestamp, dynamic data});
}

extension PropsEncodedAudioChunkInit on EncodedAudioChunkInit {
  external EncodedAudioChunkType get type;
  external set type(EncodedAudioChunkType newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

enum EncodedAudioChunkType { key, delta }

///  The interface of the WebCodecs API represents a chunk of encoded
/// video data.
@JS()
@staticInterop
class EncodedVideoChunk {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension PropsEncodedVideoChunk on EncodedVideoChunk {
  ///  Returns a string indicating whether this chunk of data is a key
  /// chunk.
  ///
  external EncodedVideoChunkType get type;

  ///  Returns an integer representing the timestamp of the video in
  /// microseconds.
  ///
  external int get timestamp;

  ///  Returns an integer representing the duration of the video in
  /// microseconds.
  ///
  external int? get duration;

  ///  Returns an integer representing the length of the video in
  /// bytes.
  ///
  external int get byteLength;

  /// Copies the encoded video data.
  ///
  /// EncodedVideoChunk.copyTo(destination)
  ///
  external Object copyTo(dynamic destination);
}

@anonymous
@JS()
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit(
      {EncodedVideoChunkType type, int timestamp, int duration, dynamic data});
}

extension PropsEncodedVideoChunkInit on EncodedVideoChunkInit {
  external EncodedVideoChunkType get type;
  external set type(EncodedVideoChunkType newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external int get duration;
  external set duration(int newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

enum EncodedVideoChunkType { key, delta }

/// The interface of the [WebCodecs API] represents an audio sample.
@JS()
@staticInterop
class AudioData {
  external factory AudioData(AudioDataInit init);
}

extension PropsAudioData on AudioData {
  /// Returns the sample format of the audio.
  ///
  external AudioSampleFormat get format;

  /// Returns the sample rate of the audio in Hz.
  ///
  external double get sampleRate;
  external int get numberOfFrames;
  external int get numberOfChannels;

  /// Returns the duration of the audio in microseconds.
  ///
  external int get duration;

  /// Returns the timestamp of the audio in microseconds.
  ///
  external int get timestamp;

  ///  Returns the number of bytes required to hold the sample as
  /// filtered by options passed into the method.
  ///
  /// AudioData.allocationSize(options)
  ///
  external int allocationSize(AudioDataCopyToOptions options);

  ///  Copies the samples from the specified plane of the [AudioData]
  /// object to the destination.
  ///
  /// AudioData.copyTo(destination, options)
  ///
  external Object copyTo(dynamic destination, AudioDataCopyToOptions options);

  ///  Creates a new [AudioData] object with reference to the same
  /// media resource as the original.
  ///
  /// AudioData.clone()
  ///
  external AudioData clone();

  ///  Clears all states and releases the reference to the media
  /// resource.
  ///
  /// AudioData.close()
  ///
  external Object close();
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
  external AudioSampleFormat get format;
  external set format(AudioSampleFormat newValue);
  external double get sampleRate;
  external set sampleRate(double newValue);
  external int get numberOfFrames;
  external set numberOfFrames(int newValue);
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions(
      {int planeIndex, int frameOffset = 0, int frameCount});
}

extension PropsAudioDataCopyToOptions on AudioDataCopyToOptions {
  external int get planeIndex;
  external set planeIndex(int newValue);
  external int get frameOffset;
  external set frameOffset(int newValue);
  external int get frameCount;
  external set frameCount(int newValue);
}

enum AudioSampleFormat { u8, s16, s24, s32, flt, u8p, s16p, s24p, s32p, fltp }

///  The interface of the Web Codecs API represents a frame of a
/// video.
@JS()
@staticInterop
class VideoFrame {
  external factory VideoFrame(dynamic image, [VideoFrameInit? init]);
}

extension PropsVideoFrame on VideoFrame {
  /// Returns the pixel format of the [VideoFrame].
  ///
  external PixelFormat get format;

  ///  Returns the width of the [VideoFrame] in pixels, potentially
  /// including non-visible padding, and prior to considering potential
  /// ratio adjustments.
  ///
  external int get codedWidth;

  ///  Returns the height of the [VideoFrame] in pixels, potentially
  /// including non-visible padding, and prior to considering potential
  /// ratio adjustments.
  ///
  external int get codedHeight;

  ///  Returns a [DOMRectReadOnly] with the width and height matching
  /// [codedWidth] and [codedHeight].
  ///
  external VideoFrameRect get codedRect;

  ///  Returns a [DOMRectReadOnly] describing the visible rectangle of
  /// pixels for this [VideoFrame].
  ///
  external VideoFrameRect get visibleRect;

  ///  Returns the width of the [VideoFrame] when displayed after
  /// applying aspect ratio adjustments.
  ///
  external int get displayWidth;

  ///  Returns the height of the [VideoFrame] when displayed after
  /// applying aspect ratio adjustments.
  ///
  external int get displayHeight;

  ///  Returns an integer indicating the duration of the video in
  /// microseconds.
  ///
  external int? get duration;

  ///  Returns an integer indicating the timestamp of the video in
  /// microseconds.
  ///
  external int? get timestamp;

  ///  Returns the number of bytes required to hold the [VideoFrame] as
  /// filtered by options passed into the method.
  ///
  /// VideoFrame.allocationSize();
  /// VideoFrame.allocationSize(options);
  ///
  external int allocationSize([VideoFrameCopyToOptions? options]);
  external Iterable<Promise<PlaneLayout>> copyTo(dynamic destination,
      [VideoFrameCopyToOptions? options]);

  ///  Creates a new [VideoFrame] object with reference to the same
  /// media resource as the original.
  ///
  /// VideoFrame.clone()
  ///
  external VideoFrame clone();

  ///  Clears all states and releases the reference to the media
  /// resource.
  ///
  /// VideoFrame.close()
  ///
  external Object close();
}

@anonymous
@JS()
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit({int duration, int timestamp});
}

extension PropsVideoFrameInit on VideoFrameInit {
  external int get duration;
  external set duration(int newValue);
  external int get timestamp;
  external set timestamp(int newValue);
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
  external PixelFormat get format;
  external set format(PixelFormat newValue);
  external int get codedWidth;
  external set codedWidth(int newValue);
  external int get codedHeight;
  external set codedHeight(int newValue);
  external VideoFrameRect get visibleRect;
  external set visibleRect(VideoFrameRect newValue);
  external int get displayWidth;
  external set displayWidth(int newValue);
  external int get displayHeight;
  external set displayHeight(int newValue);
  external int get duration;
  external set duration(int newValue);
  external int get timestamp;
  external set timestamp(int newValue);
}

@JS()
@staticInterop
class Plane {
  external factory Plane();
}

extension PropsPlane on Plane {
  external int get stride;
  external int get rows;
  external int get length;
  external Object readInto(dynamic dst);
}

@anonymous
@JS()
@staticInterop
class PlaneInit {
  external factory PlaneInit({dynamic data, int stride, int offset = 0});
}

extension PropsPlaneInit on PlaneInit {
  external dynamic get data;
  external set data(dynamic newValue);
  external int get stride;
  external set stride(int newValue);
  external int get offset;
  external set offset(int newValue);
}

enum PixelFormat { i420 }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebCodecs API provides a way to unpack and
/// decode encoded image data.
@JS()
@staticInterop
class ImageDecoder {
  external factory ImageDecoder(ImageDecoderInit init);
}

extension PropsImageDecoder on ImageDecoder {
  ///  Returns a [boolean] indicating whether the data is completely
  /// buffered.
  ///
  external bool get complete;

  /// Returns a [Promise] that resolves once [complete] is true.
  ///
  external Promise<Object> get completed;

  ///  Returns an [ImageTrackList] object listing the available tracks
  /// and providing a method for selecting a track to decode.
  ///
  external ImageTrackList get tracks;

  /// Enqueues a control message to decode the frame of an image.
  ///
  /// ImageDecoder.decode(options)
  ///
  external Promise<ImageDecodeResult> decode([ImageDecodeOptions? options]);

  ///  Resets all states including configuration, control messages in
  /// the control message queue, and all pending callbacks.
  ///
  /// ImageDecoder.reset()
  ///
  external Object reset();

  /// Ends all pending work and releases system resources.
  ///
  /// ImageDecoder.close()
  ///
  external Object close();
  external static Promise<bool> isTypeSupported(String type);
}

@anonymous
@JS()
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit(
      {String type,
      dynamic data,
      PremultiplyAlpha premultiplyAlpha = PremultiplyAlpha.valueDefault,
      ColorSpaceConversion colorSpaceConversion =
          ColorSpaceConversion.valueDefault,
      int desiredWidth,
      int desiredHeight,
      bool preferAnimation});
}

extension PropsImageDecoderInit on ImageDecoderInit {
  external String get type;
  external set type(String newValue);
  external dynamic get data;
  external set data(dynamic newValue);
  external PremultiplyAlpha get premultiplyAlpha;
  external set premultiplyAlpha(PremultiplyAlpha newValue);
  external ColorSpaceConversion get colorSpaceConversion;
  external set colorSpaceConversion(ColorSpaceConversion newValue);
  external int get desiredWidth;
  external set desiredWidth(int newValue);
  external int get desiredHeight;
  external set desiredHeight(int newValue);
  external bool get preferAnimation;
  external set preferAnimation(bool newValue);
}

@anonymous
@JS()
@staticInterop
class ImageDecodeOptions {
  external factory ImageDecodeOptions(
      {int frameIndex = 0, bool completeFramesOnly = true});
}

extension PropsImageDecodeOptions on ImageDecodeOptions {
  external int get frameIndex;
  external set frameIndex(int newValue);
  external bool get completeFramesOnly;
  external set completeFramesOnly(bool newValue);
}

@anonymous
@JS()
@staticInterop
class ImageDecodeResult {
  external factory ImageDecodeResult({VideoFrame image, bool complete});
}

extension PropsImageDecodeResult on ImageDecodeResult {
  external VideoFrame get image;
  external set image(VideoFrame newValue);
  external bool get complete;
  external set complete(bool newValue);
}

///  The interface of the WebCodecs API represents a list of image
/// tracks.
@JS()
@staticInterop
class ImageTrackList {
  external factory ImageTrackList();
}

extension PropsImageTrackList on ImageTrackList {
  ///  Returns a [promise] that resolves once the [ImageTrackList] has
  /// been populated with [tracks].
  ///
  external Promise<Object> get ready;

  ///  Returns an integer indicating the length of the
  /// [ImageTrackList].
  ///
  external int get length;

  /// Returns an integer indicating the index of the [selectedTrack].
  ///
  external int get selectedIndex;
  external ImageTrack? get selectedTrack;
}

///  The interface of the WebCodecs API represents an individual
/// image track.
@JS()
@staticInterop
class ImageTrack implements EventTarget {
  external factory ImageTrack();
}

extension PropsImageTrack on ImageTrack {
  ///  Returns a [boolean] indicating whether the track is animated and
  /// therefore has multiple frames.
  ///
  external bool get animated;

  /// Returns an integer indicating the number of frames in the track.
  ///
  external int get frameCount;

  ///  Returns an integer indicating the number of times that the
  /// animation repeats.
  ///
  external /* double | NaN */ dynamic get repetitionCount;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  ///  Returns a [boolean] indicating whether the track is selected for
  /// decoding.
  ///
  external bool get selected;
  external set selected(bool newValue);
}

@anonymous
@JS()
@staticInterop
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions(
      {VideoFrameRect rect, Iterable<PlaneLayout> layout});
}

extension PropsVideoFrameCopyToOptions on VideoFrameCopyToOptions {
  external VideoFrameRect get rect;
  external set rect(VideoFrameRect newValue);
  external Iterable<PlaneLayout> get layout;
  external set layout(Iterable<PlaneLayout> newValue);
}

@anonymous
@JS()
@staticInterop
class VideoFrameRect {
  external factory VideoFrameRect({int left, int top, int width, int height});
}

extension PropsVideoFrameRect on VideoFrameRect {
  external int get left;
  external set left(int newValue);
  external int get top;
  external set top(int newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
}

@anonymous
@JS()
@staticInterop
class PlaneLayout {
  external factory PlaneLayout({int offset, int stride});
}

extension PropsPlaneLayout on PlaneLayout {
  external int get offset;
  external set offset(int newValue);
  external int get stride;
  external set stride(int newValue);
}
