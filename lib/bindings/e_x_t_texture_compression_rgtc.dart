/// WebGL EXT_texture_compression_rgtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_compression_rgtc/
@JS('window')
@staticInterop
library e_x_t_texture_compression_rgtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

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
@JS()
@staticInterop
class EXT_texture_compression_rgtc {
  external static int get COMPRESSED_RED_RGTC1_EXT;
  external static int get COMPRESSED_SIGNED_RED_RGTC1_EXT;
  external static int get COMPRESSED_RED_GREEN_RGTC2_EXT;
  external static int get COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT;
  external EXT_texture_compression_rgtc();
}
