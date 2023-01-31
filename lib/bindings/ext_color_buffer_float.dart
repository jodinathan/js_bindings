/// WebGL EXT_color_buffer_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_color_buffer_float/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_color_buffer_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of WebGL and adds the ability to render a
/// variety of floating point formats.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///  Note: This extension is available to WebGL 2 contexts only.
///   For WebGL 1, see the [EXT_color_buffer_half_float] and
/// [WEBGL_color_buffer_float] extensions.
///
@JS('EXT_color_buffer_float')
@staticInterop
class EXTColorBufferFloat {
  external factory EXTColorBufferFloat();
}
