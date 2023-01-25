/// WebXR Augmented Reality Module - Level 1
///
/// https://immersive-web.github.io/webxr-ar-module/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webxr_ar_module_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum XREnvironmentBlendMode {
  opaque('opaque'),
  alphaBlend('alpha-blend'),
  additive('additive');

  final String value;
  static XREnvironmentBlendMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<XREnvironmentBlendMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const XREnvironmentBlendMode(this.value);
}

enum XRInteractionMode {
  screenSpace('screen-space'),
  worldSpace('world-space');

  final String value;
  static XRInteractionMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<XRInteractionMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const XRInteractionMode(this.value);
}
