/// Ambient Light Sensor
///
/// https://w3c.github.io/ambient-light/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ambient_light;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Sensor APIs returns the current light level
/// or illuminance of the ambient light around the hosting device.
///  To use this sensor, the user must grant permission to the
/// ['ambient-light-sensor'] device sensor through the Permissions
/// API.
///  This feature may be blocked by a Permissions Policy set on your
/// server.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Sensor
///
///
///
///
///
///
///
///    AmbientLightSensor
///
///
@experimental
@JS()
@staticInterop
class AmbientLightSensor implements Sensor {
  external factory AmbientLightSensor([SensorOptions? sensorOptions]);
}

extension PropsAmbientLightSensor on AmbientLightSensor {
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
