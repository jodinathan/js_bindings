/// Media Playback Quality
///
/// https://w3c.github.io/media-playback-quality/
@JS('window')
library media_playback_quality;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'hr_time_3.dart';

///
///
///  A [VideoPlaybackQuality] object is returned by the
/// [HTMLVideoElement.getVideoPlaybackQuality()] method and contains
/// metrics that can be used to determine the playback quality of a
/// video.
@experimental
@JS()
class VideoPlaybackQuality {
  ///  A [DOMHighResTimeStamp] containing the time in milliseconds
  /// between the start of the navigation and the creation of the
  /// object.
  external double get creationTime;

  ///  An [unsigned long] giving the number of video frames dropped
  /// since the creation of the associated [HTMLVideoElement].
  external int get droppedVideoFrames;

  ///  An [unsigned long] giving the number of video frames created and
  /// dropped since the creation of the associated [HTMLVideoElement].
  external int get totalVideoFrames;
  external int get corruptedVideoFrames;

  external factory VideoPlaybackQuality();
}
