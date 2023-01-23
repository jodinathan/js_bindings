/// WebGL OVR_multiview2 Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/OVR_multiview2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ovr_multiview2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds support for
/// rendering into multiple views simultaneously. This especially
/// useful for virtual reality (VR) and WebXR.
/// For more information, see also:
///
///  Multiview on WebXR
///  three.js multiview demo
///  Multiview in babylon.js
///  Optimizing Virtual Reality: Understanding Multiview
///  Multiview WebGL Rendering for Oculus Browser 6.0+
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: Support depends on the system's graphics driver
/// (Windows+ANGLE and Android are supported; Windows+GL, Mac, Linux
/// are not supported).
///   This extension is only available to WebGL 2 contexts as it
/// needs GLSL 3.00 and texture arrays.
///   Currently, there is no way to use multiview to render to a
/// multisampled backbuffer, so you should create contexts with
/// [antialias: false]. However, the Oculus browser (6+) also
/// supports multisampling using the [OCULUS_multiview] extension.
/// See also this WebGL issue.
///
@JS('OVR_multiview2')
@staticInterop
class OVRMultiview2 {
  @JS('FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR')
  external static int get framebufferAttachmentTextureNumViewsOvr;

  @JS('FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR')
  external static int get framebufferAttachmentTextureBaseViewIndexOvr;

  @JS('MAX_VIEWS_OVR')
  external static int get maxViewsOvr;

  @JS('FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR')
  external static int get framebufferIncompleteViewTargetsOvr;

  external factory OVRMultiview2();
}

extension PropsOVRMultiview2 on OVRMultiview2 {
  void framebufferTextureMultiviewOVR(int target, int attachment,
          WebGLTexture? texture, int level, int baseViewIndex, int numViews) =>
      js_util.callMethod(this, 'framebufferTextureMultiviewOVR',
          [target, attachment, texture, level, baseViewIndex, numViews]);
}
