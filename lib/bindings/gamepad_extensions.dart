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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Gamepad API represents hardware in the
/// controller designed to provide haptic feedback to the user (if
/// available), most commonly vibration hardware.
///  This interface is accessible through the
/// [Gamepad.hapticActuators] property.
@JS()
@staticInterop
class GamepadHapticActuator {
  external factory GamepadHapticActuator();
}

extension PropsGamepadHapticActuator on GamepadHapticActuator {
  GamepadHapticActuatorType get type => GamepadHapticActuatorType.values
      .byName(js_util.getProperty(this, 'type'));
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
/// position, velocity, and acceleration information).
///  This interface is accessible through the [Gamepad.pose]
/// property.
@experimental
@JS()
@staticInterop
class GamepadPose {
  external factory GamepadPose();
}

extension PropsGamepadPose on GamepadPose {
  bool get hasOrientation => js_util.getProperty(this, 'hasOrientation');
  bool get hasPosition => js_util.getProperty(this, 'hasPosition');
  Float32List? get position => js_util.getProperty(this, 'position');
  Float32List? get linearVelocity =>
      js_util.getProperty(this, 'linearVelocity');
  Float32List? get linearAcceleration =>
      js_util.getProperty(this, 'linearAcceleration');
  Float32List? get orientation => js_util.getProperty(this, 'orientation');
  Float32List? get angularVelocity =>
      js_util.getProperty(this, 'angularVelocity');
  Float32List? get angularAcceleration =>
      js_util.getProperty(this, 'angularAcceleration');
}

@JS()
@staticInterop
class GamepadTouch {
  external factory GamepadTouch();
}

extension PropsGamepadTouch on GamepadTouch {
  int get touchId => js_util.getProperty(this, 'touchId');
  int get surfaceId => js_util.getProperty(this, 'surfaceId');
  Float32List get position => js_util.getProperty(this, 'position');
  Uint32List? get surfaceDimensions =>
      js_util.getProperty(this, 'surfaceDimensions');
}
