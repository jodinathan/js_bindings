/// WebGL OES_texture_half_float_linear Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_half_float_linear/
@JS('window')
@staticInterop
library o_e_s_texture_half_float_linear;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and allows linear
/// filtering with half floating-point pixel types for textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class OES_texture_half_float_linear {
  external OES_texture_half_float_linear();
}
