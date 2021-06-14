/// WebGL OES_fbo_render_mipmap Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_fbo_render_mipmap/
@JS('window')
library o_e_s_fbo_render_mipmap;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The extension is part of the WebGL API and makes it possible to
/// attach any level of a texture to a framebuffer object.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
/// Availability: This extension is only available to WebGL 1.
///   In WebGL2, the functionality of this extension is available in
/// the WebGL 2 context by default.
///
@JS()
class OES_fbo_render_mipmap {
  external factory OES_fbo_render_mipmap();
}
