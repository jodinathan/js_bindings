/// Geolocation Sensor
///
/// https://w3c.github.io/geolocation-sensor/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library geolocation_sensor;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class GeolocationSensor implements Sensor {
  external factory GeolocationSensor([GeolocationSensorOptions? options]);
}

extension PropsGeolocationSensor on GeolocationSensor {
  static Future<GeolocationSensorReading> read([ReadOptions? readOptions]) =>
      js_util.promiseToFuture(
          js_util.callMethod(GeolocationSensor, 'read', [readOptions]));

/* double | NaN */ dynamic get latitude =>
      js_util.getProperty(this, 'latitude');
/* double | NaN */ dynamic get longitude =>
      js_util.getProperty(this, 'longitude');
/* double | NaN */ dynamic get altitude =>
      js_util.getProperty(this, 'altitude');
/* double | NaN */ dynamic get accuracy =>
      js_util.getProperty(this, 'accuracy');
/* double | NaN */ dynamic get altitudeAccuracy =>
      js_util.getProperty(this, 'altitudeAccuracy');
/* double | NaN */ dynamic get heading => js_util.getProperty(this, 'heading');
/* double | NaN */ dynamic get speed => js_util.getProperty(this, 'speed');
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
  AbortSignal? get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal? newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
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
  double? get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double? newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  double? get latitude => js_util.getProperty(this, 'latitude');
  set latitude(double? newValue) {
    js_util.setProperty(this, 'latitude', newValue);
  }

  double? get longitude => js_util.getProperty(this, 'longitude');
  set longitude(double? newValue) {
    js_util.setProperty(this, 'longitude', newValue);
  }

  double? get altitude => js_util.getProperty(this, 'altitude');
  set altitude(double? newValue) {
    js_util.setProperty(this, 'altitude', newValue);
  }

  double? get accuracy => js_util.getProperty(this, 'accuracy');
  set accuracy(double? newValue) {
    js_util.setProperty(this, 'accuracy', newValue);
  }

  double? get altitudeAccuracy => js_util.getProperty(this, 'altitudeAccuracy');
  set altitudeAccuracy(double? newValue) {
    js_util.setProperty(this, 'altitudeAccuracy', newValue);
  }

  double? get heading => js_util.getProperty(this, 'heading');
  set heading(double? newValue) {
    js_util.setProperty(this, 'heading', newValue);
  }

  double? get speed => js_util.getProperty(this, 'speed');
  set speed(double? newValue) {
    js_util.setProperty(this, 'speed', newValue);
  }
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
  double? get latitude => js_util.getProperty(this, 'latitude');
  set latitude(double? newValue) {
    js_util.setProperty(this, 'latitude', newValue);
  }

  double? get longitude => js_util.getProperty(this, 'longitude');
  set longitude(double? newValue) {
    js_util.setProperty(this, 'longitude', newValue);
  }

  double? get altitude => js_util.getProperty(this, 'altitude');
  set altitude(double? newValue) {
    js_util.setProperty(this, 'altitude', newValue);
  }

  double? get accuracy => js_util.getProperty(this, 'accuracy');
  set accuracy(double? newValue) {
    js_util.setProperty(this, 'accuracy', newValue);
  }

  double? get altitudeAccuracy => js_util.getProperty(this, 'altitudeAccuracy');
  set altitudeAccuracy(double? newValue) {
    js_util.setProperty(this, 'altitudeAccuracy', newValue);
  }

  double? get heading => js_util.getProperty(this, 'heading');
  set heading(double? newValue) {
    js_util.setProperty(this, 'heading', newValue);
  }

  double? get speed => js_util.getProperty(this, 'speed');
  set speed(double? newValue) {
    js_util.setProperty(this, 'speed', newValue);
  }
}
