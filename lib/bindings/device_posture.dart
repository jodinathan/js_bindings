/// Device Posture API
///
/// https://w3c.github.io/device-posture/
@JS('window')
library device_posture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

@JS()
class DevicePosture extends EventTarget {
  external DevicePostureType get type;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory DevicePosture();
}

@JS()
enum DevicePostureType {
  @JS('no-fold')
  noFold,
  laptop,
  flat,
  tent,
  tablet,
  book
}
