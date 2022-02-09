/// Pointer Events
///
/// https://w3c.github.io/pointerevents/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library pointerevents3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class PointerEventInit implements MouseEventInit {
  external factory PointerEventInit(
      {int? pointerId = 0,
      double? width = 1,
      double? height = 1,
      double? pressure = 0,
      double? tangentialPressure = 0,
      int? tiltX,
      int? tiltY,
      int? twist = 0,
      double? altitudeAngle,
      double? azimuthAngle,
      String? pointerType = '',
      bool? isPrimary = false,
      Iterable<PointerEvent>? coalescedEvents = const [],
      Iterable<PointerEvent>? predictedEvents = const []});
}

extension PropsPointerEventInit on PointerEventInit {
  int get pointerId => js_util.getProperty(this, 'pointerId');
  set pointerId(int newValue) {
    js_util.setProperty(this, 'pointerId', newValue);
  }

  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  double get height => js_util.getProperty(this, 'height');
  set height(double newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  double get pressure => js_util.getProperty(this, 'pressure');
  set pressure(double newValue) {
    js_util.setProperty(this, 'pressure', newValue);
  }

  double get tangentialPressure =>
      js_util.getProperty(this, 'tangentialPressure');
  set tangentialPressure(double newValue) {
    js_util.setProperty(this, 'tangentialPressure', newValue);
  }

  int get tiltX => js_util.getProperty(this, 'tiltX');
  set tiltX(int newValue) {
    js_util.setProperty(this, 'tiltX', newValue);
  }

  int get tiltY => js_util.getProperty(this, 'tiltY');
  set tiltY(int newValue) {
    js_util.setProperty(this, 'tiltY', newValue);
  }

  int get twist => js_util.getProperty(this, 'twist');
  set twist(int newValue) {
    js_util.setProperty(this, 'twist', newValue);
  }

  double get altitudeAngle => js_util.getProperty(this, 'altitudeAngle');
  set altitudeAngle(double newValue) {
    js_util.setProperty(this, 'altitudeAngle', newValue);
  }

  double get azimuthAngle => js_util.getProperty(this, 'azimuthAngle');
  set azimuthAngle(double newValue) {
    js_util.setProperty(this, 'azimuthAngle', newValue);
  }

  String get pointerType => js_util.getProperty(this, 'pointerType');
  set pointerType(String newValue) {
    js_util.setProperty(this, 'pointerType', newValue);
  }

  bool get isPrimary => js_util.getProperty(this, 'isPrimary');
  set isPrimary(bool newValue) {
    js_util.setProperty(this, 'isPrimary', newValue);
  }

  Iterable<PointerEvent> get coalescedEvents =>
      js_util.getProperty(this, 'coalescedEvents');
  set coalescedEvents(Iterable<PointerEvent> newValue) {
    js_util.setProperty(this, 'coalescedEvents', newValue);
  }

  Iterable<PointerEvent> get predictedEvents =>
      js_util.getProperty(this, 'predictedEvents');
  set predictedEvents(Iterable<PointerEvent> newValue) {
    js_util.setProperty(this, 'predictedEvents', newValue);
  }
}

@JS()
@staticInterop
class PointerEvent implements MouseEvent {
  external PointerEvent(String type, [PointerEventInit? eventInitDict]);
}

extension PropsPointerEvent on PointerEvent {
  int get pointerId => js_util.getProperty(this, 'pointerId');
  double get width => js_util.getProperty(this, 'width');
  double get height => js_util.getProperty(this, 'height');
  double get pressure => js_util.getProperty(this, 'pressure');
  double get tangentialPressure =>
      js_util.getProperty(this, 'tangentialPressure');
  int get tiltX => js_util.getProperty(this, 'tiltX');
  int get tiltY => js_util.getProperty(this, 'tiltY');
  int get twist => js_util.getProperty(this, 'twist');
  double get altitudeAngle => js_util.getProperty(this, 'altitudeAngle');
  double get azimuthAngle => js_util.getProperty(this, 'azimuthAngle');
  String get pointerType => js_util.getProperty(this, 'pointerType');
  bool get isPrimary => js_util.getProperty(this, 'isPrimary');
  Iterable<PointerEvent> getCoalescedEvents() =>
      js_util.callMethod(this, 'getCoalescedEvents', []);

  Iterable<PointerEvent> getPredictedEvents() =>
      js_util.callMethod(this, 'getPredictedEvents', []);
}
