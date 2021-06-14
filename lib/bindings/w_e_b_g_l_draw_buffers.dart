/// WebGL WEBGL_draw_buffers Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_draw_buffers/
@JS('window')
library w_e_b_g_l_draw_buffers;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl1.dart';

///
///
///  The [WEBGL_draw_buffers] extension is part of the WebGL API and
/// enables a fragment shader to write to several textures, which is
/// useful for deferred shading, for example.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default. In WebGL 2, the
/// constants are available without the "WEBGL" suffix and the new
/// GLSL built-ins require GLSL [#version 300 es].
///
@JS()
class WEBGL_draw_buffers {
  external static int get COLOR_ATTACHMENT0_WEBGL;
  external static int get COLOR_ATTACHMENT1_WEBGL;
  external static int get COLOR_ATTACHMENT2_WEBGL;
  external static int get COLOR_ATTACHMENT3_WEBGL;
  external static int get COLOR_ATTACHMENT4_WEBGL;
  external static int get COLOR_ATTACHMENT5_WEBGL;
  external static int get COLOR_ATTACHMENT6_WEBGL;
  external static int get COLOR_ATTACHMENT7_WEBGL;
  external static int get COLOR_ATTACHMENT8_WEBGL;
  external static int get COLOR_ATTACHMENT9_WEBGL;
  external static int get COLOR_ATTACHMENT10_WEBGL;
  external static int get COLOR_ATTACHMENT11_WEBGL;
  external static int get COLOR_ATTACHMENT12_WEBGL;
  external static int get COLOR_ATTACHMENT13_WEBGL;
  external static int get COLOR_ATTACHMENT14_WEBGL;
  external static int get COLOR_ATTACHMENT15_WEBGL;
  external static int get DRAW_BUFFER0_WEBGL;
  external static int get DRAW_BUFFER1_WEBGL;
  external static int get DRAW_BUFFER2_WEBGL;
  external static int get DRAW_BUFFER3_WEBGL;
  external static int get DRAW_BUFFER4_WEBGL;
  external static int get DRAW_BUFFER5_WEBGL;
  external static int get DRAW_BUFFER6_WEBGL;
  external static int get DRAW_BUFFER7_WEBGL;
  external static int get DRAW_BUFFER8_WEBGL;
  external static int get DRAW_BUFFER9_WEBGL;
  external static int get DRAW_BUFFER10_WEBGL;
  external static int get DRAW_BUFFER11_WEBGL;
  external static int get DRAW_BUFFER12_WEBGL;
  external static int get DRAW_BUFFER13_WEBGL;
  external static int get DRAW_BUFFER14_WEBGL;
  external static int get DRAW_BUFFER15_WEBGL;
  external static int get MAX_COLOR_ATTACHMENTS_WEBGL;
  external static int get MAX_DRAW_BUFFERS_WEBGL;

  ///  Defines the draw buffers to which all fragment colors are
  /// written. (When using [WebGL2], this method is available as
  /// [gl.drawBuffers()] by default).
  ///
  /// void gl.getExtension('WEBGL_draw_buffers').drawBuffersWEBGL(buffers);
  external Object drawBuffersWEBGL(Iterable<int> buffers);

  external factory WEBGL_draw_buffers();
}
