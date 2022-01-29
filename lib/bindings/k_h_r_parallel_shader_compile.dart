/// WebGL KHR_parallel_shader_compile Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/KHR_parallel_shader_compile/
@JS('window')
@staticInterop
library k_h_r_parallel_shader_compile;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The extension is part of the WebGL API and enables a
/// non-blocking poll operation, so that compile/link status
/// availability ([COMPLETION_STATUS_KHR]) can be queried without
/// potentially incurring stalls. In other words you can check the
/// status of your shaders compiling without blocking the runtime.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
@JS()
@staticInterop
class KHR_parallel_shader_compile {
  external static int get COMPLETION_STATUS_KHR;
  external KHR_parallel_shader_compile();
}
