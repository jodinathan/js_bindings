/// WebGL WEBGL_compressed_texture_s3tc Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_s3tc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes four S3TC
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
class WEBGL_compressed_texture_s3tc {
  external static int get COMPRESSED_RGB_S3TC_DXT1_EXT;
  external static int get COMPRESSED_RGBA_S3TC_DXT1_EXT;
  external static int get COMPRESSED_RGBA_S3TC_DXT3_EXT;
  external static int get COMPRESSED_RGBA_S3TC_DXT5_EXT;
  external factory WEBGL_compressed_texture_s3tc();
}
