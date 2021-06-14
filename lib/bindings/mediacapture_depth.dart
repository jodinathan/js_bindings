/// Media Capture Depth Stream Extensions
///
/// https://w3c.github.io/mediacapture-depth/
@JS('window')
library mediacapture_depth;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'mediacapture_streams.dart';

@anonymous
@JS()
class DistortionCoefficients {
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

  external factory DistortionCoefficients(
      {double k1, double k2, double p1, double p2, double k3});
}

@anonymous
@JS()
class Transformation {
  external Float32List get transformationMatrix;
  external set transformationMatrix(Float32List newValue);
  external String get videoDeviceId;
  external set videoDeviceId(String newValue);

  external factory Transformation(
      {Float32List transformationMatrix, String videoDeviceId});
}

@JS()
enum VideoKindEnum { color, depth }
