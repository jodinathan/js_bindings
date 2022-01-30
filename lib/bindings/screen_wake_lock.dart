/// Screen Wake Lock API
///
/// https://w3c.github.io/screen-wake-lock/
@JS('window')
@staticInterop
library screen_wake_lock;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Screen Wake Lock API] prevents device
/// screens from dimming or locking when an application needs to keep
/// running.
///  The system wake lock is exposed through the global
/// [Navigator.wakeLock] property.
@JS()
@staticInterop
class WakeLock {
  external WakeLock();
}

extension PropsWakeLock on WakeLock {
  Future<WakeLockSentinel> request(
          [WakeLockType? type = WakeLockType.screen]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'request', [type]));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Screen Wake Lock API] provides a handle to
/// the underlying platform wake lock and can be manually released
/// and reacquired. An [Object] representing the wake lock is
/// returned via the [navigator.wakelock.request()] method.
///  An acquired can be released manually via the [release()] method,
/// or automatically via the platform wake lock. This can happen if
/// the document becomes inactive or looses visibility, if the device
/// is low on power or the user turns on a power save mode. Releasing
/// all instances of a given wake lock type will cause the underlying
/// platform wake lock to be released.
@JS()
@staticInterop
class WakeLockSentinel implements EventTarget {
  external WakeLockSentinel();
}

extension PropsWakeLockSentinel on WakeLockSentinel {
  ///  Returns a boolean indicating whether the [WakeLockSentinel] has
  /// been released.
  ///
  bool get released => js_util.getProperty(this, 'released');

  ///
  ///     Returns a [String] representation of the currently acquired
  /// [WakeLockSentinel] type.
  ///    Return values are:
  ///
  ///
  ///     ['screen']: A screen wake lock. Prevents devices from dimming
  /// or locking the screen.
  ///
  ///
  WakeLockType get type => js_util.getProperty(this, 'type');

  ///  Releases the [WakeLockSentinel], returning a [Promise] that is
  /// resolved once the sentinel has been successfully released.
  ///
  /// WakeLockSentinel.release().then(...);
  ///
  Future<Object> release() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'release', []));

  EventHandlerNonNull? get onrelease => js_util.getProperty(this, 'onrelease');
  set onrelease(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrelease', newValue);
  }
}

enum WakeLockType { screen }
