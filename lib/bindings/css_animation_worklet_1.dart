/// CSS Animation Worklet API
///
/// https://drafts.css-houdini.org/css-animationworklet-1/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_animation_worklet_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class AnimationWorkletGlobalScope implements WorkletGlobalScope {
  external factory AnimationWorkletGlobalScope();
}

extension PropsAnimationWorkletGlobalScope on AnimationWorkletGlobalScope {
  void registerAnimator(
          String name, AnimatorInstanceConstructor animatorCtor) =>
      js_util.callMethod(
          this, 'registerAnimator', [name, allowInterop(animatorCtor)]);
}

@JS()
@staticInterop
class WorkletAnimationEffect {
  external factory WorkletAnimationEffect();
}

extension PropsWorkletAnimationEffect on WorkletAnimationEffect {
  EffectTiming getTiming() => js_util.callMethod(this, 'getTiming', []);

  ComputedEffectTiming getComputedTiming() =>
      js_util.callMethod(this, 'getComputedTiming', []);

  double? get localTime => js_util.getProperty(this, 'localTime');
  set localTime(double? newValue) {
    js_util.setProperty(this, 'localTime', newValue);
  }
}

@JS()
@staticInterop
class WorkletAnimation implements Animation {
  external factory WorkletAnimation(String animatorName,
      [dynamic effects, AnimationTimeline? timeline, dynamic options]);
}

extension PropsWorkletAnimation on WorkletAnimation {
  String get animatorName => js_util.getProperty(this, 'animatorName');
}

@JS()
@staticInterop
class WorkletGroupEffect {
  external factory WorkletGroupEffect();
}

extension PropsWorkletGroupEffect on WorkletGroupEffect {
  Iterable<WorkletAnimationEffect> getChildren() =>
      js_util.callMethod(this, 'getChildren', []);
}
