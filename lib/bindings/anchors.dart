/// WebXR Anchors Module
///
/// https://immersive-web.github.io/anchors/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library anchors;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class XRAnchor {
  external XRAnchor();
}

extension PropsXRAnchor on XRAnchor {
  XRSpace get anchorSpace => js_util.getProperty(this, 'anchorSpace');
  Object delete() => js_util.callMethod(this, 'delete', []);
}

@JS()
@staticInterop
class XRAnchorSet extends JsArray<XRAnchor> {
  external XRAnchorSet();
}
