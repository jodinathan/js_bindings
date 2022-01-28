/// Device Posture API
///
/// https://w3c.github.io/device-posture/
@JS('window')
@staticInterop
library device_posture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

@JS()
@staticInterop
class DevicePosture implements EventTarget {
  external factory DevicePosture();
}

extension PropsDevicePosture on DevicePosture {
  external DevicePostureType get type;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
}

enum DevicePostureType { noFold, laptop, flat, tent, tablet, book }
