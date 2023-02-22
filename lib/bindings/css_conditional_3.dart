/// CSS Conditional Rules Module Level 3
///
/// https://drafts.csswg.org/css-conditional-3/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_conditional_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external factory CSSConditionRule();
}

extension PropsCSSConditionRule on CSSConditionRule {
  String get conditionText => js_util.getProperty(this, 'conditionText');
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
  external factory CSSMediaRule();
}

extension PropsCSSMediaRule on CSSMediaRule {
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
  external factory CSSSupportsRule();
}
