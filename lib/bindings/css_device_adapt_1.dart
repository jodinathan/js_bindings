/// CSS Device Adaptation Module Level 1
///
/// https://drafts.csswg.org/css-device-adapt/
@JS('window')
@staticInterop
library css_device_adapt_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

@JS()
@staticInterop
class CSSViewportRule implements CSSRule {
  external CSSViewportRule();
}

extension PropsCSSViewportRule on CSSViewportRule {
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}
