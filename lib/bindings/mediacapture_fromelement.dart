/// Media Capture from DOM Elements
///
/// https://w3c.github.io/mediacapture-fromelement/
@JS('window')
library mediacapture_fromelement;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

///
///
///  The interface represents the video track contained in a
/// [MediaStream] being generated from a [<canvas>] following a call
/// to [HTMLCanvasElement.captureStream()].
///
/// Part of the Media Capture and Streams API.
@experimental
@JS()
class CanvasCaptureMediaStreamTrack extends MediaStreamTrack {
  ///  Returns the [HTMLCanvasElement] object whose surface is captured
  /// in real-time.
  external HTMLCanvasElement get canvas;

  ///  Manually forces a frame to be captured and sent to the stream.
  /// This lets applications that wish to specify the frame capture
  /// times directly do so, if they specified a [frameRate] of 0 when
  /// calling [captureStream()].
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
  external Object requestFrame();

  external factory CanvasCaptureMediaStreamTrack();
}
