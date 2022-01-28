/// CSS Nesting Module
///
/// https://drafts.csswg.org/css-nesting-1/
@JS('window')
@staticInterop
library css_nesting_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

@JS()
@staticInterop
class CSSNestingRule implements CSSRule {
  external factory CSSNestingRule();
}

extension PropsCSSNestingRule on CSSNestingRule {
  external String get selectorText;
  external set selectorText(String newValue);
  external CSSStyleDeclaration get style;
  external CSSRuleList get cssRules;
  external int insertRule(String rule, [int? index = 0]);
  external Object deleteRule(int index);
}
