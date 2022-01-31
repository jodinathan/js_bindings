/// WebGL WEBGL_multi_draw Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_multi_draw/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_multi_draw;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///
///  The extension is part of the
///  WebGL API and allows to render more
///   than one primitive with a single function call. This can
/// improve a WebGL application's performance
///   as it reduces binding costs in the renderer and speeds up GPU
/// thread time with uniform data.
///
/// When this extension is enabled:
///
///
///    New methods that handle multiple lists of arguments in one
/// call are added
///   (see method list below).
///
///  The [gl_DrawID] built-in is added to the shading language.
///
///   Note: This extension is available to both,
///   WebGL 1 and
///   WebGL 2 contexts.
///
///
///   In shader code, the directive [#extension GL_ANGLE_multi_draw]
///   needs to be called to enable the extension.
///
///   This extension enables the [ANGLE_instanced_arrays] extension
/// implicitly.
///
@JS('WEBGL_multi_draw')
@staticInterop
class WEBGLMultiDraw {
  external WEBGLMultiDraw();
}

extension PropsWEBGLMultiDraw on WEBGLMultiDraw {
  ///
  ///     Renders multiple primitives from array data (identical to
  /// multiple calls to
  ///    [drawArrays]).
  ///
  ///
  /// void ext.multiDrawArraysWEBGL(mode,
  ///   firstsList, firstsOffset,
  ///   countsList, countsOffset,
  ///   drawCount);
  ///
  Object multiDrawArraysWEBGL(

          ///
          ///    A [GLenum]
          ///    specifying the type primitive to render. Possible values are:
          ///
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///
          ///      [gl.LINE_LOOP]: Draws a straight line to the next vertex,
          /// and
          ///     connects the
          ///     last vertex back to the first.
          ///
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLint])
          ///     specifying a list of starting indices for the arrays of
          /// vector points.
          ///
          ///
          dynamic firstsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [firstsLists] array.
          ///
          ///
          int firstsOffset,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///    specifying a list of numbers of indices to be rendered.
          ///
          ///
          dynamic countsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [countsList] array.
          ///
          ///
          int countsOffset,
          int drawcount) =>
      js_util.callMethod(this, 'multiDrawArraysWEBGL', [
        mode,
        firstsList,
        firstsOffset,
        countsList,
        countsOffset,
        drawcount
      ]);

  ///
  ///     Renders multiple primitives from element array data
  /// (identical to multiple calls to
  ///    [drawElements]).
  ///
  ///
  /// void ext.multiDrawElementsWEBGL(mode,
  ///   countsList, countsOffset,
  ///   type,
  ///   firstsList, firstsOffset,
  ///   drawCount);
  ///
  Object multiDrawElementsWEBGL(

          ///
          ///    A [GLenum]
          ///    specifying the type primitive to render. Possible values are:
          ///
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///
          ///      [gl.LINE_LOOP]: Draws a straight line to the next vertex,
          /// and
          ///     connects the
          ///     last vertex back to the first.
          ///
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLint])
          ///    specifying a list of numbers of indices to be rendered.
          ///
          ///
          dynamic countsList,

          ///
          ///    A [GLUint]
          ///    defining the starting point into the [countsList] array.
          ///
          ///
          int countsOffset,
          int type,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///     specifying a list of starting indices for the arrays of
          /// vector points.
          ///
          ///
          dynamic offsetsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [offsetsList] array.
          ///
          ///
          int offsetsOffset,
          int drawcount) =>
      js_util.callMethod(this, 'multiDrawElementsWEBGL', [
        mode,
        countsList,
        countsOffset,
        type,
        offsetsList,
        offsetsOffset,
        drawcount
      ]);

  ///
  ///     Renders multiple primitives from array data (identical to
  /// multiple calls to
  ///    [drawArraysInstanced]).
  ///
  ///
  /// void ext.multiDrawArraysInstancedWEBGL(mode,
  ///   firstsList, firstsOffset,
  ///   countsList, countsOffset,
  ///   instanceCountsList, instanceCountsOffset,
  ///   drawCount);
  ///
  Object multiDrawArraysInstancedWEBGL(

          ///
          ///    A [GLenum]
          ///    specifying the type primitive to render. Possible values are:
          ///
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///
          ///      [gl.LINE_LOOP]: Draws a straight line to the next vertex,
          /// and
          ///     connects the
          ///     last vertex back to the first.
          ///
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLint])
          ///     specifying a list of starting indices for the arrays of
          /// vector points.
          ///
          ///
          dynamic firstsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [firstsLists] array.
          ///
          ///
          int firstsOffset,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///    specifying a list of numbers of indices to be rendered.
          ///
          ///
          dynamic countsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [countsList] array.
          ///
          ///
          int countsOffset,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///     specifying a list of number sof instances of the range of
          /// elements to execute.
          ///
          ///
          dynamic instanceCountsList,

          ///
          ///    A [GLuint]
          ///     defining the starting point into the [instanceCountsList]
          /// array.
          ///
          ///
          int instanceCountsOffset,
          int drawcount) =>
      js_util.callMethod(this, 'multiDrawArraysInstancedWEBGL', [
        mode,
        firstsList,
        firstsOffset,
        countsList,
        countsOffset,
        instanceCountsList,
        instanceCountsOffset,
        drawcount
      ]);

  ///
  ///     Renders multiple primitives from element array data
  /// (identical to multiple calls to
  ///    [drawElementsInstanced]).
  ///
  ///
  /// void ext.multiDrawElementsInstancedWEBGL(mode,
  ///   countsList, countsOffset,
  ///   type,
  ///   firstsList, firstsOffset,
  ///   instanceCountsList, instanceCountsOffset,
  ///   drawCount);
  ///
  Object multiDrawElementsInstancedWEBGL(

          ///
          ///    A [GLenum]
          ///    specifying the type primitive to render. Possible values are:
          ///
          ///
          ///    [gl.POINTS]: Draws a single dot.
          ///    [gl.LINE_STRIP]: Draws a straight line to the next vertex.
          ///
          ///      [gl.LINE_LOOP]: Draws a straight line to the next vertex,
          /// and
          ///     connects the
          ///     last vertex back to the first.
          ///
          ///    [gl.LINES]: Draws a line between a pair of vertices.
          ///    [gl.TRIANGLE_STRIP]
          ///    [gl.TRIANGLE_FAN]
          ///     [gl.TRIANGLES]: Draws a triangle for a group of three
          /// vertices.
          ///
          ///
          int mode,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLint])
          ///    specifying a list of numbers of indices to be rendered.
          ///
          ///
          dynamic countsList,

          ///
          ///    A [GLUint]
          ///    defining the starting point into the [countsList] array.
          ///
          ///
          int countsOffset,
          int type,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///     specifying a list of starting indices for the arrays of
          /// vector points.
          ///
          ///
          dynamic offsetsList,

          ///
          ///    A [GLuint]
          ///    defining the starting point into the [offsetsList] array.
          ///
          ///
          int offsetsOffset,

          ///
          ///    An [Int32Array]
          ///    or [Array]
          ///    (of [GLsizei])
          ///     specifying a list of number sof instances of the range of
          /// elements to execute.
          ///
          ///
          dynamic instanceCountsList,

          ///
          ///    A [GLuint]
          ///     defining the starting point into the [instanceCountsList]
          /// array.
          ///
          ///
          int instanceCountsOffset,
          int drawcount) =>
      js_util.callMethod(this, 'multiDrawElementsInstancedWEBGL', [
        mode,
        countsList,
        countsOffset,
        type,
        offsetsList,
        offsetsOffset,
        instanceCountsList,
        instanceCountsOffset,
        drawcount
      ]);
}
