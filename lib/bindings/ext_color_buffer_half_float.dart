/// WebGL EXT_color_buffer_half_float Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_color_buffer_half_float/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_color_buffer_half_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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

  external EXTColorBufferHalfFloat();
}
