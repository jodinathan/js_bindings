/// Gamepad Extensions
///
/// https://w3c.github.io/gamepad/extensions.html

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library gamepad_extensions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum GamepadHand { empty, left, right }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Gamepad API represents hardware in the
/// controller designed to provide haptic feedback to the user (if
/// available), most commonly vibration hardware.
///  This interface is accessible through the
/// [Gamepad.hapticActuators] property.
@experimental
@JS()
@staticInterop
class GamepadHapticActuator {
  external GamepadHapticActuator();
}

extension PropsGamepadHapticActuator on GamepadHapticActuator {
  /// Returns an enum representing the type of the haptic hardware.
  ///
  GamepadHapticActuatorType get type => js_util.getProperty(this, 'type');

  ///  Makes the hardware pulse at a certain intensity for a specified
  /// duration.
  ///
  /// gamepadHapticActuatorInstance.pulse(value, duration).then(function(result) { /* ... */ });
  ///
  Future<bool> pulse(double value, double duration) => js_util
      .promiseToFuture(js_util.callMethod(this, 'pulse', [value, duration]));
}

enum GamepadHapticActuatorType { vibration }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Gamepad API represents the pose of a WebVR
/// controller at a given timestamp (which includes orientation,
/// position, velocity, and acceleration information.)
///  This interface is accessible through the [Gamepad.pose]
/// property.
@experimental
@JS()
@staticInterop
class GamepadPose {
  external GamepadPose();
}

extension PropsGamepadPose on GamepadPose {
  ///  Returns a boolean indicating whether the gamepad is capable of
  /// returning orientation information ([true]) or not ([false]).
  ///
  bool get hasOrientation => js_util.getProperty(this, 'hasOrientation');

  ///  Returns a boolean indicating whether the gamepad is capable of
  /// returning position information ([true]) or not ([false]).
  ///
  bool get hasPosition => js_util.getProperty(this, 'hasPosition');

  /// Returns the position of the [Gamepad] as a 3D vector.
  ///
  Float32List? get position => js_util.getProperty(this, 'position');

  ///  Returns the linear velocity of the [Gamepad], in meters per
  /// second.
  ///
  Float32List? get linearVelocity =>
      js_util.getProperty(this, 'linearVelocity');

  ///  Returns the linear acceleration of the [Gamepad], in meters per
  /// second per second.
  ///
  Float32List? get linearAcceleration =>
      js_util.getProperty(this, 'linearAcceleration');

  ///  Returns the orientation of the [Gamepad], as a quarternion
  /// value.
  ///
  Float32List? get orientation => js_util.getProperty(this, 'orientation');

  ///  Returns the angular velocity of the [Gamepad], in radians per
  /// second.
  ///
  Float32List? get angularVelocity =>
      js_util.getProperty(this, 'angularVelocity');

  ///  Returns the angular acceleration of the [Gamepad], in meters per
  /// second per second.
  ///
  Float32List? get angularAcceleration =>
      js_util.getProperty(this, 'angularAcceleration');
}

@JS()
@staticInterop
class GamepadTouch {
  external GamepadTouch();
}

extension PropsGamepadTouch on GamepadTouch {
  int get touchId => js_util.getProperty(this, 'touchId');
  int get surfaceId => js_util.getProperty(this, 'surfaceId');
  Float32List get position => js_util.getProperty(this, 'position');
  Uint32List? get surfaceDimensions =>
      js_util.getProperty(this, 'surfaceDimensions');
}
