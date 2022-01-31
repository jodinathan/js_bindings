/// MediaStreamTrack Content Hints
///
/// https://w3c.github.io/mst-content-hint/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mst_content_hint;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum RTCDegradationPreference {
  maintainFramerate,
  maintainResolution,
  balanced
}
