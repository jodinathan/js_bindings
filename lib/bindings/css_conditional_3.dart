/// CSS Conditional Rules Module Level 3
///
/// https://drafts.csswg.org/css-conditional-3/
@JS('window')
library css_conditional_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';

///
///
///  An object implementing the interface represents a single
/// condition CSS [at-rule], which consists of a condition and a
/// statement block.
///
/// Two objects derive from : [CSSMediaRule] and [CSSSupportsRule].
///
///
@JS()
class CSSConditionRule extends CSSGroupingRule {
  /// Represents the text of the condition of the rule.
  external String get conditionText;
  external set conditionText(String newValue);

  external factory CSSConditionRule();
}

///
///
/// The interface represents a single CSS [@media] rule.
///
///
@JS()
class CSSMediaRule extends CSSConditionRule {
  ///  Returns a [MediaList] representing the intended destination
  /// medium for style information.
  external MediaList get media;

  external factory CSSMediaRule();
}

///
///
/// The interface represents a single CSS [@supports] [at-rule].
///
///
@JS()
class CSSSupportsRule extends CSSConditionRule {
  external factory CSSSupportsRule();
}
