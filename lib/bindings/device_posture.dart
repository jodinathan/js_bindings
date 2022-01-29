/// Device Posture API
///
/// https://w3c.github.io/device-posture/
@JS('window')
@staticInterop
library device_posture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

@JS()
@staticInterop
class DevicePosture implements EventTarget {
  external DevicePosture();
}

extension PropsDevicePosture on DevicePosture {
  DevicePostureType get type => js_util.getProperty(this, 'type');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum DevicePostureType { noFold, laptop, flat, tent, tablet, book }
