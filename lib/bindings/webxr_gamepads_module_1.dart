/// WebXR Gamepads Module - Level 1
///
/// https://immersive-web.github.io/webxr-gamepads-module/
@JS('window')
library webxr_gamepads_module_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';
import 'gamepad.dart';

@JS()
enum GamepadMappingType {
  @JS('')
  empty,
  standard,
  @JS('xr-standard')
  xrStandard
}
