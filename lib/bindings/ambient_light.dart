/// Ambient Light Sensor
///
/// https://w3c.github.io/ambient-light/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ambient_light;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class AmbientLightSensor implements Sensor {
  external AmbientLightSensor([SensorOptions? sensorOptions]);
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
