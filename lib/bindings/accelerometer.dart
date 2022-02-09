/// Accelerometer
///
/// https://w3c.github.io/accelerometer/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library accelerometer;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Accelerometer implements Sensor {
  external Accelerometer([AccelerometerSensorOptions? options]);
}

extension PropsAccelerometer on Accelerometer {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum AccelerometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class AccelerometerSensorOptions implements SensorOptions {
  external factory AccelerometerSensorOptions._({String? referenceFrame});

  factory AccelerometerSensorOptions(
          {AccelerometerLocalCoordinateSystem? referenceFrame =
              AccelerometerLocalCoordinateSystem.device}) =>
      AccelerometerSensorOptions._(referenceFrame: referenceFrame?.name);
}

extension PropsAccelerometerSensorOptions on AccelerometerSensorOptions {
  AccelerometerLocalCoordinateSystem get referenceFrame =>
      AccelerometerLocalCoordinateSystem.values
          .byName(js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(AccelerometerLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.name);
  }
}

@JS()
@staticInterop
class LinearAccelerationSensor implements Accelerometer {
  external LinearAccelerationSensor([AccelerometerSensorOptions? options]);
}

@JS()
@staticInterop
class GravitySensor implements Accelerometer {
  external GravitySensor([AccelerometerSensorOptions? options]);
}

@anonymous
@JS()
@staticInterop
class AccelerometerReadingValues {
  external factory AccelerometerReadingValues(
      {double? x, double? y, double? z});
}

extension PropsAccelerometerReadingValues on AccelerometerReadingValues {
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

@anonymous
@JS()
@staticInterop
class LinearAccelerationReadingValues implements AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@anonymous
@JS()
@staticInterop
class GravityReadingValues implements AccelerometerReadingValues {
  external factory GravityReadingValues();
}
