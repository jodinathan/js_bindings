/// Battery Status API
///
/// https://w3c.github.io/battery/
@JS('window')
library battery_status;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface of the Battery Status API provides information
/// about the system's battery charge level. The
/// [navigator.getBattery()] method returns a promise that resolves
/// with a interface.
@deprecated
@JS()
class BatteryManager // null -> {} -> EventTarget
    with
        EventTarget {
  ///  A Boolean value indicating whether the battery is currently
  /// being charged.
  external bool get charging;

  ///  A number representing the remaining time in seconds until the
  /// battery is fully charged, or 0 if the battery is already fully
  /// charged.
  external /* double | NaN */ dynamic get chargingTime;

  ///  A number representing the remaining time in seconds until the
  /// battery is completely discharged and the system suspends.
  external /* double | NaN */ dynamic get dischargingTime;

  ///  A number representing the system's battery charge level scaled
  /// to a value between 0.0 and 1.0.
  external double get level;
  external EventHandlerNonNull? get onchargingchange;
  external set onchargingchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onchargingtimechange;
  external set onchargingtimechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondischargingtimechange;
  external set ondischargingtimechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onlevelchange;
  external set onlevelchange(EventHandlerNonNull? newValue);

  external factory BatteryManager();
}
