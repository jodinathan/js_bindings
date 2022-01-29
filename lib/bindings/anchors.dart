/// WebXR Anchors Module
///
/// https://immersive-web.github.io/anchors/
@JS('window')
@staticInterop
library anchors;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webxr
hit_test */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface creates anchors which keep track of the pose that
/// is fixed relative to the real world. With anchors, you can
/// specify poses in the world that need to be updated to correctly
/// reflect the evolving understanding of the world, such that the
/// poses remain aligned with the same place in the physical world.
/// That helps to build an illusion that the placed objects are
/// really present in the user’s environment.
@JS()
@staticInterop
class XRAnchor {
  external XRAnchor();
}

extension PropsXRAnchor on XRAnchor {
  ///  Returns an [XRSpace] object to locate the anchor relative to
  /// other [XRSpace] objects.
  ///
  XRSpace get anchorSpace => js_util.getProperty(this, 'anchorSpace');

  /// Removes the anchor.
  ///
  /// delete()
  ///
  Object delete() => js_util.callMethod(this, 'delete', []);
}

///  The interface exposes a collection of anchors. It is returned by
/// [XRFrame.trackedAnchors] and is a [Set]-like object.
@JS()
@staticInterop
class XRAnchorSet {
  external XRAnchorSet();
}
