/// Generic Sensor API
///
/// https://w3c.github.io/sensors/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library generic_sensor;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Sensor implements EventTarget {
  external Sensor();
}

extension PropsSensor on Sensor {
  bool get activated => js_util.getProperty(this, 'activated');
  bool get hasReading => js_util.getProperty(this, 'hasReading');
  double? get timestamp => js_util.getProperty(this, 'timestamp');
  Object start() => js_util.callMethod(this, 'start', []);

  Object stop() => js_util.callMethod(this, 'stop', []);

  EventHandlerNonNull? get onreading => js_util.getProperty(this, 'onreading');
  set onreading(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreading', newValue);
  }

  EventHandlerNonNull? get onactivate =>
      js_util.getProperty(this, 'onactivate');
  set onactivate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onactivate', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SensorOptions {
  external factory SensorOptions({required double frequency});
}

extension PropsSensorOptions on SensorOptions {
  double get frequency => js_util.getProperty(this, 'frequency');
  set frequency(double newValue) {
    js_util.setProperty(this, 'frequency', newValue);
  }
}

@JS()
@staticInterop
class SensorErrorEvent implements Event {
  external SensorErrorEvent(
      String type, SensorErrorEventInit errorEventInitDict);
}

extension PropsSensorErrorEvent on SensorErrorEvent {
  Exception get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class SensorErrorEventInit implements EventInit {
  external factory SensorErrorEventInit({required Exception error});
}

extension PropsSensorErrorEventInit on SensorErrorEventInit {
  Exception get error => js_util.getProperty(this, 'error');
  set error(Exception newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MockSensorConfiguration {
  external factory MockSensorConfiguration._(
      {required String mockSensorType,
      bool? connected = true,
      double? maxSamplingFrequency,
      double? minSamplingFrequency});

  factory MockSensorConfiguration(
          {required MockSensorType mockSensorType,
          bool? connected = true,
          double? maxSamplingFrequency,
          double? minSamplingFrequency}) =>
      MockSensorConfiguration._(
          mockSensorType: mockSensorType.name,
          connected: connected,
          maxSamplingFrequency: maxSamplingFrequency,
          minSamplingFrequency: minSamplingFrequency);
}

extension PropsMockSensorConfiguration on MockSensorConfiguration {
  MockSensorType get mockSensorType =>
      MockSensorType.values.byName(js_util.getProperty(this, 'mockSensorType'));
  set mockSensorType(MockSensorType newValue) {
    js_util.setProperty(this, 'mockSensorType', newValue.name);
  }

  bool get connected => js_util.getProperty(this, 'connected');
  set connected(bool newValue) {
    js_util.setProperty(this, 'connected', newValue);
  }

  double? get maxSamplingFrequency =>
      js_util.getProperty(this, 'maxSamplingFrequency');
  set maxSamplingFrequency(double? newValue) {
    js_util.setProperty(this, 'maxSamplingFrequency', newValue);
  }

  double? get minSamplingFrequency =>
      js_util.getProperty(this, 'minSamplingFrequency');
  set minSamplingFrequency(double? newValue) {
    js_util.setProperty(this, 'minSamplingFrequency', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MockSensor {
  external factory MockSensor(
      {required double maxSamplingFrequency,
      required double minSamplingFrequency,
      required double requestedSamplingFrequency});
}

extension PropsMockSensor on MockSensor {
  double get maxSamplingFrequency =>
      js_util.getProperty(this, 'maxSamplingFrequency');
  set maxSamplingFrequency(double newValue) {
    js_util.setProperty(this, 'maxSamplingFrequency', newValue);
  }

  double get minSamplingFrequency =>
      js_util.getProperty(this, 'minSamplingFrequency');
  set minSamplingFrequency(double newValue) {
    js_util.setProperty(this, 'minSamplingFrequency', newValue);
  }

  double get requestedSamplingFrequency =>
      js_util.getProperty(this, 'requestedSamplingFrequency');
  set requestedSamplingFrequency(double newValue) {
    js_util.setProperty(this, 'requestedSamplingFrequency', newValue);
  }
}

enum MockSensorType {
  ambientLight,
  accelerometer,
  linearAcceleration,
  gravity,
  gyroscope,
  magnetometer,
  uncalibratedMagnetometer,
  absoluteOrientation,
  relativeOrientation,
  geolocation,
  proximity
}

@anonymous
@JS()
@staticInterop
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}
