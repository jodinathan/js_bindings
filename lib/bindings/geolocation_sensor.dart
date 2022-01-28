/// Geolocation Sensor
///
/// https://w3c.github.io/geolocation-sensor/
@JS('window')
@staticInterop
library geolocation_sensor;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor
dom
hr_time_3 */

@JS()
@staticInterop
class GeolocationSensor implements Sensor {
  external factory GeolocationSensor([GeolocationSensorOptions? options]);
}

extension PropsGeolocationSensor on GeolocationSensor {
  external static Promise<GeolocationSensorReading> read(
      [ReadOptions? readOptions]);
  external /* double | NaN */ dynamic? get latitude;
  external /* double | NaN */ dynamic? get longitude;
  external /* double | NaN */ dynamic? get altitude;
  external /* double | NaN */ dynamic? get accuracy;
  external /* double | NaN */ dynamic? get altitudeAccuracy;
  external /* double | NaN */ dynamic? get heading;
  external /* double | NaN */ dynamic? get speed;
}

@anonymous
@JS()
@staticInterop
class GeolocationSensorOptions implements SensorOptions {
  external factory GeolocationSensorOptions();
}

@anonymous
@JS()
@staticInterop
class ReadOptions implements GeolocationSensorOptions {
  external factory ReadOptions({AbortSignal? signal});
}

extension PropsReadOptions on ReadOptions {
  external AbortSignal? get signal;
  external set signal(AbortSignal? newValue);
}

@anonymous
@JS()
@staticInterop
class GeolocationSensorReading {
  external factory GeolocationSensorReading(
      {double? timestamp,
      double? latitude,
      double? longitude,
      double? altitude,
      double? accuracy,
      double? altitudeAccuracy,
      double? heading,
      double? speed});
}

extension PropsGeolocationSensorReading on GeolocationSensorReading {
  external double? get timestamp;
  external set timestamp(double? newValue);
  external double? get latitude;
  external set latitude(double? newValue);
  external double? get longitude;
  external set longitude(double? newValue);
  external double? get altitude;
  external set altitude(double? newValue);
  external double? get accuracy;
  external set accuracy(double? newValue);
  external double? get altitudeAccuracy;
  external set altitudeAccuracy(double? newValue);
  external double? get heading;
  external set heading(double? newValue);
  external double? get speed;
  external set speed(double? newValue);
}

@anonymous
@JS()
@staticInterop
class GeolocationReadingValues {
  external factory GeolocationReadingValues(
      {double? latitude,
      double? longitude,
      double? altitude,
      double? accuracy,
      double? altitudeAccuracy,
      double? heading,
      double? speed});
}

extension PropsGeolocationReadingValues on GeolocationReadingValues {
  external double? get latitude;
  external set latitude(double? newValue);
  external double? get longitude;
  external set longitude(double? newValue);
  external double? get altitude;
  external set altitude(double? newValue);
  external double? get accuracy;
  external set accuracy(double? newValue);
  external double? get altitudeAccuracy;
  external set altitudeAccuracy(double? newValue);
  external double? get heading;
  external set heading(double? newValue);
  external double? get speed;
  external set speed(double? newValue);
}
