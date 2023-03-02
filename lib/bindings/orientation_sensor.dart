/// Orientation Sensor
///
/// https://w3c.github.io/orientation-sensor/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library orientation_sensor;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Sensor APIs is the base class for
/// orientation sensors. This interface cannot be used directly.
/// Instead it provides properties and methods accessed by interfaces
/// that inherit from it.
///  If a feature policy blocks use of a feature it is because your
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
///    OrientationSensor
///
///
@JS()
@staticInterop
class OrientationSensor implements Sensor {
  external factory OrientationSensor();
}

extension PropsOrientationSensor on OrientationSensor {
  Iterable<double> get quaternion => js_util.getProperty(this, 'quaternion');
  void populateMatrix(dynamic targetMatrix) =>
      js_util.callMethod(this, 'populateMatrix', [targetMatrix]);
}

enum OrientationSensorLocalCoordinateSystem {
  device('device'),
  screen('screen');

  final String value;
  static OrientationSensorLocalCoordinateSystem fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OrientationSensorLocalCoordinateSystem> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const OrientationSensorLocalCoordinateSystem(this.value);
}

@anonymous
@JS()
@staticInterop
class OrientationSensorOptions implements SensorOptions {
  external factory OrientationSensorOptions._({String? referenceFrame});

  factory OrientationSensorOptions(
          {OrientationSensorLocalCoordinateSystem? referenceFrame}) =>
      OrientationSensorOptions._(
          referenceFrame: referenceFrame?.value ??
              OrientationSensorLocalCoordinateSystem.device.value);
}

extension PropsOrientationSensorOptions on OrientationSensorOptions {
  OrientationSensorLocalCoordinateSystem get referenceFrame =>
      OrientationSensorLocalCoordinateSystem.fromValue(
          js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(OrientationSensorLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.value);
  }
}

///  The interface of the Sensor APIs describes the device's physical
/// orientation in relation to the Earth's reference coordinate
/// system.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], ['gyroscope'], and ['magnetometer'] device
/// sensors through the Permissions API.
///  If a feature policy blocks use of a feature it is because your
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
///    OrientationSensor
///
///
///
///
///
///    AbsoluteOrientationSensor
///
///
@JS()
@staticInterop
class AbsoluteOrientationSensor implements OrientationSensor {
  external factory AbsoluteOrientationSensor._(
      [OrientationSensorOptions? sensorOptions]);

  factory AbsoluteOrientationSensor(
          [OrientationSensorOptions? sensorOptions]) =>
      AbsoluteOrientationSensor._(sensorOptions ?? undefined);
}

///  The interface of the Sensor APIs describes the device's physical
/// orientation without regard to the Earth's reference coordinate
/// system.
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], and ['gyroscope'] device sensors through the
/// Permissions API.
///  If a feature policy blocks use of a feature it is because your
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
///    OrientationSensor
///
///
///
///
///
///    RelativeOrientationSensor
///
///
@JS()
@staticInterop
class RelativeOrientationSensor implements OrientationSensor {
  external factory RelativeOrientationSensor._(
      [OrientationSensorOptions? sensorOptions]);

  factory RelativeOrientationSensor(
          [OrientationSensorOptions? sensorOptions]) =>
      RelativeOrientationSensor._(sensorOptions ?? undefined);
}

@anonymous
@JS()
@staticInterop
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues(
      {required Iterable<double> quaternion});
}

extension PropsAbsoluteOrientationReadingValues
    on AbsoluteOrientationReadingValues {
  Iterable<double> get quaternion => js_util.getProperty(this, 'quaternion');
  set quaternion(Iterable<double> newValue) {
    js_util.setProperty(this, 'quaternion', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RelativeOrientationReadingValues
    implements AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
