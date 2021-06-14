/// Proximity Sensor
///
/// https://w3c.github.io/proximity/
@JS('window')
library proximity;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';

@JS()
class ProximitySensor extends Sensor {
  external factory ProximitySensor({SensorOptions? sensorOptions});
  external double? get distance;
  external double? get max;
  external bool? get near;
}

@anonymous
@JS()
class ProximityReadingValues {
  external double? get distance;
  external set distance(double? newValue);
  external double? get max;
  external set max(double? newValue);
  external bool? get near;
  external set near(bool? newValue);

  external factory ProximityReadingValues(
      {double? distance, double? max, bool? near});
}
