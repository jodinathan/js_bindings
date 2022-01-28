/// CSS Animation Worklet API
///
/// https://drafts.css-houdini.org/css-animationworklet-1/
@JS('window')
@staticInterop
library css_animation_worklet_1;

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
  external factory StatelessAnimator();
}

@JS()
@staticInterop
class StatefulAnimator {
  external factory StatefulAnimator();
}

extension PropsStatefulAnimator on StatefulAnimator {
  external dynamic state();
}

@JS()
@staticInterop
class AnimationWorkletGlobalScope implements WorkletGlobalScope {
  external factory AnimationWorkletGlobalScope();
}

extension PropsAnimationWorkletGlobalScope on AnimationWorkletGlobalScope {
  external Object registerAnimator(
      String name, AnimatorInstanceConstructor animatorCtor);
}

@JS()
@staticInterop
class WorkletAnimation implements Animation {
  external factory WorkletAnimation(String animatorName,
      [dynamic effects, AnimationTimeline? timeline, dynamic options]);
}

extension PropsWorkletAnimation on WorkletAnimation {
  external String get animatorName;
}

@JS()
@staticInterop
class WorkletGroupEffect {
  external factory WorkletGroupEffect();
}

extension PropsWorkletGroupEffect on WorkletGroupEffect {
  external Iterable<WorkletAnimationEffect> getChildren();
}

@JS()
@staticInterop
class WorkletAnimationEffect {
  external factory WorkletAnimationEffect();
}

extension PropsWorkletAnimationEffect on WorkletAnimationEffect {
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external double? get localTime;
  external set localTime(double? newValue);
}
