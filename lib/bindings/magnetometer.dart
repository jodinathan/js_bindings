/// Magnetometer
///
/// https://w3c.github.io/magnetometer/

// ignore_for_file: unused_import

@JS('window')
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
///    Magnetometer
///
///
@JS()
@staticInterop
class Magnetometer implements Sensor {
  external factory Magnetometer([MagnetometerSensorOptions? sensorOptions]);
}

extension PropsMagnetometer on Magnetometer {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum MagnetometerLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class MagnetometerSensorOptions implements SensorOptions {
  external factory MagnetometerSensorOptions._({String? referenceFrame});

  factory MagnetometerSensorOptions(
          {MagnetometerLocalCoordinateSystem? referenceFrame =
              MagnetometerLocalCoordinateSystem.device}) =>
      MagnetometerSensorOptions._(referenceFrame: referenceFrame?.name);
}

extension PropsMagnetometerSensorOptions on MagnetometerSensorOptions {
  MagnetometerLocalCoordinateSystem get referenceFrame =>
      MagnetometerLocalCoordinateSystem.values
          .byName(js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(MagnetometerLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.name);
  }
}

@JS()
@staticInterop
class UncalibratedMagnetometer implements Sensor {
  external factory UncalibratedMagnetometer(
      [MagnetometerSensorOptions? sensorOptions]);
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
