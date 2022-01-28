/// Media Capture Depth Stream Extensions
///
/// https://w3c.github.io/mediacapture-depth/
@JS('window')
@staticInterop
library mediacapture_depth;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: mediacapture_streams */

@anonymous
@JS()
@staticInterop
class DistortionCoefficients {
  external factory DistortionCoefficients(
      {double k1, double k2, double p1, double p2, double k3});
}

extension PropsDistortionCoefficients on DistortionCoefficients {
  external double get k1;
  external set k1(double newValue);
  external double get k2;
  external set k2(double newValue);
  external double get p1;
  external set p1(double newValue);
  external double get p2;
  external set p2(double newValue);
  external double get k3;
  external set k3(double newValue);
}

@anonymous
@JS()
@staticInterop
class Transformation {
  external factory Transformation(
      {Float32List transformationMatrix, String videoDeviceId});
}

extension PropsTransformation on Transformation {
  external Float32List get transformationMatrix;
  external set transformationMatrix(Float32List newValue);
  external String get videoDeviceId;
  external set videoDeviceId(String newValue);
}

enum VideoKindEnum { color, depth }
