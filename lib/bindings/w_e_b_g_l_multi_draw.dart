/// WebGL WEBGL_multi_draw Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_multi_draw/
@JS('window')
library w_e_b_g_l_multi_draw;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl1.dart';

///
///
/// The [WEBGL_multi_draw] extension is part of the
/// WebGL API and allows to render more
///  than one primitive with a single function call. This can improve
/// a WebGL application's performance
///  as it reduces binding costs in the renderer and speeds up GPU
/// thread time with uniform data.
///
/// When this extension is enabled:
///
///   New methods that handle multiple lists of arguments in one call
/// are added
///   (see method list below).
///  The [gl_DrawID] built-in is added to the shading language.
///
///  Availability: This extension is available to both,
///  WebGL 1 and
///  WebGL 2 contexts.
///  In shader code, the directive [#extension GL_ANGLE_multi_draw]
///  needs to be called to enable the extension.
///   This extension enables the [ANGLE_instanced_arrays] extension
/// implicitly.
///
@JS()
class WEBGL_multi_draw {
  ///  Renders multiple primitives from array data (identical to
  /// multiple calls to
  ///   [drawArrays]).
  /// void ext.multiDrawArraysWEBGL(mode,
  ///   firstsList, firstsOffset,
  ///   countsList, countsOffset,
  ///   drawCount);
  ///
  external Object multiDrawArraysWEBGL(int mode, dynamic firstsList,
      int firstsOffset, dynamic countsList, int countsOffset, int drawcount);

  ///  Renders multiple primitives from element array data (identical
  /// to multiple calls to
  ///   [drawElements]).
  /// void ext.multiDrawElementsWEBGL(mode,
  ///   countsList, countsOffset,
  ///   type,
  ///   firstsList, firstsOffset,
  ///   drawCount);
  ///
  external Object multiDrawElementsWEBGL(
      int mode,
      dynamic countsList,
      int countsOffset,
      int type,
      dynamic offsetsList,
      int offsetsOffset,
      int drawcount);

  ///  Renders multiple primitives from array data (identical to
  /// multiple calls to
  ///   [drawArraysInstanced]).
  /// void ext.multiDrawArraysWEBGL(mode,
  ///   firstsList, firstsOffset,
  ///   countsList, countsOffset,
  ///   instanceCountsList, instanceCountsOffset,
  ///   drawCount);
  ///
  external Object multiDrawArraysInstancedWEBGL(
      int mode,
      dynamic firstsList,
      int firstsOffset,
      dynamic countsList,
      int countsOffset,
      dynamic instanceCountsList,
      int instanceCountsOffset,
      int drawcount);

  ///  Renders multiple primitives from element array data (identical
  /// to multiple calls to
  ///   [drawElementsInstanced]).
  /// void ext.multiDrawElementsInstancedWEBGL(mode,
  ///   countsList, countsOffset,
  ///   type,
  ///   firstsList, firstsOffset,
  ///   instanceCountsList, instanceCountsOffset,
  ///   drawCount);
  ///
  external Object multiDrawElementsInstancedWEBGL(
      int mode,
      dynamic countsList,
      int countsOffset,
      int type,
      dynamic offsetsList,
      int offsetsOffset,
      dynamic instanceCountsList,
      int instanceCountsOffset,
      int drawcount);

  external factory WEBGL_multi_draw();
}