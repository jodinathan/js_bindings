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

@JS()
@staticInterop
class OrientationSensor implements Sensor {
  external OrientationSensor();
}

extension PropsOrientationSensor on OrientationSensor {
  Iterable<double> get quaternion => js_util.getProperty(this, 'quaternion');
  Object populateMatrix(dynamic targetMatrix) =>
      js_util.callMethod(this, 'populateMatrix', [targetMatrix]);
}

enum OrientationSensorLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class OrientationSensorOptions implements SensorOptions {
  external factory OrientationSensorOptions._({String? referenceFrame});

  factory OrientationSensorOptions(
          {OrientationSensorLocalCoordinateSystem? referenceFrame =
              OrientationSensorLocalCoordinateSystem.device}) =>
      OrientationSensorOptions._(referenceFrame: referenceFrame?.name);
}

extension PropsOrientationSensorOptions on OrientationSensorOptions {
  OrientationSensorLocalCoordinateSystem get referenceFrame =>
      OrientationSensorLocalCoordinateSystem.values
          .byName(js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(OrientationSensorLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.name);
  }
}

@JS()
@staticInterop
class AbsoluteOrientationSensor implements OrientationSensor {
  external AbsoluteOrientationSensor([OrientationSensorOptions? sensorOptions]);
}

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
