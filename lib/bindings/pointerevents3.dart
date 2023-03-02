/// Pointer Events
///
/// https://w3c.github.io/pointerevents/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library pointerevents3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class PointerEventInit implements MouseEventInit {
  external factory PointerEventInit._(
      {int? pointerId,
      double? width,
      double? height,
      double? pressure,
      double? tangentialPressure,
      int? tiltX,
      int? tiltY,
      int? twist,
      double? altitudeAngle,
      double? azimuthAngle,
      String? pointerType,
      bool? isPrimary,
      Iterable<PointerEvent>? coalescedEvents,
      Iterable<PointerEvent>? predictedEvents});

  factory PointerEventInit(
          {int? pointerId,
          double? width,
          double? height,
          double? pressure,
          double? tangentialPressure,
          int? tiltX,
          int? tiltY,
          int? twist,
          double? altitudeAngle,
          double? azimuthAngle,
          String? pointerType,
          bool? isPrimary,
          Iterable<PointerEvent>? coalescedEvents,
          Iterable<PointerEvent>? predictedEvents}) =>
      PointerEventInit._(
          pointerId: pointerId ?? 0,
          width: width ?? 1,
          height: height ?? 1,
          pressure: pressure ?? 0,
          tangentialPressure: tangentialPressure ?? 0,
          tiltX: tiltX ?? undefined,
          tiltY: tiltY ?? undefined,
          twist: twist ?? 0,
          altitudeAngle: altitudeAngle ?? undefined,
          azimuthAngle: azimuthAngle ?? undefined,
          pointerType: pointerType ?? '',
          isPrimary: isPrimary ?? false,
          coalescedEvents: coalescedEvents ?? const [],
          predictedEvents: predictedEvents ?? const []);
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

///  The interface represents the state of a DOM event produced by a
/// pointer such as the geometry of the contact point, the device
/// type that generated the event, the amount of pressure that was
/// applied on the contact surface, etc.
///  A pointer is a hardware agnostic representation of input devices
/// (such as a mouse, pen or contact point on a touch-enable
/// surface). The pointer can target a specific coordinate (or set of
/// coordinates) on the contact surface such as a screen.
///  A pointer's hit test is the process a browser uses to determine
/// the target element for a pointer event. Typically, this is
/// determined by considering the pointer's location and also the
/// visual layout of elements in a document on screen media.
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    MouseEvent
///
///
///
///
///
///    PointerEvent
///
///
@JS()
@staticInterop
class PointerEvent implements MouseEvent {
  external factory PointerEvent._(String type,
      [PointerEventInit? eventInitDict]);

  factory PointerEvent(String type, [PointerEventInit? eventInitDict]) =>
      PointerEvent._(type, eventInitDict ?? undefined);
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
