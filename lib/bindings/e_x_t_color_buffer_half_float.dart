/// WebGL EXT_color_buffer_half_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_color_buffer_half_float/
@JS('window')
@staticInterop
library e_x_t_color_buffer_half_float;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and adds the ability to
/// render to 16-bit floating-point color buffers.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts. On WebGL 2, it's an alternative to using the
/// [EXT_color_buffer_float] extension on platforms that support
/// 16-bit floating point render targets but not 32-bit floating
/// point render targets.
///   The [OES_texture_half_float] extension implicitly enables this
/// extension.
///
@JS()
@staticInterop
class EXT_color_buffer_half_float {
  external static int get RGBA16F_EXT;
  external static int get RGB16F_EXT;
  external static int get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external static int get UNSIGNED_NORMALIZED_EXT;
  external factory EXT_color_buffer_half_float();
}
