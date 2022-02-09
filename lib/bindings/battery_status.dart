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

@JS()
@staticInterop
class BatteryManager implements EventTarget {
  external BatteryManager();
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
