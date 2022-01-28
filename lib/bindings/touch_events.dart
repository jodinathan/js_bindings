/// Touch Events - Level 2
///
/// https://w3c.github.io/touch-events/
@JS('window')
@staticInterop
library touch_events;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
uievents
html */

///  The interface represents a single contact point on a
/// touch-sensitive device. The contact point is commonly a finger or
/// stylus and the device may be a touchscreen or trackpad.
///  The [Touch.radiusX], [Touch.radiusY], and [Touch.rotationAngle]
/// describe the area of contact between the user and the screen, the
/// touch area. This can be helpful when dealing with imprecise
/// pointing devices such as fingers. These values are set to
/// describe an ellipse that as closely as possible matches the
/// entire area of contact (such as the user's fingertip).
///
///   Note: Many of the properties' values are hardware-dependent;
/// for example, if the device doesn't have a way to detect the
/// amount of pressure placed on the surface, the [force] value will
/// always be 0. This may also be the case for [radiusX] and
/// [radiusY]; if the hardware reports only a single point, these
/// values will be 1.
///
@JS()
@staticInterop
class Touch {
  external factory Touch(TouchInit touchInitDict);
}

extension PropsTouch on Touch {
  external int get identifier;
  external EventTarget get target;
  external double get screenX;
  external double get screenY;
  external double get clientX;
  external double get clientY;
  external double get pageX;
  external double get pageY;
  external double get radiusX;
  external double get radiusY;
  external double get rotationAngle;
  external double get force;
  external double get altitudeAngle;
  external double get azimuthAngle;
  external TouchType get touchType;
}

///  The interface represents a list of contact points on a touch
/// surface. For example, if the user has three fingers on the touch
/// surface (such as a screen or trackpad), the corresponding object
/// would have one [Touch] object for each finger, for a total of
/// three entries.
@JS()
@staticInterop
class TouchList {
  external factory TouchList();
}

extension PropsTouchList on TouchList {
  /// The number of [Touch] objects in the [TouchList].
  ///
  external int get length;

  /// Returns the [Touch] object at the specified index in the list.
  ///
  /// var touchPoint = touchList.item(index);
  ///
  ///
  ///  This code example illustrates the use of the TouchList interface's
  ///  item method and the
  ///  length property.
  ///
  /// target = document.getElementById("target");
  ///
  /// target.addEventListener('touchstart', function(ev) {
  ///
  ///  // If this touchstart event started on element target,
  ///  // set touch to the first item in the targetTouches list;
  ///  // otherwise set touch to the first item in the touches list
  ///  var touch;
  ///
  ///  if (ev.targetTouches.length >= 1)
  ///    touch = ev.targetTouches.item(0);
  ///  else
  ///    touch = ev.touches.item(0);
  /// }, false);
  ///
  external Touch? item(int index);
}

///  The interface represents an [UIEvent] which is sent when the
/// state of contacts with a touch-sensitive surface changes. This
/// surface can be a touch screen or trackpad, for example. The event
/// can describe one or more points of contact with the screen and
/// includes support for detecting movement, addition and removal of
/// contact points, and so forth.
///  Touches are represented by the [Touch] object; each touch is
/// described by a position, size and shape, amount of pressure, and
/// target element. Lists of touches are represented by [TouchList]
/// objects.
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
///    TouchEvent
///
///
@JS()
@staticInterop
class TouchEvent implements UIEvent {
  external factory TouchEvent(String type, [TouchEventInit? eventInitDict]);
}

extension PropsTouchEvent on TouchEvent {
  ///  A [TouchList] of all the [Touch] objects representing all
  /// current points of contact with the surface, regardless of target
  /// or changed status.
  ///
  external TouchList get touches;

  ///  A [TouchList] of all the [Touch] objects that are both currently
  /// in contact with the touch surface and were also started on the
  /// same element that is the target of the event.
  ///
  external TouchList get targetTouches;

  ///  A [TouchList] of all the [Touch] objects representing individual
  /// points of contact whose states changed between the previous touch
  /// event and this one.
  ///
  external TouchList get changedTouches;

  ///  A Boolean value indicating whether or not the alt key was down
  /// when the touch event was fired.
  ///
  external bool get altKey;

  ///  A Boolean value indicating whether or not the meta key was down
  /// when the touch event was fired.
  ///
  external bool get metaKey;

  ///  A Boolean value indicating whether or not the control key was
  /// down when the touch event was fired.
  ///
  external bool get ctrlKey;

  ///  A Boolean value indicating whether or not the shift key was down
  /// when the touch event was fired.
  ///
  external bool get shiftKey;
}

enum TouchType { direct, stylus }

@anonymous
@JS()
@staticInterop
class TouchInit {
  external factory TouchInit(
      {int identifier,
      EventTarget target,
      double clientX = 0,
      double clientY = 0,
      double screenX = 0,
      double screenY = 0,
      double pageX = 0,
      double pageY = 0,
      double radiusX = 0,
      double radiusY = 0,
      double rotationAngle = 0,
      double force = 0,
      double altitudeAngle = 0,
      double azimuthAngle = 0,
      TouchType touchType = TouchType.direct});
}

extension PropsTouchInit on TouchInit {
  external int get identifier;
  external set identifier(int newValue);
  external EventTarget get target;
  external set target(EventTarget newValue);
  external double get clientX;
  external set clientX(double newValue);
  external double get clientY;
  external set clientY(double newValue);
  external double get screenX;
  external set screenX(double newValue);
  external double get screenY;
  external set screenY(double newValue);
  external double get pageX;
  external set pageX(double newValue);
  external double get pageY;
  external set pageY(double newValue);
  external double get radiusX;
  external set radiusX(double newValue);
  external double get radiusY;
  external set radiusY(double newValue);
  external double get rotationAngle;
  external set rotationAngle(double newValue);
  external double get force;
  external set force(double newValue);
  external double get altitudeAngle;
  external set altitudeAngle(double newValue);
  external double get azimuthAngle;
  external set azimuthAngle(double newValue);
  external TouchType get touchType;
  external set touchType(TouchType newValue);
}

@anonymous
@JS()
@staticInterop
class TouchEventInit implements EventModifierInit {
  external factory TouchEventInit(
      {Iterable<Touch> touches = const [],
      Iterable<Touch> targetTouches = const [],
      Iterable<Touch> changedTouches = const []});
}

extension PropsTouchEventInit on TouchEventInit {
  external Iterable<Touch> get touches;
  external set touches(Iterable<Touch> newValue);
  external Iterable<Touch> get targetTouches;
  external set targetTouches(Iterable<Touch> newValue);
  external Iterable<Touch> get changedTouches;
  external set changedTouches(Iterable<Touch> newValue);
}
