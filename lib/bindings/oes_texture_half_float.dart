/// WebGL OES_texture_half_float Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_half_float/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library oes_texture_half_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds texture formats
/// with 16- (aka half float) and 32-bit floating-point components.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constant in WebGL2 is
/// [gl.HALF_FLOAT].
///
@JS('OES_texture_half_float')
@staticInterop
class OESTextureHalfFloat {
  @JS('HALF_FLOAT_OES')
  external static int get halfFloatOes;

  external OESTextureHalfFloat();
}
