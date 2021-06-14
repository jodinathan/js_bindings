/// Gamepad Extensions
///
/// https://w3c.github.io/gamepad/extensions.html
@JS('window')
library gamepad_extensions;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'gamepad.dart';

@JS()
enum GamepadHand {
  @JS('')
  empty,
  left,
  right
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Gamepad API represents hardware in the
/// controller designed to provide haptic feedback to the user (if
/// available), most commonly vibration hardware.
///
///  This interface is accessible through the
/// [Gamepad.hapticActuators] property.
@experimental
@JS()
class GamepadHapticActuator {
  /// Returns an enum representing the type of the haptic hardware.
  external GamepadHapticActuatorType get type;

  ///  Makes the hardware pulse at a certain intensity for a specified
  /// duration.
  /// gamepadHapticActuatorInstance.pulse(value, duration).then(function(result) { ... });
  external Promise<bool> pulse(double value, double duration);

  external factory GamepadHapticActuator();
}

@JS()
enum GamepadHapticActuatorType { vibration }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Gamepad API represents the pose of a WebVR
/// controller at a given timestamp (which includes orientation,
/// position, velocity, and acceleration information.)
///
///  This interface is accessible through the [Gamepad.pose]
/// property.
@experimental
@JS()
class GamepadPose {
  ///  Returns a boolean indicating whether the gamepad is capable of
  /// returning orientation information ([true]) or not ([false]).
  external bool get hasOrientation;

  ///  Returns a boolean indicating whether the gamepad is capable of
  /// returning position information ([true]) or not ([false]).
  external bool get hasPosition;

  /// Returns the position of the [Gamepad] as a 3D vector.
  external Float32List? get position;

  ///  Returns the linear velocity of the [Gamepad], in meters per
  /// second.
  external Float32List? get linearVelocity;

  ///  Returns the linear acceleration of the [Gamepad], in meters per
  /// second per second.
  external Float32List? get linearAcceleration;

  ///  Returns the orientation of the [Gamepad], as a quarternion
  /// value.
  external Float32List? get orientation;

  ///  Returns the angular velocity of the [Gamepad], in radians per
  /// second.
  external Float32List? get angularVelocity;

  ///  Returns the angular acceleration of the [Gamepad], in meters per
  /// second per second.
  external Float32List? get angularAcceleration;

  external factory GamepadPose();
}

@JS()
class GamepadTouch {
  external int get touchId;
  external int get surfaceId;
  external Float32List get position;
  external Uint32List? get surfaceDimensions;

  external factory GamepadTouch();
}
