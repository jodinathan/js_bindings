/// Pointer Events
///
/// https://w3c.github.io/pointerevents/
@JS('window')
@staticInterop
library pointerevents3;

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
  external int get pointerId;
  external set pointerId(int newValue);
  external double get width;
  external set width(double newValue);
  external double get height;
  external set height(double newValue);
  external double get pressure;
  external set pressure(double newValue);
  external double get tangentialPressure;
  external set tangentialPressure(double newValue);
  external int get tiltX;
  external set tiltX(int newValue);
  external int get tiltY;
  external set tiltY(int newValue);
  external int get twist;
  external set twist(int newValue);
  external double get altitudeAngle;
  external set altitudeAngle(double newValue);
  external double get azimuthAngle;
  external set azimuthAngle(double newValue);
  external String get pointerType;
  external set pointerType(String newValue);
  external bool get isPrimary;
  external set isPrimary(bool newValue);
  external Iterable<PointerEvent> get coalescedEvents;
  external set coalescedEvents(Iterable<PointerEvent> newValue);
  external Iterable<PointerEvent> get predictedEvents;
  external set predictedEvents(Iterable<PointerEvent> newValue);
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
  external factory PointerEvent(String type, [PointerEventInit? eventInitDict]);
}

extension PropsPointerEvent on PointerEvent {
  /// A unique identifier for the pointer causing the event.
  ///
  external int get pointerId;

  ///  The width (magnitude on the X axis), in CSS pixels, of the
  /// contact geometry of the pointer.
  ///
  external double get width;

  ///  The height (magnitude on the Y axis), in CSS pixels, of the
  /// contact geometry of the pointer.
  ///
  external double get height;

  ///  The normalized pressure of the pointer input in the range [0] to
  /// [1], where [0] and [1] represent the minimum and maximum pressure
  /// the hardware is capable of detecting, respectively.
  ///
  external double get pressure;

  ///  The normalized tangential pressure of the pointer input (also
  /// known as barrel pressure or cylinder stress) in the range [-1] to
  /// [1], where [0] is the neutral position of the control.
  ///
  external double get tangentialPressure;

  ///  The plane angle (in degrees, in the range of [-90] to [90])
  /// between the Y–Z plane and the plane containing both the pointer
  /// (e.g. pen stylus) axis and the Y axis.
  ///
  external int get tiltX;

  ///  The plane angle (in degrees, in the range of [-90] to [90])
  /// between the X–Z plane and the plane containing both the pointer
  /// (e.g. pen stylus) axis and the X axis.
  ///
  external int get tiltY;

  ///  The clockwise rotation of the pointer (e.g. pen stylus) around
  /// its major axis in degrees, with a value in the range [0] to
  /// [359].
  ///
  external int get twist;
  external double get altitudeAngle;
  external double get azimuthAngle;

  ///  Indicates the device type that caused the event (mouse, pen,
  /// touch, etc.)
  ///
  external String get pointerType;

  ///  Indicates if the pointer represents the primary pointer of this
  /// pointer type.
  ///
  external bool get isPrimary;

  ///  Returns a sequence of all [PointerEvent] instances that were
  /// coalesced into the dispatched [pointermove] event.
  ///
  /// var pointerEvents[] = PointerEvent.getCoalescedEvents()
  ///
  @experimental
  external Iterable<PointerEvent> getCoalescedEvents();

  ///  Returns a sequence of [PointerEvent] instances that the browser
  /// predicts will follow the dispatched [pointermove] event's
  /// coalesced events.
  ///
  @experimental
  external Iterable<PointerEvent> getPredictedEvents();
}
