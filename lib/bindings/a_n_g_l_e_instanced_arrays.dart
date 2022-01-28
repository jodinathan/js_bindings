/// WebGL ANGLE_instanced_arrays Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/ANGLE_instanced_arrays/
@JS('window')
@staticInterop
library a_n_g_l_e_instanced_arrays;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

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
@JS()
@staticInterop
class ANGLE_instanced_arrays {
  external static int get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
  external factory ANGLE_instanced_arrays();
}

extension PropsANGLE_instanced_arrays on ANGLE_instanced_arrays {
  ///  Behaves identically to [gl.drawArrays()] except that multiple
  /// instances of the range of elements are executed, and the instance
  /// advances for each iteration.
  ///
  /// void ext.drawArraysInstancedANGLE(mode, first, count, primcount);
  ///
  external Object drawArraysInstancedANGLE(
      int mode, int first, int count, int primcount);

  ///  Behaves identically to [gl.drawElements()] except that multiple
  /// instances of the set of elements are executed and the instance
  /// advances between each set.
  ///
  /// void ext.drawElementsInstancedANGLE(mode, count, type, offset, primcount);
  ///
  external Object drawElementsInstancedANGLE(
      int mode, int count, int type, int offset, int primcount);

  ///  Modifies the rate at which generic vertex attributes advance
  /// when rendering multiple instances of primitives with
  /// [ext.drawArraysInstancedANGLE()] and
  /// [ext.drawElementsInstancedANGLE()].
  ///
  /// void ext.vertexAttribDivisorANGLE(index, divisor);
  ///
  external Object vertexAttribDivisorANGLE(int index, int divisor);
}
