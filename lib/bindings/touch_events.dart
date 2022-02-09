/// Touch Events - Level 2
///
/// https://w3c.github.io/touch-events/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library touch_events;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum TouchType { direct, stylus }

@anonymous
@JS()
@staticInterop
class TouchInit {
  external factory TouchInit._(
      {required int identifier,
      required EventTarget target,
      double? clientX = 0,
      double? clientY = 0,
      double? screenX = 0,
      double? screenY = 0,
      double? pageX = 0,
      double? pageY = 0,
      double? radiusX = 0,
      double? radiusY = 0,
      double? rotationAngle = 0,
      double? force = 0,
      double? altitudeAngle = 0,
      double? azimuthAngle = 0,
      String? touchType});

  factory TouchInit(
          {required int identifier,
          required EventTarget target,
          double? clientX = 0,
          double? clientY = 0,
          double? screenX = 0,
          double? screenY = 0,
          double? pageX = 0,
          double? pageY = 0,
          double? radiusX = 0,
          double? radiusY = 0,
          double? rotationAngle = 0,
          double? force = 0,
          double? altitudeAngle = 0,
          double? azimuthAngle = 0,
          TouchType? touchType = TouchType.direct}) =>
      TouchInit._(
          identifier: identifier,
          target: target,
          clientX: clientX,
          clientY: clientY,
          screenX: screenX,
          screenY: screenY,
          pageX: pageX,
          pageY: pageY,
          radiusX: radiusX,
          radiusY: radiusY,
          rotationAngle: rotationAngle,
          force: force,
          altitudeAngle: altitudeAngle,
          azimuthAngle: azimuthAngle,
          touchType: touchType?.name);
}

extension PropsTouchInit on TouchInit {
  int get identifier => js_util.getProperty(this, 'identifier');
  set identifier(int newValue) {
    js_util.setProperty(this, 'identifier', newValue);
  }

  EventTarget get target => js_util.getProperty(this, 'target');
  set target(EventTarget newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  double get clientX => js_util.getProperty(this, 'clientX');
  set clientX(double newValue) {
    js_util.setProperty(this, 'clientX', newValue);
  }

  double get clientY => js_util.getProperty(this, 'clientY');
  set clientY(double newValue) {
    js_util.setProperty(this, 'clientY', newValue);
  }

  double get screenX => js_util.getProperty(this, 'screenX');
  set screenX(double newValue) {
    js_util.setProperty(this, 'screenX', newValue);
  }

  double get screenY => js_util.getProperty(this, 'screenY');
  set screenY(double newValue) {
    js_util.setProperty(this, 'screenY', newValue);
  }

  double get pageX => js_util.getProperty(this, 'pageX');
  set pageX(double newValue) {
    js_util.setProperty(this, 'pageX', newValue);
  }

  double get pageY => js_util.getProperty(this, 'pageY');
  set pageY(double newValue) {
    js_util.setProperty(this, 'pageY', newValue);
  }

  double get radiusX => js_util.getProperty(this, 'radiusX');
  set radiusX(double newValue) {
    js_util.setProperty(this, 'radiusX', newValue);
  }

  double get radiusY => js_util.getProperty(this, 'radiusY');
  set radiusY(double newValue) {
    js_util.setProperty(this, 'radiusY', newValue);
  }

  double get rotationAngle => js_util.getProperty(this, 'rotationAngle');
  set rotationAngle(double newValue) {
    js_util.setProperty(this, 'rotationAngle', newValue);
  }

  double get force => js_util.getProperty(this, 'force');
  set force(double newValue) {
    js_util.setProperty(this, 'force', newValue);
  }

  double get altitudeAngle => js_util.getProperty(this, 'altitudeAngle');
  set altitudeAngle(double newValue) {
    js_util.setProperty(this, 'altitudeAngle', newValue);
  }

  double get azimuthAngle => js_util.getProperty(this, 'azimuthAngle');
  set azimuthAngle(double newValue) {
    js_util.setProperty(this, 'azimuthAngle', newValue);
  }

  TouchType get touchType =>
      TouchType.values.byName(js_util.getProperty(this, 'touchType'));
  set touchType(TouchType newValue) {
    js_util.setProperty(this, 'touchType', newValue.name);
  }
}

@JS()
@staticInterop
class Touch {
  external Touch(TouchInit touchInitDict);
}

extension PropsTouch on Touch {
  int get identifier => js_util.getProperty(this, 'identifier');
  EventTarget get target => js_util.getProperty(this, 'target');
  double get screenX => js_util.getProperty(this, 'screenX');
  double get screenY => js_util.getProperty(this, 'screenY');
  double get clientX => js_util.getProperty(this, 'clientX');
  double get clientY => js_util.getProperty(this, 'clientY');
  double get pageX => js_util.getProperty(this, 'pageX');
  double get pageY => js_util.getProperty(this, 'pageY');
  double get radiusX => js_util.getProperty(this, 'radiusX');
  double get radiusY => js_util.getProperty(this, 'radiusY');
  double get rotationAngle => js_util.getProperty(this, 'rotationAngle');
  double get force => js_util.getProperty(this, 'force');
  double get altitudeAngle => js_util.getProperty(this, 'altitudeAngle');
  double get azimuthAngle => js_util.getProperty(this, 'azimuthAngle');
  TouchType get touchType =>
      TouchType.values.byName(js_util.getProperty(this, 'touchType'));
}

@JS()
@staticInterop
class TouchList {
  external TouchList();
}

extension PropsTouchList on TouchList {
  int get length => js_util.getProperty(this, 'length');
  Touch? item(int index) => js_util.callMethod(this, 'item', [index]);
}

@anonymous
@JS()
@staticInterop
class TouchEventInit implements EventModifierInit {
  external factory TouchEventInit(
      {Iterable<Touch>? touches = const [],
      Iterable<Touch>? targetTouches = const [],
      Iterable<Touch>? changedTouches = const []});
}

extension PropsTouchEventInit on TouchEventInit {
  Iterable<Touch> get touches => js_util.getProperty(this, 'touches');
  set touches(Iterable<Touch> newValue) {
    js_util.setProperty(this, 'touches', newValue);
  }

  Iterable<Touch> get targetTouches =>
      js_util.getProperty(this, 'targetTouches');
  set targetTouches(Iterable<Touch> newValue) {
    js_util.setProperty(this, 'targetTouches', newValue);
  }

  Iterable<Touch> get changedTouches =>
      js_util.getProperty(this, 'changedTouches');
  set changedTouches(Iterable<Touch> newValue) {
    js_util.setProperty(this, 'changedTouches', newValue);
  }
}

@JS()
@staticInterop
class TouchEvent implements UIEvent {
  external TouchEvent(String type, [TouchEventInit? eventInitDict]);
}

extension PropsTouchEvent on TouchEvent {
  TouchList get touches => js_util.getProperty(this, 'touches');
  TouchList get targetTouches => js_util.getProperty(this, 'targetTouches');
  TouchList get changedTouches => js_util.getProperty(this, 'changedTouches');
  bool get altKey => js_util.getProperty(this, 'altKey');
  bool get metaKey => js_util.getProperty(this, 'metaKey');
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');
  bool get shiftKey => js_util.getProperty(this, 'shiftKey');
}
