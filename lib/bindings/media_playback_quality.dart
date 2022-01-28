/// Media Playback Quality
///
/// https://w3c.github.io/media-playback-quality/
@JS('window')
@staticInterop
library media_playback_quality;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
hr_time_3 */

///  A object is returned by the
/// [HTMLVideoElement.getVideoPlaybackQuality()] method and contains
/// metrics that can be used to determine the playback quality of a
/// video.
@experimental
@JS()
@staticInterop
class VideoPlaybackQuality {
  external factory VideoPlaybackQuality();
}

extension PropsVideoPlaybackQuality on VideoPlaybackQuality {
  ///  A [DOMHighResTimeStamp] containing the time in milliseconds
  /// between the start of the navigation and the creation of the
  /// object.
  ///
  external double get creationTime;

  ///  An [unsigned long] giving the number of video frames dropped
  /// since the creation of the associated [HTMLVideoElement].
  ///
  external int get droppedVideoFrames;

  ///  An [unsigned long] giving the number of video frames created and
  /// dropped since the creation of the associated [HTMLVideoElement].
  ///
  external int get totalVideoFrames;
  external int get corruptedVideoFrames;
}
