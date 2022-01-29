/// Web Animations
///
/// https://drafts.csswg.org/web-animations-1/
@JS('window')
@staticInterop
library web_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3
dom
html
web_animations_1
web_animations_2 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents the timeline
/// of an animation. This interface exists to define timeline
/// features (inherited by [DocumentTimeline] and future timeline
/// types) and is not itself directly used by developers. Anywhere
/// you see , you should use [DocumentTimeline] or any other timeline
/// type instead.
@JS()
@staticInterop
class AnimationTimeline {
  external AnimationTimeline();
}

extension PropsAnimationTimeline on AnimationTimeline {
  ///  Returns the time value in milliseconds for this timeline or
  /// [null] if this timeline is inactive.
  ///
  double? get currentTime => js_util.getProperty(this, 'currentTime');
  TimelinePhase get phase => js_util.getProperty(this, 'phase');
  Animation play([AnimationEffect? effect]) =>
      js_util.callMethod(this, 'play', [effect]);
}

@anonymous
@JS()
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions({double originTime = 0});
}

extension PropsDocumentTimelineOptions on DocumentTimelineOptions {
  double get originTime => js_util.getProperty(this, 'originTime');
  set originTime(double newValue) {
    js_util.setProperty(this, 'originTime', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents animation
/// timelines, including the default document timeline (accessed via
/// [Document.timeline]).
@JS()
@staticInterop
class DocumentTimeline implements AnimationTimeline {
  external DocumentTimeline([DocumentTimelineOptions? options]);
}

///  The interface of the Web Animations API represents a single
/// animation player and provides playback controls and a timeline
/// for an animation node or source.
@JS()
@staticInterop
class Animation implements EventTarget {
  external Animation([AnimationEffect? effect, AnimationTimeline? timeline]);
}

extension PropsAnimation on Animation {
  /// Gets and sets the [String] used to identify the animation.
  ///
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  ///  Gets and sets the [AnimationEffect] associated with this
  /// animation. This will usually be a [KeyframeEffect] object.
  ///
  AnimationEffect? get effect => js_util.getProperty(this, 'effect');
  set effect(AnimationEffect? newValue) {
    js_util.setProperty(this, 'effect', newValue);
  }

  /// Gets or sets the associated with this animation.
  ///
  AnimationTimeline? get timeline => js_util.getProperty(this, 'timeline');
  set timeline(AnimationTimeline? newValue) {
    js_util.setProperty(this, 'timeline', newValue);
  }

  ///  Gets or sets the scheduled time when an animation's playback
  /// should begin.
  ///
  double? get startTime => js_util.getProperty(this, 'startTime');
  set startTime(double? newValue) {
    js_util.setProperty(this, 'startTime', newValue);
  }

  ///  The current time value of the animation in milliseconds, whether
  /// running or paused. If the animation lacks a [timeline], is
  /// inactive or hasn't been played yet, its value is [null].
  ///
  double? get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(double? newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  /// Gets or sets the playback rate of the animation.
  ///
  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }

  ///  Returns an enumerated value describing the playback state of an
  /// animation.
  ///
  AnimationPlayState get playState => js_util.getProperty(this, 'playState');

  ///  Returns the replace state of the animation. This will be
  /// [active] if the animation has been replaced, or [persisted] if
  /// [Animation.persist()] has been invoked on it.
  ///
  AnimationReplaceState get replaceState =>
      js_util.getProperty(this, 'replaceState');

  ///  Indicates whether the animation is currently waiting for an
  /// asynchronous operation such as initiating playback or pausing a
  /// running animation.
  ///
  bool get pending => js_util.getProperty(this, 'pending');

  /// Returns the current ready Promise for this animation.
  ///
  Promise<Animation> get ready => js_util.getProperty(this, 'ready');

  /// Returns the current finished Promise for this animation.
  ///
  Promise<Animation> get finished => js_util.getProperty(this, 'finished');
  EventHandlerNonNull? get onfinish => js_util.getProperty(this, 'onfinish');
  set onfinish(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfinish', newValue);
  }

  EventHandlerNonNull? get oncancel => js_util.getProperty(this, 'oncancel');
  set oncancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncancel', newValue);
  }

  EventHandlerNonNull? get onremove => js_util.getProperty(this, 'onremove');
  set onremove(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremove', newValue);
  }

  ///  Clears all [keyframeEffects] caused by this animation and aborts
  /// its playback.
  ///
  /// Animation.cancel();
  ///
  Object cancel() => js_util.callMethod(this, 'cancel', []);

  ///  Seeks either end of an animation, depending on whether the
  /// animation is playing or reversing.
  ///
  /// Animation.finish();
  ///
  Object finish() => js_util.callMethod(this, 'finish', []);

  ///  Starts or resumes playing of an animation, or begins the
  /// animation again if it previously finished.
  ///
  /// animation.play();
  ///
  /// In the Growing/Shrinking Alice Game example, clicking or tapping the cake causes Alice's growing animation (aliceChange) to play forward, causing her to get bigger, as well as triggering the cake's animation. Two Animation.play()s, one EventListener:
  /// // The cake has its own animation:
  /// var nommingCake = document.getElementById('eat-me_sprite').animate(
  /// [
  ///  { transform: 'translateY(0)' },
  ///  { transform: 'translateY(-80%)' }
  /// ], {
  ///  fill: 'forwards',
  ///  easing: 'steps(4, end)',
  ///  duration: aliceChange.effect.timing.duration / 2
  /// });
  ///
  /// // Pause the cake's animation so it doesn't play immediately.
  /// nommingCake.pause();
  ///
  /// // This function will play when ever a user clicks or taps
  /// var growAlice = function() {
  ///
  ///  // Play Alice's animation.
  ///  aliceChange.play();
  ///
  ///  // Play the cake's animation.
  ///  nommingCake.play();
  ///
  /// }
  ///
  /// // When a user holds their mouse down or taps, call growAlice to make all the animations play.
  /// cake.addEventListener("mousedown", growAlice, false);
  /// cake.addEventListener("touchstart", growAlice, false);
  ///
  Object play() => js_util.callMethod(this, 'play', []);

  /// Suspends playing of an animation.
  ///
  /// animation.pause();
  ///
  /// Animation.pause() is used many times in the Alice in Web Animations API Land Growing/Shrinking Alice Game, largely because animations created with the Element.animate() method immediately start playing and must be paused manually if you want to avoid that:
  /// // animation of the cupcake slowly getting eaten up
  /// var nommingCake = document.getElementById('eat-me_sprite').animate(
  /// [
  ///  { transform: 'translateY(0)' },
  ///  { transform: 'translateY(-80%)' }
  /// ], {
  ///  fill: 'forwards',
  ///  easing: 'steps(4, end)',
  ///  duration: aliceChange.effect.timing.duration / 2
  /// });
  ///
  /// // doesn't actually need to be eaten until a click event, so pause it initially:
  /// nommingCake.pause();
  ///
  /// Additionally, when resetting :
  /// // An all-purpose function to pause the animations on Alice, the cupcake, and the bottle that reads "drink me."
  /// var stopPlayingAlice = function() {
  ///  aliceChange.pause();
  ///  nommingCake.pause();
  ///  drinking.pause();
  /// };
  ///
  /// // When the user releases the cupcake or the bottle, pause the animations.
  /// cake.addEventListener("mouseup", stopPlayingAlice, false);
  /// bottle.addEventListener("mouseup", stopPlayingAlice, false);
  ///
  Object pause() => js_util.callMethod(this, 'pause', []);

  ///  Sets the speed of an animation after first synchronizing its
  /// playback position.
  ///
  /// Animation.updatePlaybackRate(2);
  ///
  Object updatePlaybackRate(double playbackRate) =>
      js_util.callMethod(this, 'updatePlaybackRate', [playbackRate]);

  ///  Reverses playback direction, stopping at the start of the
  /// animation. If the animation is finished or unplayed, it will play
  /// from end to beginning.
  ///
  /// animation.reverse();
  ///
  /// In the Growing/Shrinking Alice Game example, clicking or tapping the bottle causes Alice's growing animation (aliceChange) to play backwards, causing her to get smaller. It is done by setting aliceChange's Animation.playbackRate to -1 like so:
  /// var shrinkAlice = function() {
  ///  // play Alice's animation in reverse
  ///  aliceChange.playbackRate = -1;
  ///  aliceChange.play();
  ///
  ///  // play the bottle's animation
  ///  drinking.play()
  /// }
  ///
  /// But it could also have been done by calling reverse() on aliceChange like so:
  /// var shrinkAlice = function() {
  ///  // play Alice's animation in reverse
  ///  aliceChange.reverse();
  ///
  ///  // play the bottle's animation
  ///  drinking.play()
  /// }
  ///
  Object reverse() => js_util.callMethod(this, 'reverse', []);

  ///  Explicitly persists an animation, when it would otherwise be
  /// removed due to the browser's Automatically removing filling
  /// animations behavior.
  ///
  /// animation.persist();
  ///
  Object persist() => js_util.callMethod(this, 'persist', []);

  ///  Commits the end styling state of an animation to the element
  /// being animated, even after that animation has been removed. It
  /// will cause the end styling state to be written to the element
  /// being animated, in the form of properties inside a [style]
  /// attribute.
  ///
  /// animation.commitStyles();
  ///
  Object commitStyles() => js_util.callMethod(this, 'commitStyles', []);
}

enum AnimationPlayState { idle, running, paused, finished }

enum AnimationReplaceState { active, removed, persisted }

enum TimelinePhase { inactive, before, active, after }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API defines current and
/// future animation effects like [KeyframeEffect], which can be
/// passed to [Animation] objects for playing, and [KeyframeEffect]
/// (which is used by CSS Animations and Transitions).
@JS()
@staticInterop
class AnimationEffect {
  external AnimationEffect();
}

extension PropsAnimationEffect on AnimationEffect {
  ///  Returns the object associated with the animation containing all
  /// the animation's timing values.
  ///
  /// animationTiming = animation.getTiming();
  ///
  EffectTiming getTiming() => js_util.callMethod(this, 'getTiming', []);

  ///  Returns the calculated timing properties for this
  /// [AnimationEffect].
  ///
  /// var currentTimeValues = animation.getComputedTiming();
  ///
  ComputedEffectTiming getComputedTiming() =>
      js_util.callMethod(this, 'getComputedTiming', []);

  ///  Updates the specified timing properties of this
  /// [AnimationEffect].
  ///
  /// animation.updateTiming(timing);
  ///
  Object updateTiming([OptionalEffectTiming? timing]) =>
      js_util.callMethod(this, 'updateTiming', [timing]);

  GroupEffect? get parent => js_util.getProperty(this, 'parent');
  AnimationEffect? get previousSibling =>
      js_util.getProperty(this, 'previousSibling');
  AnimationEffect? get nextSibling => js_util.getProperty(this, 'nextSibling');
  Object before([AnimationEffect? effects]) =>
      js_util.callMethod(this, 'before', [effects]);

  Object after([AnimationEffect? effects]) =>
      js_util.callMethod(this, 'after', [effects]);

  Object replace([AnimationEffect? effects]) =>
      js_util.callMethod(this, 'replace', [effects]);

  Object remove() => js_util.callMethod(this, 'remove', []);
}

@anonymous
@JS()
@staticInterop
class EffectTiming {
  external factory EffectTiming(
      {double delay = 0,
      double endDelay = 0,
      FillMode fill = FillMode.auto,
      double iterationStart = 0.0,
      /* double | NaN */ dynamic iterations = 1.0,
      dynamic duration,
      PlaybackDirection direction = PlaybackDirection.normal,
      String easing = 'linear'});
}

extension PropsEffectTiming on EffectTiming {
  double get delay => js_util.getProperty(this, 'delay');
  set delay(double newValue) {
    js_util.setProperty(this, 'delay', newValue);
  }

  double get endDelay => js_util.getProperty(this, 'endDelay');
  set endDelay(double newValue) {
    js_util.setProperty(this, 'endDelay', newValue);
  }

  FillMode get fill => js_util.getProperty(this, 'fill');
  set fill(FillMode newValue) {
    js_util.setProperty(this, 'fill', newValue);
  }

  double get iterationStart => js_util.getProperty(this, 'iterationStart');
  set iterationStart(double newValue) {
    js_util.setProperty(this, 'iterationStart', newValue);
  }

  /* double | NaN */ dynamic get iterations =>
      js_util.getProperty(this, 'iterations');
  set iterations(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'iterations', newValue);
  }

  dynamic get duration => js_util.getProperty(this, 'duration');
  set duration(dynamic newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  PlaybackDirection get direction => js_util.getProperty(this, 'direction');
  set direction(PlaybackDirection newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  String get easing => js_util.getProperty(this, 'easing');
  set easing(String newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class OptionalEffectTiming {
  external factory OptionalEffectTiming(
      {double delay,
      double endDelay,
      FillMode fill,
      double iterationStart,
      /* double | NaN */ dynamic iterations,
      dynamic duration,
      PlaybackDirection direction,
      String easing});
}

extension PropsOptionalEffectTiming on OptionalEffectTiming {
  double get delay => js_util.getProperty(this, 'delay');
  set delay(double newValue) {
    js_util.setProperty(this, 'delay', newValue);
  }

  double get endDelay => js_util.getProperty(this, 'endDelay');
  set endDelay(double newValue) {
    js_util.setProperty(this, 'endDelay', newValue);
  }

  FillMode get fill => js_util.getProperty(this, 'fill');
  set fill(FillMode newValue) {
    js_util.setProperty(this, 'fill', newValue);
  }

  double get iterationStart => js_util.getProperty(this, 'iterationStart');
  set iterationStart(double newValue) {
    js_util.setProperty(this, 'iterationStart', newValue);
  }

  /* double | NaN */ dynamic get iterations =>
      js_util.getProperty(this, 'iterations');
  set iterations(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'iterations', newValue);
  }

  dynamic get duration => js_util.getProperty(this, 'duration');
  set duration(dynamic newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  PlaybackDirection get direction => js_util.getProperty(this, 'direction');
  set direction(PlaybackDirection newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  String get easing => js_util.getProperty(this, 'easing');
  set easing(String newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }
}

enum PlaybackDirection { normal, reverse, alternate, alternateReverse }

@anonymous
@JS()
@staticInterop
class ComputedEffectTiming implements EffectTiming {
  external factory ComputedEffectTiming(
      {/* double | NaN */ dynamic endTime,
      /* double | NaN */ dynamic activeDuration,
      double? localTime,
      double? progress,
      /* double | NaN */ dynamic? currentIteration});
}

extension PropsComputedEffectTiming on ComputedEffectTiming {
  /* double | NaN */ dynamic get endTime =>
      js_util.getProperty(this, 'endTime');
  set endTime(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'endTime', newValue);
  }

  /* double | NaN */ dynamic get activeDuration =>
      js_util.getProperty(this, 'activeDuration');
  set activeDuration(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'activeDuration', newValue);
  }

  double? get localTime => js_util.getProperty(this, 'localTime');
  set localTime(double? newValue) {
    js_util.setProperty(this, 'localTime', newValue);
  }

  double? get progress => js_util.getProperty(this, 'progress');
  set progress(double? newValue) {
    js_util.setProperty(this, 'progress', newValue);
  }

  /* double | NaN */ dynamic? get currentIteration =>
      js_util.getProperty(this, 'currentIteration');
  set currentIteration(/* double | NaN */ dynamic? newValue) {
    js_util.setProperty(this, 'currentIteration', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API lets us create sets of
/// animatable properties and values, called keyframes. These can
/// then be played using the [Animation()] constructor.
@experimental
@JS()
@staticInterop
class KeyframeEffect implements AnimationEffect {
  external KeyframeEffect(
      [Element? target, dynamic keyframes, dynamic options]);
}

extension PropsKeyframeEffect on KeyframeEffect {
  ///  Gets and sets the element, or originating element of the
  /// pseudo-element, being animated by this object. This may be [null]
  /// for animations that do not target a specific element or
  /// pseudo-element.
  ///
  Element? get target => js_util.getProperty(this, 'target');
  set target(Element? newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  ///  Gets and sets the selector of the pseudo-element being animated
  /// by this object. This may be [null] for animations that do not
  /// target a pseudo-element.
  ///
  @experimental
  String? get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String? newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }

  ///  Gets and sets the composite operation property for resolving the
  /// property value changes between this and other keyframe effects.
  ///
  CompositeOperation get composite => js_util.getProperty(this, 'composite');
  set composite(CompositeOperation newValue) {
    js_util.setProperty(this, 'composite', newValue);
  }

  ///  Returns the computed keyframes that make up this effect along
  /// with their computed keyframe offsets.
  ///
  /// var keyframes = keyframeEffect.getKeyframes();
  ///
  Iterable<dynamic> getKeyframes() =>
      js_util.callMethod(this, 'getKeyframes', []);

  /// Replaces the set of keyframes that make up this effect.
  ///
  /// existingKeyframeEffect.setKeyframes(keyframes);
  ///
  Object setKeyframes(dynamic keyframes) =>
      js_util.callMethod(this, 'setKeyframes', [keyframes]);

  IterationCompositeOperation get iterationComposite =>
      js_util.getProperty(this, 'iterationComposite');
  set iterationComposite(IterationCompositeOperation newValue) {
    js_util.setProperty(this, 'iterationComposite', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe(
      {double? offset,
      double computedOffset,
      String easing = 'linear',
      CompositeOperationOrAuto composite = CompositeOperationOrAuto.auto});
}

extension PropsBaseComputedKeyframe on BaseComputedKeyframe {
  double? get offset => js_util.getProperty(this, 'offset');
  set offset(double? newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  double get computedOffset => js_util.getProperty(this, 'computedOffset');
  set computedOffset(double newValue) {
    js_util.setProperty(this, 'computedOffset', newValue);
  }

  String get easing => js_util.getProperty(this, 'easing');
  set easing(String newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }

  CompositeOperationOrAuto get composite =>
      js_util.getProperty(this, 'composite');
  set composite(CompositeOperationOrAuto newValue) {
    js_util.setProperty(this, 'composite', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe(
      {dynamic offset = const [],
      dynamic easing = const [],
      dynamic composite = const []});
}

extension PropsBasePropertyIndexedKeyframe on BasePropertyIndexedKeyframe {
  dynamic get offset => js_util.getProperty(this, 'offset');
  set offset(dynamic newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  dynamic get easing => js_util.getProperty(this, 'easing');
  set easing(dynamic newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }

  dynamic get composite => js_util.getProperty(this, 'composite');
  set composite(dynamic newValue) {
    js_util.setProperty(this, 'composite', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BaseKeyframe {
  external factory BaseKeyframe(
      {double? offset,
      String easing = 'linear',
      CompositeOperationOrAuto composite = CompositeOperationOrAuto.auto});
}

extension PropsBaseKeyframe on BaseKeyframe {
  double? get offset => js_util.getProperty(this, 'offset');
  set offset(double? newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  String get easing => js_util.getProperty(this, 'easing');
  set easing(String newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }

  CompositeOperationOrAuto get composite =>
      js_util.getProperty(this, 'composite');
  set composite(CompositeOperationOrAuto newValue) {
    js_util.setProperty(this, 'composite', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class KeyframeEffectOptions implements EffectTiming {
  external factory KeyframeEffectOptions(
      {CompositeOperation composite = CompositeOperation.replace,
      String? pseudoElement});
}

extension PropsKeyframeEffectOptions on KeyframeEffectOptions {
  CompositeOperation get composite => js_util.getProperty(this, 'composite');
  set composite(CompositeOperation newValue) {
    js_util.setProperty(this, 'composite', newValue);
  }

  String? get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String? newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }
}

enum CompositeOperation { replace, add, accumulate }

enum CompositeOperationOrAuto { replace, add, accumulate, auto }

@JS()
@staticInterop
class Animatable {
  external Animatable();
}

extension PropsAnimatable on Animatable {
  Animation animate(dynamic keyframes, [dynamic options]) =>
      js_util.callMethod(this, 'animate', [keyframes, options]);

  Iterable<Animation> getAnimations([GetAnimationsOptions? options]) =>
      js_util.callMethod(this, 'getAnimations', [options]);
}

@anonymous
@JS()
@staticInterop
class KeyframeAnimationOptions implements KeyframeEffectOptions {
  external factory KeyframeAnimationOptions(
      {String id = '', AnimationTimeline? timeline});
}

extension PropsKeyframeAnimationOptions on KeyframeAnimationOptions {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  AnimationTimeline? get timeline => js_util.getProperty(this, 'timeline');
  set timeline(AnimationTimeline? newValue) {
    js_util.setProperty(this, 'timeline', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GetAnimationsOptions {
  external factory GetAnimationsOptions({bool subtree = false});
}

extension PropsGetAnimationsOptions on GetAnimationsOptions {
  bool get subtree => js_util.getProperty(this, 'subtree');
  set subtree(bool newValue) {
    js_util.setProperty(this, 'subtree', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The AnimationPlaybackEvent interface of the Web Animations API
/// represents animation events.
///  As animations play, they report changes to their [playState]
/// through animation events.
@experimental
@JS()
@staticInterop
class AnimationPlaybackEvent implements Event {
  external AnimationPlaybackEvent(String type,
      [AnimationPlaybackEventInit? eventInitDict]);
}

extension PropsAnimationPlaybackEvent on AnimationPlaybackEvent {
  double? get currentTime => js_util.getProperty(this, 'currentTime');
  double? get timelineTime => js_util.getProperty(this, 'timelineTime');
}

@anonymous
@JS()
@staticInterop
class AnimationPlaybackEventInit implements EventInit {
  external factory AnimationPlaybackEventInit(
      {double? currentTime, double? timelineTime});
}

extension PropsAnimationPlaybackEventInit on AnimationPlaybackEventInit {
  double? get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(double? newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  double? get timelineTime => js_util.getProperty(this, 'timelineTime');
  set timelineTime(double? newValue) {
    js_util.setProperty(this, 'timelineTime', newValue);
  }
}
