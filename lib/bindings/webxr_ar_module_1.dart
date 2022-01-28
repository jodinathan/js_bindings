/// WebXR Augmented Reality Module - Level 1
///
/// https://immersive-web.github.io/webxr-ar-module/
@JS('window')
@staticInterop
library webxr_ar_module_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webxr */

enum XREnvironmentBlendMode { opaque, alphaBlend, additive }

enum XRInteractionMode { screenSpace, worldSpace }
