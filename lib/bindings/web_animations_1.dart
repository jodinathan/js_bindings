/// Web Animations
///
/// https://drafts.csswg.org/web-animations-1/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library web_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

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
  double? get currentTime => js_util.getProperty(this, 'currentTime');
  dynamic get duration => js_util.getProperty(this, 'duration');
  Animation play([AnimationEffect? effect]) =>
      js_util.callMethod(this, 'play', [effect]);
}

@anonymous
@JS()
@staticInterop
class DocumentTimelineOptions {
  external factory DocumentTimelineOptions._({double? originTime});

  factory DocumentTimelineOptions({double? originTime}) =>
      DocumentTimelineOptions._(originTime: originTime ?? 0);
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
///
///
///
///    AnimationTimeline
///
///
///
///
///
///    DocumentTimeline
///
///
@JS()
@staticInterop
class DocumentTimeline implements AnimationTimeline {
  external factory DocumentTimeline([DocumentTimelineOptions? options]);
}

///  The interface of the Web Animations API represents a single
/// animation player and provides playback controls and a timeline
/// for an animation node or source.
///
///
///
///    EventTarget
///
///
///
///
///
///    Animation
///
///
@JS()
@staticInterop
class Animation implements EventTarget {
  external factory Animation(
      [AnimationEffect? effect, AnimationTimeline? timeline]);
}

extension PropsAnimation on Animation {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  AnimationEffect? get effect => js_util.getProperty(this, 'effect');
  set effect(AnimationEffect? newValue) {
    js_util.setProperty(this, 'effect', newValue);
  }

  AnimationTimeline? get timeline => js_util.getProperty(this, 'timeline');
  set timeline(AnimationTimeline? newValue) {
    js_util.setProperty(this, 'timeline', newValue);
  }

  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }

  AnimationPlayState get playState =>
      AnimationPlayState.fromValue(js_util.getProperty(this, 'playState'));
  AnimationReplaceState get replaceState => AnimationReplaceState.fromValue(
      js_util.getProperty(this, 'replaceState'));
  bool get pending => js_util.getProperty(this, 'pending');
  Future<Animation> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<Animation> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
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

  void cancel() => js_util.callMethod(this, 'cancel', []);

  void finish() => js_util.callMethod(this, 'finish', []);

  void play() => js_util.callMethod(this, 'play', []);

  void pause() => js_util.callMethod(this, 'pause', []);

  void updatePlaybackRate(double playbackRate) =>
      js_util.callMethod(this, 'updatePlaybackRate', [playbackRate]);

  void reverse() => js_util.callMethod(this, 'reverse', []);

  void persist() => js_util.callMethod(this, 'persist', []);

  void commitStyles() => js_util.callMethod(this, 'commitStyles', []);

  dynamic get startTime => js_util.getProperty(this, 'startTime');
  set startTime(dynamic newValue) {
    js_util.setProperty(this, 'startTime', newValue);
  }

  dynamic get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(dynamic newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }
}

enum AnimationPlayState {
  idle('idle'),
  running('running'),
  paused('paused'),
  finished('finished');

  final String value;
  static AnimationPlayState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AnimationPlayState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AnimationPlayState(this.value);
}

enum AnimationReplaceState {
  active('active'),
  removed('removed'),
  persisted('persisted');

  final String value;
  static AnimationReplaceState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AnimationReplaceState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AnimationReplaceState(this.value);
}

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
  EffectTiming getTiming() => js_util.callMethod(this, 'getTiming', []);

  ComputedEffectTiming getComputedTiming() =>
      js_util.callMethod(this, 'getComputedTiming', []);

  void updateTiming([OptionalEffectTiming? timing]) =>
      js_util.callMethod(this, 'updateTiming', [timing]);

  GroupEffect? get parent => js_util.getProperty(this, 'parent');
  AnimationEffect? get previousSibling =>
      js_util.getProperty(this, 'previousSibling');
  AnimationEffect? get nextSibling => js_util.getProperty(this, 'nextSibling');
  void before(
          [AnimationEffect? effects1,
          AnimationEffect? effects2,
          AnimationEffect? effects3]) =>
      js_util.callMethod(this, 'before', [effects1, effects2, effects3]);

  void after(
          [AnimationEffect? effects1,
          AnimationEffect? effects2,
          AnimationEffect? effects3]) =>
      js_util.callMethod(this, 'after', [effects1, effects2, effects3]);

  void replace(
          [AnimationEffect? effects1,
          AnimationEffect? effects2,
          AnimationEffect? effects3]) =>
      js_util.callMethod(this, 'replace', [effects1, effects2, effects3]);

  void remove() => js_util.callMethod(this, 'remove', []);
}

@anonymous
@JS()
@staticInterop
class EffectTiming {
  external factory EffectTiming._(
      {String? fill,
      double? iterationStart,
      /* double | NaN */ dynamic iterations,
      String? direction,
      String? easing});

  factory EffectTiming(
          {FillMode? fill,
          double? iterationStart,
          /* double | NaN */ dynamic iterations,
          PlaybackDirection? direction,
          String? easing}) =>
      EffectTiming._(
          fill: fill?.value ?? FillMode.auto.value,
          iterationStart: iterationStart ?? 0.0,
          iterations: iterations ?? 1.0,
          direction: direction?.value ?? PlaybackDirection.normal.value,
          easing: easing ?? 'linear');
}

extension PropsEffectTiming on EffectTiming {
  FillMode get fill => FillMode.fromValue(js_util.getProperty(this, 'fill'));
  set fill(FillMode newValue) {
    js_util.setProperty(this, 'fill', newValue.value);
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

  PlaybackDirection get direction =>
      PlaybackDirection.fromValue(js_util.getProperty(this, 'direction'));
  set direction(PlaybackDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
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
  external factory OptionalEffectTiming._(
      {double? delay,
      double? endDelay,
      String? fill,
      double? iterationStart,
      /* double | NaN */ dynamic iterations,
      dynamic duration,
      String? direction,
      String? easing});

  factory OptionalEffectTiming(
          {double? delay,
          double? endDelay,
          FillMode? fill,
          double? iterationStart,
          /* double | NaN */ dynamic iterations,
          dynamic duration,
          PlaybackDirection? direction,
          String? easing}) =>
      OptionalEffectTiming._(
          delay: delay ?? undefined,
          endDelay: endDelay ?? undefined,
          fill: fill?.value ?? undefined,
          iterationStart: iterationStart ?? undefined,
          iterations: iterations ?? undefined,
          duration: duration ?? undefined,
          direction: direction?.value ?? undefined,
          easing: easing ?? undefined);
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

  FillMode get fill => FillMode.fromValue(js_util.getProperty(this, 'fill'));
  set fill(FillMode newValue) {
    js_util.setProperty(this, 'fill', newValue.value);
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

  PlaybackDirection get direction =>
      PlaybackDirection.fromValue(js_util.getProperty(this, 'direction'));
  set direction(PlaybackDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
  }

  String get easing => js_util.getProperty(this, 'easing');
  set easing(String newValue) {
    js_util.setProperty(this, 'easing', newValue);
  }
}

enum FillMode {
  none('none'),
  forwards('forwards'),
  backwards('backwards'),
  both('both'),
  auto('auto');

  final String value;
  static FillMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FillMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FillMode(this.value);
}

enum PlaybackDirection {
  normal('normal'),
  reverse('reverse'),
  alternate('alternate'),
  alternateReverse('alternate-reverse');

  final String value;
  static PlaybackDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PlaybackDirection> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PlaybackDirection(this.value);
}

@anonymous
@JS()
@staticInterop
class ComputedEffectTiming implements EffectTiming {
  external factory ComputedEffectTiming(
      {double? progress, /* double | NaN */ dynamic currentIteration});
}

extension PropsComputedEffectTiming on ComputedEffectTiming {
  double? get progress => js_util.getProperty(this, 'progress');
  set progress(double? newValue) {
    js_util.setProperty(this, 'progress', newValue);
  }

/* double | NaN */ dynamic get currentIteration =>
      js_util.getProperty(this, 'currentIteration');
  set currentIteration(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'currentIteration', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API lets us create sets of
/// animatable properties and values, called keyframes. These can
/// then be played using the [Animation()] constructor.
///
///
///
///    AnimationEffect
///
///
///
///
///
///    KeyframeEffect
///
///
@experimental
@JS()
@staticInterop
class KeyframeEffect implements AnimationEffect {
  external factory KeyframeEffect(
      [Element? target, dynamic keyframes, dynamic options]);
}

extension PropsKeyframeEffect on KeyframeEffect {
  Element? get target => js_util.getProperty(this, 'target');
  set target(Element? newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  String? get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String? newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }

  CompositeOperation get composite =>
      CompositeOperation.fromValue(js_util.getProperty(this, 'composite'));
  set composite(CompositeOperation newValue) {
    js_util.setProperty(this, 'composite', newValue.value);
  }

  Iterable<dynamic> getKeyframes() =>
      js_util.callMethod(this, 'getKeyframes', []);

  void setKeyframes(dynamic keyframes) =>
      js_util.callMethod(this, 'setKeyframes', [keyframes]);

  IterationCompositeOperation get iterationComposite =>
      IterationCompositeOperation.fromValue(
          js_util.getProperty(this, 'iterationComposite'));
  set iterationComposite(IterationCompositeOperation newValue) {
    js_util.setProperty(this, 'iterationComposite', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class BaseComputedKeyframe {
  external factory BaseComputedKeyframe._(
      {double? offset,
      double? computedOffset,
      String? easing,
      String? composite});

  factory BaseComputedKeyframe(
          {double? offset,
          double? computedOffset,
          String? easing,
          CompositeOperationOrAuto? composite}) =>
      BaseComputedKeyframe._(
          offset: offset ?? undefined,
          computedOffset: computedOffset ?? undefined,
          easing: easing ?? 'linear',
          composite: composite?.value ?? CompositeOperationOrAuto.auto.value);
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

  CompositeOperationOrAuto get composite => CompositeOperationOrAuto.fromValue(
      js_util.getProperty(this, 'composite'));
  set composite(CompositeOperationOrAuto newValue) {
    js_util.setProperty(this, 'composite', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class BasePropertyIndexedKeyframe {
  external factory BasePropertyIndexedKeyframe._(
      {dynamic offset, dynamic easing, dynamic composite});

  factory BasePropertyIndexedKeyframe(
          {dynamic offset, dynamic easing, dynamic composite}) =>
      BasePropertyIndexedKeyframe._(
          offset: offset ?? const [],
          easing: easing ?? const [],
          composite: composite ?? const []);
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
  external factory BaseKeyframe._(
      {double? offset, String? easing, String? composite});

  factory BaseKeyframe(
          {double? offset,
          String? easing,
          CompositeOperationOrAuto? composite}) =>
      BaseKeyframe._(
          offset: offset ?? undefined,
          easing: easing ?? 'linear',
          composite: composite?.value ?? CompositeOperationOrAuto.auto.value);
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

  CompositeOperationOrAuto get composite => CompositeOperationOrAuto.fromValue(
      js_util.getProperty(this, 'composite'));
  set composite(CompositeOperationOrAuto newValue) {
    js_util.setProperty(this, 'composite', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class KeyframeEffectOptions implements EffectTiming {
  external factory KeyframeEffectOptions._(
      {String? composite, String? pseudoElement});

  factory KeyframeEffectOptions(
          {CompositeOperation? composite, String? pseudoElement}) =>
      KeyframeEffectOptions._(
          composite: composite?.value ?? CompositeOperation.replace.value,
          pseudoElement: pseudoElement ?? undefined);
}

extension PropsKeyframeEffectOptions on KeyframeEffectOptions {
  CompositeOperation get composite =>
      CompositeOperation.fromValue(js_util.getProperty(this, 'composite'));
  set composite(CompositeOperation newValue) {
    js_util.setProperty(this, 'composite', newValue.value);
  }

  String? get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String? newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }
}

enum CompositeOperation {
  replace('replace'),
  add('add'),
  accumulate('accumulate');

  final String value;
  static CompositeOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CompositeOperation> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CompositeOperation(this.value);
}

enum CompositeOperationOrAuto {
  replace('replace'),
  add('add'),
  accumulate('accumulate'),
  auto('auto');

  final String value;
  static CompositeOperationOrAuto fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CompositeOperationOrAuto> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const CompositeOperationOrAuto(this.value);
}

@JS()
@staticInterop
class Animatable {
  external factory Animatable();
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
  external factory KeyframeAnimationOptions._(
      {String? id, AnimationTimeline? timeline});

  factory KeyframeAnimationOptions({String? id, AnimationTimeline? timeline}) =>
      KeyframeAnimationOptions._(id: id ?? '', timeline: timeline ?? undefined);
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
  external factory GetAnimationsOptions._({bool? subtree});

  factory GetAnimationsOptions({bool? subtree}) =>
      GetAnimationsOptions._(subtree: subtree ?? false);
}

extension PropsGetAnimationsOptions on GetAnimationsOptions {
  bool get subtree => js_util.getProperty(this, 'subtree');
  set subtree(bool newValue) {
    js_util.setProperty(this, 'subtree', newValue);
  }
}
