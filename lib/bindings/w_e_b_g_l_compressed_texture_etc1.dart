/// WebGL WEBGL_compressed_texture_etc1 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_etc1/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_etc1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes the ETC1
/// compressed texture format.
///  Compressed textures reduce the amount of memory needed to store
/// a texture on the GPU, allowing for higher resolution textures or
/// more of the same resolution textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class WEBGL_compressed_texture_etc1 {
  external static int get COMPRESSED_RGB_ETC1_WEBGL;
  external factory WEBGL_compressed_texture_etc1();
}
