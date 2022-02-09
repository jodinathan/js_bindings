/// WebGL EXT_sRGB Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_sRGB/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_srgb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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

  external EXTSRGB();
}
