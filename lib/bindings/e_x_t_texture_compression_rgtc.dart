/// WebGL EXT_texture_compression_rgtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_compression_rgtc/
@JS('window')
library e_x_t_texture_compression_rgtc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The extension is part of the WebGL API and exposes 4 RGTC
/// compressed texture formats. RGTC is a block-based texture
/// compression format suited for unsigned and signed red and
/// red-green textures (Red-Green Texture Compression).
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: Support depends on the system's graphics driver.
/// There is no support on Windows.
///
/// This extension is available to both, WebGL1 and WebGL2 contexts.
///
@JS()
class EXT_texture_compression_rgtc {
  external static int get COMPRESSED_RED_RGTC1_EXT;
  external static int get COMPRESSED_SIGNED_RED_RGTC1_EXT;
  external static int get COMPRESSED_RED_GREEN_RGTC2_EXT;
  external static int get COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT;

  external factory EXT_texture_compression_rgtc();
}
