/// Generic Sensor API
///
/// https://w3c.github.io/sensors/
@JS('window')
library generic_sensor;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'hr_time_3.dart';
import 'html.dart';

///
///
///  The interface of the Sensor APIs is the base class for all the
/// other sensor interfaces. This interface cannot be used directly.
/// Instead it provides properties, event handlers, and methods
/// accessed by interfaces that inherit from it.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class Sensor // null -> {} -> EventTarget
    with
        EventTarget {
  /// Returns a [Boolean] indicating whether the sensor is active.
  external bool get activated;

  /// Returns a [Boolean] indicating whether the sensor has a reading.
  external bool get hasReading;

  /// Returns the time stamp of the latest sensor reading.
  external double? get timestamp;

  /// Activates one of the sensors based on [Sensor].
  /// Sensor.start()
  external Object start();

  /// Deactivates one of the sensors based on [Sensor].
  /// Sensor.stop()
  /// // TBD
  external Object stop();
  external EventHandlerNonNull? get onreading;
  external set onreading(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onactivate;
  external set onactivate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  external factory Sensor();
}

@anonymous
@JS()
class SensorOptions {
  external double get frequency;
  external set frequency(double newValue);

  external factory SensorOptions({double frequency});
}

///
///
///  The interface of the Sensor APIs provides information about
/// errors thrown by a [Sensor] or related interface.
@JS()
class SensorErrorEvent // null -> {} -> Event
    with
        Event {
  external factory SensorErrorEvent(
      String type, SensorErrorEventInit errorEventInitDict);

  ///  Returns the [DOMException] object passed in the event's
  /// contructor.
  external Exception get error;
}

@anonymous
@JS()
class SensorErrorEventInit // null -> {} -> EventInit
    with
        EventInit {
  external Exception get error;
  external set error(Exception newValue);

  external factory SensorErrorEventInit({Exception error});
}

@anonymous
@JS()
class MockSensorConfiguration {
  external MockSensorType get mockSensorType;
  external set mockSensorType(MockSensorType newValue);
  external bool get connected;
  external set connected(bool newValue);
  external double? get maxSamplingFrequency;
  external set maxSamplingFrequency(double? newValue);
  external double? get minSamplingFrequency;
  external set minSamplingFrequency(double? newValue);

  external factory MockSensorConfiguration(
      {MockSensorType mockSensorType,
      bool connected = true,
      double? maxSamplingFrequency,
      double? minSamplingFrequency});
}

@anonymous
@JS()
class MockSensor {
  external double get maxSamplingFrequency;
  external set maxSamplingFrequency(double newValue);
  external double get minSamplingFrequency;
  external set minSamplingFrequency(double newValue);
  external double get requestedSamplingFrequency;
  external set requestedSamplingFrequency(double newValue);

  external factory MockSensor(
      {double maxSamplingFrequency,
      double minSamplingFrequency,
      double requestedSamplingFrequency});
}

@JS()
enum MockSensorType {
  @JS('ambient-light')
  ambientLight,
  accelerometer,
  @JS('linear-acceleration')
  linearAcceleration,
  gravity,
  gyroscope,
  magnetometer,
  @JS('uncalibrated-magnetometer')
  uncalibratedMagnetometer,
  @JS('absolute-orientation')
  absoluteOrientation,
  @JS('relative-orientation')
  relativeOrientation,
  geolocation,
  proximity
}

@anonymous
@JS()
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}
