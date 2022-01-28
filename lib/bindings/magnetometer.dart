/// Magnetometer
///
/// https://w3c.github.io/magnetometer/
@JS('window')
@staticInterop
library magnetometer;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

///  The interface of the Sensor APIs provides information about the
/// magnetic field as detected by the device's primary magnetometer
/// sensor.
///  To use this sensor, the user must grant permission to the
/// ['magnetometer'] device sensor through the Permissions API.
///  If a feature policy blocks use of a feature, it's because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class Magnetometer implements Sensor {
  external factory Magnetometer([MagnetometerSensorOptions? sensorOptions]);
}

extension PropsMagnetometer on Magnetometer {
  ///  Returns a double containing the magnetic field around the
  /// device's x axis.
  ///
  external double? get x;

  ///  Returns a double containing the magnetic field around the
  /// device's y axis.
  ///
  external double? get y;

  ///  Returns a double containing the magnetic field around the
  /// device's z axis.
  ///
  external double? get z;
}

enum MagnetometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class MagnetometerSensorOptions implements SensorOptions {
  external factory MagnetometerSensorOptions(
      {MagnetometerLocalCoordinateSystem referenceFrame =
          MagnetometerLocalCoordinateSystem.device});
}

extension PropsMagnetometerSensorOptions on MagnetometerSensorOptions {
  external MagnetometerLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(MagnetometerLocalCoordinateSystem newValue);
}

@JS()
@staticInterop
class UncalibratedMagnetometer implements Sensor {
  external factory UncalibratedMagnetometer(
      [MagnetometerSensorOptions? sensorOptions]);
}

extension PropsUncalibratedMagnetometer on UncalibratedMagnetometer {
  external double? get x;
  external double? get y;
  external double? get z;
  external double? get xBias;
  external double? get yBias;
  external double? get zBias;
}

@anonymous
@JS()
@staticInterop
class MagnetometerReadingValues {
  external factory MagnetometerReadingValues({double? x, double? y, double? z});
}

extension PropsMagnetometerReadingValues on MagnetometerReadingValues {
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
class UncalibratedMagnetometerReadingValues {
  external factory UncalibratedMagnetometerReadingValues(
      {double? x,
      double? y,
      double? z,
      double? xBias,
      double? yBias,
      double? zBias});
}

extension PropsUncalibratedMagnetometerReadingValues
    on UncalibratedMagnetometerReadingValues {
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
}
