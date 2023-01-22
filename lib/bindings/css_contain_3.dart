/// CSS Containment Module Level 3
///
/// https://drafts.csswg.org/css-contain-3/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_contain_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSContainerRule implements CSSConditionRule {
  external factory CSSContainerRule();
}

extension PropsCSSContainerRule on CSSContainerRule {
  String get containerName => js_util.getProperty(this, 'containerName');
  String get containerQuery => js_util.getProperty(this, 'containerQuery');
}
