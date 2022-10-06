/// WebGL OES_standard_derivatives Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_standard_derivatives/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library oes_standard_derivatives;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds the GLSL
/// derivative functions [dFdx], [dFdy], and [fwidth].
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. In WebGL 2, the constant is available
/// as [gl.FRAGMENT_SHADER_DERIVATIVE_HINT] and it requires GLSL
/// [#version 300 es].
///
@JS('OES_standard_derivatives')
@staticInterop
class OESStandardDerivatives {
  @JS('FRAGMENT_SHADER_DERIVATIVE_HINT_OES')
  external static int get fragmentShaderDerivativeHintOes;

  external factory OESStandardDerivatives();
}
