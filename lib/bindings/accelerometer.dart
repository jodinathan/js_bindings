/// Accelerometer
///
/// https://w3c.github.io/accelerometer/
@JS('window')
library accelerometer;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes.
///
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], device sensor through the [Permissions] API.
///
///  If a feature policy blocks the use of a feature, it is because
/// your code is inconsistent with the policies set on your server.
/// This is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class Accelerometer extends Sensor {
  external factory Accelerometer({AccelerometerSensorOptions? options});

  ///  Returns a double containing the acceleration of the device along
  /// the device's x axis.
  external double? get x;

  ///  Returns a double containing the acceleration of the device along
  /// the device's y axis.
  external double? get y;

  ///  Returns a double containing the acceleration of the device along
  /// the device's z axis.
  external double? get z;
}

@JS()
enum AccelerometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
class AccelerometerSensorOptions extends SensorOptions {
  external AccelerometerLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(AccelerometerLocalCoordinateSystem newValue);

  external factory AccelerometerSensorOptions(
      {AccelerometerLocalCoordinateSystem referenceFrame =
          AccelerometerLocalCoordinateSystem.device});
}

///
///
///  The interface of the Sensor APIs provides on each reading the
/// acceleration applied to the device along all three axes, but
/// without the contribution of gravity.
///
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the [Permissions] API.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class LinearAccelerationSensor extends Accelerometer {
  external factory LinearAccelerationSensor(
      {AccelerometerSensorOptions? options});
}

///
///
///  The interface of the Sensor APIs provides on each reading the
/// gravity applied to the device along all three axes.
///
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'] device sensor through the [Permissions] API.
@JS()
class GravitySensor extends Accelerometer {
  external factory GravitySensor({AccelerometerSensorOptions? options});
}

@anonymous
@JS()
class AccelerometerReadingValues {
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);

  external factory AccelerometerReadingValues(
      {double? x, double? y, double? z});
}

@anonymous
@JS()
class LinearAccelerationReadingValues extends AccelerometerReadingValues {
  external factory LinearAccelerationReadingValues();
}

@anonymous
@JS()
class GravityReadingValues extends AccelerometerReadingValues {
  external factory GravityReadingValues();
}
