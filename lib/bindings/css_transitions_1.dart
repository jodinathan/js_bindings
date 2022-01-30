/// CSS Transitions
///
/// https://drafts.csswg.org/css-transitions/
@JS('window')
@staticInterop
library css_transitions_1;

import 'dart:js_util' as js_util;
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
  external TransitionEvent(String type,
      [TransitionEventInit? transitionEventInitDict]);
}

extension PropsTransitionEvent on TransitionEvent {
  ///  Is a [DOMString] containing the name CSS property associated
  /// with the transition.
  ///
  String get propertyName => js_util.getProperty(this, 'propertyName');

  ///  Is a [float] giving the amount of time the transition has been
  /// running, in seconds, when this event fired. This value is not
  /// affected by the [transition-delay] property.
  ///
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');

  ///  Is a [DOMString], starting with [::], containing the name of the
  /// pseudo-element the animation runs on. If the transition doesn't
  /// run on a pseudo-element but on the element, an empty string:
  /// [''].
  ///
  String get pseudoElement => js_util.getProperty(this, 'pseudoElement');
}

@anonymous
@JS()
@staticInterop
class TransitionEventInit implements EventInit {
  external factory TransitionEventInit(
      {String propertyName = '',
      double? elapsedTime = 0.0,
      String? pseudoElement = ''});
}

extension PropsTransitionEventInit on TransitionEventInit {
  String get propertyName => js_util.getProperty(this, 'propertyName');
  set propertyName(String newValue) {
    js_util.setProperty(this, 'propertyName', newValue);
  }

  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  set elapsedTime(double newValue) {
    js_util.setProperty(this, 'elapsedTime', newValue);
  }

  String get pseudoElement => js_util.getProperty(this, 'pseudoElement');
  set pseudoElement(String newValue) {
    js_util.setProperty(this, 'pseudoElement', newValue);
  }
}
