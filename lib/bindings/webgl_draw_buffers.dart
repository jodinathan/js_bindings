/// WebGL WEBGL_draw_buffers Khronos Ratified Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/WEBGL_draw_buffers/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl_draw_buffers;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and enables a fragment
/// shader to write to several textures, which is useful for deferred
/// shading, for example.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. In WebGL 2, the constants are
/// available without the "WEBGL" suffix and the new GLSL built-ins
/// require GLSL [#version 300 es].
///
@JS('WEBGL_draw_buffers')
@staticInterop
class WEBGLDrawBuffers {
  @JS('COLOR_ATTACHMENT0_WEBGL')
  external static int get colorAttachment0Webgl;

  @JS('COLOR_ATTACHMENT1_WEBGL')
  external static int get colorAttachment1Webgl;

  @JS('COLOR_ATTACHMENT2_WEBGL')
  external static int get colorAttachment2Webgl;

  @JS('COLOR_ATTACHMENT3_WEBGL')
  external static int get colorAttachment3Webgl;

  @JS('COLOR_ATTACHMENT4_WEBGL')
  external static int get colorAttachment4Webgl;

  @JS('COLOR_ATTACHMENT5_WEBGL')
  external static int get colorAttachment5Webgl;

  @JS('COLOR_ATTACHMENT6_WEBGL')
  external static int get colorAttachment6Webgl;

  @JS('COLOR_ATTACHMENT7_WEBGL')
  external static int get colorAttachment7Webgl;

  @JS('COLOR_ATTACHMENT8_WEBGL')
  external static int get colorAttachment8Webgl;

  @JS('COLOR_ATTACHMENT9_WEBGL')
  external static int get colorAttachment9Webgl;

  @JS('COLOR_ATTACHMENT10_WEBGL')
  external static int get colorAttachment10Webgl;

  @JS('COLOR_ATTACHMENT11_WEBGL')
  external static int get colorAttachment11Webgl;

  @JS('COLOR_ATTACHMENT12_WEBGL')
  external static int get colorAttachment12Webgl;

  @JS('COLOR_ATTACHMENT13_WEBGL')
  external static int get colorAttachment13Webgl;

  @JS('COLOR_ATTACHMENT14_WEBGL')
  external static int get colorAttachment14Webgl;

  @JS('COLOR_ATTACHMENT15_WEBGL')
  external static int get colorAttachment15Webgl;

  @JS('DRAW_BUFFER0_WEBGL')
  external static int get drawBuffer0Webgl;

  @JS('DRAW_BUFFER1_WEBGL')
  external static int get drawBuffer1Webgl;

  @JS('DRAW_BUFFER2_WEBGL')
  external static int get drawBuffer2Webgl;

  @JS('DRAW_BUFFER3_WEBGL')
  external static int get drawBuffer3Webgl;

  @JS('DRAW_BUFFER4_WEBGL')
  external static int get drawBuffer4Webgl;

  @JS('DRAW_BUFFER5_WEBGL')
  external static int get drawBuffer5Webgl;

  @JS('DRAW_BUFFER6_WEBGL')
  external static int get drawBuffer6Webgl;

  @JS('DRAW_BUFFER7_WEBGL')
  external static int get drawBuffer7Webgl;

  @JS('DRAW_BUFFER8_WEBGL')
  external static int get drawBuffer8Webgl;

  @JS('DRAW_BUFFER9_WEBGL')
  external static int get drawBuffer9Webgl;

  @JS('DRAW_BUFFER10_WEBGL')
  external static int get drawBuffer10Webgl;

  @JS('DRAW_BUFFER11_WEBGL')
  external static int get drawBuffer11Webgl;

  @JS('DRAW_BUFFER12_WEBGL')
  external static int get drawBuffer12Webgl;

  @JS('DRAW_BUFFER13_WEBGL')
  external static int get drawBuffer13Webgl;

  @JS('DRAW_BUFFER14_WEBGL')
  external static int get drawBuffer14Webgl;

  @JS('DRAW_BUFFER15_WEBGL')
  external static int get drawBuffer15Webgl;

  @JS('MAX_COLOR_ATTACHMENTS_WEBGL')
  external static int get maxColorAttachmentsWebgl;

  @JS('MAX_DRAW_BUFFERS_WEBGL')
  external static int get maxDrawBuffersWebgl;

  external factory WEBGLDrawBuffers();
}

extension PropsWEBGLDrawBuffers on WEBGLDrawBuffers {
  void drawBuffersWEBGL(Iterable<int> buffers) =>
      js_util.callMethod(this, 'drawBuffersWEBGL', [buffers]);
}
