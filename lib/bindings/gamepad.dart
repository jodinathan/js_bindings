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
  external Gamepad();
}

extension PropsGamepad on Gamepad {
  ///  A [String] containing identifying information about the
  /// controller.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  An integer that is auto-incremented to be unique for each device
  /// currently connected to the system.
  ///
  int get index => js_util.getProperty(this, 'index');

  ///  A boolean indicating whether the gamepad is still connected to
  /// the system.
  ///
  bool get connected => js_util.getProperty(this, 'connected');

  ///  A [double] representing the last time the data for this gamepad
  /// was updated.
  ///
  double get timestamp => js_util.getProperty(this, 'timestamp');

  ///  A string indicating whether the browser has remapped the
  /// controls on the device to a known layout.
  ///
  GamepadMappingType get mapping => js_util.getProperty(this, 'mapping');

  ///  An array representing the controls with axes present on the
  /// device (e.g. analog thumb sticks).
  ///
  Iterable<double> get axes => js_util.getProperty(this, 'axes');

  ///  An array of [gamepadButton] objects representing the buttons
  /// present on the device.
  ///
  Iterable<GamepadButton> get buttons => js_util.getProperty(this, 'buttons');
  GamepadHand get hand => js_util.getProperty(this, 'hand');
  Iterable<GamepadHapticActuator> get hapticActuators =>
      js_util.getProperty(this, 'hapticActuators');
  GamepadPose? get pose => js_util.getProperty(this, 'pose');
  Iterable<GamepadTouch> get touchEvents =>
      js_util.getProperty(this, 'touchEvents');
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
  external GamepadButton();
}

extension PropsGamepadButton on GamepadButton {
  ///  A boolean value indicating whether the button is currently
  /// pressed ([true]) or unpressed ([false]).
  ///
  bool get pressed => js_util.getProperty(this, 'pressed');

  ///  A boolean value indicating whether the button is currently
  /// touched ([true]) or not touched ([false]).
  ///
  bool get touched => js_util.getProperty(this, 'touched');

  ///  A double value used to represent the current state of analog
  /// buttons, such as the triggers on many modern gamepads. The values
  /// are normalized to the range 0.0 —1.0, with 0.0 representing a
  /// button that is not pressed, and 1.0 representing a button that is
  /// fully pressed.
  ///
  double get value => js_util.getProperty(this, 'value');
}

enum GamepadMappingType { empty, standard, xrStandard }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The GamepadEvent interface of the Gamepad API contains
/// references to gamepads connected to the system, which is what the
/// gamepad events [Window.gamepadconnected] and
/// [Window.gamepaddisconnected] are fired in response to.
@JS()
@staticInterop
class GamepadEvent implements Event {
  external GamepadEvent(String type, GamepadEventInit eventInitDict);
}

extension PropsGamepadEvent on GamepadEvent {
  ///  Returns a [Gamepad] object, providing access to the associated
  /// gamepad data for the event fired.
  ///
  Gamepad get gamepad => js_util.getProperty(this, 'gamepad');
}

@anonymous
@JS()
@staticInterop
class GamepadEventInit implements EventInit {
  external factory GamepadEventInit({Gamepad gamepad});
}

extension PropsGamepadEventInit on GamepadEventInit {
  Gamepad get gamepad => js_util.getProperty(this, 'gamepad');
  set gamepad(Gamepad newValue) {
    js_util.setProperty(this, 'gamepad', newValue);
  }
}
