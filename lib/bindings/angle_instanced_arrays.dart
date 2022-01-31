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

  external ANGLEInstancedArrays();
}

extension PropsANGLEInstancedArrays on ANGLEInstancedArrays {
  ///  Behaves identically to [gl.drawArrays()] except that multiple
  /// instances of the range of elements are executed, and the instance
  /// advances for each iteration.
  ///
  /// void ext.drawArraysInstancedANGLE(mode, first, count, primcount);
  ///
  Object drawArraysInstancedANGLE(

          ///  A [GLenum] specifying the type primitive to render. Possible
          /// values are:
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///     [gl.LINE_LOOP]: Draws a straight line to the next vertex, and
          /// connects the last vertex back to the first.
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,
          int first,
          int count,
          int primcount) =>
      js_util.callMethod(
          this, 'drawArraysInstancedANGLE', [mode, first, count, primcount]);

  ///  Behaves identically to [gl.drawElements()] except that multiple
  /// instances of the set of elements are executed and the instance
  /// advances between each set.
  ///
  /// void ext.drawElementsInstancedANGLE(mode, count, type, offset, primcount);
  ///
  Object drawElementsInstancedANGLE(

          ///  A [GLenum] specifying the type primitive to render. Possible
          /// values are:
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///     [gl.LINE_LOOP]: Draws a straight line to the next vertex, and
          /// connects the last vertex back to the first.
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,
          int count,
          int type,
          int offset,
          int primcount) =>
      js_util.callMethod(this, 'drawElementsInstancedANGLE',
          [mode, count, type, offset, primcount]);

  ///  Modifies the rate at which generic vertex attributes advance
  /// when rendering multiple instances of primitives with
  /// [ext.drawArraysInstancedANGLE()] and
  /// [ext.drawElementsInstancedANGLE()].
  ///
  /// void ext.vertexAttribDivisorANGLE(index, divisor);
  ///
  Object vertexAttribDivisorANGLE(

          ///  A [GLuint] specifying the index of the generic vertex
          /// attributes.
          ///
          int index,

          ///  A [GLuint] specifying the number of instances that will pass
          /// between updates of the generic attribute.
          ///
          int divisor) =>
      js_util.callMethod(this, 'vertexAttribDivisorANGLE', [index, divisor]);
}
