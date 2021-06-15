/// WebCodecs
///
/// https://w3c.github.io/webcodecs/
@JS('window')
library webcodecs;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'mediastream_recording.dart';
import 'html.dart';
import 'streams.dart';
import 'dom.dart';

@JS()
class AudioDecoder {
  external factory AudioDecoder(AudioDecoderInit init);
  external CodecState get state;
  external int get decodeQueueSize;
  external Object configure(AudioDecoderConfig config);
  external Object decode(EncodedAudioChunk chunk);
  external Promise<Object> flush();
  external Object reset();
  external Object close();
  external static Promise<AudioDecoderSupport> isConfigSupported(
      AudioDecoderConfig config);
}

@anonymous
@JS()
class AudioDecoderInit {
  external AudioDataOutputCallback get output;
  external set output(AudioDataOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);

  external factory AudioDecoderInit(
      {AudioDataOutputCallback output, WebCodecsErrorCallback error});
}

@JS()
class VideoDecoder {
  external factory VideoDecoder(VideoDecoderInit init);
  external CodecState get state;
  external int get decodeQueueSize;
  external Object configure(VideoDecoderConfig config);
  external Object decode(EncodedVideoChunk chunk);
  external Promise<Object> flush();
  external Object reset();
  external Object close();
  external static Promise<VideoDecoderSupport> isConfigSupported(
      VideoDecoderConfig config);
}

@anonymous
@JS()
class VideoDecoderInit {
  external VideoFrameOutputCallback get output;
  external set output(VideoFrameOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);

  external factory VideoDecoderInit(
      {VideoFrameOutputCallback output, WebCodecsErrorCallback error});
}

@JS()
class AudioEncoder {
  external factory AudioEncoder(AudioEncoderInit init);
  external CodecState get state;
  external int get encodeQueueSize;
  external Object configure(AudioEncoderConfig config);
  external Object encode(AudioData data);
  external Promise<Object> flush();
  external Object reset();
  external Object close();
  external static Promise<AudioEncoderSupport> isConfigSupported(
      AudioEncoderConfig config);
}

@anonymous
@JS()
class AudioEncoderInit {
  external EncodedAudioChunkOutputCallback get output;
  external set output(EncodedAudioChunkOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);

  external factory AudioEncoderInit(
      {EncodedAudioChunkOutputCallback output, WebCodecsErrorCallback error});
}

@anonymous
@JS()
class EncodedAudioChunkMetadata {
  external AudioDecoderConfig get decoderConfig;
  external set decoderConfig(AudioDecoderConfig newValue);

  external factory EncodedAudioChunkMetadata(
      {AudioDecoderConfig decoderConfig});
}

@JS()
class VideoEncoder {
  external factory VideoEncoder(VideoEncoderInit init);
  external CodecState get state;
  external int get encodeQueueSize;
  external Object configure(VideoEncoderConfig config);
  external Object encode(VideoFrame frame,
      [VideoEncoderEncodeOptions? options]);
  external Promise<Object> flush();
  external Object reset();
  external Object close();
  external static Promise<bool> isConfigSupported(VideoEncoderConfig config);
}

@anonymous
@JS()
class VideoEncoderInit {
  external EncodedVideoChunkOutputCallback get output;
  external set output(EncodedVideoChunkOutputCallback newValue);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback newValue);

  external factory VideoEncoderInit(
      {EncodedVideoChunkOutputCallback output, WebCodecsErrorCallback error});
}

@anonymous
@JS()
class EncodedVideoChunkMetadata {
  external VideoDecoderConfig get decoderConfig;
  external set decoderConfig(VideoDecoderConfig newValue);
  external int get temporalLayerId;
  external set temporalLayerId(int newValue);

  external factory EncodedVideoChunkMetadata(
      {VideoDecoderConfig decoderConfig, int temporalLayerId});
}

@anonymous
@JS()
class AudioDecoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external AudioDecoderConfig get config;
  external set config(AudioDecoderConfig newValue);

  external factory AudioDecoderSupport(
      {bool supported, AudioDecoderConfig config});
}

@anonymous
@JS()
class VideoDecoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external VideoDecoderConfig get config;
  external set config(VideoDecoderConfig newValue);

  external factory VideoDecoderSupport(
      {bool supported, VideoDecoderConfig config});
}

@anonymous
@JS()
class AudioEncoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external AudioEncoderConfig get config;
  external set config(AudioEncoderConfig newValue);

  external factory AudioEncoderSupport(
      {bool supported, AudioEncoderConfig config});
}

@anonymous
@JS()
class VideoEncoderSupport {
  external bool get supported;
  external set supported(bool newValue);
  external VideoEncoderConfig get config;
  external set config(VideoEncoderConfig newValue);

  external factory VideoEncoderSupport(
      {bool supported, VideoEncoderConfig config});
}

@anonymous
@JS()
class AudioDecoderConfig {
  external String get codec;
  external set codec(String newValue);
  external int get sampleRate;
  external set sampleRate(int newValue);
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external dynamic get description;
  external set description(dynamic newValue);

  external factory AudioDecoderConfig(
      {String codec,
      int sampleRate,
      int numberOfChannels,
      dynamic description});
}

@anonymous
@JS()
class VideoDecoderConfig {
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

  external factory VideoDecoderConfig(
      {String codec,
      dynamic description,
      int codedWidth,
      int codedHeight,
      int displayAspectWidth,
      int displayAspectHeight,
      HardwareAcceleration hardwareAcceleration = HardwareAcceleration.allow});
}

@anonymous
@JS()
class AudioEncoderConfig {
  external String get codec;
  external set codec(String newValue);
  external int get sampleRate;
  external set sampleRate(int newValue);
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external int get bitrate;
  external set bitrate(int newValue);

  external factory AudioEncoderConfig(
      {String codec, int sampleRate, int numberOfChannels, int bitrate});
}

@anonymous
@JS()
class VideoEncoderConfig {
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

@JS()
enum HardwareAcceleration { allow, deny, require }

@anonymous
@JS()
class VideoEncoderEncodeOptions {
  external bool get keyFrame;
  external set keyFrame(bool newValue);

  external factory VideoEncoderEncodeOptions({bool keyFrame = false});
}

@JS()
enum CodecState { unconfigured, configured, closed }

@JS()
class EncodedAudioChunk {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);
  external EncodedAudioChunkType get type;
  external int get timestamp;
  external int get duration;
  external int get byteLength;
  external Object copyTo(dynamic destination);
}

@anonymous
@JS()
class EncodedAudioChunkInit {
  external EncodedAudioChunkType get type;
  external set type(EncodedAudioChunkType newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory EncodedAudioChunkInit(
      {EncodedAudioChunkType type, int timestamp, dynamic data});
}

@JS()
enum EncodedAudioChunkType { key, delta }

@JS()
class EncodedVideoChunk {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);
  external EncodedVideoChunkType get type;
  external int get timestamp;
  external int? get duration;
  external int get byteLength;
  external Object copyTo(dynamic destination);
}

@anonymous
@JS()
class EncodedVideoChunkInit {
  external EncodedVideoChunkType get type;
  external set type(EncodedVideoChunkType newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external int get duration;
  external set duration(int newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory EncodedVideoChunkInit(
      {EncodedVideoChunkType type, int timestamp, int duration, dynamic data});
}

@JS()
enum EncodedVideoChunkType { key, delta }

@JS()
class AudioData {
  external factory AudioData(AudioDataInit init);
  external AudioSampleFormat get format;
  external double get sampleRate;
  external int get numberOfFrames;
  external int get numberOfChannels;
  external int get duration;
  external int get timestamp;
  external int allocationSize(AudioDataCopyToOptions options);
  external Object copyTo(dynamic destination, AudioDataCopyToOptions options);
  external AudioData clone();
  external Object close();
}

@anonymous
@JS()
class AudioDataInit {
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

  external factory AudioDataInit(
      {AudioSampleFormat format,
      double sampleRate,
      int numberOfFrames,
      int numberOfChannels,
      int timestamp,
      dynamic data});
}

@anonymous
@JS()
class AudioDataCopyToOptions {
  external int get planeIndex;
  external set planeIndex(int newValue);
  external int get frameOffset;
  external set frameOffset(int newValue);
  external int get frameCount;
  external set frameCount(int newValue);

  external factory AudioDataCopyToOptions(
      {int planeIndex, int frameOffset = 0, int frameCount});
}

@JS()
enum AudioSampleFormat {
  @JS('U8')
  u8,
  @JS('S16')
  s16,
  @JS('S24')
  s24,
  @JS('S32')
  s32,
  @JS('FLT')
  flt,
  @JS('U8P')
  u8p,
  @JS('S16P')
  s16p,
  @JS('S24P')
  s24p,
  @JS('S32P')
  s32p,
  @JS('FLTP')
  fltp
}

@JS()
class VideoFrame {
  external factory VideoFrame(dynamic image, [VideoFrameInit? init]);
  external PixelFormat get format;
  external int get codedWidth;
  external int get codedHeight;
  external VideoFrameRect get codedRect;
  external VideoFrameRect get visibleRect;
  external int get displayWidth;
  external int get displayHeight;
  external int? get duration;
  external int? get timestamp;
  external int allocationSize([VideoFrameCopyToOptions? options]);
  external Iterable<Promise<PlaneLayout>> copyTo(dynamic destination,
      [VideoFrameCopyToOptions? options]);
  external VideoFrame clone();
  external Object close();
}

@anonymous
@JS()
class VideoFrameInit {
  external int get duration;
  external set duration(int newValue);
  external int get timestamp;
  external set timestamp(int newValue);

  external factory VideoFrameInit({int duration, int timestamp});
}

@anonymous
@JS()
class VideoFramePlaneInit {
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

@JS()
class Plane {
  external int get stride;
  external int get rows;
  external int get length;
  external Object readInto(dynamic dst);

  external factory Plane();
}

@anonymous
@JS()
class PlaneInit {
  external dynamic get data;
  external set data(dynamic newValue);
  external int get stride;
  external set stride(int newValue);
  external int get offset;
  external set offset(int newValue);

  external factory PlaneInit({dynamic data, int stride, int offset = 0});
}

@JS()
enum PixelFormat {
  @JS('I420')
  i420
}

@JS()
class ImageDecoder {
  external factory ImageDecoder(ImageDecoderInit init);
  external bool get complete;
  external Promise<Object> get completed;
  external ImageTrackList get tracks;
  external Promise<ImageDecodeResult> decode([ImageDecodeOptions? options]);
  external Object reset();
  external Object close();
  external static Promise<bool> isTypeSupported(String type);
}

@anonymous
@JS()
class ImageDecoderInit {
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

@anonymous
@JS()
class ImageDecodeOptions {
  external int get frameIndex;
  external set frameIndex(int newValue);
  external bool get completeFramesOnly;
  external set completeFramesOnly(bool newValue);

  external factory ImageDecodeOptions(
      {int frameIndex = 0, bool completeFramesOnly = true});
}

@anonymous
@JS()
class ImageDecodeResult {
  external VideoFrame get image;
  external set image(VideoFrame newValue);
  external bool get complete;
  external set complete(bool newValue);

  external factory ImageDecodeResult({VideoFrame image, bool complete});
}

@JS()
class ImageTrackList {
  external Promise<Object> get ready;
  external int get length;
  external int get selectedIndex;
  external ImageTrack? get selectedTrack;

  external factory ImageTrackList();
}

@JS()
class ImageTrack // null -> {} -> EventTarget
    with
        EventTarget {
  external bool get animated;
  external int get frameCount;
  external /* double | NaN */ dynamic get repetitionCount;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external bool get selected;
  external set selected(bool newValue);

  external factory ImageTrack();
}

@anonymous
@JS()
class VideoFrameCopyToOptions {
  external VideoFrameRect get rect;
  external set rect(VideoFrameRect newValue);
  external Iterable<PlaneLayout> get layout;
  external set layout(Iterable<PlaneLayout> newValue);

  external factory VideoFrameCopyToOptions(
      {VideoFrameRect rect, Iterable<PlaneLayout> layout});
}

@anonymous
@JS()
class VideoFrameRect {
  external int get left;
  external set left(int newValue);
  external int get top;
  external set top(int newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);

  external factory VideoFrameRect({int left, int top, int width, int height});
}

@anonymous
@JS()
class PlaneLayout {
  external int get offset;
  external set offset(int newValue);
  external int get stride;
  external set stride(int newValue);

  external factory PlaneLayout({int offset, int stride});
}
