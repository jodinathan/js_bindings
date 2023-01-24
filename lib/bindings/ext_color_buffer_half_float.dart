/// WebGL EXT_color_buffer_half_float Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_color_buffer_half_float/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_color_buffer_half_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds the ability to
/// render to 16-bit floating-point color buffers.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts. On WebGL 2, it's an alternative to using the
/// [EXT_color_buffer_float] extension on platforms that support
/// 16-bit floating point render targets but not 32-bit floating
/// point render targets.
///   The [OES_texture_half_float] extension implicitly enables this
/// extension.
///
@JS('EXT_color_buffer_half_float')
@staticInterop
class EXTColorBufferHalfFloat {
  @JS('RGBA16F_EXT')
  external static int get rgba16fExt;

  @JS('RGB16F_EXT')
  external static int get rgb16fExt;

  @JS('FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT')
  external static int get framebufferAttachmentComponentTypeExt;

  @JS('UNSIGNED_NORMALIZED_EXT')
  external static int get unsignedNormalizedExt;

  external factory EXTColorBufferHalfFloat();
}
