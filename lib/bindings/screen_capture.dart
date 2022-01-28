/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/
@JS('window')
@staticInterop
library screen_capture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: mediacapture_streams */

@anonymous
@JS()
@staticInterop
class DisplayMediaStreamConstraints {
  external factory DisplayMediaStreamConstraints(
      {dynamic video = true, dynamic audio = false});
}

extension PropsDisplayMediaStreamConstraints on DisplayMediaStreamConstraints {
  external dynamic get video;
  external set video(dynamic newValue);
  external dynamic get audio;
  external set audio(dynamic newValue);
}

enum DisplayCaptureSurfaceType { monitor, window, application, browser }

enum CursorCaptureConstraint { never, always, motion }
