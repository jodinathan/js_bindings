/// Generic Sensor API
///
/// https://w3c.github.io/sensors/
@JS('window')
@staticInterop
library generic_sensor;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
hr_time_3
html */

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
  external factory Sensor();
}

extension PropsSensor on Sensor {
  /// Returns a boolean value indicating whether the sensor is active.
  ///
  external bool get activated;

  ///  Returns a boolean value indicating whether the sensor has a
  /// reading.
  ///
  external bool get hasReading;

  /// Returns the time stamp of the latest sensor reading.
  ///
  external double? get timestamp;

  /// Activates one of the sensors based on [Sensor].
  ///
  /// Sensor.start()
  ///
  external Object start();

  /// Deactivates one of the sensors based on [Sensor].
  ///
  /// Sensor.stop()
  ///
  /// // TBD
  ///
  external Object stop();
  external EventHandlerNonNull? get onreading;
  external set onreading(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onactivate;
  external set onactivate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
@staticInterop
class SensorOptions {
  external factory SensorOptions({double frequency});
}

extension PropsSensorOptions on SensorOptions {
  external double get frequency;
  external set frequency(double newValue);
}

///  The interface of the Sensor APIs provides information about
/// errors thrown by a [Sensor] or derived interface.
@JS()
@staticInterop
class SensorErrorEvent implements Event {
  external factory SensorErrorEvent(
      String type, SensorErrorEventInit errorEventInitDict);
}

extension PropsSensorErrorEvent on SensorErrorEvent {
  ///  Returns the [DOMException] object passed in the event's
  /// constructor.
  ///
  external Exception get error;
}

@anonymous
@JS()
@staticInterop
class SensorErrorEventInit implements EventInit {
  external factory SensorErrorEventInit({Exception error});
}

extension PropsSensorErrorEventInit on SensorErrorEventInit {
  external Exception get error;
  external set error(Exception newValue);
}

@anonymous
@JS()
@staticInterop
class MockSensorConfiguration {
  external factory MockSensorConfiguration(
      {MockSensorType mockSensorType,
      bool connected = true,
      double? maxSamplingFrequency,
      double? minSamplingFrequency});
}

extension PropsMockSensorConfiguration on MockSensorConfiguration {
  external MockSensorType get mockSensorType;
  external set mockSensorType(MockSensorType newValue);
  external bool get connected;
  external set connected(bool newValue);
  external double? get maxSamplingFrequency;
  external set maxSamplingFrequency(double? newValue);
  external double? get minSamplingFrequency;
  external set minSamplingFrequency(double? newValue);
}

@anonymous
@JS()
@staticInterop
class MockSensor {
  external factory MockSensor(
      {double maxSamplingFrequency,
      double minSamplingFrequency,
      double requestedSamplingFrequency});
}

extension PropsMockSensor on MockSensor {
  external double get maxSamplingFrequency;
  external set maxSamplingFrequency(double newValue);
  external double get minSamplingFrequency;
  external set minSamplingFrequency(double newValue);
  external double get requestedSamplingFrequency;
  external set requestedSamplingFrequency(double newValue);
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
