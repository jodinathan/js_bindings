/// Gamepad Extensions
///
/// https://w3c.github.io/gamepad/extensions.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library gamepad_extensions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum GamepadHand {
  empty(''),
  left('left'),
  right('right');

  final String value;
  static GamepadHand fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GamepadHand> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const GamepadHand(this.value);
}

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
  GamepadHapticActuatorType get type =>
      GamepadHapticActuatorType.fromValue(js_util.getProperty(this, 'type'));
  bool canPlayEffectType(GamepadHapticEffectType type) =>
      js_util.callMethod(this, 'canPlayEffectType', [type.value]);

  Future<GamepadHapticsResult> playEffect(GamepadHapticEffectType type,
          [GamepadEffectParameters? params]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'playEffect', [type.value, params]));

  Future<bool> pulse(double value, double duration) => js_util
      .promiseToFuture(js_util.callMethod(this, 'pulse', [value, duration]));

  Future<GamepadHapticsResult> reset() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'reset', []));
}

enum GamepadHapticsResult {
  complete('complete'),
  preempted('preempted');

  final String value;
  static GamepadHapticsResult fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GamepadHapticsResult> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const GamepadHapticsResult(this.value);
}

enum GamepadHapticActuatorType {
  vibration('vibration'),
  dualRumble('dual-rumble');

  final String value;
  static GamepadHapticActuatorType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GamepadHapticActuatorType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const GamepadHapticActuatorType(this.value);
}

enum GamepadHapticEffectType {
  dualRumble('dual-rumble');

  final String value;
  static GamepadHapticEffectType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<GamepadHapticEffectType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const GamepadHapticEffectType(this.value);
}

@anonymous
@JS()
@staticInterop
class GamepadEffectParameters {
  external factory GamepadEffectParameters(
      {double? duration = 0.0,
      double? startDelay = 0.0,
      double? strongMagnitude = 0.0,
      double? weakMagnitude = 0.0});
}

extension PropsGamepadEffectParameters on GamepadEffectParameters {
  double get duration => js_util.getProperty(this, 'duration');
  set duration(double newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  double get startDelay => js_util.getProperty(this, 'startDelay');
  set startDelay(double newValue) {
    js_util.setProperty(this, 'startDelay', newValue);
  }

  double get strongMagnitude => js_util.getProperty(this, 'strongMagnitude');
  set strongMagnitude(double newValue) {
    js_util.setProperty(this, 'strongMagnitude', newValue);
  }

  double get weakMagnitude => js_util.getProperty(this, 'weakMagnitude');
  set weakMagnitude(double newValue) {
    js_util.setProperty(this, 'weakMagnitude', newValue);
  }
}

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
