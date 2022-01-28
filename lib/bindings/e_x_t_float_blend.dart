/// WebGL EXT_float_blend Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_float_blend/
@JS('window')
@staticInterop
library e_x_t_float_blend;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The WebGL API's extension allows blending and draw buffers with
/// 32-bit floating-point components.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts. However, to use it, you need to enable the use of
/// 32-bit floating-point draw buffers by enabling the extension
/// [WEBGL_color_buffer_float] (for WebGL1) or
/// [EXT_color_buffer_float] (for WebGL2). Doing so automatically
/// enables as well.
///
///  With this extension enabled, calling [drawArrays()] or
/// [drawElements()] with blending enabled and a draw buffer with
/// 32-bit floating-point components will no longer result in an
/// [INVALID_OPERATION] error.
@JS()
@staticInterop
class EXT_float_blend {
  external factory EXT_float_blend();
}
