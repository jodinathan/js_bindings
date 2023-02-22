/// WebGL WEBGL_debug_renderer_info Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_debug_renderer_info/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl_debug_renderer_info;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes two constants
/// with information about the graphics driver for debugging
/// purposes.
///  Depending on the privacy settings of the browser, this extension
/// might only be available to privileged contexts. Generally, the
/// graphics driver information should only be used in edge cases to
/// optimize your WebGL content or to debug GPU problems. The
/// [WebGLRenderingContext.getParameter()] method can help you to
/// detect which features are supported and the
/// [failIfMajorPerformanceCaveat] context attribute lets you control
/// if a context should be returned at all, if the performance would
/// be dramatically slow.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: Depending on the privacy settings of the browser, this
/// extension might only be available to privileged contexts or not
/// work at all. In Firefox, if [privacy.resistFingerprinting] is set
/// to [true], this extensions is disabled.
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS('WEBGL_debug_renderer_info')
@staticInterop
class WEBGLDebugRendererInfo {
  @JS('UNMASKED_VENDOR_WEBGL')
  external static int get unmaskedVendorWebgl;

  @JS('UNMASKED_RENDERER_WEBGL')
  external static int get unmaskedRendererWebgl;

  external factory WEBGLDebugRendererInfo();
}
