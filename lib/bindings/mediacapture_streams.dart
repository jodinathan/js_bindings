/// Media Capture and Streams
///
/// https://w3c.github.io/mediacapture-main/
@JS('window')
library mediacapture_streams;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'web_i_d_l_1.dart';
import 'mediacapture_streams.dart';
import 'audio_output.dart';
import 'screen_capture.dart';
import 'image_capture.dart';

///
///
///  The interface represents a stream of media content. A stream
/// consists of several tracks such as video or audio tracks. Each
/// track is specified as an instance of [MediaStreamTrack].You can
/// obtain a MediaStream object either by using the constructor or by
/// calling [MediaDevices.getUserMedia()].
///
///  Some user agents subclass this interface to provide more precise
/// information or functionality, like in
/// [CanvasCaptureMediaStreamTrack].
@JS()
class MediaStream // null -> {} -> EventTarget
    with
        EventTarget {
  external factory MediaStream([Iterable<MediaStreamTrack>? tracks]);

  ///  A [DOMString] containing 36 characters denoting a universally
  /// unique identifier (UUID) for the object.
  external String get id;

  ///  Returns a list of the [MediaStreamTrack] objects stored in the
  /// [MediaStream] object that have their [kind] attribute set to
  /// [audio]. The order is not defined, and may not only vary from one
  /// browser to another, but also from one call to another.
  /// var mediaStreamTracks = mediaStream.getAudioTracks()
  /// This example gets a webcam's audio and video in a stream using
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
  external Iterable<MediaStreamTrack> getAudioTracks();

  ///  Returns a list of the [MediaStreamTrack] objects stored in the
  /// [MediaStream] object that have their [kind] attribute set to
  /// ["video"]. The order is not defined, and may not only vary from
  /// one browser to another, but also from one call to another.
  /// var mediaStreamTracks[] = mediaStream.getVideoTracks();
  /// The following example, extracted from Chrome's
  ///   Image Capture / Photo Resolution Sample, uses getVideoTracks() to
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
  external Iterable<MediaStreamTrack> getVideoTracks();

  ///  Returns a list of all [MediaStreamTrack] objects stored in the
  /// [MediaStream] object, regardless of the value of the [kind]
  /// attribute. The order is not defined, and may not only vary from
  /// one browser to another, but also from one call to another.
  /// var mediaStreamTracks = mediaStream.getTracks()
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
  external Iterable<MediaStreamTrack> getTracks();

  ///  Returns the track whose ID corresponds to the one given in
  /// parameters, [trackid]. If no parameter is given, or if no track
  /// with that ID does exist, it returns [null]. If several tracks
  /// have the same ID, it returns the first one.
  /// var track = MediaStream.getTrackById(id);
  ///
  /// This example activates a commentary track on a video by ducking the audio level of the
  ///  main audio track to 50%, then enabling the commentary track.
  ///
  /// stream.getTrackById("primary-audio-track").applyConstraints({ volume: 0.5 });
  /// stream.getTrackById("commentary-track").enabled = true;
  external MediaStreamTrack? getTrackById(String trackId);

  ///  Stores a copy of the [MediaStreamTrack] given as argument. If
  /// the track has already been added to the [MediaStream] object,
  /// nothing happens.
  /// stream.addTrack(track);
  ///
  external Object addTrack(MediaStreamTrack track);

  ///  Removes the [MediaStreamTrack] given as argument. If the track
  /// is not part of the [MediaStream] object, nothing happens.
  external Object removeTrack(MediaStreamTrack track);

  ///  Returns a clone of the [MediaStream] object. The clone will,
  /// however, have a unique value for [id].
  /// var stream = MediaStream.clone();
  external MediaStream clone();

  ///  A Boolean value that returns [true] if the [MediaStream] is
  /// active, or [false] otherwise.
  external bool get active;
  external EventHandlerNonNull? get onaddtrack;
  external set onaddtrack(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremovetrack;
  external set onremovetrack(EventHandlerNonNull? newValue);
}

///
///
///  The interface represents a single media track within a stream;
/// typically, these are audio or video tracks, but other track types
/// may exist as well.
@JS()
class MediaStreamTrack // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns a [DOMString] set to ["audio"] if the track is an audio
  /// track and to ["video"], if it is a video track. It doesn't change
  /// if the track is deassociated from its source.
  external String get kind;

  ///  Returns a [DOMString] containing a unique identifier (GUID) for
  /// the track; it is generated by the browser.
  external String get id;

  ///  Returns a [DOMString] containing a user agent-assigned label
  /// that identifies the track source, as in ["internal microphone"].
  /// The string may be left empty and is empty as long as no source
  /// has been connected. When the track is deassociated from its
  /// source, the label is not changed.
  external String get label;

  ///  A Boolean whose value of [true] if the track is enabled, that is
  /// allowed to render the media source stream; or [false] if it is
  /// disabled, that is not rendering the media source stream but
  /// silence and blackness. If the track has been disconnected, this
  /// value can be changed but has no more effect.
  ///   Note: You can implement standard "mute" functionality by
  /// setting to [false]. The [muted] property refers to a condition in
  /// which there's no media because of a technical issue.
  ///
  external bool get enabled;
  external set enabled(bool newValue);

  ///  Returns a Boolean value indicating whether the track is unable
  /// to provide media data due to a technical issue.
  ///   Note: You can implement standard "mute" functionality by
  /// setting [enabled] to [false], and unmute the media by setting it
  /// back to [true] again.
  ///
  external bool get muted;
  external EventHandlerNonNull? get onmute;
  external set onmute(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onunmute;
  external set onunmute(EventHandlerNonNull? newValue);

  ///  Returns an enumerated value giving the status of the track. This
  /// will be one of the following values:
  ///
  ///   ["live"] which indicates that an input is connected and does
  /// its best-effort in providing real-time data. In that case, the
  /// output of data can be switched on or off using the [enabled]
  /// attribute.
  ///   ["ended"] which indicates that the input is not giving any more
  /// data and will never provide new data.
  ///
  ///
  external MediaStreamTrackState get readyState;
  external EventHandlerNonNull? get onended;
  external set onended(EventHandlerNonNull? newValue);

  /// Returns a duplicate of the [MediaStreamTrack].
  /// const newTrack = track.clone()
  external MediaStreamTrack clone();

  ///  Stops playing the source associated to the track, both the
  /// source and the track are deassociated. The track state is set to
  /// [ended].
  /// track.stop()
  ///
  external Object stop();

  ///  Returns the a list of constrainable properties available for the
  /// [MediaStreamTrack].
  /// const capabilities = track.getCapabilities()
  external MediaTrackCapabilities getCapabilities();

  ///  Returns a [MediaTrackConstraints] object containing the
  /// currently set constraints for the track; the returned value
  /// matches the constraints last set using [applyConstraints()].
  /// const constraints = track.getConstraints()
  /// This example obtains the current constraints for a track, sets the
  ///  facingMode, and applies the updated
  ///  constraints.
  ///
  /// function switchCameras(track, camera) {
  ///  const constraints = track.getConstraints();
  ///  constraints.facingMode = camera;
  ///  track.applyConstraints(constraints);
  /// }
  external MediaTrackConstraints getConstraints();

  ///  Returns a [MediaTrackSettings] object containing the current
  /// values of each of the [MediaStreamTrack]'s constrainable
  /// properties.
  /// const settings = track.getSettings()
  external MediaTrackSettings getSettings();

  ///  Lets the application specify the ideal and/or ranges of
  /// acceptable values for any number of the available constrainable
  /// properties of the [MediaStreamTrack].
  /// const appliedPromise = track.applyConstraints([constraints])
  external Promise<Object> applyConstraints(
      [MediaTrackConstraints? constraints]);
  external String get contentHint;
  external set contentHint(String newValue);
  external bool get isolated;
  external EventHandlerNonNull? get onisolationchange;
  external set onisolationchange(EventHandlerNonNull? newValue);

  external factory MediaStreamTrack();
}

@JS()
enum MediaStreamTrackState { live, ended }

///
///
///  The dictionary establishes the list of constrainable properties
/// recognized by the user agent or browser in its implementation of
/// the [MediaStreamTrack] object. An object conforming to is
/// returned by [MediaDevices.getSupportedConstraints()].
///
///  Because of the way interface definitions in WebIDL work, if a
/// constraint is requested but not supported, no error will occur.
/// Instead, the specified constraints will be applied, with any
/// unrecognized constraints stripped from the request.That can lead
/// to confusing and hard to debug errors, so be sure to use
/// [getSupportedConstraints()] to retrieve this information before
/// attempting to establish constraints if you need to know the
/// difference between silently ignoring a constraint and a
/// constraint being accepted.
///
///  An actual constraint set is described using an object based on
/// the [MediaTrackConstraints] dictionary.
///
///  To learn more about how constraints work, see Capabilities,
/// constraints, and settings.
@anonymous
@JS()
class MediaTrackSupportedConstraints {
  ///  A Boolean value whose value is [true] if the [width] constraint
  /// is supported in the current environment.
  external bool get width;
  external set width(bool newValue);

  ///  A Boolean value whose value is [true] if the [height] constraint
  /// is supported in the current environment.
  external bool get height;
  external set height(bool newValue);

  ///  A Boolean value whose value is [true] if the [aspectRatio]
  /// constraint is supported in the current environment.
  external bool get aspectRatio;
  external set aspectRatio(bool newValue);

  ///  A Boolean value whose value is [true] if the [frameRate]
  /// constraint is supported in the current environment.
  external bool get frameRate;
  external set frameRate(bool newValue);

  ///  A Boolean value whose value is [true] if the [facingMode]
  /// constraint is supported in the current environment.
  external bool get facingMode;
  external set facingMode(bool newValue);

  ///  A Boolean value whose value is [true] if the [resizeMode]
  /// constraint is supported in the current environment.
  external bool get resizeMode;
  external set resizeMode(bool newValue);

  ///  A Boolean value whose value is [true] if the [sampleRate]
  /// constraint is supported in the current environment.
  external bool get sampleRate;
  external set sampleRate(bool newValue);

  ///  A Boolean value whose value is [true] if the [sampleSize]
  /// constraint is supported in the current environment.
  external bool get sampleSize;
  external set sampleSize(bool newValue);

  ///  A Boolean value whose value is [true] if the [echoCancellation]
  /// constraint is supported in the current environment.
  external bool get echoCancellation;
  external set echoCancellation(bool newValue);

  ///  A Boolean whose value is [true] if the [autoGainControl]
  /// constraint is supported in the current environment.
  external bool get autoGainControl;
  external set autoGainControl(bool newValue);

  ///  A Boolean whose value is [true] if the [noiseSuppression]
  /// constraint is supported in the current environment.
  external bool get noiseSuppression;
  external set noiseSuppression(bool newValue);

  ///  A Boolean value whose value is [true] if the [latency]
  /// constraint is supported in the current environment.
  external bool get latency;
  external set latency(bool newValue);

  ///  A Boolean value whose value is [true] if the [channelCount]
  /// constraint is supported in the current environment.
  external bool get channelCount;
  external set channelCount(bool newValue);

  ///  A Boolean value whose value is [true] if the [deviceId]
  /// constraint is supported in the current environment.
  external bool get deviceId;
  external set deviceId(bool newValue);

  ///  A Boolean value whose value is [true] if the [groupId]
  /// constraint is supported in the current environment.
  external bool get groupId;
  external set groupId(bool newValue);

  external factory MediaTrackSupportedConstraints(
      {bool width = true,
      bool height = true,
      bool aspectRatio = true,
      bool frameRate = true,
      bool facingMode = true,
      bool resizeMode = true,
      bool sampleRate = true,
      bool sampleSize = true,
      bool echoCancellation = true,
      bool autoGainControl = true,
      bool noiseSuppression = true,
      bool latency = true,
      bool channelCount = true,
      bool deviceId = true,
      bool groupId = true});
}

@anonymous
@JS()
class MediaTrackCapabilities {
  external ULongRange get width;
  external set width(ULongRange newValue);
  external ULongRange get height;
  external set height(ULongRange newValue);
  external DoubleRange get aspectRatio;
  external set aspectRatio(DoubleRange newValue);
  external DoubleRange get frameRate;
  external set frameRate(DoubleRange newValue);
  external Iterable<String> get facingMode;
  external set facingMode(Iterable<String> newValue);
  external Iterable<String> get resizeMode;
  external set resizeMode(Iterable<String> newValue);
  external ULongRange get sampleRate;
  external set sampleRate(ULongRange newValue);
  external ULongRange get sampleSize;
  external set sampleSize(ULongRange newValue);
  external Iterable<bool> get echoCancellation;
  external set echoCancellation(Iterable<bool> newValue);
  external Iterable<bool> get autoGainControl;
  external set autoGainControl(Iterable<bool> newValue);
  external Iterable<bool> get noiseSuppression;
  external set noiseSuppression(Iterable<bool> newValue);
  external DoubleRange get latency;
  external set latency(DoubleRange newValue);
  external ULongRange get channelCount;
  external set channelCount(ULongRange newValue);
  external String get deviceId;
  external set deviceId(String newValue);
  external String get groupId;
  external set groupId(String newValue);

  external factory MediaTrackCapabilities(
      {ULongRange width,
      ULongRange height,
      DoubleRange aspectRatio,
      DoubleRange frameRate,
      Iterable<String> facingMode,
      Iterable<String> resizeMode,
      ULongRange sampleRate,
      ULongRange sampleSize,
      Iterable<bool> echoCancellation,
      Iterable<bool> autoGainControl,
      Iterable<bool> noiseSuppression,
      DoubleRange latency,
      ULongRange channelCount,
      String deviceId,
      String groupId});
}

///
///
///  The dictionary is used to describe a set of capabilities and the
/// value or values each can take on. A constraints dictionary is
/// passed into [applyConstraints()] to allow a script to establish a
/// set of exact (required) values or ranges and/or preferred values
/// or ranges of values for the track, and the most
/// recently-requested set of custom constraints can be retrieved by
/// calling [getConstraints()].
///
///  For each constraint, you can typically specify an exact value
/// you need, an ideal value you want, a range of acceptable values,
/// and/or a value which you'd like to be as close to as possible.
/// The specifics vary somewhat depending on the type of the
/// constrainable property.
///
///  To learn more about how constraints work, see Capabilities,
/// constraints, and settings.
@anonymous
@JS()
class MediaTrackConstraints // null -> {} -> MediaTrackConstraintSet
    with
        MediaTrackConstraintSet {
  external Iterable<MediaTrackConstraintSet> get advanced;
  external set advanced(Iterable<MediaTrackConstraintSet> newValue);

  external factory MediaTrackConstraints(
      {Iterable<MediaTrackConstraintSet> advanced});
}

@anonymous
@JS()
class MediaTrackConstraintSet {
  external dynamic get width;
  external set width(dynamic newValue);
  external dynamic get height;
  external set height(dynamic newValue);
  external dynamic get aspectRatio;
  external set aspectRatio(dynamic newValue);
  external dynamic get frameRate;
  external set frameRate(dynamic newValue);
  external dynamic get facingMode;
  external set facingMode(dynamic newValue);
  external dynamic get resizeMode;
  external set resizeMode(dynamic newValue);
  external dynamic get sampleRate;
  external set sampleRate(dynamic newValue);
  external dynamic get sampleSize;
  external set sampleSize(dynamic newValue);
  external dynamic get echoCancellation;
  external set echoCancellation(dynamic newValue);
  external dynamic get autoGainControl;
  external set autoGainControl(dynamic newValue);
  external dynamic get noiseSuppression;
  external set noiseSuppression(dynamic newValue);
  external dynamic get latency;
  external set latency(dynamic newValue);
  external dynamic get channelCount;
  external set channelCount(dynamic newValue);
  external dynamic get deviceId;
  external set deviceId(dynamic newValue);
  external dynamic get groupId;
  external set groupId(dynamic newValue);

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

///
///
///  The dictionary is used to return the current values configured
/// for each of a [MediaStreamTrack]'s settings. These values will
/// adhere as closely as possible to any constraints previously
/// described using a [MediaTrackConstraints] object and set using
/// [applyConstraints()], and will adhere to the default constraints
/// for any properties whose constraints haven't been changed, or
/// whose customized constraints couldn't be matched.
///
///  To learn more about how constraints and settings work, see
/// Capabilities, constraints, and settings.
@anonymous
@JS()
class MediaTrackSettings {
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external double get aspectRatio;
  external set aspectRatio(double newValue);
  external double get frameRate;
  external set frameRate(double newValue);
  external String get facingMode;
  external set facingMode(String newValue);
  external String get resizeMode;
  external set resizeMode(String newValue);
  external int get sampleRate;
  external set sampleRate(int newValue);
  external int get sampleSize;
  external set sampleSize(int newValue);
  external bool get echoCancellation;
  external set echoCancellation(bool newValue);
  external bool get autoGainControl;
  external set autoGainControl(bool newValue);
  external bool get noiseSuppression;
  external set noiseSuppression(bool newValue);
  external double get latency;
  external set latency(double newValue);
  external int get channelCount;
  external set channelCount(int newValue);
  external String get deviceId;
  external set deviceId(String newValue);
  external String get groupId;
  external set groupId(String newValue);

  external factory MediaTrackSettings(
      {int width,
      int height,
      double aspectRatio,
      double frameRate,
      String facingMode,
      String resizeMode,
      int sampleRate,
      int sampleSize,
      bool echoCancellation,
      bool autoGainControl,
      bool noiseSuppression,
      double latency,
      int channelCount,
      String deviceId,
      String groupId});
}

@JS()
enum VideoFacingModeEnum { user, environment, left, right }

@JS()
enum VideoResizeModeEnum {
  none,
  @JS('crop-and-scale')
  cropAndScale
}

///
///
///  The interface represents events which indicate that a
/// [MediaStream] has had tracks added to or removed from the stream
/// through calls to Media Stream API methods. These events are sent
/// to the stream when these changes occur.
///
///  The events based on this interface are [addtrack] and
/// [removetrack]
@JS()
class MediaStreamTrackEvent // null -> {} -> Event
    with
        Event {
  external factory MediaStreamTrackEvent(
      String type, MediaStreamTrackEventInit eventInitDict);

  ///  A [MediaStreamTrack] object representing the track which was
  /// added to the stream.
  external MediaStreamTrack get track;
}

@anonymous
@JS()
class MediaStreamTrackEventInit // null -> {} -> EventInit
    with
        EventInit {
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack newValue);

  external factory MediaStreamTrackEventInit({MediaStreamTrack track});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Media Capture and Streams API indicates
/// that the set of desired capabilities for the current
/// [MediaStreamTrack] cannot currently be met. When this event is
/// thrown on a MediaStreamTrack, it is muted until either the
/// current constraints can be established or until satisfiable
/// constraints are applied.
@JS()
class OverconstrainedError // null -> {} -> DOMException
    with
        DOMException {
  external factory OverconstrainedError(String constraint,
      [String? message = '']);

  ///  Returns the constraint that was supplied in the constructor,
  /// meaning the constraint that was not satisfied.
  external String get constraint;
}

///
///
///  The interface provides access to connected media input devices
/// like cameras and microphones, as well as screen sharing. In
/// essence, it lets you obtain access to any hardware source of
/// media data.
@JS()
class MediaDevices // null -> {} -> EventTarget
    with
        EventTarget {
  external EventHandlerNonNull? get ondevicechange;
  external set ondevicechange(EventHandlerNonNull? newValue);

  ///  Obtains an array of information about the media input and output
  /// devices available on the system.
  /// var enumeratorPromise = navigator.mediaDevices.enumerateDevices();
  ///
  /// Here's an example of using enumerateDevices(). It outputs a list of the device IDs, with their labels
  ///  if available.
  ///
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
  /// This might produce:
  ///
  /// videoinput: id = csO9c0YpAf274OuCPUA53CNE0YHlIr2yXCi+SqfBZZ8=
  /// audioinput: id = RKxXByjnabbADGQNNZqLVLdmXlS0YkETYCIbg+XxnvM=
  /// audioinput: id = r2/xw1xUPIyZunfV1lGrKOma5wTOvCkWfZ368XCndm0=
  /// or if one or more MediaStreams are active or persistent permissions are
  ///  granted:
  ///
  /// videoinput: FaceTime HD Camera (Built-in) id=csO9c0YpAf274OuCPUA53CNE0YHlIr2yXCi+SqfBZZ8=
  /// audioinput: default (Built-in Microphone) id=RKxXByjnabbADGQNNZqLVLdmXlS0YkETYCIbg+XxnvM=
  /// audioinput: Built-in Microphone id=r2/xw1xUPIyZunfV1lGrKOma5wTOvCkWfZ368XCndm0=
  ///
  external Iterable<Promise<MediaDeviceInfo>> enumerateDevices();
  external Promise<MediaDeviceInfo> selectAudioOutput(
      [AudioOutputOptions? options]);
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external Promise<MediaStream> getUserMedia(
      [MediaStreamConstraints? constraints]);
  external Promise<MediaStream> getDisplayMedia(
      [DisplayMediaStreamConstraints? constraints]);

  external factory MediaDevices();
}

///
///
///  The interface contains information that describes a single media
/// input or output device. The list of devices obtained by calling
/// [navigator.mediaDevices.enumerateDevices()] is an array of
/// objects, one per media device.
@JS()
class MediaDeviceInfo {
  ///  Returns a [DOMString] that is an identifier for the represented
  /// device that is persisted across sessions. It is un-guessable by
  /// other applications and unique to the origin of the calling
  /// application. It is reset when the user clears cookies (for
  /// Private Browsing, a different identifier is used that is not
  /// persisted across sessions).
  external String get deviceId;

  ///  Returns an enumerated value that is either ["videoinput"],
  /// ["audioinput"] or ["audiooutput"].
  external MediaDeviceKind get kind;

  ///  Returns a [DOMString] that is a label describing this device
  /// (for example "External USB Webcam").
  external String get label;

  ///  Returns a [DOMString] that is a group identifier. Two devices
  /// have the same group identifier if they belong to the same
  /// physical device — for example a monitor with both a built-in
  /// camera and a microphone.
  external String get groupId;
  external dynamic toJSON();

  external factory MediaDeviceInfo();
}

@JS()
enum MediaDeviceKind { audioinput, audiooutput, videoinput }

///  The interface of the Media Streams API gives access to the
/// capabilities of the input device that it represents.
///
///   objects are returned by [MediaDevices.enumerateDevices()] if
/// the returned device is an audio or video input device.
@JS()
class InputDeviceInfo // null -> {} -> MediaDeviceInfo
    with
        MediaDeviceInfo {
  ///  Returns a [MediaTrackCapabilities] object describing the primary
  /// audio or video track of a device's [MediaStream].
  /// InputDeviceInfo.getCapabilities();
  external MediaTrackCapabilities getCapabilities();

  external factory InputDeviceInfo();
}

///
///
///  The dictionary is used when calling [getUserMedia()] to specify
/// what kinds of tracks should be included in the returned
/// [MediaStream], and, optionally, to establish constraints for
/// those tracks' settings.
///
///  To learn more about how constraints work, see Capabilities,
/// constraints, and settings.
@anonymous
@JS()
class MediaStreamConstraints {
  external dynamic get video;
  external set video(dynamic newValue);
  external dynamic get audio;
  external set audio(dynamic newValue);

  external factory MediaStreamConstraints(
      {dynamic video = false, dynamic audio = false});
}

///
///
///  The dictionary is used to define a range of permitted
/// double-precision floating-point values for a property, with
/// either or both a maximum and minimum value specified. The
/// [ConstrainDouble] dictionary is based on this, augmenting it to
/// support exact and ideal values as well.
@anonymous
@JS()
class DoubleRange {
  ///  A floating-point value specifying the largest permissible value
  /// of the property it describes.
  external double get max;
  external set max(double newValue);

  ///  A floating-point value specifying the smallest permissible value
  /// of the property it describes.
  external double get min;
  external set min(double newValue);

  external factory DoubleRange({double max, double min});
}

@anonymous
@JS()
class ConstrainDoubleRange // null -> {} -> DoubleRange
    with
        DoubleRange {
  external double get exact;
  external set exact(double newValue);
  external double get ideal;
  external set ideal(double newValue);

  external factory ConstrainDoubleRange({double exact, double ideal});
}

///
///
///  The dictionary is used to define a range of permitted integer
/// values for a property, with either or both a maximum and minimum
/// value specified. The [ConstrainULongRange] dictionary is based on
/// this, augmenting it to support exact and ideal values as well.
@anonymous
@JS()
class ULongRange {
  ///  A numeric value in the range of signed 32-bit integers,
  /// specifying the largest permissible value of the property it
  /// describes.
  external int get max;
  external set max(int newValue);

  ///  A numeric value in the range of signed 32-bit integers,
  /// specifying the smallest permissible value of the property it
  /// describes.
  external int get min;
  external set min(int newValue);

  external factory ULongRange({int max, int min});
}

@anonymous
@JS()
class ConstrainULongRange // null -> {} -> ULongRange
    with
        ULongRange {
  external int get exact;
  external set exact(int newValue);
  external int get ideal;
  external set ideal(int newValue);

  external factory ConstrainULongRange({int exact, int ideal});
}

@anonymous
@JS()
class ConstrainBooleanParameters {
  external bool get exact;
  external set exact(bool newValue);
  external bool get ideal;
  external set ideal(bool newValue);

  external factory ConstrainBooleanParameters({bool exact, bool ideal});
}

@anonymous
@JS()
class ConstrainDOMStringParameters {
  external dynamic get exact;
  external set exact(dynamic newValue);
  external dynamic get ideal;
  external set ideal(dynamic newValue);

  external factory ConstrainDOMStringParameters({dynamic exact, dynamic ideal});
}