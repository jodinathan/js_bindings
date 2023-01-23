/// WebGL EXT_texture_compression_bptc Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_texture_compression_bptc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_texture_compression_bptc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes 4 BPTC
/// compressed texture formats. These compression formats are called
/// BC7 and BC6H in Microsoft's DirectX API.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: Support depends on the system's graphics driver. There is
/// no support on Windows.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
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

  external factory EXTTextureCompressionBptc();
}
