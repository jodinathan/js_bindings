/// WebGL OES_draw_buffers_indexed Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_draw_buffers_indexed/
@JS('window')
@staticInterop
library o_e_s_draw_buffers_indexed;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class OES_draw_buffers_indexed {
  external factory OES_draw_buffers_indexed();
}

extension PropsOES_draw_buffers_indexed on OES_draw_buffers_indexed {
  external Object enableiOES(int target, int index);
  external Object disableiOES(int target, int index);
  external Object blendEquationiOES(int buf, int mode);
  external Object blendEquationSeparateiOES(
      int buf, int modeRGB, int modeAlpha);
  external Object blendFunciOES(int buf, int src, int dst);
  external Object blendFuncSeparateiOES(
      int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha);
  external Object colorMaskiOES(int buf, bool r, bool g, bool b, bool a);
}
