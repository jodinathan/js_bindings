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

@JS('KHR_parallel_shader_compile')
@staticInterop
class KHRParallelShaderCompile {
  @JS('COMPLETION_STATUS_KHR')
  external static int get completionStatusKhr;

  external KHRParallelShaderCompile();
}
