/// Web Animations
///
/// https://drafts.csswg.org/web-animations-1/
@JS('window')
@staticInterop
library web_animations_1;

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
  external factory AnimationTimeline();
}

extension PropsAnimationTimeline on AnimationTimeline {
  ///  Returns the time value in milliseconds for this timeline or
  /// [null] if this timeline is inactive.
  ///
  external double? get currentTime;
  external TimelinePhase get phase;
  external Animation play([AnimationEffect? effect]);
}

@anonymous
@JS()
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions({double originTime = 0});
}

extension PropsDocumentTimelineOptions on DocumentTimelineOptions {
  external double get originTime;
  external set originTime(double newValue);
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
  external factory DocumentTimeline([DocumentTimelineOptions? options]);
}

///  The interface of the Web Animations API represents a single
/// animation player and provides playback controls and a timeline
/// for an animation node or source.
@JS()
@staticInterop
class Animation implements EventTarget {
  external factory Animation(
      [AnimationEffect? effect, AnimationTimeline? timeline]);
}

extension PropsAnimation on Animation {
  /// Gets and sets the [String] used to identify the animation.
  ///
  external String get id;
  external set id(String newValue);

  ///  Gets and sets the [AnimationEffect] associated with this
  /// animation. This will usually be a [KeyframeEffect] object.
  ///
  external AnimationEffect? get effect;
  external set effect(AnimationEffect? newValue);

  /// Gets or sets the associated with this animation.
  ///
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? newValue);

  ///  Gets or sets the scheduled time when an animation's playback
  /// should begin.
  ///
  external double? get startTime;
  external set startTime(double? newValue);

  ///  The current time value of the animation in milliseconds, whether
  /// running or paused. If the animation lacks a [timeline], is
  /// inactive or hasn't been played yet, its value is [null].
  ///
  external double? get currentTime;
  external set currentTime(double? newValue);

  /// Gets or sets the playback rate of the animation.
  ///
  external double get playbackRate;
  external set playbackRate(double newValue);

  ///  Returns an enumerated value describing the playback state of an
  /// animation.
  ///
  external AnimationPlayState get playState;

  ///  Returns the replace state of the animation. This will be
  /// [active] if the animation has been replaced, or [persisted] if
  /// [Animation.persist()] has been invoked on it.
  ///
  external AnimationReplaceState get replaceState;

  ///  Indicates whether the animation is currently waiting for an
  /// asynchronous operation such as initiating playback or pausing a
  /// running animation.
  ///
  external bool get pending;

  /// Returns the current ready Promise for this animation.
  ///
  external Promise<Animation> get ready;

  /// Returns the current finished Promise for this animation.
  ///
  external Promise<Animation> get finished;
  external EventHandlerNonNull? get onfinish;
  external set onfinish(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncancel;
  external set oncancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremove;
  external set onremove(EventHandlerNonNull? newValue);

  ///  Clears all [keyframeEffects] caused by this animation and aborts
  /// its playback.
  ///
  /// Animation.cancel();
  ///
  external Object cancel();

  ///  Seeks either end of an animation, depending on whether the
  /// animation is playing or reversing.
  ///
  /// Animation.finish();
  ///
  external Object finish();

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
  external Object play();

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
  external Object pause();

  ///  Sets the speed of an animation after first synchronizing its
  /// playback position.
  ///
  /// Animation.updatePlaybackRate(2);
  ///
  external Object updatePlaybackRate(double playbackRate);

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
  external Object reverse();

  ///  Explicitly persists an animation, when it would otherwise be
  /// removed due to the browser's Automatically removing filling
  /// animations behavior.
  ///
  /// animation.persist();
  ///
  external Object persist();

  ///  Commits the end styling state of an animation to the element
  /// being animated, even after that animation has been removed. It
  /// will cause the end styling state to be written to the element
  /// being animated, in the form of properties inside a [style]
  /// attribute.
  ///
  /// animation.commitStyles();
  ///
  external Object commitStyles();
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
  external factory AnimationEffect();
}

extension PropsAnimationEffect on AnimationEffect {
  ///  Returns the object associated with the animation containing all
  /// the animation's timing values.
  ///
  /// animationTiming = animation.getTiming();
  ///
  external EffectTiming getTiming();

  ///  Returns the calculated timing properties for this
  /// [AnimationEffect].
  ///
  /// var currentTimeValues = animation.getComputedTiming();
  ///
  external ComputedEffectTiming getComputedTiming();

  ///  Updates the specified timing properties of this
  /// [AnimationEffect].
  ///
  /// animation.updateTiming(timing);
  ///
  external Object updateTiming([OptionalEffectTiming? timing]);
  external GroupEffect? get parent;
  external AnimationEffect? get previousSibling;
  external AnimationEffect? get nextSibling;
  external Object before([AnimationEffect effects]);
  external Object after([AnimationEffect effects]);
  external Object replace([AnimationEffect effects]);
  external Object remove();
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
  external double get delay;
  external set delay(double newValue);
  external double get endDelay;
  external set endDelay(double newValue);
  external FillMode get fill;
  external set fill(FillMode newValue);
  external double get iterationStart;
  external set iterationStart(double newValue);
  external /* double | NaN */ dynamic get iterations;
  external set iterations(/* double | NaN */ dynamic newValue);
  external dynamic get duration;
  external set duration(dynamic newValue);
  external PlaybackDirection get direction;
  external set direction(PlaybackDirection newValue);
  external String get easing;
  external set easing(String newValue);
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
  external double get delay;
  external set delay(double newValue);
  external double get endDelay;
  external set endDelay(double newValue);
  external FillMode get fill;
  external set fill(FillMode newValue);
  external double get iterationStart;
  external set iterationStart(double newValue);
  external /* double | NaN */ dynamic get iterations;
  external set iterations(/* double | NaN */ dynamic newValue);
  external dynamic get duration;
  external set duration(dynamic newValue);
  external PlaybackDirection get direction;
  external set direction(PlaybackDirection newValue);
  external String get easing;
  external set easing(String newValue);
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
  external /* double | NaN */ dynamic get endTime;
  external set endTime(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get activeDuration;
  external set activeDuration(/* double | NaN */ dynamic newValue);
  external double? get localTime;
  external set localTime(double? newValue);
  external double? get progress;
  external set progress(double? newValue);
  external /* double | NaN */ dynamic? get currentIteration;
  external set currentIteration(/* double | NaN */ dynamic? newValue);
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
  external factory KeyframeEffect(
      [Element? target, dynamic keyframes, dynamic options]);
}

extension PropsKeyframeEffect on KeyframeEffect {
  ///  Gets and sets the element, or originating element of the
  /// pseudo-element, being animated by this object. This may be [null]
  /// for animations that do not target a specific element or
  /// pseudo-element.
  ///
  external Element? get target;
  external set target(Element? newValue);

  ///  Gets and sets the selector of the pseudo-element being animated
  /// by this object. This may be [null] for animations that do not
  /// target a pseudo-element.
  ///
  @experimental
  external String? get pseudoElement;
  external set pseudoElement(String? newValue);

  ///  Gets and sets the composite operation property for resolving the
  /// property value changes between this and other keyframe effects.
  ///
  external CompositeOperation get composite;
  external set composite(CompositeOperation newValue);

  ///  Returns the computed keyframes that make up this effect along
  /// with their computed keyframe offsets.
  ///
  /// var keyframes = keyframeEffect.getKeyframes();
  ///
  external Iterable<dynamic> getKeyframes();

  /// Replaces the set of keyframes that make up this effect.
  ///
  /// existingKeyframeEffect.setKeyframes(keyframes);
  ///
  external Object setKeyframes(dynamic keyframes);
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation newValue);
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
  external double? get offset;
  external set offset(double? newValue);
  external double get computedOffset;
  external set computedOffset(double newValue);
  external String get easing;
  external set easing(String newValue);
  external CompositeOperationOrAuto get composite;
  external set composite(CompositeOperationOrAuto newValue);
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
  external dynamic get offset;
  external set offset(dynamic newValue);
  external dynamic get easing;
  external set easing(dynamic newValue);
  external dynamic get composite;
  external set composite(dynamic newValue);
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
  external double? get offset;
  external set offset(double? newValue);
  external String get easing;
  external set easing(String newValue);
  external CompositeOperationOrAuto get composite;
  external set composite(CompositeOperationOrAuto newValue);
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
  external CompositeOperation get composite;
  external set composite(CompositeOperation newValue);
  external String? get pseudoElement;
  external set pseudoElement(String? newValue);
}

enum CompositeOperation { replace, add, accumulate }

enum CompositeOperationOrAuto { replace, add, accumulate, auto }

@JS()
@staticInterop
class Animatable {
  external factory Animatable();
}

extension PropsAnimatable on Animatable {
  external Animation animate(dynamic keyframes, [dynamic options]);
  external Iterable<Animation> getAnimations([GetAnimationsOptions? options]);
}

@anonymous
@JS()
@staticInterop
class KeyframeAnimationOptions implements KeyframeEffectOptions {
  external factory KeyframeAnimationOptions(
      {String id = '', AnimationTimeline? timeline});
}

extension PropsKeyframeAnimationOptions on KeyframeAnimationOptions {
  external String get id;
  external set id(String newValue);
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? newValue);
}

@anonymous
@JS()
@staticInterop
class GetAnimationsOptions {
  external factory GetAnimationsOptions({bool subtree = false});
}

extension PropsGetAnimationsOptions on GetAnimationsOptions {
  external bool get subtree;
  external set subtree(bool newValue);
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
  external factory AnimationPlaybackEvent(String type,
      [AnimationPlaybackEventInit? eventInitDict]);
}

extension PropsAnimationPlaybackEvent on AnimationPlaybackEvent {
  external double? get currentTime;
  external double? get timelineTime;
}

@anonymous
@JS()
@staticInterop
class AnimationPlaybackEventInit implements EventInit {
  external factory AnimationPlaybackEventInit(
      {double? currentTime, double? timelineTime});
}

extension PropsAnimationPlaybackEventInit on AnimationPlaybackEventInit {
  external double? get currentTime;
  external set currentTime(double? newValue);
  external double? get timelineTime;
  external set timelineTime(double? newValue);
}
