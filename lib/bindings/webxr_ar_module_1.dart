/// WebXR Augmented Reality Module - Level 1
///
/// https://immersive-web.github.io/webxr-ar-module/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr_ar_module_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum XREnvironmentBlendMode { opaque, alphaBlend, additive }

enum XRInteractionMode { screenSpace, worldSpace }
