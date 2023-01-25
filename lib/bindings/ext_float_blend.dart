/// WebGL EXT_float_blend Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_float_blend/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_float_blend;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
/// enables as well, if and only if is also supported. Support for
/// [EXT_color_buffer_float] does not imply support for .
///
///  With this extension enabled, calling [drawArrays()] or
/// [drawElements()] with blending enabled and a draw buffer with
/// 32-bit floating-point components will no longer result in an
/// [INVALID_OPERATION] error.
@JS('EXT_float_blend')
@staticInterop
class EXTFloatBlend {
  external factory EXTFloatBlend();
}
