/// Gyroscope
///
/// https://w3c.github.io/gyroscope/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library gyroscope;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Sensor APIs provides on each reading the
/// angular velocity of the device along all three axes.
///  To use this sensor, the user must grant permission to the
/// ['gyroscope'] device sensor through the Permissions API.
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
///    Gyroscope
///
///
@JS()
@staticInterop
class Gyroscope implements Sensor {
  external factory Gyroscope([GyroscopeSensorOptions? sensorOptions]);
}

extension PropsGyroscope on Gyroscope {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

enum GyroscopeLocalCoordinateSystem {
  device('device'),
  screen('screen');

  final String value;
  static GyroscopeLocalCoordinateSystem fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GyroscopeLocalCoordinateSystem> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const GyroscopeLocalCoordinateSystem(this.value);
}

@anonymous
@JS()
@staticInterop
class GyroscopeSensorOptions implements SensorOptions {
  external factory GyroscopeSensorOptions._({String? referenceFrame});

  factory GyroscopeSensorOptions(
          {GyroscopeLocalCoordinateSystem? referenceFrame =
              GyroscopeLocalCoordinateSystem.device}) =>
      GyroscopeSensorOptions._(referenceFrame: referenceFrame?.value);
}

extension PropsGyroscopeSensorOptions on GyroscopeSensorOptions {
  GyroscopeLocalCoordinateSystem get referenceFrame =>
      GyroscopeLocalCoordinateSystem.fromValue(
          js_util.getProperty(this, 'referenceFrame'));
  set referenceFrame(GyroscopeLocalCoordinateSystem newValue) {
    js_util.setProperty(this, 'referenceFrame', newValue.value);
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
