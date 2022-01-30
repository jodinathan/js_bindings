/// CSS Animation Worklet API
///
/// https://drafts.css-houdini.org/css-animationworklet-1/
@JS('window')
@staticInterop
library css_animation_worklet_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1
html
web_animations_1 */

@JS()
@staticInterop
class StatelessAnimator {
  external StatelessAnimator();
}

@JS()
@staticInterop
class StatefulAnimator {
  external StatefulAnimator();
}

extension PropsStatefulAnimator on StatefulAnimator {
  dynamic state() => js_util.callMethod(this, 'state', []);
}

@JS()
@staticInterop
class AnimationWorkletGlobalScope implements WorkletGlobalScope {
  external AnimationWorkletGlobalScope();
}

extension PropsAnimationWorkletGlobalScope on AnimationWorkletGlobalScope {
  Object registerAnimator(
          String name, AnimatorInstanceConstructor animatorCtor) =>
      js_util.callMethod(
          this, 'registerAnimator', [name, allowInterop(animatorCtor)]);
}

@JS()
@staticInterop
class WorkletAnimation implements Animation {
  external WorkletAnimation(String animatorName,
      [dynamic effects, AnimationTimeline? timeline, dynamic options]);
}

extension PropsWorkletAnimation on WorkletAnimation {
  String get animatorName => js_util.getProperty(this, 'animatorName');
}

@JS()
@staticInterop
class WorkletGroupEffect {
  external WorkletGroupEffect();
}

extension PropsWorkletGroupEffect on WorkletGroupEffect {
  Iterable<WorkletAnimationEffect> getChildren() =>
      js_util.callMethod(this, 'getChildren', []);
}

@JS()
@staticInterop
class WorkletAnimationEffect {
  external WorkletAnimationEffect();
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
