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

  external WEBGLCompressedTextureS3tc();
}
