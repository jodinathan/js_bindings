/// Web Animations Level 2
///
/// https://drafts.csswg.org/web-animations-2/
@JS('window')
@staticInterop
library web_animations_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: web_animations_1
dom
css_pseudo_4 */

enum FillMode { none, forwards, backwards, both, auto }

@JS()
@staticInterop
class GroupEffect {
  external GroupEffect(Iterable<AnimationEffect> children, [dynamic timing]);
}

extension PropsGroupEffect on GroupEffect {
  AnimationNodeList get children => js_util.getProperty(this, 'children');
  AnimationEffect? get firstChild => js_util.getProperty(this, 'firstChild');
  AnimationEffect? get lastChild => js_util.getProperty(this, 'lastChild');
  dynamic clone() => js_util.callMethod(this, 'clone', []);

  Object prepend([AnimationEffect? effects]) =>
      js_util.callMethod(this, 'prepend', [effects]);

  Object append([AnimationEffect? effects]) =>
      js_util.callMethod(this, 'append', [effects]);
}

@JS()
@staticInterop
class AnimationNodeList {
  external AnimationNodeList();
}

extension PropsAnimationNodeList on AnimationNodeList {
  int get length => js_util.getProperty(this, 'length');
  AnimationEffect? item(int index) => js_util.callMethod(this, 'item', [index]);
}

@JS()
@staticInterop
class SequenceEffect implements GroupEffect {
  external SequenceEffect(Iterable<AnimationEffect> children, [dynamic timing]);
}

extension PropsSequenceEffect on SequenceEffect {
  @override
  SequenceEffect clone() => js_util.callMethod(this, 'clone', []);
}

enum IterationCompositeOperation { replace, accumulate }
