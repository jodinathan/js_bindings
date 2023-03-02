/// Magnetometer
///
/// https://w3c.github.io/magnetometer/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library magnetometer;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
///
///
///
///    EventTarget
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
///    Magnetometer
///
///
@JS()
@staticInterop
class Magnetometer implements Sensor {
  external factory Magnetometer._([MagnetometerSensorOptions? sensorOptions]);

  factory Magnetometer([MagnetometerSensorOptions? sensorOptions]) =>
      Magnetometer._(sensorOptions ?? undefined);
}

extension PropsMagnetometer on Magnetometer {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum MagnetometerLocalCoordinateSystem {
  device('device'),
  screen('screen');

  final String value;
  static MagnetometerLocalCoordinateSystem fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MagnetometerLocalCoordinateSystem> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MagnetometerLocalCoordinateSystem(this.value);
}

@anonymous
@JS()
@staticInterop
class MagnetometerSensorOptions implements SensorOptions {
  external factory MagnetometerSensorOptions._({String? referenceFrame});

  factory MagnetometerSensorOptions(
          {MagnetometerLocalCoordinateSystem? referenceFrame}) =>
      MagnetometerSensorOptions._(
          referenceFrame: referenceFrame?.value ??
              MagnetometerLocalCoordinateSystem.device.value);
}

extension PropsMagnetometerSensorOptions on MagnetometerSensorOptions {
  MagnetometerLocalCoordinateSystem get referenceFrame =>
      MagnetometerLocalCoordinateSystem.fromValue(
          js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(MagnetometerLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.value);
  }
}

@JS()
@staticInterop
class UncalibratedMagnetometer implements Sensor {
  external factory UncalibratedMagnetometer._(
      [MagnetometerSensorOptions? sensorOptions]);

  factory UncalibratedMagnetometer(
          [MagnetometerSensorOptions? sensorOptions]) =>
      UncalibratedMagnetometer._(sensorOptions ?? undefined);
}

extension PropsUncalibratedMagnetometer on UncalibratedMagnetometer {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
  double? get xBias => js_util.getProperty(this, 'xBias');
  double? get yBias => js_util.getProperty(this, 'yBias');
  double? get zBias => js_util.getProperty(this, 'zBias');
}

@anonymous
@JS()
@staticInterop
class MagnetometerReadingValues {
  external factory MagnetometerReadingValues({double? x, double? y, double? z});
}

extension PropsMagnetometerReadingValues on MagnetometerReadingValues {
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

  double? get xBias => js_util.getProperty(this, 'xBias');
  set xBias(double? newValue) {
    js_util.setProperty(this, 'xBias', newValue);
  }

  double? get yBias => js_util.getProperty(this, 'yBias');
  set yBias(double? newValue) {
    js_util.setProperty(this, 'yBias', newValue);
  }

  double? get zBias => js_util.getProperty(this, 'zBias');
  set zBias(double? newValue) {
    js_util.setProperty(this, 'zBias', newValue);
  }
}
