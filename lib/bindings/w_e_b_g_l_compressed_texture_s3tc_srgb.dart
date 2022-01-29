/// WebGL WEBGL_compressed_texture_s3tc_srgb Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc_srgb/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_s3tc_srgb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes four S3TC
/// compressed texture formats for the sRGB colorspace.
///  Compressed textures reduce the amount of memory needed to store
/// a texture on the GPU, allowing for higher resolution textures or
/// more of the same resolution textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class WEBGL_compressed_texture_s3tc_srgb {
  external static int get COMPRESSED_SRGB_S3TC_DXT1_EXT;
  external static int get COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT;
  external static int get COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT;
  external static int get COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT;
  external WEBGL_compressed_texture_s3tc_srgb();
}
