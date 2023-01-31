/// CSS Transitions Level 2
///
/// https://drafts.csswg.org/css-transitions-2/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_transitions_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents an
/// [Animation] object used for a CSS Transition.
///
///
///
///    EventTarget
///
///
///
///
///
///    Animation
///
///
///
///
///
///    CSSTransition
///
///
@JS()
@staticInterop
class CSSTransition implements Animation {
  external factory CSSTransition();
}

extension PropsCSSTransition on CSSTransition {
  String get transitionProperty =>
      js_util.getProperty(this, 'transitionProperty');
}
