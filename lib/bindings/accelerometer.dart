/// Accelerometer
///
/// https://w3c.github.io/accelerometer/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library accelerometer;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], device sensor through the Permissions API.
///  This feature may be blocked by a Permissions Policy set on your
/// server.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Sensor
///
///
///
///
///
///
///
///    Accelerometer
///
///
@experimental
@JS()
@staticInterop
class Accelerometer implements Sensor {
  external factory Accelerometer([AccelerometerSensorOptions? options]);
}

extension PropsAccelerometer on Accelerometer {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum AccelerometerLocalCoordinateSystem {
  device('device'),
  screen('screen');

  final String value;
  static AccelerometerLocalCoordinateSystem fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AccelerometerLocalCoordinateSystem> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const AccelerometerLocalCoordinateSystem(this.value);
}

@anonymous
@JS()
@staticInterop
class AccelerometerSensorOptions implements SensorOptions {
  external factory AccelerometerSensorOptions._({String? referenceFrame});

  factory AccelerometerSensorOptions(
          {AccelerometerLocalCoordinateSystem? referenceFrame =
              AccelerometerLocalCoordinateSystem.device}) =>
      AccelerometerSensorOptions._(referenceFrame: referenceFrame?.value);
}

extension PropsAccelerometerSensorOptions on AccelerometerSensorOptions {
  AccelerometerLocalCoordinateSystem get referenceFrame =>
      AccelerometerLocalCoordinateSystem.fromValue(
          js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(AccelerometerLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.value);
  }
}

///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes, but
/// without the contribution of gravity.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the Permissions API. In
/// addition, this feature may be blocked by a Permissions Policy set
/// on your server.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Sensor
///
///
///
///
///
///
///
///    Accelerometer
///
///
///
///
///
///
///
///    LinearAccelerationSensor
///
///
@JS()
@staticInterop
class LinearAccelerationSensor implements Accelerometer {
  external factory LinearAccelerationSensor(
      [AccelerometerSensorOptions? options]);
}

///  The interface of the Sensor APIs provides on each reading the
/// gravity applied to the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the Permissions API. In
/// addition, this feature may be blocked by a Permissions Policy set
/// on your server.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Sensor
///
///
///
///
///
///
///
///    Accelerometer
///
///
///
///
///
///
///
///    GravitySensor
///
///
@JS()
@staticInterop
class GravitySensor implements Accelerometer {
  external factory GravitySensor([AccelerometerSensorOptions? options]);
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
