/// WebGL EXT_texture_compression_bptc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_compression_bptc/
@JS('window')
@staticInterop
library e_x_t_texture_compression_bptc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

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
@JS()
@staticInterop
class EXT_texture_compression_bptc {
  external static int get COMPRESSED_RGBA_BPTC_UNORM_EXT;
  external static int get COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT;
  external static int get COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT;
  external static int get COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT;
  external factory EXT_texture_compression_bptc();
}
