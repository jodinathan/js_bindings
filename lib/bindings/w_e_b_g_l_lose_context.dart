/// WebGL WEBGL_lose_context Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_lose_context/
@JS('window')
library w_e_b_g_l_lose_context;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The WEBGL_lose_context extension is part of the WebGL API and
/// exposes functions to simulate losing and restoring a
/// [WebGLRenderingContext].
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is available to both, WebGL1 and
/// WebGL2 contexts.
///
@JS()
class WEBGL_lose_context {
  /// Simulates losing the context.
  /// gl.getExtension('WEBGL_lose_context').loseContext();
  external Object loseContext();

  /// Simulates restoring the context.
  /// gl.getExtension('WEBGL_lose_context').restoreContext();
  external Object restoreContext();

  external factory WEBGL_lose_context();
}
