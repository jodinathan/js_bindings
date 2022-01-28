/// CSS Transitions
///
/// https://drafts.csswg.org/css-transitions/
@JS('window')
@staticInterop
library css_transitions_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents events providing information related to
/// transitions.
@experimental
@JS()
@staticInterop
class TransitionEvent implements Event {
  external factory TransitionEvent(String type,
      [TransitionEventInit? transitionEventInitDict]);
}

extension PropsTransitionEvent on TransitionEvent {
  ///  Is a [DOMString] containing the name CSS property associated
  /// with the transition.
  ///
  external String get propertyName;

  ///  Is a [float] giving the amount of time the transition has been
  /// running, in seconds, when this event fired. This value is not
  /// affected by the [transition-delay] property.
  ///
  external double get elapsedTime;

  ///  Is a [DOMString], starting with [::], containing the name of the
  /// pseudo-element the animation runs on. If the transition doesn't
  /// run on a pseudo-element but on the element, an empty string:
  /// [''].
  ///
  external String get pseudoElement;
}

@anonymous
@JS()
@staticInterop
class TransitionEventInit implements EventInit {
  external factory TransitionEventInit(
      {String propertyName = '',
      double elapsedTime = 0.0,
      String pseudoElement = ''});
}

extension PropsTransitionEventInit on TransitionEventInit {
  external String get propertyName;
  external set propertyName(String newValue);
  external double get elapsedTime;
  external set elapsedTime(double newValue);
  external String get pseudoElement;
  external set pseudoElement(String newValue);
}
