/// WebGL EXT_blend_minmax Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_blend_minmax/
@JS('window')
@staticInterop
library e_x_t_blend_minmax;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and extends blending
/// capabilities by adding two new blend equations: the minimum or
/// maximum color components of the source and destination colors.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constants in WebGL2 are [gl.MIN]
/// and [gl.MAX].
///
@JS()
@staticInterop
class EXT_blend_minmax {
  external static int get MIN_EXT;
  external static int get MAX_EXT;
  external factory EXT_blend_minmax();
}
