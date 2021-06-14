/// WebGL OES_texture_half_float Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_half_float/
@JS('window')
library o_e_s_texture_half_float;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [OES_texture_half_float] extension is part of the WebGL API
/// and adds texture formats with 16- (aka half float) and 32-bit
/// floating-point components.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default. The constant in
/// WebGL2 is [gl.HALF_FLOAT].
///
@JS()
class OES_texture_half_float {
  external static int get HALF_FLOAT_OES;

  external factory OES_texture_half_float();
}
