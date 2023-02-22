/// WebGL WEBGL_compressed_texture_etc1 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_etc1/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl_compressed_texture_etc1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
@JS('WEBGL_compressed_texture_etc1')
@staticInterop
class WEBGLCompressedTextureEtc1 {
  @JS('COMPRESSED_RGB_ETC1_WEBGL')
  external static int get compressedRgbEtc1Webgl;

  external factory WEBGLCompressedTextureEtc1();
}
