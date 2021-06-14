/// Magnetometer
///
/// https://w3c.github.io/magnetometer/
@JS('window')
library magnetometer;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';

///
///
///  The interface of the Sensor APIs provides information about the
/// magnetic field as detected by the device’s primary magnetometer
/// sensor.
///
///  To use this sensor, the user must grant permission to the
/// ['magnetometer'] device sensor through the [Permissions] API.
///
///  If a feature policy blocks use of a feature, it's because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class Magnetometer extends Sensor {
  external factory Magnetometer({MagnetometerSensorOptions? sensorOptions});

  ///  Returns a double containing the magnetic field around the
  /// device's x axis.
  external double? get x;

  ///  Returns a double containing the magnetic field around the
  /// device's y axis.
  external double? get y;

  ///  Returns a double containing the magnetic field around the
  /// device's z axis.
  external double? get z;
}

@JS()
enum MagnetometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
class MagnetometerSensorOptions extends SensorOptions {
  external MagnetometerLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(MagnetometerLocalCoordinateSystem newValue);

  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame =
          MagnetometerLocalCoordinateSystem.device});
}

@JS()
class UncalibratedMagnetometer extends Sensor {
  external factory UncalibratedMagnetometer(
      {MagnetometerSensorOptions? sensorOptions});
  external double? get x;
  external double? get y;
  external double? get z;
  external double? get xBias;
  external double? get yBias;
  external double? get zBias;
}

@anonymous
@JS()
class MagnetometerReadingValues {
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);

  external factory MagnetometerReadingValues({double? x, double? y, double? z});
}

@anonymous
@JS()
class UncalibratedMagnetometerReadingValues {
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);
  external double? get xBias;
  external set xBias(double? newValue);
  external double? get yBias;
  external set yBias(double? newValue);
  external double? get zBias;
  external set zBias(double? newValue);

  external factory UncalibratedMagnetometerReadingValues(
      {double? x,
      double? y,
      double? z,
      double? xBias,
      double? yBias,
      double? zBias});
}
