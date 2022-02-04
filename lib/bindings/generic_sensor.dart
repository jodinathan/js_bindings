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

///  The interface of the Sensor APIs is the base class for all the
/// other sensor interfaces. This interface cannot be used directly.
/// Instead it provides properties, event handlers, and methods
/// accessed by interfaces that inherit from it.
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class Sensor implements EventTarget {
  external Sensor();
}

extension PropsSensor on Sensor {
  /// Returns a boolean value indicating whether the sensor is active.
  ///
  bool get activated => js_util.getProperty(this, 'activated');

  ///  Returns a boolean value indicating whether the sensor has a
  /// reading.
  ///
  bool get hasReading => js_util.getProperty(this, 'hasReading');

  /// Returns the time stamp of the latest sensor reading.
  ///
  double? get timestamp => js_util.getProperty(this, 'timestamp');

  /// Activates one of the sensors based on [Sensor].
  ///
  /// Sensor.start()
  ///
  Object start() => js_util.callMethod(this, 'start', []);

  /// Deactivates one of the sensors based on [Sensor].
  ///
  /// Sensor.stop()
  ///
  /// // TBD
  ///
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

///  The interface of the Sensor APIs provides information about
/// errors thrown by a [Sensor] or derived interface.
@JS()
@staticInterop
class SensorErrorEvent implements Event {
  external SensorErrorEvent(
      String type, SensorErrorEventInit errorEventInitDict);
}

extension PropsSensorErrorEvent on SensorErrorEvent {
  ///  Returns the [Exception] object passed in the event's
  /// constructor.
  ///
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
