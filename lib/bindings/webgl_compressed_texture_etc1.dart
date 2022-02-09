/// WebGL WEBGL_compressed_texture_etc1 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_etc1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_etc1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_compressed_texture_etc1')
@staticInterop
class WEBGLCompressedTextureEtc1 {
  @JS('COMPRESSED_RGB_ETC1_WEBGL')
  external static int get compressedRgbEtc1Webgl;

  external WEBGLCompressedTextureEtc1();
}
