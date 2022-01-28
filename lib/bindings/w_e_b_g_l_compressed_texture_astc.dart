/// WebGL WEBGL_compressed_texture_astc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_astc/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_astc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes Adaptive
/// Scalable Texture Compression (ASTC) compressed texture formats to
/// WebGL.
///  For more information, see the article Using ASTC Texture
/// Compression for Game Assets by nvidia.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: ASTC compression is typically available on Mali ARM GPUs,
/// Intel GPUs, and Nividia Tegra chips.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class WEBGL_compressed_texture_astc {
  external static int get COMPRESSED_RGBA_ASTC_4x4_KHR;
  external static int get COMPRESSED_RGBA_ASTC_5x4_KHR;
  external static int get COMPRESSED_RGBA_ASTC_5x5_KHR;
  external static int get COMPRESSED_RGBA_ASTC_6x5_KHR;
  external static int get COMPRESSED_RGBA_ASTC_6x6_KHR;
  external static int get COMPRESSED_RGBA_ASTC_8x5_KHR;
  external static int get COMPRESSED_RGBA_ASTC_8x6_KHR;
  external static int get COMPRESSED_RGBA_ASTC_8x8_KHR;
  external static int get COMPRESSED_RGBA_ASTC_10x5_KHR;
  external static int get COMPRESSED_RGBA_ASTC_10x6_KHR;
  external static int get COMPRESSED_RGBA_ASTC_10x8_KHR;
  external static int get COMPRESSED_RGBA_ASTC_10x10_KHR;
  external static int get COMPRESSED_RGBA_ASTC_12x10_KHR;
  external static int get COMPRESSED_RGBA_ASTC_12x12_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR;
  external static int get COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR;
  external factory WEBGL_compressed_texture_astc();
}

extension PropsWEBGL_compressed_texture_astc on WEBGL_compressed_texture_astc {
  ///  Returns an array of strings containing the names of the ASTC
  /// profiles supported by the implementation.
  ///
  /// sequence<DOMString> ext.getSupportedProfiles();
  ///
  external Iterable<String> getSupportedProfiles();
}
