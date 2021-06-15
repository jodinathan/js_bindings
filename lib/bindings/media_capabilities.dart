/// Media Capabilities
///
/// https://w3c.github.io/media-capabilities/
@JS('window')
library media_capabilities;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'encrypted_media.dart';
import 'html.dart';

///
///
///  The [MediaCapabilities] dictionary of the Media Capabilities API
/// describes how media and audio files must be configured, or
/// defined, to be passed as a parameter of the
/// [MediaCapabilities.encodingInfo()] and
/// [MediaCapabilities.encodingInfo()] methods.
@experimental
@anonymous
@JS()
class MediaConfiguration {
  external VideoConfiguration get video;
  external set video(VideoConfiguration newValue);
  external AudioConfiguration get audio;
  external set audio(AudioConfiguration newValue);

  external factory MediaConfiguration(
      {VideoConfiguration video, AudioConfiguration audio});
}

///  The dictionary of the Media Capabilities API is used to define
/// the type of media being tested when calling
/// [MediaCapabilities.decodingInfo()] to query whether a specific
/// media configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
class MediaDecodingConfiguration // null -> {} -> MediaConfiguration
    with
        MediaConfiguration {
  external MediaDecodingType get type;
  external set type(MediaDecodingType newValue);
  external MediaCapabilitiesKeySystemConfiguration get keySystemConfiguration;
  external set keySystemConfiguration(
      MediaCapabilitiesKeySystemConfiguration newValue);

  external factory MediaDecodingConfiguration(
      {MediaDecodingType type,
      MediaCapabilitiesKeySystemConfiguration keySystemConfiguration});
}

///  The dictionary of the Media Capabilities API is used to define
/// the type of media being tested when calling
/// [MediaCapabilities.encodingInfo()] to query whether a specific
/// media configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
class MediaEncodingConfiguration // null -> {} -> MediaConfiguration
    with
        MediaConfiguration {
  external MediaEncodingType get type;
  external set type(MediaEncodingType newValue);

  external factory MediaEncodingConfiguration({MediaEncodingType type});
}

@JS()
enum MediaDecodingType {
  file,
  @JS('media-source')
  mediaSource,
  webrtc
}

@JS()
enum MediaEncodingType { record, webrtc }

///
///
///  The dictionary of the Media Capabilities API is used to define
/// the video file being tested when calling the [MediaCapabilities]
/// methods [encodingInfo()] and [decodingInfo()] to determine
/// whether or not the described video configuration is supported,
/// and how smoothly and how smoooth and power-efficient it can be
/// handled.
@experimental
@anonymous
@JS()
class VideoConfiguration {
  external String get contentType;
  external set contentType(String newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get bitrate;
  external set bitrate(int newValue);
  external double get framerate;
  external set framerate(double newValue);
  external bool get hasAlphaChannel;
  external set hasAlphaChannel(bool newValue);
  external HdrMetadataType get hdrMetadataType;
  external set hdrMetadataType(HdrMetadataType newValue);
  external ColorGamut get colorGamut;
  external set colorGamut(ColorGamut newValue);
  external TransferFunction get transferFunction;
  external set transferFunction(TransferFunction newValue);
  external String get scalabilityMode;
  external set scalabilityMode(String newValue);

  external factory VideoConfiguration(
      {String contentType,
      int width,
      int height,
      int bitrate,
      double framerate,
      bool hasAlphaChannel,
      HdrMetadataType hdrMetadataType,
      ColorGamut colorGamut,
      TransferFunction transferFunction,
      String scalabilityMode});
}

@JS()
enum HdrMetadataType {
  smpteSt2086,
  @JS('smpteSt2094-10')
  smpteSt209410,
  @JS('smpteSt2094-40')
  smpteSt209440
}

@JS()
enum ColorGamut { srgb, p3, rec2020 }

@JS()
enum TransferFunction { srgb, pq, hlg }

///
///
///  The dictionary of the Media Capabilities API defines the audio
/// file being tested when calling [MediaCapabilities.encodingInfo()]
/// or [MediaCapabilities.decodingInfo()] to query whether a specific
/// audio configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
class AudioConfiguration {
  external String get contentType;
  external set contentType(String newValue);
  external String get channels;
  external set channels(String newValue);
  external int get bitrate;
  external set bitrate(int newValue);
  external int get samplerate;
  external set samplerate(int newValue);
  external bool get spatialRendering;
  external set spatialRendering(bool newValue);

  external factory AudioConfiguration(
      {String contentType,
      String channels,
      int bitrate,
      int samplerate,
      bool spatialRendering});
}

@anonymous
@JS()
class MediaCapabilitiesKeySystemConfiguration {
  external String get keySystem;
  external set keySystem(String newValue);
  external String get initDataType;
  external set initDataType(String newValue);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set distinctiveIdentifier(MediaKeysRequirement newValue);
  external MediaKeysRequirement get persistentState;
  external set persistentState(MediaKeysRequirement newValue);
  external Iterable<String> get sessionTypes;
  external set sessionTypes(Iterable<String> newValue);
  external KeySystemTrackConfiguration get audio;
  external set audio(KeySystemTrackConfiguration newValue);
  external KeySystemTrackConfiguration get video;
  external set video(KeySystemTrackConfiguration newValue);

  external factory MediaCapabilitiesKeySystemConfiguration(
      {String keySystem,
      String initDataType = '',
      MediaKeysRequirement distinctiveIdentifier =
          MediaKeysRequirement.optional,
      MediaKeysRequirement persistentState = MediaKeysRequirement.optional,
      Iterable<String> sessionTypes,
      KeySystemTrackConfiguration audio,
      KeySystemTrackConfiguration video});
}

@anonymous
@JS()
class KeySystemTrackConfiguration {
  external String get robustness;
  external set robustness(String newValue);
  external String? get encryptionScheme;
  external set encryptionScheme(String? newValue);

  external factory KeySystemTrackConfiguration(
      {String robustness = '', String? encryptionScheme});
}

///
///
///  The [MediaCapabilitiesInfo] interface of the Media Capabilities
/// API is made available when the promise returned by the
/// [MediaCapabilities.encodingInfo()] or
/// [MediaCapabilities.decodingInfo()] methods of the
/// [MediaCapabilities] interface fulfills, providing information as
/// to whether the media type is supported, and whether encoding or
/// decoding such media would be smooth and power efficient.
@experimental
@anonymous
@JS()
class MediaCapabilitiesInfo {
  external bool get supported;
  external set supported(bool newValue);
  external bool get smooth;
  external set smooth(bool newValue);
  external bool get powerEfficient;
  external set powerEfficient(bool newValue);

  external factory MediaCapabilitiesInfo(
      {bool supported, bool smooth, bool powerEfficient});
}

@anonymous
@JS()
class MediaCapabilitiesDecodingInfo // null -> {} -> MediaCapabilitiesInfo
    with
        MediaCapabilitiesInfo {
  external MediaKeySystemAccess get keySystemAccess;
  external set keySystemAccess(MediaKeySystemAccess newValue);
  external MediaDecodingConfiguration get configuration;
  external set configuration(MediaDecodingConfiguration newValue);

  external factory MediaCapabilitiesDecodingInfo(
      {MediaKeySystemAccess keySystemAccess,
      MediaDecodingConfiguration configuration});
}

@anonymous
@JS()
class MediaCapabilitiesEncodingInfo // null -> {} -> MediaCapabilitiesInfo
    with
        MediaCapabilitiesInfo {
  external MediaEncodingConfiguration get configuration;
  external set configuration(MediaEncodingConfiguration newValue);

  external factory MediaCapabilitiesEncodingInfo(
      {MediaEncodingConfiguration configuration});
}

///
///
///  The [MediaCapabilities] interface of the Media Capabilities API
/// provides information about the decoding abilities of the device,
/// system and browser. The API can be used to query the browser
/// about the decoding abilities of the device based on codecs,
/// profile, resolution, and bitrates. The information can be used to
/// serve optimal media streams to the user and determine if playback
/// should be smooth and power efficient.
///
///  The information is accessed through the [mediaCapabilities]
/// property of the [Navigator] interface.
@experimental
@JS()
class MediaCapabilities {
  ///  When passed a valid media configuration, it returns a promise
  /// with information as to whether the media type is supported, and
  /// whether decoding such media would be smooth and power efficient.
  /// mediaCapabilities.decodingInfo(MediaDecodingConfiguration)
  /// //Create media configuration to be tested
  /// const mediaConfig = {
  ///   type : 'file', // or 'media-source'
  ///   audio : {
  ///     contentType : "audio/ogg", // valid content type
  ///     channels : 2,   // audio channels used by the track
  ///     bitrate : 132700, // number of bits used to encode 1s of audio
  ///     samplerate : 5200 // number of audio samples making up that 1s.
  ///    },
  /// };
  ///
  /// // check support and performance
  /// navigator.mediaCapabilities.decodingInfo(mediaConfig).then(result => {
  ///   console.log('This configuration is ' +
  ///     (result.supported ? '' : 'not ') + 'supported, ' +
  ///     (result.smooth ? '' : 'not ') + 'smooth, and ' +
  ///     (result.powerEfficient ? '' : 'not ') + 'power efficient.')
  /// });
  external Promise<MediaCapabilitiesDecodingInfo> decodingInfo(
      MediaDecodingConfiguration configuration);

  ///  When passed a valid media configuration, it returns a promise
  /// with information as to whether the media type is supported, and
  /// whether encoding such media would be smooth and power efficient.
  /// mediaCapabilities.encodingInfo(mediaEncodingConfiguration)
  /// //Create media configuration to be tested
  /// const mediaConfig = {
  ///   type : 'record', // or 'transmission'
  ///   video : {
  ///     contentType : "video/webm;codecs=vp8.0", // valid content type
  ///     width : 1920,   // width of the video
  ///     height : 1080,  // height of the video
  ///     bitrate : 120000, // number of bits used to encode 1s of video
  ///     framerate : 48  // number of frames making up that 1s.
  ///    }
  /// };
  ///
  /// // check support and performance
  /// navigator.mediaCapabilities.encodingInfo(mediaConfig).then(result => {
  ///   console.log('This configuration is ' +
  ///     (result.supported ? '' : 'not ') + 'supported, ' +
  ///     (result.smooth ? '' : 'not ') + 'smooth, and ' +
  ///     (result.powerEfficient ? '' : 'not ') + 'power efficient.')
  /// });
  external Promise<MediaCapabilitiesEncodingInfo> encodingInfo(
      MediaEncodingConfiguration configuration);

  external factory MediaCapabilities();
}
