/// WebGL WEBGL_depth_texture Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_depth_texture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_depth_texture')
@staticInterop
class WEBGLDepthTexture {
  @JS('UNSIGNED_INT_24_8_WEBGL')
  external static int get unsignedInt248Webgl;

  external WEBGLDepthTexture();
}
