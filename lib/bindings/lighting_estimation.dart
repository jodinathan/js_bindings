/// WebXR Lighting Estimation API Level 1
///
/// https://immersive-web.github.io/lighting-estimation/
@JS('window')
@staticInterop
library lighting_estimation;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
webxr
html
geometry_1
webxrlayers_1
webgl1 */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API contains lighting
/// information at a given point in the user's environment. You can
/// get an [XRLighting] object using the
/// [XRSession.requestLightProbe()] method.
///  This object doesn't itself contain lighting values, but it is
/// used to collect lighting states for each [XRFrame]. See
/// [XRLightEstimate] for the estimated lighting values for an .
@JS()
@staticInterop
class XRLightProbe implements EventTarget {
  external factory XRLightProbe();
}

extension PropsXRLightProbe on XRLightProbe {
  ///  An [XRSpace] tracking the position and orientation the lighting
  /// estimations are relative to.
  ///
  external XRSpace get probeSpace;

  /// Event handler property for the [reflectionchange] event.
  ///
  external EventHandlerNonNull? get onreflectionchange;
  external set onreflectionchange(EventHandlerNonNull? newValue);
}

enum XRReflectionFormat { srgba8, rgba16f }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API provides the estimated
/// lighting values for an [XRLightProbe] at the time represented by
/// an [XRFrame].
/// To get an object, call the [XRFrame.getLightEstimate()] method.
@JS()
@staticInterop
class XRLightEstimate {
  external factory XRLightEstimate();
}

extension PropsXRLightEstimate on XRLightEstimate {
  /// A [Float32Array] containing 9 spherical harmonics coefficients.
  ///
  external Float32List get sphericalHarmonicsCoefficients;

  ///  A [DOMPointReadOnly] representing the direction to the primary
  /// light source from the [probeSpace] of an [XRLightProbe].
  ///
  external DOMPointReadOnly get primaryLightDirection;

  ///  A [DOMPointReadOnly] (with the [x], [y], [z] values mapped to
  /// RGB) representing the intensity of the primary light source from
  /// the [probeSpace] of an [XRLightProbe].
  ///
  external DOMPointReadOnly get primaryLightIntensity;
}

@anonymous
@JS()
@staticInterop
class XRLightProbeInit {
  external factory XRLightProbeInit(
      {XRReflectionFormat reflectionFormat = XRReflectionFormat.srgba8});
}

extension PropsXRLightProbeInit on XRLightProbeInit {
  external XRReflectionFormat get reflectionFormat;
  external set reflectionFormat(XRReflectionFormat newValue);
}
