/// WebGL EXT_texture_compression_rgtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_compression_rgtc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_texture_compression_rgtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_texture_compression_rgtc')
@staticInterop
class EXTTextureCompressionRgtc {
  @JS('COMPRESSED_RED_RGTC1_EXT')
  external static int get compressedRedRgtc1Ext;

  @JS('COMPRESSED_SIGNED_RED_RGTC1_EXT')
  external static int get compressedSignedRedRgtc1Ext;

  @JS('COMPRESSED_RED_GREEN_RGTC2_EXT')
  external static int get compressedRedGreenRgtc2Ext;

  @JS('COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT')
  external static int get compressedSignedRedGreenRgtc2Ext;

  external EXTTextureCompressionRgtc();
}
