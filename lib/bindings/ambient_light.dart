/// Ambient Light Sensor
///
/// https://w3c.github.io/ambient-light/
@JS('window')
@staticInterop
library ambient_light;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: generic_sensor */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Sensor APIs returns the current light level
/// or illuminance of the ambient light around the hosting device.
///  To use this sensor, the user must grant permission to the
/// ['ambient-light-sensor'] device sensor through the Permissions
/// API.
///  If a feature policy blocks use of a feature it is because your
/// code is inconsistent with the policies set on your server. This
/// is not something that would ever be shown to a user. The
/// [Feature-Policy] HTTP header article contains implementation
/// instructions.
@JS()
@staticInterop
class AmbientLightSensor implements Sensor {
  external AmbientLightSensor([SensorOptions? sensorOptions]);
}

extension PropsAmbientLightSensor on AmbientLightSensor {
  ///  Returns the current light level in lux of the ambient light
  /// level around the hosting device.
  ///
  double? get illuminance => js_util.getProperty(this, 'illuminance');
}

@anonymous
@JS()
@staticInterop
class AmbientLightReadingValues {
  external factory AmbientLightReadingValues({double? illuminance});
}

extension PropsAmbientLightReadingValues on AmbientLightReadingValues {
  double? get illuminance => js_util.getProperty(this, 'illuminance');
  set illuminance(double? newValue) {
    js_util.setProperty(this, 'illuminance', newValue);
  }
}
