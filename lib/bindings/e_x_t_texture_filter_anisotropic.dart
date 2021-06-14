/// WebGL EXT_texture_filter_anisotropic Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/
@JS('window')
library e_x_t_texture_filter_anisotropic;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [EXT_texture_filter_anisotropic] extension is part of the
/// WebGL API and exposes two constants for anisotropic filtering
/// (AF).
///
///  AF improves the quality of mipmapped texture access when viewing
/// a textured primitive at an oblique angle. Using just mipmapping,
/// these lookups have a tendency to average to grey.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is available to both, WebGL1 and
/// WebGL2 contexts.
///
@JS()
class EXT_texture_filter_anisotropic {
  external static int get TEXTURE_MAX_ANISOTROPY_EXT;
  external static int get MAX_TEXTURE_MAX_ANISOTROPY_EXT;

  external factory EXT_texture_filter_anisotropic();
}
