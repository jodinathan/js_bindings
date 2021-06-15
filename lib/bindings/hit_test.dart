/// WebXR Hit Test Module
///
/// https://immersive-web.github.io/hit-test/
@JS('window')
library hit_test;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';
import 'geometry_1.dart';
import 'anchors.dart';

@JS()
enum XRHitTestTrackableType { point, plane, mesh }

@anonymous
@JS()
class XRHitTestOptionsInit {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external Iterable<XRHitTestTrackableType> get entityTypes;
  external set entityTypes(Iterable<XRHitTestTrackableType> newValue);
  external XRRay get offsetRay;
  external set offsetRay(XRRay newValue);

  external factory XRHitTestOptionsInit(
      {XRSpace space,
      Iterable<XRHitTestTrackableType> entityTypes,
      XRRay offsetRay});
}

@anonymous
@JS()
class XRTransientInputHitTestOptionsInit {
  external String get profile;
  external set profile(String newValue);
  external Iterable<XRHitTestTrackableType> get entityTypes;
  external set entityTypes(Iterable<XRHitTestTrackableType> newValue);
  external XRRay get offsetRay;
  external set offsetRay(XRRay newValue);

  external factory XRTransientInputHitTestOptionsInit(
      {String profile,
      Iterable<XRHitTestTrackableType> entityTypes,
      XRRay offsetRay});
}

@JS()
class XRHitTestSource {
  external Object cancel();

  external factory XRHitTestSource();
}

@JS()
class XRTransientInputHitTestSource {
  external Object cancel();

  external factory XRTransientInputHitTestSource();
}

@JS()
class XRHitTestResult {
  external XRPose? getPose(XRSpace baseSpace);
  external Promise<XRAnchor> createAnchor();

  external factory XRHitTestResult();
}

@JS()
class XRTransientInputHitTestResult {
  external XRInputSource get inputSource;
  external Iterable<XRHitTestResult> get results;

  external factory XRTransientInputHitTestResult();
}

@anonymous
@JS()
class XRRayDirectionInit {
  external double get x;
  external set x(double newValue);
  external double get y;
  external set y(double newValue);
  external double get z;
  external set z(double newValue);
  external double get w;
  external set w(double newValue);

  external factory XRRayDirectionInit(
      {double x = 0, double y = 0, double z = -1, double w = 0});
}

@JS()
class XRRay {
  external factory XRRay([DOMPointInit? origin, XRRayDirectionInit? direction]);
  external DOMPointReadOnly get origin;
  external DOMPointReadOnly get direction;
  external Float32List get matrix;
}
