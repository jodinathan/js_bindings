/// Media Capture from DOM Elements
///
/// https://w3c.github.io/mediacapture-fromelement/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_fromelement;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CanvasCaptureMediaStreamTrack implements MediaStreamTrack {
  external CanvasCaptureMediaStreamTrack();
}

extension PropsCanvasCaptureMediaStreamTrack on CanvasCaptureMediaStreamTrack {
  HTMLCanvasElement get canvas => js_util.getProperty(this, 'canvas');
  Object requestFrame() => js_util.callMethod(this, 'requestFrame', []);
}
