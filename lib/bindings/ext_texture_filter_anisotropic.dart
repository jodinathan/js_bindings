/// WebGL EXT_texture_filter_anisotropic Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_texture_filter_anisotropic;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
@JS('EXT_texture_filter_anisotropic')
@staticInterop
class EXTTextureFilterAnisotropic {
  @JS('TEXTURE_MAX_ANISOTROPY_EXT')
  external static int get textureMaxAnisotropyExt;

  @JS('MAX_TEXTURE_MAX_ANISOTROPY_EXT')
  external static int get maxTextureMaxAnisotropyExt;

  external factory EXTTextureFilterAnisotropic();
}
