/// Web Animations Level 2
///
/// https://drafts.csswg.org/web-animations-2/
@JS('window')
library web_animations_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'web_animations_1.dart';
import 'dom.dart';
import 'css_pseudo_4.dart';

@JS()
enum FillMode { none, forwards, backwards, both, auto }

@JS()
class GroupEffect {
  external factory GroupEffect(
      {Iterable<AnimationEffect> children, dynamic timing});
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
  external dynamic clone();
  external Object prepend([AnimationEffect effects]);
  external Object append([AnimationEffect effects]);
}

@JS()
class AnimationNodeList {
  external int get length;
  external AnimationEffect? item(int index);

  external factory AnimationNodeList();
}

@JS()
class SequenceEffect extends GroupEffect {
  external factory SequenceEffect(
      {Iterable<AnimationEffect> children, dynamic timing});
  @override
  external SequenceEffect clone();
}

@JS()
enum IterationCompositeOperation { replace, accumulate }
