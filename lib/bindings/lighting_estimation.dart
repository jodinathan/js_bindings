/// WebXR Lighting Estimation API Level 1
///
/// https://immersive-web.github.io/lighting-estimation/
@JS('window')
library lighting_estimation;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'webxr.dart';
import 'html.dart';
import 'geometry_1.dart';
import 'webxrlayers_1.dart';
import 'webgl1.dart';

@JS()
class XRLightProbe extends EventTarget {
  external XRSpace get probeSpace;
  external EventHandlerNonNull? get onreflectionchange;
  external set onreflectionchange(EventHandlerNonNull? newValue);

  external factory XRLightProbe();
}

@JS()
enum XRReflectionFormat { srgba8, rgba16f }

@JS()
class XRLightEstimate {
  external Float32List get sphericalHarmonicsCoefficients;
  external DOMPointReadOnly get primaryLightDirection;
  external DOMPointReadOnly get primaryLightIntensity;

  external factory XRLightEstimate();
}

@anonymous
@JS()
class XRLightProbeInit {
  external XRReflectionFormat get reflectionFormat;
  external set reflectionFormat(XRReflectionFormat newValue);

  external factory XRLightProbeInit(
      {XRReflectionFormat reflectionFormat = XRReflectionFormat.srgba8});
}
