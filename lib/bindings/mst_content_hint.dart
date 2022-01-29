/// MediaStreamTrack Content Hints
///
/// https://w3c.github.io/mst-content-hint/
@JS('window')
@staticInterop
library mst_content_hint;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: mediacapture_streams
webrtc */

enum RTCDegradationPreference {
  maintainFramerate,
  maintainResolution,
  balanced
}
