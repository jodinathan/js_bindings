/// CSS Animations Level 2
///
/// https://drafts.csswg.org/css-animations-2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_animations_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSAnimation implements Animation {
  external CSSAnimation();
}

extension PropsCSSAnimation on CSSAnimation {
  String get animationName => js_util.getProperty(this, 'animationName');
}
