/// WebGL WEBGL_compressed_texture_astc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_astc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_astc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes Adaptive
/// Scalable Texture Compression (ASTC) compressed texture formats to
/// WebGL.
///  For more information, see the article Using ASTC Texture
/// Compression for Game Assets by NVIDIA.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: ASTC compression is typically available on Mali ARM GPUs,
/// Intel GPUs, and NVIDIA Tegra chips.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS('WEBGL_compressed_texture_astc')
@staticInterop
class WEBGLCompressedTextureAstc {
  @JS('COMPRESSED_RGBA_ASTC_4x4_KHR')
  external static int get compressedRgbaAstc4x4Khr;

  @JS('COMPRESSED_RGBA_ASTC_5x4_KHR')
  external static int get compressedRgbaAstc5x4Khr;

  @JS('COMPRESSED_RGBA_ASTC_5x5_KHR')
  external static int get compressedRgbaAstc5x5Khr;

  @JS('COMPRESSED_RGBA_ASTC_6x5_KHR')
  external static int get compressedRgbaAstc6x5Khr;

  @JS('COMPRESSED_RGBA_ASTC_6x6_KHR')
  external static int get compressedRgbaAstc6x6Khr;

  @JS('COMPRESSED_RGBA_ASTC_8x5_KHR')
  external static int get compressedRgbaAstc8x5Khr;

  @JS('COMPRESSED_RGBA_ASTC_8x6_KHR')
  external static int get compressedRgbaAstc8x6Khr;

  @JS('COMPRESSED_RGBA_ASTC_8x8_KHR')
  external static int get compressedRgbaAstc8x8Khr;

  @JS('COMPRESSED_RGBA_ASTC_10x5_KHR')
  external static int get compressedRgbaAstc10x5Khr;

  @JS('COMPRESSED_RGBA_ASTC_10x6_KHR')
  external static int get compressedRgbaAstc10x6Khr;

  @JS('COMPRESSED_RGBA_ASTC_10x8_KHR')
  external static int get compressedRgbaAstc10x8Khr;

  @JS('COMPRESSED_RGBA_ASTC_10x10_KHR')
  external static int get compressedRgbaAstc10x10Khr;

  @JS('COMPRESSED_RGBA_ASTC_12x10_KHR')
  external static int get compressedRgbaAstc12x10Khr;

  @JS('COMPRESSED_RGBA_ASTC_12x12_KHR')
  external static int get compressedRgbaAstc12x12Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR')
  external static int get compressedSrgb8Alpha8Astc4x4Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR')
  external static int get compressedSrgb8Alpha8Astc5x4Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR')
  external static int get compressedSrgb8Alpha8Astc5x5Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR')
  external static int get compressedSrgb8Alpha8Astc6x5Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR')
  external static int get compressedSrgb8Alpha8Astc6x6Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR')
  external static int get compressedSrgb8Alpha8Astc8x5Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR')
  external static int get compressedSrgb8Alpha8Astc8x6Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR')
  external static int get compressedSrgb8Alpha8Astc8x8Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR')
  external static int get compressedSrgb8Alpha8Astc10x5Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR')
  external static int get compressedSrgb8Alpha8Astc10x6Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR')
  external static int get compressedSrgb8Alpha8Astc10x8Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR')
  external static int get compressedSrgb8Alpha8Astc10x10Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR')
  external static int get compressedSrgb8Alpha8Astc12x10Khr;

  @JS('COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR')
  external static int get compressedSrgb8Alpha8Astc12x12Khr;

  external factory WEBGLCompressedTextureAstc();
}

extension PropsWEBGLCompressedTextureAstc on WEBGLCompressedTextureAstc {
  Iterable<String> getSupportedProfiles() =>
      js_util.callMethod(this, 'getSupportedProfiles', []);
}
