/// Device Posture API
///
/// https://w3c.github.io/device-posture/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library device_posture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class DevicePosture implements EventTarget {
  external factory DevicePosture();
}

extension PropsDevicePosture on DevicePosture {
  DevicePostureType get type =>
      DevicePostureType.values.byName(js_util.getProperty(this, 'type'));
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum DevicePostureType { continuous, folded, foldedOver }
