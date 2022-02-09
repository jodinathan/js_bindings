/// Gamepad
///
/// https://w3c.github.io/gamepad/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library gamepad;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Gamepad {
  external Gamepad();
}

extension PropsGamepad on Gamepad {
  String get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get connected => js_util.getProperty(this, 'connected');
  double get timestamp => js_util.getProperty(this, 'timestamp');
  GamepadMappingType get mapping =>
      GamepadMappingType.values.byName(js_util.getProperty(this, 'mapping'));
  Iterable<double> get axes => js_util.getProperty(this, 'axes');
  Iterable<GamepadButton> get buttons => js_util.getProperty(this, 'buttons');
  GamepadHand get hand =>
      GamepadHand.values.byName(js_util.getProperty(this, 'hand'));
  Iterable<GamepadHapticActuator> get hapticActuators =>
      js_util.getProperty(this, 'hapticActuators');
  GamepadPose? get pose => js_util.getProperty(this, 'pose');
  Iterable<GamepadTouch> get touchEvents =>
      js_util.getProperty(this, 'touchEvents');
}

@JS()
@staticInterop
class GamepadButton {
  external GamepadButton();
}

extension PropsGamepadButton on GamepadButton {
  bool get pressed => js_util.getProperty(this, 'pressed');
  bool get touched => js_util.getProperty(this, 'touched');
  double get value => js_util.getProperty(this, 'value');
}

enum GamepadMappingType { empty, standard, xrStandard }

@JS()
@staticInterop
class GamepadEvent implements Event {
  external GamepadEvent(String type, GamepadEventInit eventInitDict);
}

extension PropsGamepadEvent on GamepadEvent {
  Gamepad get gamepad => js_util.getProperty(this, 'gamepad');
}

@anonymous
@JS()
@staticInterop
class GamepadEventInit implements EventInit {
  external factory GamepadEventInit({required Gamepad gamepad});
}

extension PropsGamepadEventInit on GamepadEventInit {
  Gamepad get gamepad => js_util.getProperty(this, 'gamepad');
  set gamepad(Gamepad newValue) {
    js_util.setProperty(this, 'gamepad', newValue);
  }
}
