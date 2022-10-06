/// Media Capture from DOM Elements
///
/// https://w3c.github.io/mediacapture-fromelement/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_fromelement;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface represents the video track contained in a
/// [MediaStream] being generated from a [<canvas>] following a call
/// to [HTMLCanvasElement.captureStream()].
/// Part of the Media Capture and Streams API.
///
///
///
///    EventTarget
///
///
///
///
///
///    MediaStreamTrack
///
///
///
///
///
///    CanvasCaptureMediaStreamTrack
///
///
@experimental
@JS()
@staticInterop
class CanvasCaptureMediaStreamTrack implements MediaStreamTrack {
  external factory CanvasCaptureMediaStreamTrack();
}

extension PropsCanvasCaptureMediaStreamTrack on CanvasCaptureMediaStreamTrack {
  HTMLCanvasElement get canvas => js_util.getProperty(this, 'canvas');
  void requestFrame() => js_util.callMethod(this, 'requestFrame', []);
}
