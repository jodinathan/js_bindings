/// WebGL WEBGL_debug_shaders Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_debug_shaders/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_debug_shaders;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_debug_shaders')
@staticInterop
class WEBGLDebugShaders {
  external WEBGLDebugShaders();
}

extension PropsWEBGLDebugShaders on WEBGLDebugShaders {
  String getTranslatedShaderSource(WebGLShader shader) =>
      js_util.callMethod(this, 'getTranslatedShaderSource', [shader]);
}
