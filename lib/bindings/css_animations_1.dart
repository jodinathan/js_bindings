/// CSS Animations Level 1
///
/// https://drafts.csswg.org/css-animations/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents events providing information related to
/// animations.
///
///
///
///    Event
///
///
///
///
///
///    AnimationEvent
///
///
@experimental
@JS()
@staticInterop
class AnimationEvent implements Event {
  external AnimationEvent(String type,
      [AnimationEventInit? animationEventInitDict]);
}

extension PropsAnimationEvent on AnimationEvent {
  ///  Is a [String] containing the value of the [animation-name] that
  /// generated the animation.
  ///
  String get animationName => js_util.getProperty(this, 'animationName');

  ///  Is a [double] giving the amount of time the animation has been
  /// running, in seconds, when this event fired, excluding any time
  /// the animation was paused. For an [animationstart] event, is [0.0]
  /// unless there was a negative value for [animation-delay], in which
  /// case the event will be fired with containing [(-1 * delay)].
  ///
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');

  ///  Is a [String], starting with ['::'], containing the name of the
  /// pseudo-element the animation runs on. If the animation doesn't
  /// run on a pseudo-element but on the element, an empty string:
  /// [''].
  ///
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

///  The interface describes an object representing a set of styles
/// for a given keyframe. It corresponds to the contents of a single
/// keyframe of a [@keyframes] [at-rule].
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSKeyframeRule
///
///
@JS()
@staticInterop
class CSSKeyframeRule implements CSSRule {
  external CSSKeyframeRule();
}

extension PropsCSSKeyframeRule on CSSKeyframeRule {
  ///  Represents the key of the keyframe, like ['10%'], ['75%']. The
  /// [from] keyword maps to ['0%'] and the [to] keyword maps to
  /// ['100%'].
  ///
  String get keyText => js_util.getProperty(this, 'keyText');
  set keyText(String newValue) {
    js_util.setProperty(this, 'keyText', newValue);
  }

  ///  Returns a [CSSStyleDeclaration] of the CSS style associated with
  /// the keyframe.
  ///
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

///  The interface describes an object representing a complete set of
/// keyframes for a CSS animation. It corresponds to the contents of
/// a whole [@keyframes] [at-rule].
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSKeyframesRule
///
///
@JS()
@staticInterop
class CSSKeyframesRule implements CSSRule {
  external CSSKeyframesRule();
}

extension PropsCSSKeyframesRule on CSSKeyframesRule {
  ///  Represents the name of the keyframes, used by the
  /// [animation-name] property.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  /// Returns a [CSSRuleList] of the keyframes in the list.
  ///
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');

  ///  Inserts a new keyframe rule into the current CSSKeyframesRule.
  /// The parameter is a [String] containing a keyframe in the same
  /// format as an entry of a [@keyframes] at-rule. If it contains more
  /// than one keyframe rule, a [Exception] with a [SYNTAX_ERR] is
  /// thrown.
  ///
  /// CSSKeyframesRule.appendRule(rule);
  ///
  ///
  ///  The CSS includes a keyframes at-rule. This will be the first CSSRule returned by document.styleSheets[0].cssRules.
  ///  myRules[0] returns a CSSKeyframesRule object. Returning the cssRules property would return a CSSRuleList containing one rule.
  ///
  /// After appending another rule with appendRule the cssRules property returns a CSSRuleList containing two rules.
  /// @keyframes slidein {
  ///  from {
  ///   transform: translateX(0%);
  ///  }
  /// }
  ///
  /// let myRules = document.styleSheets[0].cssRules;
  /// let keyframes = myRules[0]; // a CSSKeyframesRule
  /// keyframes.appendRule('to {transform: translateX(100%);}');
  /// console.log(keyframes.cssRules); // a CSSRuleList object with two rules
  ///
  Object appendRule(

          /// A [String] containing a keyframe rule.
          ///
          String rule) =>
      js_util.callMethod(this, 'appendRule', [rule]);

  ///  Deletes a keyframe rule from the current CSSKeyframesRule. The
  /// parameter is the index of the keyframe to be deleted, expressed
  /// as a [String] resolving as a number between [0%] and [100%].
  ///
  /// CSSKeyframesRule.deleteRule(select);
  ///
  ///
  ///  The CSS includes a keyframes at-rule. This will be the first CSSRule returned by document.styleSheets[0].cssRules.
  ///  myRules[0] returns a CSSKeyframesRule object. Returning the cssRules property would return a CSSRuleList containing two rules.
  ///
  /// After deleting a rule with deleteRule() the cssRules property returns a CSSRuleList containing one rule.
  /// @keyframes slidein {
  ///  from {
  ///   transform: translateX(0%);
  ///  }
  ///
  ///  to {
  ///   transform: translateX(100%);
  ///  }
  /// }
  ///
  /// let myRules = document.styleSheets[0].cssRules;
  /// let keyframes = myRules[0]; // a CSSKeyframesRule
  /// keyframes.deleteRule('to');
  /// console.log(keyframes.cssRules); // a CSSRuleList object with one rule
  ///
  Object deleteRule(

          ///  A [String] which contains the keyframe selector of the rule to
          /// be deleted, which must be:
          ///
          ///     a comma-separated list of percentage values between 0% and
          /// 100%;
          ///    or, the keywords [from] or [to]
          ///
          ///    Note that the number and order of the values in the specified
          /// keyframe selector must match those of the targeted keyframe
          /// rule(s). White-space is disregarded.
          ///
          String select) =>
      js_util.callMethod(this, 'deleteRule', [select]);

  ///  Returns a keyframe rule corresponding to the given key. The key
  /// is a [String] containing an index of the keyframe to be returned,
  /// resolving to a percentage between [0%] and [100%]. If no such
  /// keyframe exists, returns [null].
  ///
  /// CSSKeyframesRule.findRule(select);
  ///
  ///
  ///  The CSS includes a keyframes at-rule. This will be the first CSSRule returned by document.styleSheets[0].cssRules.
  ///  myRules[0] returns a CSSKeyframesRule object. Calling findRule("to") returns a CSSKeyframeRule representing the second rule.
  ///
  /// @keyframes slidein {
  ///  from {
  ///   transform: translateX(0%);
  ///  }
  ///
  ///  to {
  ///   transform: translateX(100%);
  ///  }
  /// }
  ///
  /// let myRules = document.styleSheets[0].cssRules;
  /// let keyframes = myRules[0]; // a CSSKeyframesRule
  /// console.log(keyframes.findRule('to')); // a CSSKeyframeRule object
  ///
  CSSKeyframeRule? findRule(

          ///  A [String] which contains the keyframe selector of the rule to
          /// be found, which must be:
          ///
          ///     a comma-separated list of percentage values between 0% and
          /// 100%;
          ///    or, the keywords [from] or [to]
          ///
          ///    Note that the number and order of the values in the specified
          /// keyframe selector must match those of the targeted keyframe
          /// rule(s). White-space is disregarded.
          ///
          String select) =>
      js_util.callMethod(this, 'findRule', [select]);
}
