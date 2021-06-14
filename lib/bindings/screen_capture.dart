/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/
@JS('window')
library screen_capture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'mediacapture_streams.dart';

///
///
///  The [DisplayMediaStreamConstraints] dictionary is used to
/// specify whether or not to include video and/or audio tracks in
/// the [MediaStream] to be returned by [getDisplayMedia()], as well
/// as what type of processing must be applied to the tracks.
/// Processing information is specified using [MediaTrackConstraints]
/// objects providing options which are applied to the track after
/// the media data is received but before it is made available on the
/// [MediaStream].
@anonymous
@JS()
class DisplayMediaStreamConstraints {
  ///  If [true] (the default), the display contents are included in a
  /// [MediaStreamTrack] within the stream provided by
  /// [getDisplayMedia()]. Optionally, a [MediaTrackConstraints] object
  /// may be given, providing options specifying processing to be
  /// performed on the video data before adding it to the stream. A
  /// value of [false] is not permitted, and results in a [TypeError]
  /// being thrown.
  external dynamic get video;
  external set video(dynamic newValue);

  ///  A Boolean or [MediaTrackConstraints] value; if a Boolean, this
  /// value indicates whether or not to include an audio track in the
  /// [MediaStream] returned by [getDisplayMedia()]. If a
  /// [MediaTrackConstraints] object is provided here, an audio track
  /// is included in the stream, but the audio is processed to match
  /// the specified constraints after being retrieved from the hardware
  /// but before being added to the [MediaStream]. The default value is
  /// [false].
  external dynamic get audio;
  external set audio(dynamic newValue);

  external factory DisplayMediaStreamConstraints(
      {dynamic video = true, dynamic audio = false});
}

@JS()
enum DisplayCaptureSurfaceType { monitor, window, application, browser }

@JS()
enum CursorCaptureConstraint { never, always, motion }
