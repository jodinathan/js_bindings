/// WebXR Raw Camera Access Module
///
/// https://immersive-web.github.io/raw-camera-access/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library raw_camera_access;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class XRCamera {
  external factory XRCamera();
}

extension PropsXRCamera on XRCamera {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
}
