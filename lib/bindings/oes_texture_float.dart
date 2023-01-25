/// WebGL OES_texture_float Khronos Ratified Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/OES_texture_float/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library oes_texture_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes
/// floating-point pixel types for textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default.
///
@JS('OES_texture_float')
@staticInterop
class OESTextureFloat {
  external factory OESTextureFloat();
}
