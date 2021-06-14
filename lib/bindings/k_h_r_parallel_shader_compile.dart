/// WebGL KHR_parallel_shader_compile Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/KHR_parallel_shader_compile/
@JS('window')
library k_h_r_parallel_shader_compile;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///   Draft
///   This page is not complete.
///
///  The [KHR_parallel_shader_compile] extension is part of the WebGL
/// API and enables a non-blocking poll operation, so that
/// compile/link status availability ([COMPLETION_STATUS_KHR]) can be
/// queried without potentially incurring stalls. In other words you
/// can check the status of your shaders compiling without blocking
/// the runtime.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
@JS()
class KHR_parallel_shader_compile {
  external static int get COMPLETION_STATUS_KHR;

  external factory KHR_parallel_shader_compile();
}
