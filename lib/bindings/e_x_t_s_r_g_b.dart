/// WebGL EXT_sRGB Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_sRGB/
@JS('window')
@staticInterop
library e_x_t_s_r_g_b;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and adds sRGB support to
/// textures and framebuffer objects.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constants in WebGL2 are:
/// [gl.SRGB], [gl.SRGB8], [gl.SRGB8_ALPHA8] and
/// [gl.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING].
///
@JS()
@staticInterop
class EXT_sRGB {
  external static int get SRGB_EXT;
  external static int get SRGB_ALPHA_EXT;
  external static int get SRGB8_ALPHA8_EXT;
  external static int get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT;
  external factory EXT_sRGB();
}
