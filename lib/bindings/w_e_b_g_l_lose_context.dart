/// WebGL WEBGL_lose_context Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_lose_context/
@JS('window')
@staticInterop
library w_e_b_g_l_lose_context;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The WEBGL_lose_context extension is part of the WebGL API and
/// exposes functions to simulate losing and restoring a
/// [WebGLRenderingContext].
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is available to both, WebGL1 and WebGL2
/// contexts.
///
@JS()
@staticInterop
class WEBGL_lose_context {
  external WEBGL_lose_context();
}

extension PropsWEBGL_lose_context on WEBGL_lose_context {
  /// Simulates losing the context.
  ///
  /// gl.getExtension('WEBGL_lose_context').loseContext();
  ///
  Object loseContext() => js_util.callMethod(this, 'loseContext', []);

  /// Simulates restoring the context.
  ///
  /// gl.getExtension('WEBGL_lose_context').restoreContext();
  ///
  Object restoreContext() => js_util.callMethod(this, 'restoreContext', []);
}
