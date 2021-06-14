/// WebGL OES_standard_derivatives Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_standard_derivatives/
@JS('window')
library o_e_s_standard_derivatives;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [OES_standard_derivatives] extension is part of the WebGL
/// API and adds the GLSL derivative functions [dFdx], [dFdy], and
/// [fwidth].
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default. In WebGL 2, the
/// constant is available as [gl.FRAGMENT_SHADER_DERIVATIVE_HINT] and
/// it requires GLSL [#version 300 es].
///
@JS()
class OES_standard_derivatives {
  external static int get FRAGMENT_SHADER_DERIVATIVE_HINT_OES;

  external factory OES_standard_derivatives();
}
