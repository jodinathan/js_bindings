/// MediaStreamTrack Content Hints
///
/// https://w3c.github.io/mst-content-hint/
@JS('window')
library mst_content_hint;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'mediacapture_streams.dart';
import 'webrtc.dart';

@JS()
enum RTCDegradationPreference {
  @JS('maintain-framerate')
  maintainFramerate,
  @JS('maintain-resolution')
  maintainResolution,
  balanced
}
