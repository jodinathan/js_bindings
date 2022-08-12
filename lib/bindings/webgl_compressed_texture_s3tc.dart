/// WebGL WEBGL_compressed_texture_s3tc Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_s3tc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
@JS('WEBGL_compressed_texture_s3tc')
@staticInterop
class WEBGLCompressedTextureS3tc {
  @JS('COMPRESSED_RGB_S3TC_DXT1_EXT')
  external static int get compressedRgbS3tcDxt1Ext;

  @JS('COMPRESSED_RGBA_S3TC_DXT1_EXT')
  external static int get compressedRgbaS3tcDxt1Ext;

  @JS('COMPRESSED_RGBA_S3TC_DXT3_EXT')
  external static int get compressedRgbaS3tcDxt3Ext;

  @JS('COMPRESSED_RGBA_S3TC_DXT5_EXT')
  external static int get compressedRgbaS3tcDxt5Ext;

  external factory WEBGLCompressedTextureS3tc();
}
