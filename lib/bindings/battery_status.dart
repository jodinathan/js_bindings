/// Battery Status API
///
/// https://w3c.github.io/battery/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library battery_status;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
///
///
///
///    EventTarget
///
///
///
///
///
///    BatteryManager
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class BatteryManager implements EventTarget {
  external factory BatteryManager();
}

extension PropsBatteryManager on BatteryManager {
  bool get charging => js_util.getProperty(this, 'charging');
/* double | NaN */ dynamic get chargingTime =>
      js_util.getProperty(this, 'chargingTime');
/* double | NaN */ dynamic get dischargingTime =>
      js_util.getProperty(this, 'dischargingTime');
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
