/// WebXR Lighting Estimation API Level 1
///
/// https://immersive-web.github.io/lighting-estimation/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webxr_lighting_estimation_1;

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
///
///
///
///    EventTarget
///
///
///
///
///
///    XRLightProbe
///
///
@JS()
@staticInterop
class XRLightProbe implements EventTarget {
  external factory XRLightProbe();
}

extension PropsXRLightProbe on XRLightProbe {
  XRSpace get probeSpace => js_util.getProperty(this, 'probeSpace');
  EventHandlerNonNull? get onreflectionchange =>
      js_util.getProperty(this, 'onreflectionchange');
  set onreflectionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreflectionchange', newValue);
  }
}

enum XRReflectionFormat {
  srgba8('srgba8'),
  rgba16f('rgba16f');

  final String value;
  static XRReflectionFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<XRReflectionFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const XRReflectionFormat(this.value);
}

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
      XRLightProbeInit._(reflectionFormat: reflectionFormat?.value);
}

extension PropsXRLightProbeInit on XRLightProbeInit {
  XRReflectionFormat get reflectionFormat => XRReflectionFormat.fromValue(
      js_util.getProperty(this, 'reflectionFormat'));
  set reflectionFormat(XRReflectionFormat newValue) {
    js_util.setProperty(this, 'reflectionFormat', newValue.value);
  }
}
