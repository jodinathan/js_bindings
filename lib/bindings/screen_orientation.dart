/// The Screen Orientation API
///
/// https://w3c.github.io/screen-orientation/

// ignore_for_file: unused_import

@JS('window')
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
      .promiseToFuture(js_util.callMethod(this, 'lock', [orientation.name]));

  void unlock() => js_util.callMethod(this, 'unlock', []);

  OrientationType get type =>
      OrientationType.values.byName(js_util.getProperty(this, 'type'));
  int get angle => js_util.getProperty(this, 'angle');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum OrientationLockType {
  any,
  natural,
  landscape,
  portrait,
  portraitPrimary,
  portraitSecondary,
  landscapePrimary,
  landscapeSecondary
}

enum OrientationType {
  portraitPrimary,
  portraitSecondary,
  landscapePrimary,
  landscapeSecondary
}
