/// Web Animations Level 2
///
/// https://drafts.csswg.org/web-animations-2/
@JS('window')
@staticInterop
library web_animations_2;

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
  external factory GroupEffect(Iterable<AnimationEffect> children,
      [dynamic timing]);
}

extension PropsGroupEffect on GroupEffect {
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
  external dynamic clone();
  external Object prepend([AnimationEffect effects]);
  external Object append([AnimationEffect effects]);
}

@JS()
@staticInterop
class AnimationNodeList {
  external factory AnimationNodeList();
}

extension PropsAnimationNodeList on AnimationNodeList {
  external int get length;
  external AnimationEffect? item(int index);
}

@JS()
@staticInterop
class SequenceEffect implements GroupEffect {
  external factory SequenceEffect(Iterable<AnimationEffect> children,
      [dynamic timing]);
}

extension PropsSequenceEffect on SequenceEffect {
  @override
  external SequenceEffect clone();
}

enum IterationCompositeOperation { replace, accumulate }
