/// WebGL WEBGL_color_buffer_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_color_buffer_float/
@JS('window')
library w_e_b_g_l_color_buffer_float;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [WEBGL_color_buffer_float] extension is part of the WebGL
/// API and adds the ability to render to 32-bit floating-point color
/// buffers.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is available to WebGL 1 contexts
/// only. For WebGL 2, use the [EXT_color_buffer_float] extension.
///
///  The [OES_texture_float] extension implicitly enables this
/// extension.
///
@JS()
class WEBGL_color_buffer_float {
  external static int get RGBA32F_EXT;
  external static int get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external static int get UNSIGNED_NORMALIZED_EXT;

  external factory WEBGL_color_buffer_float();
}
