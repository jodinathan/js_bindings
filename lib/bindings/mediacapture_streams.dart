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
@JS()
@staticInterop
class MediaStream implements EventTarget {
  external MediaStream([Iterable<MediaStreamTrack>? tracks]);
}

extension PropsMediaStream on MediaStream {
  ///  A [String] containing 36 characters denoting a universally
  /// unique identifier (UUID) for the object.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  Returns a list of the [MediaStreamTrack] objects stored in the
  /// [MediaStream] object that have their [kind] attribute set to
  /// [audio]. The order is not defined, and may not only vary from one
  /// browser to another, but also from one call to another.
  ///
  /// var mediaStreamTracks = mediaStream.getAudioTracks()
  ///
  ///
  ///  This example gets a webcam's audio and video in a stream using
  ///  getUserMedia(), attaches the stream to a
  ///  <video> element, then sets a timer that, upon expiring, will stop the
  ///  first audio track found on the stream.
  ///
  /// navigator.mediaDevices.getUserMedia({audio: true, video: true})
  /// .then(mediaStream => {
  ///  document.querySelector('video').srcObject = mediaStream;
  ///  // Stop the audio stream after 5 seconds
  ///  setTimeout(() => {
  ///   const tracks = mediaStream.getAudioTracks()
  ///   tracks[0].stop()
  ///  }, 5000)
  /// })
  ///
  Iterable<MediaStreamTrack> getAudioTracks() =>
      js_util.callMethod(this, 'getAudioTracks', []);

  ///  Returns a list of the [MediaStreamTrack] objects stored in the
  /// [MediaStream] object that have their [kind] attribute set to
  /// ["video"]. The order is not defined, and may not only vary from
  /// one browser to another, but also from one call to another.
  ///
  /// var mediaStreamTracks[] = mediaStream.getVideoTracks();
  ///
  ///
  ///  The following example, extracted from Chrome's
  /// Image Capture / Photo Resolution Sample, uses getVideoTracks() to
  ///  retrieve a track for passing to the ImageCapture() constructor.
  ///
  /// var imageCapture;
  ///
  /// navigator.mediaDevices.getUserMedia({video: true})
  /// .then(mediaStream => {
  ///  document.querySelector('video').srcObject = mediaStream;
  ///
  ///  const track = mediaStream.getVideoTracks()[0];
  ///  imageCapture = new ImageCapture(track);
  ///
  ///  return imageCapture.getPhotoCapabilities();
  /// })
  ///
  Iterable<MediaStreamTrack> getVideoTracks() =>
      js_util.callMethod(this, 'getVideoTracks', []);

  ///  Returns a list of all [MediaStreamTrack] objects stored in the
  /// [MediaStream] object, regardless of the value of the [kind]
  /// attribute. The order is not defined, and may not only vary from
  /// one browser to another, but also from one call to another.
  ///
  /// var mediaStreamTracks = mediaStream.getTracks()
  ///
  /// navigator.mediaDevices.getUserMedia({audio: false, video: true})
  /// .then(mediaStream => {
  ///  document.querySelector('video').srcObject = mediaStream;
  ///  // Stop the stream after 5 seconds
  ///  setTimeout(() => {
  ///   const tracks = mediaStream.getTracks()
  ///   tracks[0].stop()
  ///  }, 5000)
  /// })
  ///
  Iterable<MediaStreamTrack> getTracks() =>
      js_util.callMethod(this, 'getTracks', []);

  ///  Returns the track whose ID corresponds to the one given in
  /// parameters, [trackid]. If no parameter is given, or if no track
  /// with that ID does exist, it returns [null]. If several tracks
  /// have the same ID, it returns the first one.
  ///
  /// var track = MediaStream.getTrackById(id);
  ///
  ///
  ///  This example activates a commentary track on a video by ducking the audio level of the
  ///  main audio track to 50%, then enabling the commentary track.
  ///
  /// stream.getTrackById("primary-audio-track").applyConstraints({ volume: 0.5 });
  /// stream.getTrackById("commentary-track").enabled = true;
  ///
  MediaStreamTrack? getTrackById(String trackId) =>
      js_util.callMethod(this, 'getTrackById', [trackId]);

  ///  Stores a copy of the [MediaStreamTrack] given as argument. If
  /// the track has already been added to the [MediaStream] object,
  /// nothing happens.
  ///
  /// stream.addTrack(track);
  ///
  Object addTrack(

          /// A [MediaStreamTrack] to add to the stream.
          ///
          MediaStreamTrack track) =>
      js_util.callMethod(this, 'addTrack', [track]);

  ///  Removes the [MediaStreamTrack] given as argument. If the track
  /// is not part of the [MediaStream] object, nothing happens.
  ///
  Object removeTrack(MediaStreamTrack track) =>
      js_util.callMethod(this, 'removeTrack', [track]);

  ///  Returns a clone of the [MediaStream] object. The clone will,
  /// however, have a unique value for [id].
  ///
  /// var stream = MediaStream.clone();
  ///
  MediaStream clone() => js_util.callMethod(this, 'clone', []);

  ///  A Boolean value that returns [true] if the [MediaStream] is
  /// active, or [false] otherwise.
  ///
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
@JS()
@staticInterop
class MediaStreamTrack implements EventTarget {
  external MediaStreamTrack();
}

extension PropsMediaStreamTrack on MediaStreamTrack {
  ///  Returns a [String] set to ["audio"] if the track is an audio
  /// track and to ["video"], if it is a video track. It doesn't change
  /// if the track is deassociated from its source.
  ///
  String get kind => js_util.getProperty(this, 'kind');

  ///  Returns a [String] containing a unique identifier (GUID) for the
  /// track; it is generated by the browser.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  Returns a [String] containing a user agent-assigned label that
  /// identifies the track source, as in ["internal microphone"]. The
  /// string may be left empty and is empty as long as no source has
  /// been connected. When the track is deassociated from its source,
  /// the label is not changed.
  ///
  String get label => js_util.getProperty(this, 'label');

  ///  A Boolean whose value of [true] if the track is enabled, that is
  /// allowed to render the media source stream; or [false] if it is
  /// disabled, that is not rendering the media source stream but
  /// silence and blackness. If the track has been disconnected, this
  /// value can be changed but has no more effect.
  ///
  ///     Note: You can implement standard "mute" functionality by
  /// setting to [false]. The [muted] property refers to a condition in
  /// which there's no media because of a technical issue.
  ///
  ///
  bool get enabled => js_util.getProperty(this, 'enabled');
  set enabled(bool newValue) {
    js_util.setProperty(this, 'enabled', newValue);
  }

  ///  Returns a Boolean value indicating whether the track is unable
  /// to provide media data due to a technical issue.
  ///
  ///     Note: You can implement standard "mute" functionality by
  /// setting [enabled] to [false], and unmute the media by setting it
  /// back to [true] again.
  ///
  ///
  bool get muted => js_util.getProperty(this, 'muted');
  EventHandlerNonNull? get onmute => js_util.getProperty(this, 'onmute');
  set onmute(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmute', newValue);
  }

  EventHandlerNonNull? get onunmute => js_util.getProperty(this, 'onunmute');
  set onunmute(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunmute', newValue);
  }

  ///  Returns an enumerated value giving the status of the track. This
  /// will be one of the following values:
  ///
  ///     ["live"] which indicates that an input is connected and does
  /// its best-effort in providing real-time data. In that case, the
  /// output of data can be switched on or off using the [enabled]
  /// attribute.
  ///     ["ended"] which indicates that the input is not giving any
  /// more data and will never provide new data.
  ///
  ///
  MediaStreamTrackState get readyState => MediaStreamTrackState.values
      .byName(js_util.getProperty(this, 'readyState'));
  EventHandlerNonNull? get onended => js_util.getProperty(this, 'onended');
  set onended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onended', newValue);
  }

  /// Returns a duplicate of the [MediaStreamTrack].
  ///
  /// const newTrack = track.clone()
  ///
  MediaStreamTrack clone() => js_util.callMethod(this, 'clone', []);

  ///  Stops playing the source associated to the track, both the
  /// source and the track are deassociated. The track state is set to
  /// [ended].
  ///
  /// track.stop()
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);

  ///  Returns the a list of constrainable properties available for the
  /// [MediaStreamTrack].
  ///
  /// const capabilities = track.getCapabilities()
  ///
  MediaTrackCapabilities getCapabilities() =>
      js_util.callMethod(this, 'getCapabilities', []);

  ///  Returns a [MediaTrackConstraints] object containing the
  /// currently set constraints for the track; the returned value
  /// matches the constraints last set using [applyConstraints()].
  ///
  /// const constraints = track.getConstraints()
  ///
  ///
  ///  This example obtains the current constraints for a track, sets the
  ///  facingMode, and applies the updated
  ///  constraints.
  ///
  /// function switchCameras(track, camera) {
  ///  const constraints = track.getConstraints();
  ///  constraints.facingMode = camera;
  ///  track.applyConstraints(constraints);
  /// }
  ///
  MediaTrackConstraints getConstraints() =>
      js_util.callMethod(this, 'getConstraints', []);

  ///  Returns a [MediaTrackSettings] object containing the current
  /// values of each of the [MediaStreamTrack]'s constrainable
  /// properties.
  ///
  /// const settings = track.getSettings()
  ///
  MediaTrackSettings getSettings() =>
      js_util.callMethod(this, 'getSettings', []);

  ///  Lets the application specify the ideal and/or ranges of
  /// acceptable values for any number of the available constrainable
  /// properties of the [MediaStreamTrack].
  ///
  /// const appliedPromise = track.applyConstraints([constraints])
  ///
  Future<Object> applyConstraints(
          [

          ///
          ///     A [MediaTrackConstraints] object listing the constraints to
          /// apply to
          ///     the track's constrainable properties; any existing
          /// constraints are replaced with the
          ///     new values specified, and any constrainable properties not
          /// included are restored to
          ///     their default constraints. If this parameter is omitted, all
          /// currently set custom
          ///     constraints are cleared. This object represents the basic set
          /// of constraints that must
          ///     apply for the [Future] to resolve. The object may contain an
          /// advanced
          ///     property containing an array of additional
          /// [MediaTrackConstraints] objects,
          ///    which are treated as exact requires.
          ///
          ///
          MediaTrackConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'applyConstraints', [constraints]));

  String get contentHint => js_util.getProperty(this, 'contentHint');
  set contentHint(String newValue) {
    js_util.setProperty(this, 'contentHint', newValue);
  }

  bool get isolated => js_util.getProperty(this, 'isolated');
  EventHandlerNonNull? get onisolationchange =>
      js_util.getProperty(this, 'onisolationchange');
  set onisolationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onisolationchange', newValue);
  }
}

enum MediaStreamTrackState { live, ended }

///  The dictionary establishes the list of constrainable properties
/// recognized by the user agent or browser in its implementation of
/// the [MediaStreamTrack] object. An object conforming to is
/// returned by [MediaDevices.getSupportedConstraints()].
///  Because of the way interface definitions in WebIDL work, if a
/// constraint is requested but not supported, no error will occur.
/// Instead, the specified constraints will be applied, with any
/// unrecognized constraints stripped from the request.That can lead
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
  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get width => js_util.getProperty(this, 'width');
  set width(bool newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get height => js_util.getProperty(this, 'height');
  set height(bool newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(bool newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get frameRate => js_util.getProperty(this, 'frameRate');
  set frameRate(bool newValue) {
    js_util.setProperty(this, 'frameRate', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(bool newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get resizeMode => js_util.getProperty(this, 'resizeMode');
  set resizeMode(bool newValue) {
    js_util.setProperty(this, 'resizeMode', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(bool newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get sampleSize => js_util.getProperty(this, 'sampleSize');
  set sampleSize(bool newValue) {
    js_util.setProperty(this, 'sampleSize', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get echoCancellation => js_util.getProperty(this, 'echoCancellation');
  set echoCancellation(bool newValue) {
    js_util.setProperty(this, 'echoCancellation', newValue);
  }

  ///  A Boolean whose value is [true] if the constraint is supported
  /// in the current environment.
  ///
  bool get autoGainControl => js_util.getProperty(this, 'autoGainControl');
  set autoGainControl(bool newValue) {
    js_util.setProperty(this, 'autoGainControl', newValue);
  }

  ///  A Boolean whose value is [true] if the constraint is supported
  /// in the current environment.
  ///
  bool get noiseSuppression => js_util.getProperty(this, 'noiseSuppression');
  set noiseSuppression(bool newValue) {
    js_util.setProperty(this, 'noiseSuppression', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get latency => js_util.getProperty(this, 'latency');
  set latency(bool newValue) {
    js_util.setProperty(this, 'latency', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(bool newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
  bool get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(bool newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  ///  A Boolean value whose value is [true] if the constraint is
  /// supported in the current environment.
  ///
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

enum VideoFacingModeEnum { user, environment, left, right }

enum VideoResizeModeEnum { none, cropAndScale }

///  The interface represents events which indicate that a
/// [MediaStream] has had tracks added to or removed from the stream
/// through calls to Media Stream API methods. These events are sent
/// to the stream when these changes occur.
///
///
///
///    Event
///
///
///
///
///
///    MediaStreamTrackEvent
///
///
///  The events based on this interface are [addtrack] and
/// [removetrack]
@JS()
@staticInterop
class MediaStreamTrackEvent implements Event {
  external MediaStreamTrackEvent(
      String type, MediaStreamTrackEventInit eventInitDict);
}

extension PropsMediaStreamTrackEvent on MediaStreamTrackEvent {
  ///  A [MediaStreamTrack] object representing the track which was
  /// added to the stream.
  ///
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
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Media Capture and Streams API indicates
/// that the set of desired capabilities for the current
/// [MediaStreamTrack] cannot currently be met. When this event is
/// thrown on a MediaStreamTrack, it is muted until either the
/// current constraints can be established or until satisfiable
/// constraints are applied.
@JS()
@staticInterop
class OverconstrainedError implements DOMException {
  external OverconstrainedError(String constraint, [String? message = '']);
}

extension PropsOverconstrainedError on OverconstrainedError {
  ///  Returns the constraint that was supplied in the constructor,
  /// meaning the constraint that was not satisfied.
  ///
  String get constraint => js_util.getProperty(this, 'constraint');
}

///  The interface provides access to connected media input devices
/// like cameras and microphones, as well as screen sharing. In
/// essence, it lets you obtain access to any hardware source of
/// media data.
@JS()
@staticInterop
class MediaDevices implements EventTarget {
  external MediaDevices();
}

extension PropsMediaDevices on MediaDevices {
  EventHandlerNonNull? get ondevicechange =>
      js_util.getProperty(this, 'ondevicechange');
  set ondevicechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondevicechange', newValue);
  }

  ///  Obtains an array of information about the media input and output
  /// devices available on the system.
  ///
  /// navigator.mediaDevices.enumerateDevices()
  ///
  /// Here's an example of using enumerateDevices(). It outputs a list of the device IDs, with their labels if available.
  /// if (!navigator.mediaDevices || !navigator.mediaDevices.enumerateDevices) {
  ///  console.log("enumerateDevices() not supported.");
  ///  return;
  /// }
  ///
  /// // List cameras and microphones.
  ///
  /// navigator.mediaDevices.enumerateDevices()
  /// .then(function(devices) {
  ///  devices.forEach(function(device) {
  ///   console.log(device.kind + ": " + device.label +
  ///         " id = " + device.deviceId);
  ///  });
  /// })
  /// .catch(function(err) {
  ///  console.log(err.name + ": " + err.message);
  /// });
  ///
  /// This might produce:
  /// videoinput: id = csO9c0YpAf274OuCPUA53CNE0YHlIr2yXCi+SqfBZZ8=
  /// audioinput: id = RKxXByjnabbADGQNNZqLVLdmXlS0YkETYCIbg+XxnvM=
  /// audioinput: id = r2/xw1xUPIyZunfV1lGrKOma5wTOvCkWfZ368XCndm0=
  ///  or if one or more MediaStreams are active or persistent permissions are
  ///  granted:
  ///
  /// videoinput: FaceTime HD Camera (Built-in) id=csO9c0YpAf274OuCPUA53CNE0YHlIr2yXCi+SqfBZZ8=
  /// audioinput: default (Built-in Microphone) id=RKxXByjnabbADGQNNZqLVLdmXlS0YkETYCIbg+XxnvM=
  /// audioinput: Built-in Microphone id=r2/xw1xUPIyZunfV1lGrKOma5wTOvCkWfZ368XCndm0=
  ///
  Future<Iterable<MediaDeviceInfo>> enumerateDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'enumerateDevices', []));

  Future<MediaDeviceInfo> selectAudioOutput([AudioOutputOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'selectAudioOutput', [options]));

  MediaTrackSupportedConstraints getSupportedConstraints() =>
      js_util.callMethod(this, 'getSupportedConstraints', []);

  Future<MediaStream> getUserMedia([MediaStreamConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getUserMedia', [constraints]));

  Future<MediaStream> getDisplayMedia(
          [DisplayMediaStreamConstraints? constraints]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDisplayMedia', [constraints]));
}

///  The interface contains information that describes a single media
/// input or output device.
///  The list of devices obtained by calling
/// [navigator.mediaDevices.enumerateDevices()] is an array of
/// objects, one per media device.
@JS()
@staticInterop
class MediaDeviceInfo {
  external MediaDeviceInfo();
}

extension PropsMediaDeviceInfo on MediaDeviceInfo {
  ///  Returns a [String] that is an identifier for the represented
  /// device that is persisted across sessions. It is un-guessable by
  /// other applications and unique to the origin of the calling
  /// application. It is reset when the user clears cookies (for
  /// Private Browsing, a different identifier is used that is not
  /// persisted across sessions).
  ///
  String get deviceId => js_util.getProperty(this, 'deviceId');

  ///  Returns an enumerated value that is either ["videoinput"],
  /// ["audioinput"] or ["audiooutput"].
  ///
  MediaDeviceKind get kind =>
      MediaDeviceKind.values.byName(js_util.getProperty(this, 'kind'));

  ///  Returns a [String] that is a label describing this device (for
  /// example "External USB Webcam").
  ///
  String get label => js_util.getProperty(this, 'label');

  ///  Returns a [String] that is a group identifier. Two devices have
  /// the same group identifier if they belong to the same physical
  /// device — for example a monitor with both a built-in camera and a
  /// microphone.
  ///
  String get groupId => js_util.getProperty(this, 'groupId');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

enum MediaDeviceKind { audioinput, audiooutput, videoinput }

///  The interface of the Media Streams API gives access to the
/// capabilities of the input device that it represents.
///   objects are returned by [MediaDevices.enumerateDevices()] if
/// the returned device is an audio or video input device.
@JS()
@staticInterop
class InputDeviceInfo implements MediaDeviceInfo {
  external InputDeviceInfo();
}

extension PropsInputDeviceInfo on InputDeviceInfo {
  ///  Returns a [MediaTrackCapabilities] object describing the primary
  /// audio or video track of a device's [MediaStream].
  ///
  /// InputDeviceInfo.getCapabilities();
  ///
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
