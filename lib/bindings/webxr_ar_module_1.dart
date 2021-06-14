/// WebXR Augmented Reality Module - Level 1
///
/// https://immersive-web.github.io/webxr-ar-module/
@JS('window')
library webxr_ar_module_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';

@JS()
enum XRSessionMode {
  inline,
  @JS('immersive-vr')
  immersiveVr,
  @JS('immersive-ar')
  immersiveAr
}

@JS()
enum XREnvironmentBlendMode {
  opaque,
  @JS('alpha-blend')
  alphaBlend,
  additive
}

@JS()
enum XRInteractionMode {
  @JS('screen-space')
  screenSpace,
  @JS('world-space')
  worldSpace
}
