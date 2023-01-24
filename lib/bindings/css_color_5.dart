/// CSS Color Module Level 5
///
/// https://drafts.csswg.org/css-color-5/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_color_5;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSColorProfileRule implements CSSRule {
  external factory CSSColorProfileRule();
}

extension PropsCSSColorProfileRule on CSSColorProfileRule {
  String get name => js_util.getProperty(this, 'name');
  String get src => js_util.getProperty(this, 'src');
  String get renderingIntent => js_util.getProperty(this, 'renderingIntent');
  String get components => js_util.getProperty(this, 'components');
}
