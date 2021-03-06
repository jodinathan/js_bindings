/// CSS Animations Level 1
///
/// https://drafts.csswg.org/css-animations/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class AnimationEvent implements Event {
  external AnimationEvent(String type,
      [AnimationEventInit? animationEventInitDict]);
}

extension PropsAnimationEvent on AnimationEvent {
  String get animationName => js_util.getProperty(this, 'animationName');
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  String get pseudoElement => js_util.getProperty(this, 'pseudoElement');
}

@anonymous
@JS()
@staticInterop
class AnimationEventInit implements EventInit {
  external factory AnimationEventInit(
      {String? animationName = '',
      double? elapsedTime = 0.0,
      String? pseudoElement = ''});
}

extension PropsAnimationEventInit on AnimationEventInit {
  String get animationName => js_util.getProperty(this, 'animationName');
  set animationName(String newValue) {
    js_util.setProperty(this, 'animationName', newValue);
  }

  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  set elapsedTime(double newValue) {
    js_util.setProperty(this, 'elapsedTime', newValue);
  }

  String get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }
}

@JS()
@staticInterop
class CSSKeyframeRule implements CSSRule {
  external CSSKeyframeRule();
}

extension PropsCSSKeyframeRule on CSSKeyframeRule {
  String get keyText => js_util.getProperty(this, 'keyText');
  set keyText(String newValue) {
    js_util.setProperty(this, 'keyText', newValue);
  }

  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

@JS()
@staticInterop
class CSSKeyframesRule implements CSSRule {
  external CSSKeyframesRule();
}

extension PropsCSSKeyframesRule on CSSKeyframesRule {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  Object appendRule(String rule) =>
      js_util.callMethod(this, 'appendRule', [rule]);

  Object deleteRule(String select) =>
      js_util.callMethod(this, 'deleteRule', [select]);

  CSSKeyframeRule? findRule(String select) =>
      js_util.callMethod(this, 'findRule', [select]);
}
