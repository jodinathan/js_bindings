/// WebGL WEBGL_depth_texture Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_depth_texture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and defines 2D depth and
/// depth-stencil textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constant in WebGL2 is
/// [gl.UNSIGNED_INT_24_8].
///
@JS('WEBGL_depth_texture')
@staticInterop
class WEBGLDepthTexture {
  @JS('UNSIGNED_INT_24_8_WEBGL')
  external static int get unsignedInt248Webgl;

  external factory WEBGLDepthTexture();
}
