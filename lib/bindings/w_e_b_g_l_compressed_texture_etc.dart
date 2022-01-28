/// WebGL WEBGL_compressed_texture_etc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_etc/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_etc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes 10 ETC/EAC
/// compressed texture formats.
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
class WEBGL_compressed_texture_etc {
  external static int get COMPRESSED_R11_EAC;
  external static int get COMPRESSED_SIGNED_R11_EAC;
  external static int get COMPRESSED_RG11_EAC;
  external static int get COMPRESSED_SIGNED_RG11_EAC;
  external static int get COMPRESSED_RGB8_ETC2;
  external static int get COMPRESSED_SRGB8_ETC2;
  external static int get COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external static int get COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external static int get COMPRESSED_RGBA8_ETC2_EAC;
  external static int get COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
  external factory WEBGL_compressed_texture_etc();
}
