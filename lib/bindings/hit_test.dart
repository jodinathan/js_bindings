/// WebXR Hit Test Module
///
/// https://immersive-web.github.io/hit-test/
@JS('window')
@staticInterop
library hit_test;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webxr
geometry_1
anchors */

enum XRHitTestTrackableType { point, plane, mesh }

@anonymous
@JS()
@staticInterop
class XRHitTestOptionsInit {
  external factory XRHitTestOptionsInit(
      {XRSpace space,
      Iterable<XRHitTestTrackableType> entityTypes,
      XRRay offsetRay});
}

extension PropsXRHitTestOptionsInit on XRHitTestOptionsInit {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external Iterable<XRHitTestTrackableType> get entityTypes;
  external set entityTypes(Iterable<XRHitTestTrackableType> newValue);
  external XRRay get offsetRay;
  external set offsetRay(XRRay newValue);
}

@anonymous
@JS()
@staticInterop
class XRTransientInputHitTestOptionsInit {
  external factory XRTransientInputHitTestOptionsInit(
      {String profile,
      Iterable<XRHitTestTrackableType> entityTypes,
      XRRay offsetRay});
}

extension PropsXRTransientInputHitTestOptionsInit
    on XRTransientInputHitTestOptionsInit {
  external String get profile;
  external set profile(String newValue);
  external Iterable<XRHitTestTrackableType> get entityTypes;
  external set entityTypes(Iterable<XRHitTestTrackableType> newValue);
  external XRRay get offsetRay;
  external set offsetRay(XRRay newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API handles hit test
/// subscriptions. You can get an object by using the
/// [XRSession.requestHitTestSource()] method.
///  This object doesn't itself contain hit test results, but it is
/// used to compute hit tests for each [XRFrame] by calling
/// [XRFrame.getHitTestResults()], which returns [XRHitTestResult]
/// objects.
@JS()
@staticInterop
class XRHitTestSource {
  external factory XRHitTestSource();
}

extension PropsXRHitTestSource on XRHitTestSource {
  /// Unsubscribes from the hit test.
  ///
  /// cancel()
  ///
  external Object cancel();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API handles transient input
/// hit test subscriptions. You can get an object by calling the
/// [XRSession.requestHitTestSourceForTransientInput()].
///  This object doesn't itself contain transient input hit test
/// results, but it is used to compute hit tests for each [XRFrame]
/// by calling [XRFrame.getHitTestResultsForTransientInput()], which
/// returns [XRTransientInputHitTestResult] objects.
@JS()
@staticInterop
class XRTransientInputHitTestSource {
  external factory XRTransientInputHitTestSource();
}

extension PropsXRTransientInputHitTestSource on XRTransientInputHitTestSource {
  /// Unsubscribes from the transient input hit test.
  ///
  /// cancel()
  ///
  external Object cancel();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API contains a single result
/// of a hit test. You can get an array of objects for a frame by
/// calling [XRFrame.getHitTestResults()].
@JS()
@staticInterop
class XRHitTestResult {
  external factory XRHitTestResult();
}

extension PropsXRHitTestResult on XRHitTestResult {
  ///  Returns the [XRPose] of the hit test result relative to the
  /// given base space.
  ///
  /// getPose(baseSpace)
  ///
  external XRPose? getPose(XRSpace baseSpace);
  external Promise<XRAnchor> createAnchor();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API contains an array of
/// results of a hit test for transient input, grouped by input
/// source.
///  You can get an array of [XRHitTestResult] objects for a frame by
/// calling [XRFrame.getHitTestResultsForTransientInput()].
@JS()
@staticInterop
class XRTransientInputHitTestResult {
  external factory XRTransientInputHitTestResult();
}

extension PropsXRTransientInputHitTestResult on XRTransientInputHitTestResult {
  ///  Represents the [XRInputSource] that was used to compute the
  /// [results] array.
  ///
  external XRInputSource get inputSource;

  ///  Represents an array of [XRHitTestResult] objects containing the
  /// hit test results for the input source, ordered by the distance
  /// along the ray used to perform the hit test, with the closest
  /// result at position 0.
  ///
  external Iterable<XRHitTestResult> get results;
}

@anonymous
@JS()
@staticInterop
class XRRayDirectionInit {
  external factory XRRayDirectionInit(
      {double x = 0, double y = 0, double z = -1, double w = 0});
}

extension PropsXRRayDirectionInit on XRRayDirectionInit {
  external double get x;
  external set x(double newValue);
  external double get y;
  external set y(double newValue);
  external double get z;
  external set z(double newValue);
  external double get w;
  external set w(double newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a geometric ray
/// described by an origin point and a direction vector.
///   objects can be passed to [XRSession.requestHitTestSource()] or
/// [XRSession.requestHitTestSourceForTransientInput()] to perform
/// hit testing.
@JS()
@staticInterop
class XRRay {
  external factory XRRay([DOMPointInit? origin, XRRayDirectionInit? direction]);
}

extension PropsXRRay on XRRay {
  ///  A [DOMPointReadOnly] representing the 3-dimensional point in
  /// space that the ray originates from, in meters.
  ///
  external DOMPointReadOnly get origin;

  ///  A [DOMPointReadOnly] representing the ray's 3-dimensional
  /// directional vector.
  ///
  external DOMPointReadOnly get direction;

  ///  A transform that can be used to position objects along the
  /// [XRRay]. This is a 4 by 4 matrix given as a 16 element
  /// [Float32Array] in column major order.
  ///
  external Float32List get matrix;
}
