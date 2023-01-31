/// Generic Sensor API
///
/// https://w3c.github.io/sensors/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library generic_sensor;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Sensor APIs is the base class for all the
/// other sensor interfaces. This interface cannot be used directly.
/// Instead it provides properties, event handlers, and methods
/// accessed by interfaces that inherit from it.
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
///  When initially created, the object is idle, meaning it does not
/// take measures. Once the [start()]} method is called, it prepares
/// itself to read data and, once ready, the [activate] event is sent
/// and the sensor becomes activated. It then sends a [reading] event
/// each time new data is available.
///  In case of an error, the [error] event is sent, reading stops,
/// and the object becomes idle again. The [start()]} method needs to
/// be called again before it can read further data.
@JS()
@staticInterop
class Sensor implements EventTarget {
  external factory Sensor();
}

extension PropsSensor on Sensor {
  bool get activated => js_util.getProperty(this, 'activated');
  bool get hasReading => js_util.getProperty(this, 'hasReading');
  double? get timestamp => js_util.getProperty(this, 'timestamp');
  void start() => js_util.callMethod(this, 'start', []);

  void stop() => js_util.callMethod(this, 'stop', []);

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
  external factory SensorOptions({double? frequency});
}

extension PropsSensorOptions on SensorOptions {
  double get frequency => js_util.getProperty(this, 'frequency');
  set frequency(double newValue) {
    js_util.setProperty(this, 'frequency', newValue);
  }
}

///  The interface of the Sensor APIs provides information about
/// errors thrown by a [Sensor] or derived interface.
///
///
///
///    Event
///
///
///
///
///
///    SensorErrorEvent
///
///
@JS()
@staticInterop
class SensorErrorEvent implements Event {
  external factory SensorErrorEvent(
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
          mockSensorType: mockSensorType.value,
          connected: connected,
          maxSamplingFrequency: maxSamplingFrequency,
          minSamplingFrequency: minSamplingFrequency);
}

extension PropsMockSensorConfiguration on MockSensorConfiguration {
  MockSensorType get mockSensorType =>
      MockSensorType.fromValue(js_util.getProperty(this, 'mockSensorType'));
  set mockSensorType(MockSensorType newValue) {
    js_util.setProperty(this, 'mockSensorType', newValue.value);
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
      {double? maxSamplingFrequency,
      double? minSamplingFrequency,
      double? requestedSamplingFrequency});
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
  ambientLight('ambient-light'),
  accelerometer('accelerometer'),
  linearAcceleration('linear-acceleration'),
  gravity('gravity'),
  gyroscope('gyroscope'),
  magnetometer('magnetometer'),
  uncalibratedMagnetometer('uncalibrated-magnetometer'),
  absoluteOrientation('absolute-orientation'),
  relativeOrientation('relative-orientation'),
  geolocation('geolocation'),
  proximity('proximity');

  final String value;
  static MockSensorType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MockSensorType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MockSensorType(this.value);
}

@anonymous
@JS()
@staticInterop
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}
