/// CSS Transitions
///
/// https://drafts.csswg.org/css-transitions/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_transitions_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents events providing information related to
/// transitions.
///
///
///
///    Event
///
///
///
///
///
///    TransitionEvent
///
///
@experimental
@JS()
@staticInterop
class TransitionEvent implements Event {
  external factory TransitionEvent._(String type,
      [TransitionEventInit? transitionEventInitDict]);

  factory TransitionEvent(String type,
          [TransitionEventInit? transitionEventInitDict]) =>
      TransitionEvent._(type, transitionEventInitDict ?? undefined);
}

extension PropsTransitionEvent on TransitionEvent {
  String get propertyName => js_util.getProperty(this, 'propertyName');
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  String get pseudoElement => js_util.getProperty(this, 'pseudoElement');
}

@anonymous
@JS()
@staticInterop
class TransitionEventInit implements EventInit {
  external factory TransitionEventInit._(
      {String? propertyName, double? elapsedTime, String? pseudoElement});

  factory TransitionEventInit(
          {String? propertyName, double? elapsedTime, String? pseudoElement}) =>
      TransitionEventInit._(
          propertyName: propertyName ?? '',
          elapsedTime: elapsedTime ?? 0.0,
          pseudoElement: pseudoElement ?? '');
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
