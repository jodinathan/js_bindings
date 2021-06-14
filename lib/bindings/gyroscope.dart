/// Gyroscope
///
/// https://w3c.github.io/gyroscope/
@JS('window')
library gyroscope;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';

///
///
///  The interface of the Sensor APIs provides on each reading the
/// angular velocity of the device along all three axes.
///
///  To use this sensor, the user must grant permission to the
/// ['gyroscope'] device sensor through the [Permissions] API.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class Gyroscope extends Sensor {
  external factory Gyroscope({GyroscopeSensorOptions? sensorOptions});

  ///  Returns a double, containing the angular velocity of the device
  /// along the device's x axis.
  external double? get x;

  ///  Returns a double, containing the angular velocity of the device
  /// along the device's y axis.
  external double? get y;

  ///  Returns a double, containing the angular velocity of the device
  /// along the device's z axis.
  external double? get z;
}

@JS()
enum GyroscopeLocalCoordinateSystem { device, screen }

@anonymous
@JS()
class GyroscopeSensorOptions extends SensorOptions {
  external GyroscopeLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(GyroscopeLocalCoordinateSystem newValue);

  external factory GyroscopeSensorOptions(
      {GyroscopeLocalCoordinateSystem referenceFrame =
          GyroscopeLocalCoordinateSystem.device});
}

@anonymous
@JS()
class GyroscopeReadingValues {
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);

  external factory GyroscopeReadingValues({double? x, double? y, double? z});
}
