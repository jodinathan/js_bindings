/// Gyroscope
///
/// https://w3c.github.io/gyroscope/
@JS('window')
@staticInterop
library gyroscope;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

///  The interface of the Sensor APIs provides on each reading the
/// angular velocity of the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['gyroscope'] device sensor through the Permissions API.
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class Gyroscope implements Sensor {
  external Gyroscope([GyroscopeSensorOptions? sensorOptions]);
}

extension PropsGyroscope on Gyroscope {
  ///  Returns a double, containing the angular velocity of the device
  /// along the device's x axis.
  ///
  double? get x => js_util.getProperty(this, 'x');

  ///  Returns a double, containing the angular velocity of the device
  /// along the device's y axis.
  ///
  double? get y => js_util.getProperty(this, 'y');

  ///  Returns a double, containing the angular velocity of the device
  /// along the device's z axis.
  ///
  double? get z => js_util.getProperty(this, 'z');
}

enum GyroscopeLocalCoordinateSystem { device, screen }

@anonymous
@JS()
@staticInterop
class GyroscopeSensorOptions implements SensorOptions {
  external factory GyroscopeSensorOptions(
      {GyroscopeLocalCoordinateSystem referenceFrame =
          GyroscopeLocalCoordinateSystem.device});
}

extension PropsGyroscopeSensorOptions on GyroscopeSensorOptions {
  GyroscopeLocalCoordinateSystem get referenceFrame =>
      js_util.getProperty(this, 'referenceFrame');
  set referenceFrame(GyroscopeLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GyroscopeReadingValues {
  external factory GyroscopeReadingValues({double? x, double? y, double? z});
}

extension PropsGyroscopeReadingValues on GyroscopeReadingValues {
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
