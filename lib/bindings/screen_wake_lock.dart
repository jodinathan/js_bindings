/// Screen Wake Lock API
///
/// https://w3c.github.io/screen-wake-lock/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library screen_wake_lock;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external factory WakeLock();
}

extension PropsWakeLock on WakeLock {
  Future<WakeLockSentinel> request(
          [WakeLockType? type = WakeLockType.screen]) =>
      js_util
          .promiseToFuture(js_util.callMethod(this, 'request', [type?.name]));
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
///
///
///
///    EventTarget
///
///
///
///
///
///    WakeLockSentinel
///
///
@JS()
@staticInterop
class WakeLockSentinel implements EventTarget {
  external factory WakeLockSentinel();
}

extension PropsWakeLockSentinel on WakeLockSentinel {
  bool get released => js_util.getProperty(this, 'released');
  WakeLockType get type =>
      WakeLockType.values.byName(js_util.getProperty(this, 'type'));
  Future<void> release() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'release', []));

  EventHandlerNonNull? get onrelease => js_util.getProperty(this, 'onrelease');
  set onrelease(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrelease', newValue);
  }
}

enum WakeLockType { screen }
