/// Screen Orientation
///
/// https://w3c.github.io/screen-orientation/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library screen_orientation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Screen Orientation API provides information
/// about the current orientation of the document.
///  A instance object can be retrieved using the
/// [screen.orientation] property.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    ScreenOrientation
///
///
@JS()
@staticInterop
class ScreenOrientation implements EventTarget {
  external factory ScreenOrientation();
}

extension PropsScreenOrientation on ScreenOrientation {
  Future<void> lock(OrientationLockType orientation) => js_util
      .promiseToFuture(js_util.callMethod(this, 'lock', [orientation.value]));

  void unlock() => js_util.callMethod(this, 'unlock', []);

  OrientationType get type =>
      OrientationType.fromValue(js_util.getProperty(this, 'type'));
  int get angle => js_util.getProperty(this, 'angle');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum OrientationLockType {
  any('any'),
  natural('natural'),
  landscape('landscape'),
  portrait('portrait'),
  portraitPrimary('portrait-primary'),
  portraitSecondary('portrait-secondary'),
  landscapePrimary('landscape-primary'),
  landscapeSecondary('landscape-secondary');

  final String value;
  static OrientationLockType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OrientationLockType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const OrientationLockType(this.value);
}

enum OrientationType {
  portraitPrimary('portrait-primary'),
  portraitSecondary('portrait-secondary'),
  landscapePrimary('landscape-primary'),
  landscapeSecondary('landscape-secondary');

  final String value;
  static OrientationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OrientationType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const OrientationType(this.value);
}
