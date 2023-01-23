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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Gamepad API defines an individual gamepad
/// or other controller, allowing access to information such as
/// button presses, axis positions, and id.
///  A Gamepad object can be returned in one of two ways: via the
/// [gamepad] property of the [gamepadconnected] and
/// [gamepaddisconnected] events, or by grabbing any position in the
/// array returned by the [Navigator.getGamepads()] method.
@JS()
@staticInterop
class Gamepad {
  external factory Gamepad();
}

extension PropsGamepad on Gamepad {
  String get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get connected => js_util.getProperty(this, 'connected');
  double get timestamp => js_util.getProperty(this, 'timestamp');
  GamepadMappingType get mapping =>
      GamepadMappingType.fromValue(js_util.getProperty(this, 'mapping'));
  Iterable<double> get axes => js_util.getProperty(this, 'axes');
  Iterable<GamepadButton> get buttons => js_util.getProperty(this, 'buttons');
  GamepadHand get hand =>
      GamepadHand.fromValue(js_util.getProperty(this, 'hand'));
  Iterable<GamepadHapticActuator> get hapticActuators =>
      js_util.getProperty(this, 'hapticActuators');
  GamepadPose? get pose => js_util.getProperty(this, 'pose');
  Iterable<GamepadTouch> get touchEvents =>
      js_util.getProperty(this, 'touchEvents');
  GamepadHapticActuator get vibrationActuator =>
      js_util.getProperty(this, 'vibrationActuator');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface defines an individual button of a gamepad or other
/// controller, allowing access to the current state of different
/// types of buttons available on the control device.
///  A object is returned by querying any value of the array returned
/// by the [buttons] property of the [Gamepad] interface.
@JS()
@staticInterop
class GamepadButton {
  external factory GamepadButton();
}

extension PropsGamepadButton on GamepadButton {
  bool get pressed => js_util.getProperty(this, 'pressed');
  bool get touched => js_util.getProperty(this, 'touched');
  double get value => js_util.getProperty(this, 'value');
}

enum GamepadMappingType {
  empty(''),
  standard('standard'),
  xrStandard('xr-standard');

  final String value;
  static GamepadMappingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GamepadMappingType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const GamepadMappingType(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The GamepadEvent interface of the Gamepad API contains
/// references to gamepads connected to the system, which is what the
/// gamepad events [gamepadconnected] and [gamepaddisconnected] are
/// fired in response to.
///
///
///
///    Event
///
///
///
///
///
///
///
///    GamepadEvent
///
///
@JS()
@staticInterop
class GamepadEvent implements Event {
  external factory GamepadEvent(String type, GamepadEventInit eventInitDict);
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
