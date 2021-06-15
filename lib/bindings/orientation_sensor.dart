/// Orientation Sensor
///
/// https://w3c.github.io/orientation-sensor/
@JS('window')
library orientation_sensor;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'geometry_1.dart';
import 'generic_sensor.dart';

///
///
///  The interface of the Sensor APIs is the base class for
/// orientation sensors. This interface cannot be used directly.
/// Instead it provides properties and methods accessed by interfaces
/// that inherit from it.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class OrientationSensor // EventTarget -> {} -> Sensor
    extends Sensor {
  ///  Returns a four element [Array] whose elements contain the
  /// components of the unit quaternion representing the device's
  /// orientation.
  external Iterable<double> get quaternion;

  ///  Populates the given object with the rotation matrix based on the
  /// latest sensor reading. The rotation maxtrix is shown below.
  /// orientationInstance.populateMatrix(targetMatrix)
  ///
  /// Because OrientationSensor is a base class, populateMatrix
  ///  may only be read from one of its derived classes.
  /// // TBD
  external Object populateMatrix(dynamic targetMatrix);

  external factory OrientationSensor();
}

@JS()
enum OrientationSensorLocalCoordinateSystem { device, screen }

@anonymous
@JS()
class OrientationSensorOptions // null -> {} -> SensorOptions
    with
        SensorOptions {
  external OrientationSensorLocalCoordinateSystem get referenceFrame;
  external set referenceFrame(OrientationSensorLocalCoordinateSystem newValue);

  external factory OrientationSensorOptions(
      {OrientationSensorLocalCoordinateSystem referenceFrame =
          OrientationSensorLocalCoordinateSystem.device});
}

///
///
///  The interface of the Sensor APIs describes the device's physical
/// orientation in relation to the Earth's reference coordinate
/// system.
///
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], ['gyroscope'], and ['magnetometer'] device
/// sensors through the [Permissions] API.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class AbsoluteOrientationSensor // Sensor -> {} -> OrientationSensor
    extends OrientationSensor {
  external factory AbsoluteOrientationSensor(
      [OrientationSensorOptions? sensorOptions]);
}

///
///
///  The interface of the Sensor APIs describes the device's physical
/// orientation without regard to the Earth's reference coordinate
/// system.
///
///  To use this sensor, the user must grant permission to the
/// ['accelerometer'], and ['gyroscope'] device sensors through the
/// [Permissions] API.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class RelativeOrientationSensor // Sensor -> {} -> OrientationSensor
    extends OrientationSensor {
  external factory RelativeOrientationSensor(
      [OrientationSensorOptions? sensorOptions]);
}

@anonymous
@JS()
class AbsoluteOrientationReadingValues {
  external Iterable<double> get quaternion;
  external set quaternion(Iterable<double> newValue);

  external factory AbsoluteOrientationReadingValues(
      {Iterable<double> quaternion});
}

@anonymous
@JS()
class RelativeOrientationReadingValues // null -> {} -> AbsoluteOrientationReadingValues
    with
        AbsoluteOrientationReadingValues {
  external factory RelativeOrientationReadingValues();
}
