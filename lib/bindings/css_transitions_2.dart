/// CSS Transitions Level 2
///
/// https://drafts.csswg.org/css-transitions-2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_transitions_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSTransition implements Animation {
  external CSSTransition();
}

extension PropsCSSTransition on CSSTransition {
  String get transitionProperty =>
      js_util.getProperty(this, 'transitionProperty');
}
