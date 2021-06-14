/// WebXR Anchors Module
///
/// https://immersive-web.github.io/anchors/
@JS('window')
library anchors;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';
import 'hit_test.dart';

@JS()
class XRAnchor {
  external XRSpace get anchorSpace;
  external Object delete();

  external factory XRAnchor();
}

@JS()
class XRAnchorSet {
  external XRAnchor operator [](int index);

  external factory XRAnchorSet();
}
