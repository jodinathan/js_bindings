/// WebGL EXT_texture_filter_anisotropic Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/
@JS('window')
@staticInterop
library e_x_t_texture_filter_anisotropic;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and exposes two constants
/// for anisotropic filtering (AF).
///  AF improves the quality of mipmapped texture access when viewing
/// a textured primitive at an oblique angle. Using just mipmapping,
/// these lookups have a tendency to average to grey.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class EXT_texture_filter_anisotropic {
  external static int get TEXTURE_MAX_ANISOTROPY_EXT;
  external static int get MAX_TEXTURE_MAX_ANISOTROPY_EXT;
  external EXT_texture_filter_anisotropic();
}
