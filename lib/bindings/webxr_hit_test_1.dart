/// WebXR Hit Test Module
///
/// https://immersive-web.github.io/hit-test/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr_hit_test_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum XRHitTestTrackableType { point, plane, mesh }

@anonymous
@JS()
@staticInterop
class XRHitTestOptionsInit {
  external factory XRHitTestOptionsInit._(
      {required XRSpace space,
      required Iterable<String> entityTypes,
      required XRRay offsetRay});

  factory XRHitTestOptionsInit(
          {required XRSpace space,
          required Iterable<XRHitTestTrackableType> entityTypes,
          required XRRay offsetRay}) =>
      XRHitTestOptionsInit._(
          space: space, entityTypes: entityTypes.names, offsetRay: offsetRay);
}

extension PropsXRHitTestOptionsInit on XRHitTestOptionsInit {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  Iterable<XRHitTestTrackableType> get entityTypes =>
      XRHitTestTrackableType.values
          .byNames(js_util.getProperty(this, 'entityTypes'));
  set entityTypes(Iterable<XRHitTestTrackableType> newValue) {
    js_util.setProperty(this, 'entityTypes', newValue.names);
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
  external factory XRTransientInputHitTestOptionsInit._(
      {required String profile,
      required Iterable<String> entityTypes,
      required XRRay offsetRay});

  factory XRTransientInputHitTestOptionsInit(
          {required String profile,
          required Iterable<XRHitTestTrackableType> entityTypes,
          required XRRay offsetRay}) =>
      XRTransientInputHitTestOptionsInit._(
          profile: profile,
          entityTypes: entityTypes.names,
          offsetRay: offsetRay);
}

extension PropsXRTransientInputHitTestOptionsInit
    on XRTransientInputHitTestOptionsInit {
  String get profile => js_util.getProperty(this, 'profile');
  set profile(String newValue) {
    js_util.setProperty(this, 'profile', newValue);
  }

  Iterable<XRHitTestTrackableType> get entityTypes =>
      XRHitTestTrackableType.values
          .byNames(js_util.getProperty(this, 'entityTypes'));
  set entityTypes(Iterable<XRHitTestTrackableType> newValue) {
    js_util.setProperty(this, 'entityTypes', newValue.names);
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
  external factory XRHitTestSource();
}

extension PropsXRHitTestSource on XRHitTestSource {
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
  external factory XRTransientInputHitTestSource();
}

extension PropsXRTransientInputHitTestSource on XRTransientInputHitTestSource {
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
  external factory XRHitTestResult();
}

extension PropsXRHitTestResult on XRHitTestResult {
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
  external factory XRTransientInputHitTestResult();
}

extension PropsXRTransientInputHitTestResult on XRTransientInputHitTestResult {
  XRInputSource get inputSource => js_util.getProperty(this, 'inputSource');
  Iterable<XRHitTestResult> get results => js_util.getProperty(this, 'results');
}

@anonymous
@JS()
@staticInterop
class XRRayDirectionInit {
  external factory XRRayDirectionInit(
      {double? x = 0, double? y = 0, double? z = -1, double? w = 0});
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
  external factory XRRay([DOMPointInit? origin, XRRayDirectionInit? direction]);
}

extension PropsXRRay on XRRay {
  DOMPointReadOnly get origin => js_util.getProperty(this, 'origin');
  DOMPointReadOnly get direction => js_util.getProperty(this, 'direction');
  Float32List get matrix => js_util.getProperty(this, 'matrix');
}
