/// Pointer Events
///
/// https://w3c.github.io/pointerevents/
@JS('window')
@staticInterop
library pointerevents3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: uievents
dom
html */

@anonymous
@JS()
@staticInterop
class PointerEventInit implements MouseEventInit {
  external factory PointerEventInit(
      {int pointerId = 0,
      double width = 1,
      double height = 1,
      double pressure = 0,
      double tangentialPressure = 0,
      int tiltX,
      int tiltY,
      int twist = 0,
      double altitudeAngle,
      double azimuthAngle,
      String pointerType = '',
      bool isPrimary = false,
      Iterable<PointerEvent> coalescedEvents = const [],
      Iterable<PointerEvent> predictedEvents = const []});
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
@JS()
@staticInterop
class PointerEvent implements MouseEvent {
  external PointerEvent(String type, [PointerEventInit? eventInitDict]);
}

extension PropsPointerEvent on PointerEvent {
  /// A unique identifier for the pointer causing the event.
  ///
  int get pointerId => js_util.getProperty(this, 'pointerId');

  ///  The width (magnitude on the X axis), in CSS pixels, of the
  /// contact geometry of the pointer.
  ///
  double get width => js_util.getProperty(this, 'width');

  ///  The height (magnitude on the Y axis), in CSS pixels, of the
  /// contact geometry of the pointer.
  ///
  double get height => js_util.getProperty(this, 'height');

  ///  The normalized pressure of the pointer input in the range [0] to
  /// [1], where [0] and [1] represent the minimum and maximum pressure
  /// the hardware is capable of detecting, respectively.
  ///
  double get pressure => js_util.getProperty(this, 'pressure');

  ///  The normalized tangential pressure of the pointer input (also
  /// known as barrel pressure or cylinder stress) in the range [-1] to
  /// [1], where [0] is the neutral position of the control.
  ///
  double get tangentialPressure =>
      js_util.getProperty(this, 'tangentialPressure');

  ///  The plane angle (in degrees, in the range of [-90] to [90])
  /// between the Y–Z plane and the plane containing both the pointer
  /// (e.g. pen stylus) axis and the Y axis.
  ///
  int get tiltX => js_util.getProperty(this, 'tiltX');

  ///  The plane angle (in degrees, in the range of [-90] to [90])
  /// between the X–Z plane and the plane containing both the pointer
  /// (e.g. pen stylus) axis and the X axis.
  ///
  int get tiltY => js_util.getProperty(this, 'tiltY');

  ///  The clockwise rotation of the pointer (e.g. pen stylus) around
  /// its major axis in degrees, with a value in the range [0] to
  /// [359].
  ///
  int get twist => js_util.getProperty(this, 'twist');
  double get altitudeAngle => js_util.getProperty(this, 'altitudeAngle');
  double get azimuthAngle => js_util.getProperty(this, 'azimuthAngle');

  ///  Indicates the device type that caused the event (mouse, pen,
  /// touch, etc.)
  ///
  String get pointerType => js_util.getProperty(this, 'pointerType');

  ///  Indicates if the pointer represents the primary pointer of this
  /// pointer type.
  ///
  bool get isPrimary => js_util.getProperty(this, 'isPrimary');

  ///  Returns a sequence of all [PointerEvent] instances that were
  /// coalesced into the dispatched [pointermove] event.
  ///
  /// var pointerEvents[] = PointerEvent.getCoalescedEvents()
  ///
  @experimental
  Iterable<PointerEvent> getCoalescedEvents() =>
      js_util.callMethod(this, 'getCoalescedEvents', []);

  ///  Returns a sequence of [PointerEvent] instances that the browser
  /// predicts will follow the dispatched [pointermove] event's
  /// coalesced events.
  ///
  @experimental
  Iterable<PointerEvent> getPredictedEvents() =>
      js_util.callMethod(this, 'getPredictedEvents', []);
}
