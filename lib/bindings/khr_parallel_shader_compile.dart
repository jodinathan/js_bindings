/// WebGL KHR_parallel_shader_compile Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/KHR_parallel_shader_compile/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library khr_parallel_shader_compile;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and enables a
/// non-blocking poll operation, so that compile/link status
/// availability ([COMPLETION_STATUS_KHR]) can be queried without
/// potentially incurring stalls. In other words you can check the
/// status of your shaders compiling without blocking the runtime.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
@JS('KHR_parallel_shader_compile')
@staticInterop
class KHRParallelShaderCompile {
  @JS('COMPLETION_STATUS_KHR')
  external static int get completionStatusKhr;

  external factory KHRParallelShaderCompile();
}
