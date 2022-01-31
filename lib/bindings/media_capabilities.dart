/// Media Capabilities
///
/// https://w3c.github.io/media-capabilities/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library media_capabilities;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The [MediaCapabilities] dictionary of the Media Capabilities API
/// describes how media and audio files must be configured, or
/// defined, to be passed as a parameter of the
/// [MediaCapabilities.encodingInfo()] and
/// [MediaCapabilities.encodingInfo()] methods.
@experimental
@anonymous
@JS()
@staticInterop
class MediaConfiguration {
  external factory MediaConfiguration(
      {VideoConfiguration video, AudioConfiguration audio});
}

extension PropsMediaConfiguration on MediaConfiguration {
  VideoConfiguration get video => js_util.getProperty(this, 'video');
  set video(VideoConfiguration newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  AudioConfiguration get audio => js_util.getProperty(this, 'audio');
  set audio(AudioConfiguration newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }
}

///  The dictionary of the Media Capabilities API is used to define
/// the type of media being tested when calling
/// [MediaCapabilities.decodingInfo()] to query whether a specific
/// media configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
@staticInterop
class MediaDecodingConfiguration implements MediaConfiguration {
  external factory MediaDecodingConfiguration(
      {MediaDecodingType type,
      MediaCapabilitiesKeySystemConfiguration keySystemConfiguration});
}

extension PropsMediaDecodingConfiguration on MediaDecodingConfiguration {
  MediaDecodingType get type => js_util.getProperty(this, 'type');
  set type(MediaDecodingType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  MediaCapabilitiesKeySystemConfiguration get keySystemConfiguration =>
      js_util.getProperty(this, 'keySystemConfiguration');
  set keySystemConfiguration(MediaCapabilitiesKeySystemConfiguration newValue) {
    js_util.setProperty(this, 'keySystemConfiguration', newValue);
  }
}

///  The dictionary of the Media Capabilities API is used to define
/// the type of media being tested when calling
/// [MediaCapabilities.encodingInfo()] to query whether a specific
/// media configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
@staticInterop
class MediaEncodingConfiguration implements MediaConfiguration {
  external factory MediaEncodingConfiguration({MediaEncodingType type});
}

extension PropsMediaEncodingConfiguration on MediaEncodingConfiguration {
  MediaEncodingType get type => js_util.getProperty(this, 'type');
  set type(MediaEncodingType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

enum MediaDecodingType { file, mediaSource, webrtc }

enum MediaEncodingType { record, webrtc }

///  The dictionary of the Media Capabilities API is used to define
/// the video file being tested when calling the [MediaCapabilities]
/// methods [encodingInfo()] and [decodingInfo()] to determine
/// whether or not the described video configuration is supported,
/// and how smoothly and how smooth and power-efficient it can be
/// handled.
@experimental
@anonymous
@JS()
@staticInterop
class VideoConfiguration {
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

extension PropsVideoConfiguration on VideoConfiguration {
  String get contentType => js_util.getProperty(this, 'contentType');
  set contentType(String newValue) {
    js_util.setProperty(this, 'contentType', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get bitrate => js_util.getProperty(this, 'bitrate');
  set bitrate(int newValue) {
    js_util.setProperty(this, 'bitrate', newValue);
  }

  double get framerate => js_util.getProperty(this, 'framerate');
  set framerate(double newValue) {
    js_util.setProperty(this, 'framerate', newValue);
  }

  bool get hasAlphaChannel => js_util.getProperty(this, 'hasAlphaChannel');
  set hasAlphaChannel(bool newValue) {
    js_util.setProperty(this, 'hasAlphaChannel', newValue);
  }

  HdrMetadataType get hdrMetadataType =>
      js_util.getProperty(this, 'hdrMetadataType');
  set hdrMetadataType(HdrMetadataType newValue) {
    js_util.setProperty(this, 'hdrMetadataType', newValue);
  }

  ColorGamut get colorGamut => js_util.getProperty(this, 'colorGamut');
  set colorGamut(ColorGamut newValue) {
    js_util.setProperty(this, 'colorGamut', newValue);
  }

  TransferFunction get transferFunction =>
      js_util.getProperty(this, 'transferFunction');
  set transferFunction(TransferFunction newValue) {
    js_util.setProperty(this, 'transferFunction', newValue);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }
}

enum HdrMetadataType { smpteSt2086, smpteSt209410, smpteSt209440 }

enum ColorGamut { srgb, p3, rec2020 }

enum TransferFunction { srgb, pq, hlg }

///  The dictionary of the Media Capabilities API defines the audio
/// file being tested when calling [MediaCapabilities.encodingInfo()]
/// or [MediaCapabilities.decodingInfo()] to query whether a specific
/// audio configuration is supported, smooth, and/or power efficient.
@experimental
@anonymous
@JS()
@staticInterop
class AudioConfiguration {
  external factory AudioConfiguration(
      {String contentType,
      String channels,
      int bitrate,
      int samplerate,
      bool spatialRendering});
}

extension PropsAudioConfiguration on AudioConfiguration {
  String get contentType => js_util.getProperty(this, 'contentType');
  set contentType(String newValue) {
    js_util.setProperty(this, 'contentType', newValue);
  }

  String get channels => js_util.getProperty(this, 'channels');
  set channels(String newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  int get bitrate => js_util.getProperty(this, 'bitrate');
  set bitrate(int newValue) {
    js_util.setProperty(this, 'bitrate', newValue);
  }

  int get samplerate => js_util.getProperty(this, 'samplerate');
  set samplerate(int newValue) {
    js_util.setProperty(this, 'samplerate', newValue);
  }

  bool get spatialRendering => js_util.getProperty(this, 'spatialRendering');
  set spatialRendering(bool newValue) {
    js_util.setProperty(this, 'spatialRendering', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration(
      {String keySystem,
      String initDataType = '',
      MediaKeysRequirement? distinctiveIdentifier =
          MediaKeysRequirement.optional,
      MediaKeysRequirement? persistentState = MediaKeysRequirement.optional,
      Iterable<String>? sessionTypes,
      KeySystemTrackConfiguration? audio,
      KeySystemTrackConfiguration? video});
}

extension PropsMediaCapabilitiesKeySystemConfiguration
    on MediaCapabilitiesKeySystemConfiguration {
  String get keySystem => js_util.getProperty(this, 'keySystem');
  set keySystem(String newValue) {
    js_util.setProperty(this, 'keySystem', newValue);
  }

  String get initDataType => js_util.getProperty(this, 'initDataType');
  set initDataType(String newValue) {
    js_util.setProperty(this, 'initDataType', newValue);
  }

  MediaKeysRequirement get distinctiveIdentifier =>
      js_util.getProperty(this, 'distinctiveIdentifier');
  set distinctiveIdentifier(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'distinctiveIdentifier', newValue);
  }

  MediaKeysRequirement get persistentState =>
      js_util.getProperty(this, 'persistentState');
  set persistentState(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'persistentState', newValue);
  }

  Iterable<String> get sessionTypes =>
      js_util.getProperty(this, 'sessionTypes');
  set sessionTypes(Iterable<String> newValue) {
    js_util.setProperty(this, 'sessionTypes', newValue);
  }

  KeySystemTrackConfiguration get audio => js_util.getProperty(this, 'audio');
  set audio(KeySystemTrackConfiguration newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }

  KeySystemTrackConfiguration get video => js_util.getProperty(this, 'video');
  set video(KeySystemTrackConfiguration newValue) {
    js_util.setProperty(this, 'video', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class KeySystemTrackConfiguration {
  external factory KeySystemTrackConfiguration(
      {String robustness = '', String? encryptionScheme});
}

extension PropsKeySystemTrackConfiguration on KeySystemTrackConfiguration {
  String get robustness => js_util.getProperty(this, 'robustness');
  set robustness(String newValue) {
    js_util.setProperty(this, 'robustness', newValue);
  }

  String? get encryptionScheme => js_util.getProperty(this, 'encryptionScheme');
  set encryptionScheme(String? newValue) {
    js_util.setProperty(this, 'encryptionScheme', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo(
      {bool supported, bool smooth, bool powerEfficient});
}

extension PropsMediaCapabilitiesInfo on MediaCapabilitiesInfo {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  bool get smooth => js_util.getProperty(this, 'smooth');
  set smooth(bool newValue) {
    js_util.setProperty(this, 'smooth', newValue);
  }

  bool get powerEfficient => js_util.getProperty(this, 'powerEfficient');
  set powerEfficient(bool newValue) {
    js_util.setProperty(this, 'powerEfficient', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaCapabilitiesDecodingInfo implements MediaCapabilitiesInfo {
  external factory MediaCapabilitiesDecodingInfo(
      {MediaKeySystemAccess keySystemAccess,
      MediaDecodingConfiguration configuration});
}

extension PropsMediaCapabilitiesDecodingInfo on MediaCapabilitiesDecodingInfo {
  MediaKeySystemAccess get keySystemAccess =>
      js_util.getProperty(this, 'keySystemAccess');
  set keySystemAccess(MediaKeySystemAccess newValue) {
    js_util.setProperty(this, 'keySystemAccess', newValue);
  }

  MediaDecodingConfiguration get configuration =>
      js_util.getProperty(this, 'configuration');
  set configuration(MediaDecodingConfiguration newValue) {
    js_util.setProperty(this, 'configuration', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaCapabilitiesEncodingInfo implements MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo(
      {MediaEncodingConfiguration configuration});
}

extension PropsMediaCapabilitiesEncodingInfo on MediaCapabilitiesEncodingInfo {
  MediaEncodingConfiguration get configuration =>
      js_util.getProperty(this, 'configuration');
  set configuration(MediaEncodingConfiguration newValue) {
    js_util.setProperty(this, 'configuration', newValue);
  }
}

///  The interface of the Media Capabilities API provides information
/// about the decoding abilities of the device, system and browser.
/// The API can be used to query the browser about the decoding
/// abilities of the device based on codecs, profile, resolution, and
/// bitrates. The information can be used to serve optimal media
/// streams to the user and determine if playback should be smooth
/// and power efficient.
///  The information is accessed through the [mediaCapabilities]
/// property of the [Navigator] interface.
@experimental
@JS()
@staticInterop
class MediaCapabilities {
  external MediaCapabilities();
}

extension PropsMediaCapabilities on MediaCapabilities {
  ///  When passed a valid media configuration, it returns a promise
  /// with information as to whether the media type is supported, and
  /// whether decoding such media would be smooth and power efficient.
  ///
  /// mediaCapabilities.decodingInfo(MediaDecodingConfiguration)
  ///
  /// //Create media configuration to be tested
  /// const mediaConfig = {
  ///   type : 'file', // or 'media-source'
  ///   audio : {
  ///     contentType : "audio/ogg; codecs=vorbis", // valid content type
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
  ///
  Future<MediaCapabilitiesDecodingInfo> decodingInfo(
          MediaDecodingConfiguration configuration) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'decodingInfo', [configuration]));

  ///  When passed a valid media configuration, it returns a promise
  /// with information as to whether the media type is supported, and
  /// whether encoding such media would be smooth and power efficient.
  ///
  /// mediaCapabilities.encodingInfo(mediaEncodingConfiguration)
  ///
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
  ///
  Future<MediaCapabilitiesEncodingInfo> encodingInfo(
          MediaEncodingConfiguration configuration) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'encodingInfo', [configuration]));
}
