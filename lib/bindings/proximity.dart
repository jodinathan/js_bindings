/// Proximity Sensor
///
/// https://w3c.github.io/proximity/
@JS('window')
@staticInterop
library proximity;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

@JS()
@staticInterop
class ProximitySensor implements Sensor {
  external factory ProximitySensor([SensorOptions? sensorOptions]);
}

extension PropsProximitySensor on ProximitySensor {
  external double? get distance;
  external double? get max;
  external bool? get near;
}

@anonymous
@JS()
@staticInterop
class ProximityReadingValues {
  external factory ProximityReadingValues(
      {double? distance, double? max, bool? near});
}

extension PropsProximityReadingValues on ProximityReadingValues {
  external double? get distance;
  external set distance(double? newValue);
  external double? get max;
  external set max(double? newValue);
  external bool? get near;
  external set near(bool? newValue);
}
