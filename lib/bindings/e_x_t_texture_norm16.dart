/// WebGL EXT_texture_norm16 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_norm16/
@JS('window')
@staticInterop
library e_x_t_texture_norm16;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and provides a set of new
/// 16-bit signed normalized and unsigned normalized formats
/// (fixed-point texture, renderbuffer and texture buffer).
/// When this extension is enabled:
///
///   The [WebGLRenderingContext.texImage2D()] and
/// [WebGLRenderingContext.texSubImage2D()] methods accept new
/// formats provided by this extension.
///   The 16-bit normalized fixed-point types [ext.R16_EXT],
/// [ext.RG16_EXT] and [ext.RGBA16_EXT] become available as
/// color-renderable formats and renderbuffers and be created in
/// these formats.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///  Note: This extension is only available to WebGL 2 contexts.
///
@JS()
@staticInterop
class EXT_texture_norm16 {
  external static int get R16_EXT;
  external static int get RG16_EXT;
  external static int get RGB16_EXT;
  external static int get RGBA16_EXT;
  external static int get R16_SNORM_EXT;
  external static int get RG16_SNORM_EXT;
  external static int get RGB16_SNORM_EXT;
  external static int get RGBA16_SNORM_EXT;
  external factory EXT_texture_norm16();
}
