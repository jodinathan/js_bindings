/// WebGL EXT_texture_compression_bptc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_compression_bptc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_texture_compression_bptc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_texture_compression_bptc')
@staticInterop
class EXTTextureCompressionBptc {
  @JS('COMPRESSED_RGBA_BPTC_UNORM_EXT')
  external static int get compressedRgbaBptcUnormExt;

  @JS('COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT')
  external static int get compressedSrgbAlphaBptcUnormExt;

  @JS('COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT')
  external static int get compressedRgbBptcSignedFloatExt;

  @JS('COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT')
  external static int get compressedRgbBptcUnsignedFloatExt;

  external EXTTextureCompressionBptc();
}
