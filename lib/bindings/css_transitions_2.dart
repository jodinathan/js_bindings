/// CSS Transitions Level 2
///
/// https://drafts.csswg.org/css-transitions-2/
@JS('window')
@staticInterop
library css_transitions_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: web_animations_1 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents an
/// [Animation] object used for a CSS Transition.
@JS()
@staticInterop
class CSSTransition implements Animation {
  external CSSTransition();
}

extension PropsCSSTransition on CSSTransition {
  /// Returns the transition CSS property name as a [String].
  ///
  String get transitionProperty =>
      js_util.getProperty(this, 'transitionProperty');
}
