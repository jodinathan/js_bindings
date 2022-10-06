/// WebGL WEBGL_compressed_texture_etc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_etc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_etc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
@JS('WEBGL_compressed_texture_etc')
@staticInterop
class WEBGLCompressedTextureEtc {
  @JS('COMPRESSED_R11_EAC')
  external static int get compressedR11Eac;

  @JS('COMPRESSED_SIGNED_R11_EAC')
  external static int get compressedSignedR11Eac;

  @JS('COMPRESSED_RG11_EAC')
  external static int get compressedRg11Eac;

  @JS('COMPRESSED_SIGNED_RG11_EAC')
  external static int get compressedSignedRg11Eac;

  @JS('COMPRESSED_RGB8_ETC2')
  external static int get compressedRgb8Etc2;

  @JS('COMPRESSED_SRGB8_ETC2')
  external static int get compressedSrgb8Etc2;

  @JS('COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2')
  external static int get compressedRgb8PunchthroughAlpha1Etc2;

  @JS('COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2')
  external static int get compressedSrgb8PunchthroughAlpha1Etc2;

  @JS('COMPRESSED_RGBA8_ETC2_EAC')
  external static int get compressedRgba8Etc2Eac;

  @JS('COMPRESSED_SRGB8_ALPHA8_ETC2_EAC')
  external static int get compressedSrgb8Alpha8Etc2Eac;

  external factory WEBGLCompressedTextureEtc();
}
