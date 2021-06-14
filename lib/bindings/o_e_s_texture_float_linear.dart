/// WebGL OES_texture_float_linear Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_float_linear/
@JS('window')
library o_e_s_texture_float_linear;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [OES_texture_float_linear] extension is part of the WebGL
/// API and allows linear filtering with floating-point pixel types
/// for textures.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is available to both, WebGL1 and
/// WebGL2 contexts.
///
@JS()
class OES_texture_float_linear {
  external factory OES_texture_float_linear();
}
