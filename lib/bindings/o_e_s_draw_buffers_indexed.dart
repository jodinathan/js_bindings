/// WebGL OES_draw_buffers_indexed Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_draw_buffers_indexed/
@JS('window')
@staticInterop
library o_e_s_draw_buffers_indexed;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class OES_draw_buffers_indexed {
  external OES_draw_buffers_indexed();
}

extension PropsOES_draw_buffers_indexed on OES_draw_buffers_indexed {
  Object enableiOES(int target, int index) =>
      js_util.callMethod(this, 'enableiOES', [target, index]);

  Object disableiOES(int target, int index) =>
      js_util.callMethod(this, 'disableiOES', [target, index]);

  Object blendEquationiOES(int buf, int mode) =>
      js_util.callMethod(this, 'blendEquationiOES', [buf, mode]);

  Object blendEquationSeparateiOES(int buf, int modeRGB, int modeAlpha) =>
      js_util.callMethod(
          this, 'blendEquationSeparateiOES', [buf, modeRGB, modeAlpha]);

  Object blendFunciOES(int buf, int src, int dst) =>
      js_util.callMethod(this, 'blendFunciOES', [buf, src, dst]);

  Object blendFuncSeparateiOES(
          int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) =>
      js_util.callMethod(this, 'blendFuncSeparateiOES',
          [buf, srcRGB, dstRGB, srcAlpha, dstAlpha]);

  Object colorMaskiOES(int buf, bool r, bool g, bool b, bool a) =>
      js_util.callMethod(this, 'colorMaskiOES', [buf, r, g, b, a]);
}
