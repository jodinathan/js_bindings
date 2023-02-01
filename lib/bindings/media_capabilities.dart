/// Media Capabilities
///
/// https://w3c.github.io/media-capabilities/

// ignore_for_file: unused_import

@JS('self')
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
      {VideoConfiguration? video, AudioConfiguration? audio});
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
  external factory MediaDecodingConfiguration._(
      {required String type,
      MediaCapabilitiesKeySystemConfiguration? keySystemConfiguration});

  factory MediaDecodingConfiguration(
          {required MediaDecodingType type,
          MediaCapabilitiesKeySystemConfiguration? keySystemConfiguration}) =>
      MediaDecodingConfiguration._(
          type: type.value,
          keySystemConfiguration: keySystemConfiguration ?? undefined);
}

extension PropsMediaDecodingConfiguration on MediaDecodingConfiguration {
  MediaDecodingType get type =>
      MediaDecodingType.fromValue(js_util.getProperty(this, 'type'));
  set type(MediaDecodingType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
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
  external factory MediaEncodingConfiguration._({required String type});

  factory MediaEncodingConfiguration({required MediaEncodingType type}) =>
      MediaEncodingConfiguration._(type: type.value);
}

extension PropsMediaEncodingConfiguration on MediaEncodingConfiguration {
  MediaEncodingType get type =>
      MediaEncodingType.fromValue(js_util.getProperty(this, 'type'));
  set type(MediaEncodingType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }
}

enum MediaDecodingType {
  file('file'),
  mediaSource('media-source'),
  webrtc('webrtc');

  final String value;
  static MediaDecodingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaDecodingType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaDecodingType(this.value);
}

enum MediaEncodingType {
  record('record'),
  webrtc('webrtc');

  final String value;
  static MediaEncodingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaEncodingType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaEncodingType(this.value);
}

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
  external factory VideoConfiguration._(
      {required String contentType,
      required int width,
      required int height,
      required int bitrate,
      required double framerate,
      bool? hasAlphaChannel,
      String? hdrMetadataType,
      String? colorGamut,
      String? transferFunction,
      String? scalabilityMode,
      bool? spatialScalability});

  factory VideoConfiguration(
          {required String contentType,
          required int width,
          required int height,
          required int bitrate,
          required double framerate,
          bool? hasAlphaChannel,
          HdrMetadataType? hdrMetadataType,
          ColorGamut? colorGamut,
          TransferFunction? transferFunction,
          String? scalabilityMode,
          bool? spatialScalability}) =>
      VideoConfiguration._(
          contentType: contentType,
          width: width,
          height: height,
          bitrate: bitrate,
          framerate: framerate,
          hasAlphaChannel: hasAlphaChannel ?? undefined,
          hdrMetadataType: hdrMetadataType?.value ?? undefined,
          colorGamut: colorGamut?.value ?? undefined,
          transferFunction: transferFunction?.value ?? undefined,
          scalabilityMode: scalabilityMode ?? undefined,
          spatialScalability: spatialScalability ?? undefined);
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
      HdrMetadataType.fromValue(js_util.getProperty(this, 'hdrMetadataType'));
  set hdrMetadataType(HdrMetadataType newValue) {
    js_util.setProperty(this, 'hdrMetadataType', newValue.value);
  }

  ColorGamut get colorGamut =>
      ColorGamut.fromValue(js_util.getProperty(this, 'colorGamut'));
  set colorGamut(ColorGamut newValue) {
    js_util.setProperty(this, 'colorGamut', newValue.value);
  }

  TransferFunction get transferFunction =>
      TransferFunction.fromValue(js_util.getProperty(this, 'transferFunction'));
  set transferFunction(TransferFunction newValue) {
    js_util.setProperty(this, 'transferFunction', newValue.value);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }

  bool get spatialScalability =>
      js_util.getProperty(this, 'spatialScalability');
  set spatialScalability(bool newValue) {
    js_util.setProperty(this, 'spatialScalability', newValue);
  }
}

enum HdrMetadataType {
  smpteSt2086('smpteSt2086'),
  smpteSt209410('smpteSt2094-10'),
  smpteSt209440('smpteSt2094-40');

  final String value;
  static HdrMetadataType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<HdrMetadataType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const HdrMetadataType(this.value);
}

enum ColorGamut {
  srgb('srgb'),
  p3('p3'),
  rec2020('rec2020');

  final String value;
  static ColorGamut fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ColorGamut> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ColorGamut(this.value);
}

enum TransferFunction {
  srgb('srgb'),
  pq('pq'),
  hlg('hlg');

  final String value;
  static TransferFunction fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<TransferFunction> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const TransferFunction(this.value);
}

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
      {required String contentType,
      String? channels,
      int? bitrate,
      int? samplerate,
      bool? spatialRendering});
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
  external factory MediaCapabilitiesKeySystemConfiguration._(
      {required String keySystem,
      String? initDataType = '',
      String? distinctiveIdentifier,
      String? persistentState,
      Iterable<String>? sessionTypes,
      KeySystemTrackConfiguration? audio,
      KeySystemTrackConfiguration? video});

  factory MediaCapabilitiesKeySystemConfiguration(
          {required String keySystem,
          String? initDataType = '',
          MediaKeysRequirement? distinctiveIdentifier =
              MediaKeysRequirement.optional,
          MediaKeysRequirement? persistentState = MediaKeysRequirement.optional,
          Iterable<String>? sessionTypes,
          KeySystemTrackConfiguration? audio,
          KeySystemTrackConfiguration? video}) =>
      MediaCapabilitiesKeySystemConfiguration._(
          keySystem: keySystem,
          initDataType: initDataType ?? undefined,
          distinctiveIdentifier: distinctiveIdentifier?.value ?? undefined,
          persistentState: persistentState?.value ?? undefined,
          sessionTypes: sessionTypes ?? undefined,
          audio: audio ?? undefined,
          video: video ?? undefined);
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
      MediaKeysRequirement.fromValue(
          js_util.getProperty(this, 'distinctiveIdentifier'));
  set distinctiveIdentifier(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'distinctiveIdentifier', newValue.value);
  }

  MediaKeysRequirement get persistentState => MediaKeysRequirement.fromValue(
      js_util.getProperty(this, 'persistentState'));
  set persistentState(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'persistentState', newValue.value);
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
      {String? robustness = '', String? encryptionScheme});
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
      {required bool supported,
      required bool smooth,
      required bool powerEfficient});
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
      {required MediaKeySystemAccess keySystemAccess,
      MediaDecodingConfiguration? configuration});
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
      {MediaEncodingConfiguration? configuration});
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
  external factory MediaCapabilities();
}

extension PropsMediaCapabilities on MediaCapabilities {
  Future<MediaCapabilitiesDecodingInfo> decodingInfo(
          MediaDecodingConfiguration configuration) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'decodingInfo', [configuration]));

  Future<MediaCapabilitiesEncodingInfo> encodingInfo(
          MediaEncodingConfiguration configuration) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'encodingInfo', [configuration]));
}
