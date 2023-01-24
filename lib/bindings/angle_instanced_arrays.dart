/// WebGL ANGLE_instanced_arrays Khronos Ratified Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/ANGLE_instanced_arrays/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library angle_instanced_arrays;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and allows to draw the
/// same object, or groups of similar objects multiple times, if they
/// share the same vertex data, primitive count and type.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default and the constants and methods are
/// available without the "[ANGLE]" suffix.
///   Despite the name "ANGLE", this extension works on any device if
/// the hardware supports it and not just on Windows when using the
/// ANGLE library. "ANGLE" just indicates that this extension has
/// been written by the ANGLE library authors.
///
@JS('ANGLE_instanced_arrays')
@staticInterop
class ANGLEInstancedArrays {
  @JS('VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE')
  external static int get vertexAttribArrayDivisorAngle;

  external factory ANGLEInstancedArrays();
}

extension PropsANGLEInstancedArrays on ANGLEInstancedArrays {
  void drawArraysInstancedANGLE(
          int mode, int first, int count, int primcount) =>
      js_util.callMethod(
          this, 'drawArraysInstancedANGLE', [mode, first, count, primcount]);

  void drawElementsInstancedANGLE(
          int mode, int count, int type, int offset, int primcount) =>
      js_util.callMethod(this, 'drawElementsInstancedANGLE',
          [mode, count, type, offset, primcount]);

  void vertexAttribDivisorANGLE(int index, int divisor) =>
      js_util.callMethod(this, 'vertexAttribDivisorANGLE', [index, divisor]);
}
