/// WebGL WEBGL_color_buffer_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_color_buffer_float/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_color_buffer_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_color_buffer_float')
@staticInterop
class WEBGLColorBufferFloat {
  @JS('RGBA32F_EXT')
  external static int get rgba32fExt;

  @JS('FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT')
  external static int get framebufferAttachmentComponentTypeExt;

  @JS('UNSIGNED_NORMALIZED_EXT')
  external static int get unsignedNormalizedExt;

  external WEBGLColorBufferFloat();
}
