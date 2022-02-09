/// WebGL ANGLE_instanced_arrays Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/ANGLE_instanced_arrays/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library angle_instanced_arrays;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('ANGLE_instanced_arrays')
@staticInterop
class ANGLEInstancedArrays {
  @JS('VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE')
  external static int get vertexAttribArrayDivisorAngle;

  external ANGLEInstancedArrays();
}

extension PropsANGLEInstancedArrays on ANGLEInstancedArrays {
  Object drawArraysInstancedANGLE(
          int mode, int first, int count, int primcount) =>
      js_util.callMethod(
          this, 'drawArraysInstancedANGLE', [mode, first, count, primcount]);

  Object drawElementsInstancedANGLE(
          int mode, int count, int type, int offset, int primcount) =>
      js_util.callMethod(this, 'drawElementsInstancedANGLE',
          [mode, count, type, offset, primcount]);

  Object vertexAttribDivisorANGLE(int index, int divisor) =>
      js_util.callMethod(this, 'vertexAttribDivisorANGLE', [index, divisor]);
}
