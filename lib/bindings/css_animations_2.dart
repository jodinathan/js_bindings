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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents an
/// [Animation] object.
@JS()
@staticInterop
class CSSAnimation implements Animation {
  external CSSAnimation();
}

extension PropsCSSAnimation on CSSAnimation {
  /// Returns the animation name as a [String].
  ///
  String get animationName => js_util.getProperty(this, 'animationName');
}
