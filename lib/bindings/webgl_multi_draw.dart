/// WebGL WEBGL_multi_draw Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_multi_draw/

// ignore_for_file: unused_import

@JS('self')
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
  external factory WEBGLMultiDraw();
}

extension PropsWEBGLMultiDraw on WEBGLMultiDraw {
  void multiDrawArraysWEBGL(int mode, dynamic firstsList, int firstsOffset,
          dynamic countsList, int countsOffset, int drawcount) =>
      js_util.callMethod(this, 'multiDrawArraysWEBGL', [
        mode,
        firstsList,
        firstsOffset,
        countsList,
        countsOffset,
        drawcount
      ]);

  void multiDrawElementsWEBGL(int mode, dynamic countsList, int countsOffset,
          int type, dynamic offsetsList, int offsetsOffset, int drawcount) =>
      js_util.callMethod(this, 'multiDrawElementsWEBGL', [
        mode,
        countsList,
        countsOffset,
        type,
        offsetsList,
        offsetsOffset,
        drawcount
      ]);

  void multiDrawArraysInstancedWEBGL(
          int mode,
          dynamic firstsList,
          int firstsOffset,
          dynamic countsList,
          int countsOffset,
          dynamic instanceCountsList,
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

  void multiDrawElementsInstancedWEBGL(
          int mode,
          dynamic countsList,
          int countsOffset,
          int type,
          dynamic offsetsList,
          int offsetsOffset,
          dynamic instanceCountsList,
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
