/// CSS Conditional Rules Module Level 3
///
/// https://drafts.csswg.org/css-conditional-3/
@JS('window')
@staticInterop
library css_conditional_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

///  An object implementing the interface represents a single
/// condition CSS [at-rule], which consists of a condition and a
/// statement block.
/// Two objects derive from : [CSSMediaRule] and [CSSSupportsRule].
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSGroupingRule
///
///
///
///
///
///    CSSConditionRule
///
///
@JS()
@staticInterop
class CSSConditionRule implements CSSGroupingRule {
  external CSSConditionRule();
}

extension PropsCSSConditionRule on CSSConditionRule {
  /// Represents the text of the condition of the rule.
  ///
  String get conditionText => js_util.getProperty(this, 'conditionText');
  set conditionText(String newValue) {
    js_util.setProperty(this, 'conditionText', newValue);
  }
}

/// The interface represents a single CSS [@media] rule.
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSGroupingRule
///
///
///
///
///
///    CSSConditionRule
///
///
///
///
///
///    CSSMediaRule
///
///
@JS()
@staticInterop
class CSSMediaRule implements CSSConditionRule {
  external CSSMediaRule();
}

extension PropsCSSMediaRule on CSSMediaRule {
  ///  Returns a [MediaList] representing the intended destination
  /// medium for style information.
  ///
  MediaList get media => js_util.getProperty(this, 'media');
}

/// The interface represents a single CSS [@supports] [at-rule].
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSGroupingRule
///
///
///
///
///
///    CSSConditionRule
///
///
///
///
///
///    CSSSupportsRule
///
///
@JS()
@staticInterop
class CSSSupportsRule implements CSSConditionRule {
  external CSSSupportsRule();
}
