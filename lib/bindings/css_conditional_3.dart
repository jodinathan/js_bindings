/// CSS Conditional Rules Module Level 3
///
/// https://drafts.csswg.org/css-conditional-3/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_conditional_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSConditionRule implements CSSGroupingRule {
  external CSSConditionRule();
}

extension PropsCSSConditionRule on CSSConditionRule {
  String get conditionText => js_util.getProperty(this, 'conditionText');
  set conditionText(String newValue) {
    js_util.setProperty(this, 'conditionText', newValue);
  }
}

@JS()
@staticInterop
class CSSMediaRule implements CSSConditionRule {
  external CSSMediaRule();
}

extension PropsCSSMediaRule on CSSMediaRule {
  MediaList get media => js_util.getProperty(this, 'media');
}

@JS()
@staticInterop
class CSSSupportsRule implements CSSConditionRule {
  external CSSSupportsRule();
}
