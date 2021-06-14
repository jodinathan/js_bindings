/// Geolocation Sensor
///
/// https://w3c.github.io/geolocation-sensor/
@JS('window')
library geolocation_sensor;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';
import 'dom.dart';
import 'hr_time_3.dart';

@JS()
class GeolocationSensor extends Sensor {
  external factory GeolocationSensor({GeolocationSensorOptions? options});
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
class GeolocationSensorOptions extends SensorOptions {
  external factory GeolocationSensorOptions();
}

@anonymous
@JS()
class ReadOptions extends GeolocationSensorOptions {
  external AbortSignal? get signal;
  external set signal(AbortSignal? newValue);

  external factory ReadOptions({AbortSignal? signal});
}

@anonymous
@JS()
class GeolocationSensorReading {
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

@anonymous
@JS()
class GeolocationReadingValues {
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

  external factory GeolocationReadingValues(
      {double? latitude,
      double? longitude,
      double? altitude,
      double? accuracy,
      double? altitudeAccuracy,
      double? heading,
      double? speed});
}
