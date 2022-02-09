/// WebGL WEBGL_compressed_texture_s3tc_srgb Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc_srgb/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_compressed_texture_s3tc_srgb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_compressed_texture_s3tc_srgb')
@staticInterop
class WEBGLCompressedTextureS3tcSrgb {
  @JS('COMPRESSED_SRGB_S3TC_DXT1_EXT')
  external static int get compressedSrgbS3tcDxt1Ext;

  @JS('COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT')
  external static int get compressedSrgbAlphaS3tcDxt1Ext;

  @JS('COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT')
  external static int get compressedSrgbAlphaS3tcDxt3Ext;

  @JS('COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT')
  external static int get compressedSrgbAlphaS3tcDxt5Ext;

  external WEBGLCompressedTextureS3tcSrgb();
}
