/// WebXR Lighting Estimation API Level 1
///
/// https://immersive-web.github.io/lighting-estimation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr_lighting_estimation_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class XRLightProbe implements EventTarget {
  external XRLightProbe();
}

extension PropsXRLightProbe on XRLightProbe {
  XRSpace get probeSpace => js_util.getProperty(this, 'probeSpace');
  EventHandlerNonNull? get onreflectionchange =>
      js_util.getProperty(this, 'onreflectionchange');
  set onreflectionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreflectionchange', newValue);
  }
}

enum XRReflectionFormat { srgba8, rgba16f }

@JS()
@staticInterop
class XRLightEstimate {
  external XRLightEstimate();
}

extension PropsXRLightEstimate on XRLightEstimate {
  Float32List get sphericalHarmonicsCoefficients =>
      js_util.getProperty(this, 'sphericalHarmonicsCoefficients');
  DOMPointReadOnly get primaryLightDirection =>
      js_util.getProperty(this, 'primaryLightDirection');
  DOMPointReadOnly get primaryLightIntensity =>
      js_util.getProperty(this, 'primaryLightIntensity');
}

@anonymous
@JS()
@staticInterop
class XRLightProbeInit {
  external factory XRLightProbeInit._({String? reflectionFormat});

  factory XRLightProbeInit(
          {XRReflectionFormat? reflectionFormat = XRReflectionFormat.srgba8}) =>
      XRLightProbeInit._(reflectionFormat: reflectionFormat?.name);
}

extension PropsXRLightProbeInit on XRLightProbeInit {
  XRReflectionFormat get reflectionFormat => XRReflectionFormat.values
      .byName(js_util.getProperty(this, 'reflectionFormat'));
  set reflectionFormat(XRReflectionFormat newValue) {
    js_util.setProperty(this, 'reflectionFormat', newValue.name);
  }
}
