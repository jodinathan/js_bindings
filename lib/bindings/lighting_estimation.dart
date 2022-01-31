/// WebXR Lighting Estimation API Level 1
///
/// https://immersive-web.github.io/lighting-estimation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library lighting_estimation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

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
  external XRLightProbe();
}

extension PropsXRLightProbe on XRLightProbe {
  ///  An [XRSpace] tracking the position and orientation the lighting
  /// estimations are relative to.
  ///
  XRSpace get probeSpace => js_util.getProperty(this, 'probeSpace');

  /// Event handler property for the [reflectionchange] event.
  ///
  EventHandlerNonNull? get onreflectionchange =>
      js_util.getProperty(this, 'onreflectionchange');
  set onreflectionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreflectionchange', newValue);
  }
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
  external XRLightEstimate();
}

extension PropsXRLightEstimate on XRLightEstimate {
  /// A [Float32Array] containing 9 spherical harmonics coefficients.
  ///
  Float32List get sphericalHarmonicsCoefficients =>
      js_util.getProperty(this, 'sphericalHarmonicsCoefficients');

  ///  A [DOMPointReadOnly] representing the direction to the primary
  /// light source from the [probeSpace] of an [XRLightProbe].
  ///
  DOMPointReadOnly get primaryLightDirection =>
      js_util.getProperty(this, 'primaryLightDirection');

  ///  A [DOMPointReadOnly] (with the [x], [y], [z] values mapped to
  /// RGB) representing the intensity of the primary light source from
  /// the [probeSpace] of an [XRLightProbe].
  ///
  DOMPointReadOnly get primaryLightIntensity =>
      js_util.getProperty(this, 'primaryLightIntensity');
}

@anonymous
@JS()
@staticInterop
class XRLightProbeInit {
  external factory XRLightProbeInit(
      {XRReflectionFormat reflectionFormat = XRReflectionFormat.srgba8});
}

extension PropsXRLightProbeInit on XRLightProbeInit {
  XRReflectionFormat get reflectionFormat =>
      js_util.getProperty(this, 'reflectionFormat');
  set reflectionFormat(XRReflectionFormat newValue) {
    js_util.setProperty(this, 'reflectionFormat', newValue);
  }
}
