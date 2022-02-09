/// Region Capture
///
/// https://w3c.github.io/mediacapture-region/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_region;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CropTarget {
  external CropTarget();
}

@JS()
@staticInterop
class BrowserCaptureMediaStreamTrack implements MediaStreamTrack {
  external BrowserCaptureMediaStreamTrack();
}

extension PropsBrowserCaptureMediaStreamTrack
    on BrowserCaptureMediaStreamTrack {
  Future<Object> cropTo(CropTarget? cropTarget) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cropTo', [cropTarget]));

  BrowserCaptureMediaStreamTrack clone() =>
      js_util.callMethod(this, 'clone', []);
}
