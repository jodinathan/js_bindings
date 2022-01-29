/// Battery Status API
///
/// https://w3c.github.io/battery/
@JS('window')
@staticInterop
library battery_status;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface of the Battery Status API provides information
/// about the system's battery charge level. The
/// [navigator.getBattery()] method returns a promise that resolves
/// with a interface.
@deprecated
@JS()
@staticInterop
class BatteryManager implements EventTarget {
  external BatteryManager();
}

extension PropsBatteryManager on BatteryManager {
  ///  A Boolean value indicating whether the battery is currently
  /// being charged.
  ///
  bool get charging => js_util.getProperty(this, 'charging');

  ///  A number representing the remaining time in seconds until the
  /// battery is fully charged, or 0 if the battery is already fully
  /// charged.
  ///
  /* double | NaN */ dynamic get chargingTime =>
      js_util.getProperty(this, 'chargingTime');

  ///  A number representing the remaining time in seconds until the
  /// battery is completely discharged and the system suspends.
  ///
  /* double | NaN */ dynamic get dischargingTime =>
      js_util.getProperty(this, 'dischargingTime');

  ///  A number representing the system's battery charge level scaled
  /// to a value between 0.0 and 1.0.
  ///
  double get level => js_util.getProperty(this, 'level');
  EventHandlerNonNull? get onchargingchange =>
      js_util.getProperty(this, 'onchargingchange');
  set onchargingchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchargingchange', newValue);
  }

  EventHandlerNonNull? get onchargingtimechange =>
      js_util.getProperty(this, 'onchargingtimechange');
  set onchargingtimechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchargingtimechange', newValue);
  }

  EventHandlerNonNull? get ondischargingtimechange =>
      js_util.getProperty(this, 'ondischargingtimechange');
  set ondischargingtimechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondischargingtimechange', newValue);
  }

  EventHandlerNonNull? get onlevelchange =>
      js_util.getProperty(this, 'onlevelchange');
  set onlevelchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlevelchange', newValue);
  }
}
