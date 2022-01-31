/// Orientation Sensor
///
/// https://w3c.github.io/orientation-sensor/

// ignore_for_file: unused_import

@JS('window')
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
@JS()
@staticInterop
class OrientationSensor implements Sensor {
  external OrientationSensor();
}

extension PropsOrientationSensor on OrientationSensor {
  ///  Returns a four element [Array] whose elements contain the
  /// components of the unit quaternion representing the device's
  /// orientation.
  ///
  Iterable<double> get quaternion => js_util.getProperty(this, 'quaternion');

  ///  Populates the given object with the rotation matrix based on the
  /// latest sensor reading. The rotation maxtrix is shown below.
  ///
  /// orientationInstance.populateMatrix(targetMatrix)
  ///  Because OrientationSensor is a base class, populateMatrix
  ///  may only be read from one of its derived classes.
  ///
  /// // TBD
  ///
  Object populateMatrix(dynamic targetMatrix) =>
      js_util.callMethod(this, 'populateMatrix', [targetMatrix]);
}

enum OrientationSensorLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class OrientationSensorOptions implements SensorOptions {
  external factory OrientationSensorOptions(
      {OrientationSensorLocalCoordinateSystem referenceFrame =
          OrientationSensorLocalCoordinateSystem.device});
}

extension PropsOrientationSensorOptions on OrientationSensorOptions {
  OrientationSensorLocalCoordinateSystem get referenceFrame =>
      js_util.getProperty(this, 'referenceFrame');
  set referenceFrame(OrientationSensorLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue);
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
@JS()
@staticInterop
class AbsoluteOrientationSensor implements OrientationSensor {
  external AbsoluteOrientationSensor([OrientationSensorOptions? sensorOptions]);
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
@JS()
@staticInterop
class RelativeOrientationSensor implements OrientationSensor {
  external RelativeOrientationSensor([OrientationSensorOptions? sensorOptions]);
}

@anonymous
@JS()
@staticInterop
class AbsoluteOrientationReadingValues {
  external factory AbsoluteOrientationReadingValues(
      {Iterable<double> quaternion});
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
