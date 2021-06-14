/// CSS Animation Worklet API
///
/// https://drafts.css-houdini.org/css-animationworklet-1/
@JS('window')
library css_animation_worklet_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';
import 'html.dart';
import 'web_animations_1.dart';

@JS()
class StatelessAnimator {
  external factory StatelessAnimator();
}

@JS()
class StatefulAnimator {
  external dynamic state();

  external factory StatefulAnimator();
}

@JS()
class AnimationWorkletGlobalScope extends WorkletGlobalScope {
  external Object registerAnimator(
      String name, AnimatorInstanceConstructor animatorCtor);

  external factory AnimationWorkletGlobalScope();
}

@JS()
class WorkletAnimation extends Animation {
  external factory WorkletAnimation(
      {String animatorName,
      dynamic effects,
      AnimationTimeline? timeline,
      dynamic options});
  external String get animatorName;
}

@JS()
class WorkletGroupEffect {
  external Iterable<WorkletAnimationEffect> getChildren();

  external factory WorkletGroupEffect();
}

@JS()
class WorkletAnimationEffect {
  external EffectTiming getTiming();
  external ComputedEffectTiming getComputedTiming();
  external double? get localTime;
  external set localTime(double? newValue);

  external factory WorkletAnimationEffect();
}
