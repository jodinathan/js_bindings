/// Viewport Capture
///
/// https://w3c.github.io/mediacapture-viewport/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_viewport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class ViewportMediaStreamConstraints {
  external factory ViewportMediaStreamConstraints(
      {dynamic video = true, dynamic audio = false});
}

extension PropsViewportMediaStreamConstraints
    on ViewportMediaStreamConstraints {
  dynamic get video => js_util.getProperty(this, 'video');
  set video(dynamic newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  dynamic get audio => js_util.getProperty(this, 'audio');
  set audio(dynamic newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }
}
