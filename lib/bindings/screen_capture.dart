/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library screen_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class DisplayMediaStreamConstraints {
  external factory DisplayMediaStreamConstraints(
      {dynamic video = true, dynamic audio = false});
}

extension PropsDisplayMediaStreamConstraints on DisplayMediaStreamConstraints {
  dynamic get video => js_util.getProperty(this, 'video');
  set video(dynamic newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  dynamic get audio => js_util.getProperty(this, 'audio');
  set audio(dynamic newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }
}

enum DisplayCaptureSurfaceType { monitor, window, application, browser }

enum CursorCaptureConstraint { never, always, motion }
