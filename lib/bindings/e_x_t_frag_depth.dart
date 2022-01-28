/// WebGL EXT_frag_depth Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_frag_depth/
@JS('window')
@staticInterop
library e_x_t_frag_depth;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and enables to set a
/// depth value of a fragment from within the fragment shader.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. It requires GLSL [#version 300 es].
///
@JS()
@staticInterop
class EXT_frag_depth {
  external factory EXT_frag_depth();
}
