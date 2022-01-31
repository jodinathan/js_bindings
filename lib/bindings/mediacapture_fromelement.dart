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
@experimental
@JS()
@staticInterop
class CanvasCaptureMediaStreamTrack implements MediaStreamTrack {
  external CanvasCaptureMediaStreamTrack();
}

extension PropsCanvasCaptureMediaStreamTrack on CanvasCaptureMediaStreamTrack {
  ///  Returns the [HTMLCanvasElement] object whose surface is captured
  /// in real-time.
  ///
  HTMLCanvasElement get canvas => js_util.getProperty(this, 'canvas');

  ///  Manually forces a frame to be captured and sent to the stream.
  /// This lets applications that wish to specify the frame capture
  /// times directly do so, if they specified a [frameRate] of 0 when
  /// calling [captureStream()].
  ///
  /// stream.requestFrame();
  ///
  /// // Find the canvas element to capture
  /// var canvasElt = document.getElementsByTagName("canvas")[0];
  ///
  /// // Get the stream
  /// var stream = canvasElt.captureStream(25); // 25 FPS
  ///
  /// // Send the current state of the canvas as a frame to the stream
  /// stream.getVideoTracks()[0].requestFrame();
  ///
  Object requestFrame() => js_util.callMethod(this, 'requestFrame', []);
}
