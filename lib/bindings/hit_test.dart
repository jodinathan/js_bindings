/// WebXR Hit Test Module
///
/// https://immersive-web.github.io/hit-test/
@JS('window')
@staticInterop
library hit_test;

import 'dart:js_util' as js_util;
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
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  Iterable<XRHitTestTrackableType> get entityTypes =>
      js_util.getProperty(this, 'entityTypes');
  set entityTypes(Iterable<XRHitTestTrackableType> newValue) {
    js_util.setProperty(this, 'entityTypes', newValue);
  }

  XRRay get offsetRay => js_util.getProperty(this, 'offsetRay');
  set offsetRay(XRRay newValue) {
    js_util.setProperty(this, 'offsetRay', newValue);
  }
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
  String get profile => js_util.getProperty(this, 'profile');
  set profile(String newValue) {
    js_util.setProperty(this, 'profile', newValue);
  }

  Iterable<XRHitTestTrackableType> get entityTypes =>
      js_util.getProperty(this, 'entityTypes');
  set entityTypes(Iterable<XRHitTestTrackableType> newValue) {
    js_util.setProperty(this, 'entityTypes', newValue);
  }

  XRRay get offsetRay => js_util.getProperty(this, 'offsetRay');
  set offsetRay(XRRay newValue) {
    js_util.setProperty(this, 'offsetRay', newValue);
  }
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
  external XRHitTestSource();
}

extension PropsXRHitTestSource on XRHitTestSource {
  /// Unsubscribes from the hit test.
  ///
  /// cancel()
  ///
  Object cancel() => js_util.callMethod(this, 'cancel', []);
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
  external XRTransientInputHitTestSource();
}

extension PropsXRTransientInputHitTestSource on XRTransientInputHitTestSource {
  /// Unsubscribes from the transient input hit test.
  ///
  /// cancel()
  ///
  Object cancel() => js_util.callMethod(this, 'cancel', []);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API contains a single result
/// of a hit test. You can get an array of objects for a frame by
/// calling [XRFrame.getHitTestResults()].
@JS()
@staticInterop
class XRHitTestResult {
  external XRHitTestResult();
}

extension PropsXRHitTestResult on XRHitTestResult {
  ///  Returns the [XRPose] of the hit test result relative to the
  /// given base space.
  ///
  /// getPose(baseSpace)
  ///
  XRPose? getPose(XRSpace baseSpace) =>
      js_util.callMethod(this, 'getPose', [baseSpace]);

  Future<XRAnchor> createAnchor() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createAnchor', []));
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
  external XRTransientInputHitTestResult();
}

extension PropsXRTransientInputHitTestResult on XRTransientInputHitTestResult {
  ///  Represents the [XRInputSource] that was used to compute the
  /// [results] array.
  ///
  XRInputSource get inputSource => js_util.getProperty(this, 'inputSource');

  ///  Represents an array of [XRHitTestResult] objects containing the
  /// hit test results for the input source, ordered by the distance
  /// along the ray used to perform the hit test, with the closest
  /// result at position 0.
  ///
  Iterable<XRHitTestResult> get results => js_util.getProperty(this, 'results');
}

@anonymous
@JS()
@staticInterop
class XRRayDirectionInit {
  external factory XRRayDirectionInit(
      {double x = 0, double? y = 0, double? z = -1, double? w = 0});
}

extension PropsXRRayDirectionInit on XRRayDirectionInit {
  double get x => js_util.getProperty(this, 'x');
  set x(double newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  double get y => js_util.getProperty(this, 'y');
  set y(double newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  double get z => js_util.getProperty(this, 'z');
  set z(double newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

  double get w => js_util.getProperty(this, 'w');
  set w(double newValue) {
    js_util.setProperty(this, 'w', newValue);
  }
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
  external XRRay([DOMPointInit? origin, XRRayDirectionInit? direction]);
}

extension PropsXRRay on XRRay {
  ///  A [DOMPointReadOnly] representing the 3-dimensional point in
  /// space that the ray originates from, in meters.
  ///
  DOMPointReadOnly get origin => js_util.getProperty(this, 'origin');

  ///  A [DOMPointReadOnly] representing the ray's 3-dimensional
  /// directional vector.
  ///
  DOMPointReadOnly get direction => js_util.getProperty(this, 'direction');

  ///  A transform that can be used to position objects along the
  /// [XRRay]. This is a 4 by 4 matrix given as a 16 element
  /// [Float32Array] in column major order.
  ///
  Float32List get matrix => js_util.getProperty(this, 'matrix');
}
