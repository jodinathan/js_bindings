/// WebGL EXT_sRGB Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_sRGB/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_srgb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds sRGB support to
/// textures and framebuffer objects.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constants in WebGL2 are:
/// [gl.SRGB], [gl.SRGB8], [gl.SRGB8_ALPHA8] and
/// [gl.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING].
///
@JS('EXT_sRGB')
@staticInterop
class EXTSRGB {
  @JS('SRGB_EXT')
  external static int get srgbExt;

  @JS('SRGB_ALPHA_EXT')
  external static int get srgbAlphaExt;

  @JS('SRGB8_ALPHA8_EXT')
  external static int get srgb8Alpha8Ext;

  @JS('FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT')
  external static int get framebufferAttachmentColorEncodingExt;

  external factory EXTSRGB();
}
