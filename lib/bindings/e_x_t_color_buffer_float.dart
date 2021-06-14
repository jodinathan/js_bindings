/// WebGL EXT_color_buffer_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_color_buffer_float/
@JS('window')
library e_x_t_color_buffer_float;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [EXT_color_buffer_float] extension is part of WebGL and adds
/// the ability to render a variety of floating point formats.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is available to WebGL 2 contexts
/// only.
///
///  For WebGL 1, see the [EXT_color_buffer_half_float] and
/// [WEBGL_color_buffer_float] extensions.
///
@JS()
class EXT_color_buffer_float {
  external factory EXT_color_buffer_float();
}
