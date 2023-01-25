/// WebGL EXT_texture_compression_rgtc Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_texture_compression_rgtc/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_texture_compression_rgtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes 4 RGTC
/// compressed texture formats. RGTC is a block-based texture
/// compression format suited for unsigned and signed red and
/// red-green textures (Red-Green Texture Compression).
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: Support depends on the system's graphics driver. There is
/// no support on Windows.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
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

  external factory EXTTextureCompressionRgtc();
}
