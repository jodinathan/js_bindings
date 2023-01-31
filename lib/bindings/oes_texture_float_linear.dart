/// WebGL OES_texture_float_linear Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_float_linear/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library oes_texture_float_linear;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and allows linear
/// filtering with floating-point pixel types for textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS('OES_texture_float_linear')
@staticInterop
class OESTextureFloatLinear {
  external factory OESTextureFloatLinear();
}
