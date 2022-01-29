/// WebGL EXT_shader_texture_lod Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_shader_texture_lod/
@JS('window')
@staticInterop
library e_x_t_shader_texture_lod;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and adds additional
/// texture functions to the OpenGL ES Shading Language which provide
/// the shader writer with explicit control of LOD (Level of detail).
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. It requires GLSL [#version 300 es].
///
@JS()
@staticInterop
class EXT_shader_texture_lod {
  external EXT_shader_texture_lod();
}
