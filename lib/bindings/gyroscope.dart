/// Gyroscope
///
/// https://w3c.github.io/gyroscope/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library gyroscope;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Gyroscope implements Sensor {
  external Gyroscope([GyroscopeSensorOptions? sensorOptions]);
}

extension PropsGyroscope on Gyroscope {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum GyroscopeLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class GyroscopeSensorOptions implements SensorOptions {
  external factory GyroscopeSensorOptions._({String? referenceFrame});

  factory GyroscopeSensorOptions(
          {GyroscopeLocalCoordinateSystem? referenceFrame =
              GyroscopeLocalCoordinateSystem.device}) =>
      GyroscopeSensorOptions._(referenceFrame: referenceFrame?.name);
}

extension PropsGyroscopeSensorOptions on GyroscopeSensorOptions {
  GyroscopeLocalCoordinateSystem get referenceFrame =>
      GyroscopeLocalCoordinateSystem.values
          .byName(js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(GyroscopeLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class GyroscopeReadingValues {
  external factory GyroscopeReadingValues({double? x, double? y, double? z});
}

extension PropsGyroscopeReadingValues on GyroscopeReadingValues {
  double? get x => js_util.getProperty(this, 'x');
  set x(double? newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  double? get y => js_util.getProperty(this, 'y');
  set y(double? newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  double? get z => js_util.getProperty(this, 'z');
  set z(double? newValue) {
    js_util.setProperty(this, 'z', newValue);
  }
}
