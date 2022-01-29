/// WebGL OES_fbo_render_mipmap Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_fbo_render_mipmap/
@JS('window')
@staticInterop
library o_e_s_fbo_render_mipmap;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and makes it possible to
/// attach any level of a texture to a framebuffer object.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///
///   Note: This extension is only available to WebGL 1.
///    In WebGL2, the functionality of this extension is available in
/// the WebGL 2 context by default.
///
///
@JS()
@staticInterop
class OES_fbo_render_mipmap {
  external OES_fbo_render_mipmap();
}
