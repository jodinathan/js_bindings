/// WebGL WEBGL_debug_shaders Khronos Ratified Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/WEBGL_debug_shaders/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_debug_shaders;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes a method to
/// debug shaders from privileged contexts.
///  This extension is not directly available to web sites as the way
/// of how the shader is translated may uncover
/// personally-identifiable information to the web page about the
/// kind of graphics card in the user's computer.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: Depending on the privacy settings of the browser, this
/// extension might only be available to privileged contexts.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS('WEBGL_debug_shaders')
@staticInterop
class WEBGLDebugShaders {
  external factory WEBGLDebugShaders();
}

extension PropsWEBGLDebugShaders on WEBGLDebugShaders {
  String getTranslatedShaderSource(WebGLShader shader) =>
      js_util.callMethod(this, 'getTranslatedShaderSource', [shader]);
}
