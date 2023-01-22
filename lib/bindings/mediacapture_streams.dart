/// Media Capture and Streams
///
/// https://w3c.github.io/mediacapture-main/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_streams;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface represents a stream of media content. A stream
/// consists of several tracks, such as video or audio tracks. Each
/// track is specified as an instance of [MediaStreamTrack].
///  You can obtain a object either by using the constructor or by
/// calling functions such as [MediaDevices.getUserMedia()],
/// [MediaDevices.getDisplayMedia()], or
/// [HTMLCanvasElement.captureStream()].
///  Some user agents subclass this interface to provide more precise
/// information or functionality, like in
/// [CanvasCaptureMediaStreamTrack].
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MediaStream
///
///
@JS()
@staticInterop
class MediaStream implements EventTarget {
  external factory MediaStream([Iterable<MediaStreamTrack>? tracks]);
}

extension PropsMediaStream on MediaStream {
  String get id => js_util.getProperty(this, 'id');
  Iterable<MediaStreamTrack> getAudioTracks() =>
      js_util.callMethod(this, 'getAudioTracks', []);

  Iterable<MediaStreamTrack> getVideoTracks() =>
      js_util.callMethod(this, 'getVideoTracks', []);

  Iterable<MediaStreamTrack> getTracks() =>
      js_util.callMethod(this, 'getTracks', []);

  MediaStreamTrack? getTrackById(String trackId) =>
      js_util.callMethod(this, 'getTrackById', [trackId]);

  void addTrack(MediaStreamTrack track) =>
      js_util.callMethod(this, 'addTrack', [track]);

  void removeTrack(MediaStreamTrack track) =>
      js_util.callMethod(this, 'removeTrack', [track]);

  MediaStream clone() => js_util.callMethod(this, 'clone', []);

  bool get active => js_util.getProperty(this, 'active');
  EventHandlerNonNull? get onaddtrack =>
      js_util.getProperty(this, 'onaddtrack');
  set onaddtrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaddtrack', newValue);
  }

  EventHandlerNonNull? get onremovetrack =>
      js_util.getProperty(this, 'onremovetrack');
  set onremovetrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremovetrack', newValue);
  }
}

///  The interface represents a single media track within a stream;
/// typically, these are audio or video tracks, but other track types
/// may exist as well.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MediaStreamTrack
///
///
@JS()
@staticInterop
class MediaStreamTrack implements EventTarget {
  external factory MediaStreamTrack();
}

extension PropsMediaStreamTrack on MediaStreamTrack {
  String get kind => js_util.getProperty(this, 'kind');
  String get id => js_util.getProperty(this, 'id');
  String get label => js_util.getProperty(this, 'label');
  bool get enabled => js_util.getProperty(this, 'enabled');
  set enabled(bool newValue) {
    js_util.setProperty(this, 'enabled', newValue);
  }

  bool get muted => js_util.getProperty(this, 'muted');
  EventHandlerNonNull? get onmute => js_util.getProperty(this, 'onmute');
  set onmute(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmute', newValue);
  }

  EventHandlerNonNull? get onunmute => js_util.getProperty(this, 'onunmute');
  set onunmute(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunmute', newValue);
  }

  MediaStreamTrackState get readyState =>
      MediaStreamTrackState.fromValue(js_util.getProperty(this, 'readyState'));
  EventHandlerNonNull? get onended => js_util.getProperty(this, 'onended');
  set onended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onended', newValue);
  }

  dynamic clone() => js_util.callMethod(this, 'clone', []);

  void stop() => js_util.callMethod(this, 'stop', []);

  MediaTrackCapabilities getCapabilities() =>
      js_util.callMethod(this, 'getCapabilities', []);

  MediaTrackConstraints getConstraints() =>
      js_util.callMethod(this, 'getConstraints', []);

  MediaTrackSettings getSettings() =>
      js_util.callMethod(this, 'getSettings', []);

  Future<void> applyConstraints([MediaTrackConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'applyConstraints', [constraints]));

  String get contentHint => js_util.getProperty(this, 'contentHint');
  set contentHint(String newValue) {
    js_util.setProperty(this, 'contentHint', newValue);
  }

  CaptureHandle? getCaptureHandle() =>
      js_util.callMethod(this, 'getCaptureHandle', []);

  EventHandlerNonNull? get oncapturehandlechange =>
      js_util.getProperty(this, 'oncapturehandlechange');
  set oncapturehandlechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncapturehandlechange', newValue);
  }

  bool get isolated => js_util.getProperty(this, 'isolated');
  EventHandlerNonNull? get onisolationchange =>
      js_util.getProperty(this, 'onisolationchange');
  set onisolationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onisolationchange', newValue);
  }

  Iterable<String> getSupportedCaptureActions() =>
      js_util.callMethod(this, 'getSupportedCaptureActions', []);

  Future<void> sendCaptureAction(CaptureAction action) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sendCaptureAction', [action.value]));
}

enum MediaStreamTrackState {
  live('live'),
  ended('ended');

  final String value;
  static MediaStreamTrackState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const MediaStreamTrackState(this.value);
}

///  The dictionary establishes the list of constrainable properties
/// recognized by the user agent or browser in its implementation of
/// the [MediaStreamTrack] object. An object conforming to is
/// returned by [MediaDevices.getSupportedConstraints()].
///  Because of the way interface definitions in WebIDL work, if a
/// constraint is requested but not supported, no error will occur.
/// Instead, the specified constraints will be applied, with any
/// unrecognized constraints stripped from the request. That can lead
/// to confusing and hard to debug errors, so be sure to use
/// [getSupportedConstraints()] to retrieve this information before
/// attempting to establish constraints if you need to know the
/// difference between silently ignoring a constraint and a
/// constraint being accepted.
///  An actual constraint set is described using an object based on
/// the [MediaTrackConstraints] dictionary.
///  To learn more about how constraints work, see Capabilities,
/// constraints, and settings.
@anonymous
@JS()
@staticInterop
class MediaTrackSupportedConstraints {
  external factory MediaTrackSupportedConstraints(
      {bool? width = true,
      bool? height = true,
      bool? aspectRatio = true,
      bool? frameRate = true,
      bool? facingMode = true,
      bool? resizeMode = true,
      bool? sampleRate = true,
      bool? sampleSize = true,
      bool? echoCancellation = true,
      bool? autoGainControl = true,
      bool? noiseSuppression = true,
      bool? latency = true,
      bool? channelCount = true,
      bool? deviceId = true,
      bool? groupId = true});
}

extension PropsMediaTrackSupportedConstraints
    on MediaTrackSupportedConstraints {
  bool get width => js_util.getProperty(this, 'width');
  set width(bool newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  bool get height => js_util.getProperty(this, 'height');
  set height(bool newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  bool get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(bool newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  bool get frameRate => js_util.getProperty(this, 'frameRate');
  set frameRate(bool newValue) {
    js_util.setProperty(this, 'frameRate', newValue);
  }

  bool get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(bool newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }

  bool get resizeMode => js_util.getProperty(this, 'resizeMode');
  set resizeMode(bool newValue) {
    js_util.setProperty(this, 'resizeMode', newValue);
  }

  bool get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(bool newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  bool get sampleSize => js_util.getProperty(this, 'sampleSize');
  set sampleSize(bool newValue) {
    js_util.setProperty(this, 'sampleSize', newValue);
  }

  bool get echoCancellation => js_util.getProperty(this, 'echoCancellation');
  set echoCancellation(bool newValue) {
    js_util.setProperty(this, 'echoCancellation', newValue);
  }

  bool get autoGainControl => js_util.getProperty(this, 'autoGainControl');
  set autoGainControl(bool newValue) {
    js_util.setProperty(this, 'autoGainControl', newValue);
  }

  bool get noiseSuppression => js_util.getProperty(this, 'noiseSuppression');
  set noiseSuppression(bool newValue) {
    js_util.setProperty(this, 'noiseSuppression', newValue);
  }

  bool get latency => js_util.getProperty(this, 'latency');
  set latency(bool newValue) {
    js_util.setProperty(this, 'latency', newValue);
  }

  bool get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(bool newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  bool get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(bool newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  bool get groupId => js_util.getProperty(this, 'groupId');
  set groupId(bool newValue) {
    js_util.setProperty(this, 'groupId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaTrackCapabilities {
  external factory MediaTrackCapabilities(
      {required ULongRange width,
      required ULongRange height,
      required DoubleRange aspectRatio,
      required DoubleRange frameRate,
      required Iterable<String> facingMode,
      required Iterable<String> resizeMode,
      required ULongRange sampleRate,
      required ULongRange sampleSize,
      required Iterable<bool> echoCancellation,
      required Iterable<bool> autoGainControl,
      required Iterable<bool> noiseSuppression,
      required DoubleRange latency,
      required ULongRange channelCount,
      required String deviceId,
      required String groupId});
}

extension PropsMediaTrackCapabilities on MediaTrackCapabilities {
  ULongRange get width => js_util.getProperty(this, 'width');
  set width(ULongRange newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ULongRange get height => js_util.getProperty(this, 'height');
  set height(ULongRange newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  DoubleRange get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(DoubleRange newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  DoubleRange get frameRate => js_util.getProperty(this, 'frameRate');
  set frameRate(DoubleRange newValue) {
    js_util.setProperty(this, 'frameRate', newValue);
  }

  Iterable<String> get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(Iterable<String> newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }

  Iterable<String> get resizeMode => js_util.getProperty(this, 'resizeMode');
  set resizeMode(Iterable<String> newValue) {
    js_util.setProperty(this, 'resizeMode', newValue);
  }

  ULongRange get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(ULongRange newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  ULongRange get sampleSize => js_util.getProperty(this, 'sampleSize');
  set sampleSize(ULongRange newValue) {
    js_util.setProperty(this, 'sampleSize', newValue);
  }

  Iterable<bool> get echoCancellation =>
      js_util.getProperty(this, 'echoCancellation');
  set echoCancellation(Iterable<bool> newValue) {
    js_util.setProperty(this, 'echoCancellation', newValue);
  }

  Iterable<bool> get autoGainControl =>
      js_util.getProperty(this, 'autoGainControl');
  set autoGainControl(Iterable<bool> newValue) {
    js_util.setProperty(this, 'autoGainControl', newValue);
  }

  Iterable<bool> get noiseSuppression =>
      js_util.getProperty(this, 'noiseSuppression');
  set noiseSuppression(Iterable<bool> newValue) {
    js_util.setProperty(this, 'noiseSuppression', newValue);
  }

  DoubleRange get latency => js_util.getProperty(this, 'latency');
  set latency(DoubleRange newValue) {
    js_util.setProperty(this, 'latency', newValue);
  }

  ULongRange get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(ULongRange newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  String get groupId => js_util.getProperty(this, 'groupId');
  set groupId(String newValue) {
    js_util.setProperty(this, 'groupId', newValue);
  }
}

///  The dictionary is used to describe a set of capabilities and the
/// value or values each can take on. A constraints dictionary is
/// passed into [applyConstraints()] to allow a script to establish a
/// set of exact (required) values or ranges and/or preferred values
/// or ranges of values for the track, and the most
/// recently-requested set of custom constraints can be retrieved by
/// calling [getConstraints()].
@anonymous
@JS()
@staticInterop
class MediaTrackConstraints implements MediaTrackConstraintSet {
  external factory MediaTrackConstraints(
      {required Iterable<MediaTrackConstraintSet> advanced});
}

extension PropsMediaTrackConstraints on MediaTrackConstraints {
  Iterable<MediaTrackConstraintSet> get advanced =>
      js_util.getProperty(this, 'advanced');
  set advanced(Iterable<MediaTrackConstraintSet> newValue) {
    js_util.setProperty(this, 'advanced', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaTrackConstraintSet {
  external factory MediaTrackConstraintSet(
      {dynamic width,
      dynamic height,
      dynamic aspectRatio,
      dynamic frameRate,
      dynamic facingMode,
      dynamic resizeMode,
      dynamic sampleRate,
      dynamic sampleSize,
      dynamic echoCancellation,
      dynamic autoGainControl,
      dynamic noiseSuppression,
      dynamic latency,
      dynamic channelCount,
      dynamic deviceId,
      dynamic groupId});
}

extension PropsMediaTrackConstraintSet on MediaTrackConstraintSet {
  dynamic get width => js_util.getProperty(this, 'width');
  set width(dynamic newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  dynamic get height => js_util.getProperty(this, 'height');
  set height(dynamic newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  dynamic get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(dynamic newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  dynamic get frameRate => js_util.getProperty(this, 'frameRate');
  set frameRate(dynamic newValue) {
    js_util.setProperty(this, 'frameRate', newValue);
  }

  dynamic get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(dynamic newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }

  dynamic get resizeMode => js_util.getProperty(this, 'resizeMode');
  set resizeMode(dynamic newValue) {
    js_util.setProperty(this, 'resizeMode', newValue);
  }

  dynamic get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(dynamic newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  dynamic get sampleSize => js_util.getProperty(this, 'sampleSize');
  set sampleSize(dynamic newValue) {
    js_util.setProperty(this, 'sampleSize', newValue);
  }

  dynamic get echoCancellation => js_util.getProperty(this, 'echoCancellation');
  set echoCancellation(dynamic newValue) {
    js_util.setProperty(this, 'echoCancellation', newValue);
  }

  dynamic get autoGainControl => js_util.getProperty(this, 'autoGainControl');
  set autoGainControl(dynamic newValue) {
    js_util.setProperty(this, 'autoGainControl', newValue);
  }

  dynamic get noiseSuppression => js_util.getProperty(this, 'noiseSuppression');
  set noiseSuppression(dynamic newValue) {
    js_util.setProperty(this, 'noiseSuppression', newValue);
  }

  dynamic get latency => js_util.getProperty(this, 'latency');
  set latency(dynamic newValue) {
    js_util.setProperty(this, 'latency', newValue);
  }

  dynamic get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(dynamic newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  dynamic get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(dynamic newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  dynamic get groupId => js_util.getProperty(this, 'groupId');
  set groupId(dynamic newValue) {
    js_util.setProperty(this, 'groupId', newValue);
  }
}

///  The dictionary is used to return the current values configured
/// for each of a [MediaStreamTrack]'s settings. These values will
/// adhere as closely as possible to any constraints previously
/// described using a [MediaTrackConstraints] object and set using
/// [applyConstraints()], and will adhere to the default constraints
/// for any properties whose constraints haven't been changed, or
/// whose customized constraints couldn't be matched.
///  To learn more about how constraints and settings work, see
/// Capabilities, constraints, and settings.
@anonymous
@JS()
@staticInterop
class MediaTrackSettings {
  external factory MediaTrackSettings(
      {required int width,
      required int height,
      required double aspectRatio,
      required double frameRate,
      required String facingMode,
      required String resizeMode,
      required int sampleRate,
      required int sampleSize,
      required bool echoCancellation,
      required bool autoGainControl,
      required bool noiseSuppression,
      required double latency,
      required int channelCount,
      required String deviceId,
      required String groupId});
}

extension PropsMediaTrackSettings on MediaTrackSettings {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  double get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(double newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  double get frameRate => js_util.getProperty(this, 'frameRate');
  set frameRate(double newValue) {
    js_util.setProperty(this, 'frameRate', newValue);
  }

  String get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(String newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }

  String get resizeMode => js_util.getProperty(this, 'resizeMode');
  set resizeMode(String newValue) {
    js_util.setProperty(this, 'resizeMode', newValue);
  }

  int get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(int newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  int get sampleSize => js_util.getProperty(this, 'sampleSize');
  set sampleSize(int newValue) {
    js_util.setProperty(this, 'sampleSize', newValue);
  }

  bool get echoCancellation => js_util.getProperty(this, 'echoCancellation');
  set echoCancellation(bool newValue) {
    js_util.setProperty(this, 'echoCancellation', newValue);
  }

  bool get autoGainControl => js_util.getProperty(this, 'autoGainControl');
  set autoGainControl(bool newValue) {
    js_util.setProperty(this, 'autoGainControl', newValue);
  }

  bool get noiseSuppression => js_util.getProperty(this, 'noiseSuppression');
  set noiseSuppression(bool newValue) {
    js_util.setProperty(this, 'noiseSuppression', newValue);
  }

  double get latency => js_util.getProperty(this, 'latency');
  set latency(double newValue) {
    js_util.setProperty(this, 'latency', newValue);
  }

  int get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(int newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  String get groupId => js_util.getProperty(this, 'groupId');
  set groupId(String newValue) {
    js_util.setProperty(this, 'groupId', newValue);
  }
}

enum VideoFacingModeEnum {
  user('user'),
  environment('environment'),
  left('left'),
  right('right');

  final String value;
  static VideoFacingModeEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const VideoFacingModeEnum(this.value);
}

enum VideoResizeModeEnum {
  none('none'),
  cropAndScale('crop-and-scale');

  final String value;
  static VideoResizeModeEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const VideoResizeModeEnum(this.value);
}

///  The interface represents events which indicate that a
/// [MediaStream] has had tracks added to or removed from the stream
/// through calls to Media Capture and Streams API methods. These
/// events are sent to the stream when these changes occur.
///
///
///
///    Event
///
///
///
///
///
///
///
///    MediaStreamTrackEvent
///
///
///  The events based on this interface are [addtrack] and
/// [removetrack].
@JS()
@staticInterop
class MediaStreamTrackEvent implements Event {
  external factory MediaStreamTrackEvent(
      String type, MediaStreamTrackEventInit eventInitDict);
}

extension PropsMediaStreamTrackEvent on MediaStreamTrackEvent {
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
}

@anonymous
@JS()
@staticInterop
class MediaStreamTrackEventInit implements EventInit {
  external factory MediaStreamTrackEventInit({required MediaStreamTrack track});
}

extension PropsMediaStreamTrackEventInit on MediaStreamTrackEventInit {
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
  set track(MediaStreamTrack newValue) {
    js_util.setProperty(this, 'track', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Media Capture and Streams API indicates
/// that the set of desired capabilities for the current
/// [MediaStreamTrack] cannot currently be met. When this event is
/// thrown on a MediaStreamTrack, it is muted until either the
/// current constraints can be established or until satisfiable
/// constraints are applied.
///
///
///
///    DOMException
///
///
///
///
///
///
///
///    OverconstrainedError
///
///
@JS()
@staticInterop
class OverconstrainedError implements DOMException {
  external factory OverconstrainedError(String constraint,
      [String? message = '']);
}

extension PropsOverconstrainedError on OverconstrainedError {
  String get constraint => js_util.getProperty(this, 'constraint');
}

///  The interface provides access to connected media input devices
/// like cameras and microphones, as well as screen sharing. In
/// essence, it lets you obtain access to any hardware source of
/// media data.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MediaDevices
///
///
@JS()
@staticInterop
class MediaDevices implements EventTarget {
  external factory MediaDevices();
}

extension PropsMediaDevices on MediaDevices {
  EventHandlerNonNull? get ondevicechange =>
      js_util.getProperty(this, 'ondevicechange');
  set ondevicechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondevicechange', newValue);
  }

  Future<Iterable<MediaDeviceInfo>> enumerateDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'enumerateDevices', []));

  Future<MediaStream> getViewportMedia(
          [ViewportMediaStreamConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getViewportMedia', [constraints]));

  Future<MediaDeviceInfo> selectAudioOutput([AudioOutputOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'selectAudioOutput', [options]));

  void setCaptureHandleConfig([CaptureHandleConfig? config]) =>
      js_util.callMethod(this, 'setCaptureHandleConfig', [config]);

  MediaTrackSupportedConstraints getSupportedConstraints() =>
      js_util.callMethod(this, 'getSupportedConstraints', []);

  Future<MediaStream> getUserMedia([MediaStreamConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getUserMedia', [constraints]));

  Future<MediaStream> getDisplayMedia([DisplayMediaStreamOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDisplayMedia', [options]));

  void setSupportedCaptureActions(Iterable<String> actions) =>
      js_util.callMethod(this, 'setSupportedCaptureActions', [actions]);

  EventHandlerNonNull? get oncaptureaction =>
      js_util.getProperty(this, 'oncaptureaction');
  set oncaptureaction(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncaptureaction', newValue);
  }
}

///  The interface contains information that describes a single media
/// input or output device.
///  The list of devices obtained by calling
/// [navigator.mediaDevices.enumerateDevices()] is an array of
/// objects, one per media device.
@JS()
@staticInterop
class MediaDeviceInfo {
  external factory MediaDeviceInfo();
}

extension PropsMediaDeviceInfo on MediaDeviceInfo {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  MediaDeviceKind get kind =>
      MediaDeviceKind.fromValue(js_util.getProperty(this, 'kind'));
  String get label => js_util.getProperty(this, 'label');
  String get groupId => js_util.getProperty(this, 'groupId');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

enum MediaDeviceKind {
  audioinput('audioinput'),
  audiooutput('audiooutput'),
  videoinput('videoinput');

  final String value;
  static MediaDeviceKind fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const MediaDeviceKind(this.value);
}

///  The interface of the Media Capture and Streams API gives access
/// to the capabilities of the input device that it represents.
///   objects are returned by [MediaDevices.enumerateDevices()] if
/// the returned device is an audio or video input device.
///
///
///
///    MediaDeviceInfo
///
///
///
///
///
///
///
///    InputDeviceInfo
///
///
@JS()
@staticInterop
class InputDeviceInfo implements MediaDeviceInfo {
  external factory InputDeviceInfo();
}

extension PropsInputDeviceInfo on InputDeviceInfo {
  MediaTrackCapabilities getCapabilities() =>
      js_util.callMethod(this, 'getCapabilities', []);
}

@anonymous
@JS()
@staticInterop
class MediaStreamConstraints {
  external factory MediaStreamConstraints(
      {dynamic video = false, dynamic audio = false});
}

extension PropsMediaStreamConstraints on MediaStreamConstraints {
  dynamic get video => js_util.getProperty(this, 'video');
  set video(dynamic newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  dynamic get audio => js_util.getProperty(this, 'audio');
  set audio(dynamic newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DoubleRange {
  external factory DoubleRange({required double max, required double min});
}

extension PropsDoubleRange on DoubleRange {
  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  double get min => js_util.getProperty(this, 'min');
  set min(double newValue) {
    js_util.setProperty(this, 'min', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConstrainDoubleRange implements DoubleRange {
  external factory ConstrainDoubleRange(
      {required double exact, required double ideal});
}

extension PropsConstrainDoubleRange on ConstrainDoubleRange {
  double get exact => js_util.getProperty(this, 'exact');
  set exact(double newValue) {
    js_util.setProperty(this, 'exact', newValue);
  }

  double get ideal => js_util.getProperty(this, 'ideal');
  set ideal(double newValue) {
    js_util.setProperty(this, 'ideal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ULongRange {
  external factory ULongRange({required int max, required int min});
}

extension PropsULongRange on ULongRange {
  int get max => js_util.getProperty(this, 'max');
  set max(int newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  int get min => js_util.getProperty(this, 'min');
  set min(int newValue) {
    js_util.setProperty(this, 'min', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConstrainULongRange implements ULongRange {
  external factory ConstrainULongRange(
      {required int exact, required int ideal});
}

extension PropsConstrainULongRange on ConstrainULongRange {
  int get exact => js_util.getProperty(this, 'exact');
  set exact(int newValue) {
    js_util.setProperty(this, 'exact', newValue);
  }

  int get ideal => js_util.getProperty(this, 'ideal');
  set ideal(int newValue) {
    js_util.setProperty(this, 'ideal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConstrainBooleanParameters {
  external factory ConstrainBooleanParameters(
      {required bool exact, required bool ideal});
}

extension PropsConstrainBooleanParameters on ConstrainBooleanParameters {
  bool get exact => js_util.getProperty(this, 'exact');
  set exact(bool newValue) {
    js_util.setProperty(this, 'exact', newValue);
  }

  bool get ideal => js_util.getProperty(this, 'ideal');
  set ideal(bool newValue) {
    js_util.setProperty(this, 'ideal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConstrainDOMStringParameters {
  external factory ConstrainDOMStringParameters({dynamic exact, dynamic ideal});
}

extension PropsConstrainDOMStringParameters on ConstrainDOMStringParameters {
  dynamic get exact => js_util.getProperty(this, 'exact');
  set exact(dynamic newValue) {
    js_util.setProperty(this, 'exact', newValue);
  }

  dynamic get ideal => js_util.getProperty(this, 'ideal');
  set ideal(dynamic newValue) {
    js_util.setProperty(this, 'ideal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DevicePermissionDescriptor implements PermissionDescriptor {
  external factory DevicePermissionDescriptor({required String deviceId});
}

extension PropsDevicePermissionDescriptor on DevicePermissionDescriptor {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CameraDevicePermissionDescriptor implements DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor(
      {bool? panTiltZoom = false});
}

extension PropsCameraDevicePermissionDescriptor
    on CameraDevicePermissionDescriptor {
  bool get panTiltZoom => js_util.getProperty(this, 'panTiltZoom');
  set panTiltZoom(bool newValue) {
    js_util.setProperty(this, 'panTiltZoom', newValue);
  }
}
