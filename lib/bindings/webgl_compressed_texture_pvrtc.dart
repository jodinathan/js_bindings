/// WebGL WEBGL_compressed_texture_pvrtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_pvrtc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_pvrtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_compressed_texture_pvrtc')
@staticInterop
class WEBGLCompressedTexturePvrtc {
  @JS('COMPRESSED_RGB_PVRTC_4BPPV1_IMG')
  external static int get compressedRgbPvrtc4bppv1Img;

  @JS('COMPRESSED_RGB_PVRTC_2BPPV1_IMG')
  external static int get compressedRgbPvrtc2bppv1Img;

  @JS('COMPRESSED_RGBA_PVRTC_4BPPV1_IMG')
  external static int get compressedRgbaPvrtc4bppv1Img;

  @JS('COMPRESSED_RGBA_PVRTC_2BPPV1_IMG')
  external static int get compressedRgbaPvrtc2bppv1Img;

  external WEBGLCompressedTexturePvrtc();
}
