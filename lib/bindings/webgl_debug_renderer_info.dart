/// WebGL WEBGL_debug_renderer_info Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_debug_renderer_info/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_debug_renderer_info;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_debug_renderer_info')
@staticInterop
class WEBGLDebugRendererInfo {
  @JS('UNMASKED_VENDOR_WEBGL')
  external static int get unmaskedVendorWebgl;

  @JS('UNMASKED_RENDERER_WEBGL')
  external static int get unmaskedRendererWebgl;

  external WEBGLDebugRendererInfo();
}
