/// WebGL WEBGL_depth_texture Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/
@JS('window')
library w_e_b_g_l_depth_texture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [WEBGL_depth_texture] extension is part of the WebGL API and
/// defines 2D depth and depth-stencil textures.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default. The constant in
/// WebGL2 is [gl.UNSIGNED_INT_24_8].
///
@JS()
class WEBGL_depth_texture {
  external static int get UNSIGNED_INT_24_8_WEBGL;

  external factory WEBGL_depth_texture();
}
