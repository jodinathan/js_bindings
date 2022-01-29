/// Proximity Sensor
///
/// https://w3c.github.io/proximity/
@JS('window')
@staticInterop
library proximity;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

@JS()
@staticInterop
class ProximitySensor implements Sensor {
  external ProximitySensor([SensorOptions? sensorOptions]);
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
