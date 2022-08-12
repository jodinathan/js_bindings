/// Media Playback Quality
///
/// https://w3c.github.io/media-playback-quality/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library media_playback_quality;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

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
  double get creationTime => js_util.getProperty(this, 'creationTime');
  int get droppedVideoFrames => js_util.getProperty(this, 'droppedVideoFrames');
  int get totalVideoFrames => js_util.getProperty(this, 'totalVideoFrames');
  int get corruptedVideoFrames =>
      js_util.getProperty(this, 'corruptedVideoFrames');
}
