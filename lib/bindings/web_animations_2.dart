/// Web Animations Level 2
///
/// https://drafts.csswg.org/web-animations-2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_animations_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class GroupEffect {
  external factory GroupEffect(Iterable<AnimationEffect> children,
      [dynamic timing]);
}

extension PropsGroupEffect on GroupEffect {
  AnimationNodeList get children => js_util.getProperty(this, 'children');
  AnimationEffect? get firstChild => js_util.getProperty(this, 'firstChild');
  AnimationEffect? get lastChild => js_util.getProperty(this, 'lastChild');
  dynamic clone() => js_util.callMethod(this, 'clone', []);

  void prepend(
          [AnimationEffect? effects1,
          AnimationEffect? effects2,
          AnimationEffect? effects3]) =>
      js_util.callMethod(this, 'prepend', [effects1, effects2, effects3]);

  void append(
          [AnimationEffect? effects1,
          AnimationEffect? effects2,
          AnimationEffect? effects3]) =>
      js_util.callMethod(this, 'append', [effects1, effects2, effects3]);
}

@JS()
@staticInterop
class AnimationNodeList {
  external factory AnimationNodeList();
}

extension PropsAnimationNodeList on AnimationNodeList {
  int get length => js_util.getProperty(this, 'length');
  AnimationEffect? item(int index) => js_util.callMethod(this, 'item', [index]);
}

@JS()
@staticInterop
class SequenceEffect implements GroupEffect {
  external factory SequenceEffect(Iterable<AnimationEffect> children,
      [dynamic timing]);
}

extension PropsSequenceEffect on SequenceEffect {
  SequenceEffect clone() => js_util.callMethod(this, 'clone', []);
}

enum IterationCompositeOperation { replace, accumulate }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The AnimationPlaybackEvent interface of the Web Animations API
/// represents animation events.
///  As animations play, they report changes to their [playState]
/// through animation events.
///
///
///
///    Event
///
///
///
///
///
///    AnimationPlaybackEvent
///
///
@experimental
@JS()
@staticInterop
class AnimationPlaybackEvent implements Event {
  external factory AnimationPlaybackEvent(String type,
      [AnimationPlaybackEventInit? eventInitDict]);
}

extension PropsAnimationPlaybackEvent on AnimationPlaybackEvent {
  dynamic get currentTime => js_util.getProperty(this, 'currentTime');
  dynamic get timelineTime => js_util.getProperty(this, 'timelineTime');
}

@anonymous
@JS()
@staticInterop
class AnimationPlaybackEventInit implements EventInit {
  external factory AnimationPlaybackEventInit(
      {dynamic currentTime, dynamic timelineTime});
}

extension PropsAnimationPlaybackEventInit on AnimationPlaybackEventInit {
  dynamic get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(dynamic newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  dynamic get timelineTime => js_util.getProperty(this, 'timelineTime');
  set timelineTime(dynamic newValue) {
    js_util.setProperty(this, 'timelineTime', newValue);
  }
}
