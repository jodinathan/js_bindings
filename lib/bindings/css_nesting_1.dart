/// CSS Nesting Module
///
/// https://drafts.csswg.org/css-nesting-1/
@JS('window')
@staticInterop
library css_nesting_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

@JS()
@staticInterop
class CSSNestingRule implements CSSRule {
  external CSSNestingRule();
}

extension PropsCSSNestingRule on CSSNestingRule {
  String get selectorText => js_util.getProperty(this, 'selectorText');
  set selectorText(String newValue) {
    js_util.setProperty(this, 'selectorText', newValue);
  }

  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);
}
