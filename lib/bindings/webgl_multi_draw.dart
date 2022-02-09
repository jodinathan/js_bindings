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

@JS('WEBGL_multi_draw')
@staticInterop
class WEBGLMultiDraw {
  external WEBGLMultiDraw();
}

extension PropsWEBGLMultiDraw on WEBGLMultiDraw {
  Object multiDrawArraysWEBGL(int mode, dynamic firstsList, int firstsOffset,
          dynamic countsList, int countsOffset, int drawcount) =>
      js_util.callMethod(this, 'multiDrawArraysWEBGL', [
        mode,
        firstsList,
        firstsOffset,
        countsList,
        countsOffset,
        drawcount
      ]);

  Object multiDrawElementsWEBGL(int mode, dynamic countsList, int countsOffset,
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

  Object multiDrawArraysInstancedWEBGL(
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

  Object multiDrawElementsInstancedWEBGL(
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
