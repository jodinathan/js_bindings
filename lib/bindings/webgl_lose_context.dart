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

@JS('WEBGL_lose_context')
@staticInterop
class WEBGLLoseContext {
  external WEBGLLoseContext();
}

extension PropsWEBGLLoseContext on WEBGLLoseContext {
  Object loseContext() => js_util.callMethod(this, 'loseContext', []);

  Object restoreContext() => js_util.callMethod(this, 'restoreContext', []);
}
