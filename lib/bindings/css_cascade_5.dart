/// CSS Cascading and Inheritance Level 5
///
/// https://drafts.csswg.org/css-cascade-5/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_cascade_5;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSLayerBlockRule implements CSSGroupingRule {
  external CSSLayerBlockRule();
}

extension PropsCSSLayerBlockRule on CSSLayerBlockRule {
  String get name => js_util.getProperty(this, 'name');
}

@JS()
@staticInterop
class CSSLayerStatementRule implements CSSRule {
  external CSSLayerStatementRule();
}

extension PropsCSSLayerStatementRule on CSSLayerStatementRule {
  Iterable<String> get nameList => js_util.getProperty(this, 'nameList');
}
