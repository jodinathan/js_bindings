/// CSS Transitions Level 2
///
/// https://drafts.csswg.org/css-transitions-2/
@JS('window')
library css_transitions_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'web_animations_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Animations API represents an
/// [Animation] object used for a CSS Transition.
@JS()
class CSSTransition extends Animation {
  /// Returns the transition CSS property name as a [CSSOMString].
  external String get transitionProperty;

  external factory CSSTransition();
}
