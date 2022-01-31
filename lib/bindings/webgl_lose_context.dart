/// WebGL WEBGL_lose_context Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_lose_context/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_lose_context;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
@JS('WEBGL_lose_context')
@staticInterop
class WEBGLLoseContext {
  external WEBGLLoseContext();
}

extension PropsWEBGLLoseContext on WEBGLLoseContext {
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
