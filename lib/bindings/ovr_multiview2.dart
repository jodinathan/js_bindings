/// WebGL OVR_multiview2 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OVR_multiview2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ovr_multiview2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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

  external OVRMultiview2();
}

extension PropsOVRMultiview2 on OVRMultiview2 {
  Object framebufferTextureMultiviewOVR(int target, int attachment,
          WebGLTexture? texture, int level, int baseViewIndex, int numViews) =>
      js_util.callMethod(this, 'framebufferTextureMultiviewOVR',
          [target, attachment, texture, level, baseViewIndex, numViews]);
}
