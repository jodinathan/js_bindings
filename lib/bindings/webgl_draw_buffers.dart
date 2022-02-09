/// WebGL WEBGL_draw_buffers Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_draw_buffers/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_draw_buffers;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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

  external WEBGLDrawBuffers();
}

extension PropsWEBGLDrawBuffers on WEBGLDrawBuffers {
  Object drawBuffersWEBGL(Iterable<int> buffers) =>
      js_util.callMethod(this, 'drawBuffersWEBGL', [buffers]);
}
