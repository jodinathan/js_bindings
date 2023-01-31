/// CSS Nesting Module
///
/// https://drafts.csswg.org/css-nesting/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_nesting_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSNestingRule implements CSSRule {
  external factory CSSNestingRule();
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

  void deleteRule(int index) => js_util.callMethod(this, 'deleteRule', [index]);
}
