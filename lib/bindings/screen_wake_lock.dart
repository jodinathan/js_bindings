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

@JS()
@staticInterop
class WakeLock {
  external WakeLock();
}

extension PropsWakeLock on WakeLock {
  Future<WakeLockSentinel> request(
          [WakeLockType? type = WakeLockType.screen]) =>
      js_util
          .promiseToFuture(js_util.callMethod(this, 'request', [type?.name]));
}

@JS()
@staticInterop
class WakeLockSentinel implements EventTarget {
  external WakeLockSentinel();
}

extension PropsWakeLockSentinel on WakeLockSentinel {
  bool get released => js_util.getProperty(this, 'released');
  WakeLockType get type =>
      WakeLockType.values.byName(js_util.getProperty(this, 'type'));
  Future<Object> release() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'release', []));

  EventHandlerNonNull? get onrelease => js_util.getProperty(this, 'onrelease');
  set onrelease(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrelease', newValue);
  }
}

enum WakeLockType { screen }
