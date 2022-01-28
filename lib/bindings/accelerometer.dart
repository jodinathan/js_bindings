/// Accelerometer
///
/// https://w3c.github.io/accelerometer/
@JS('window')
@staticInterop
library accelerometer;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], device sensor through the Permissions API.
///  If a feature policy blocks the use of a feature, it is because
/// your code is inconsistent with the policies set on your server.
/// This is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class Accelerometer implements Sensor {
  external factory Accelerometer([AccelerometerSensorOptions? options]);
}

extension PropsAccelerometer on Accelerometer {
  ///  Returns a double containing the acceleration of the device along
  /// the device's x axis.
  ///
  external double? get x;

  ///  Returns a double containing the acceleration of the device along
  /// the device's y axis.
  ///
  external double? get y;

  ///  Returns a double containing the acceleration of the device along
  /// the device's z axis.
  ///
  external double? get z;
}

enum AccelerometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class AccelerometerSensorOptions implements SensorOptions {
  external factory AccelerometerSensorOptions(
      {AccelerometerLocalCoordinateSystem referenceFrame =
          AccelerometerLocalCoordinateSystem.device});
}

extension PropsAccelerometerSensorOptions on AccelerometerSensorOptions {
  external AccelerometerLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(AccelerometerLocalCoordinateSystem newValue);
}

///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes, but
/// without the contribution of gravity.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the Permissions API.
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class LinearAccelerationSensor implements Accelerometer {
  external factory LinearAccelerationSensor(
      [AccelerometerSensorOptions? options]);
}

///  The interface of the Sensor APIs provides on each reading the
/// gravity applied to the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the Permissions API.
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
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);
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
