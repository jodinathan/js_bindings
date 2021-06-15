/// Ambient Light Sensor
///
/// https://w3c.github.io/ambient-light/
@JS('window')
library ambient_light;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'generic_sensor.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Sensor APIs returns the current light level
/// or illuminance of the ambient light around the hosting device.
///
///  To use this sensor, the user must grant permission to the
/// ['ambient-light-sensor'] device sensor through the [Permissions]
/// API.
///
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. See
/// [Feature-Policy] for implementation instructions.
@JS()
class AmbientLightSensor // EventTarget -> {} -> Sensor
    extends Sensor {
  external factory AmbientLightSensor([SensorOptions? sensorOptions]);

  ///  Returns the current light level in lux of the ambient light
  /// level around the hosting device.
  external double? get illuminance;
}

@anonymous
@JS()
class AmbientLightReadingValues {
  external double? get illuminance;
  external set illuminance(double? newValue);

  external factory AmbientLightReadingValues({double? illuminance});
}
