/// WebGL OES_draw_buffers_indexed Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_draw_buffers_indexed/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library oes_draw_buffers_indexed;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('OES_draw_buffers_indexed')
@staticInterop
class OESDrawBuffersIndexed {
  external factory OESDrawBuffersIndexed();
}

extension PropsOESDrawBuffersIndexed on OESDrawBuffersIndexed {
  void enableiOES(int target, int index) =>
      js_util.callMethod(this, 'enableiOES', [target, index]);

  void disableiOES(int target, int index) =>
      js_util.callMethod(this, 'disableiOES', [target, index]);

  void blendEquationiOES(int buf, int mode) =>
      js_util.callMethod(this, 'blendEquationiOES', [buf, mode]);

  void blendEquationSeparateiOES(int buf, int modeRGB, int modeAlpha) => js_util
      .callMethod(this, 'blendEquationSeparateiOES', [buf, modeRGB, modeAlpha]);

  void blendFunciOES(int buf, int src, int dst) =>
      js_util.callMethod(this, 'blendFunciOES', [buf, src, dst]);

  void blendFuncSeparateiOES(
          int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) =>
      js_util.callMethod(this, 'blendFuncSeparateiOES',
          [buf, srcRGB, dstRGB, srcAlpha, dstAlpha]);

  void colorMaskiOES(int buf, bool r, bool g, bool b, bool a) =>
      js_util.callMethod(this, 'colorMaskiOES', [buf, r, g, b, a]);
}
