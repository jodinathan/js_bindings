/// Proximity Sensor
///
/// https://w3c.github.io/proximity/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library proximity;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ProximitySensor implements Sensor {
  external factory ProximitySensor([SensorOptions? sensorOptions]);
}

extension PropsProximitySensor on ProximitySensor {
  double? get distance => js_util.getProperty(this, 'distance');
  double? get max => js_util.getProperty(this, 'max');
  bool? get near => js_util.getProperty(this, 'near');
}

@anonymous
@JS()
@staticInterop
class ProximityReadingValues {
  external factory ProximityReadingValues(
      {double? distance, double? max, bool? near});
}

extension PropsProximityReadingValues on ProximityReadingValues {
  double? get distance => js_util.getProperty(this, 'distance');
  set distance(double? newValue) {
    js_util.setProperty(this, 'distance', newValue);
  }

  double? get max => js_util.getProperty(this, 'max');
  set max(double? newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  bool? get near => js_util.getProperty(this, 'near');
  set near(bool? newValue) {
    js_util.setProperty(this, 'near', newValue);
  }
}
