/// Media Capture Depth Stream Extensions
///
/// https://w3c.github.io/mediacapture-depth/
@JS('window')
@staticInterop
library mediacapture_depth;

import 'dart:js_util' as js_util;
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
  double get k1 => js_util.getProperty(this, 'k1');
  set k1(double newValue) {
    js_util.setProperty(this, 'k1', newValue);
  }

  double get k2 => js_util.getProperty(this, 'k2');
  set k2(double newValue) {
    js_util.setProperty(this, 'k2', newValue);
  }

  double get p1 => js_util.getProperty(this, 'p1');
  set p1(double newValue) {
    js_util.setProperty(this, 'p1', newValue);
  }

  double get p2 => js_util.getProperty(this, 'p2');
  set p2(double newValue) {
    js_util.setProperty(this, 'p2', newValue);
  }

  double get k3 => js_util.getProperty(this, 'k3');
  set k3(double newValue) {
    js_util.setProperty(this, 'k3', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class Transformation {
  external factory Transformation(
      {Float32List transformationMatrix, String videoDeviceId});
}

extension PropsTransformation on Transformation {
  Float32List get transformationMatrix =>
      js_util.getProperty(this, 'transformationMatrix');
  set transformationMatrix(Float32List newValue) {
    js_util.setProperty(this, 'transformationMatrix', newValue);
  }

  String get videoDeviceId => js_util.getProperty(this, 'videoDeviceId');
  set videoDeviceId(String newValue) {
    js_util.setProperty(this, 'videoDeviceId', newValue);
  }
}

enum VideoKindEnum { color, depth }
