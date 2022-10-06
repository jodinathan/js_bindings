/// Idle Detection API
///
/// https://wicg.github.io/idle-detection/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library idle_detection;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum UserIdleState { active, idle }

enum ScreenIdleState { locked, unlocked }

@anonymous
@JS()
@staticInterop
class IdleOptions {
  external factory IdleOptions(
      {required int threshold, required AbortSignal signal});
}

extension PropsIdleOptions on IdleOptions {
  int get threshold => js_util.getProperty(this, 'threshold');
  set threshold(int newValue) {
    js_util.setProperty(this, 'threshold', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface of the Idle
///  Detection API provides methods and events for detecting user
/// activity on a device or screen.
/// This interface requires a secure context.
///
///
///
///    EventTarget
///
///
///
///
///
///    IdleDetector
///
///
@JS()
@staticInterop
class IdleDetector implements EventTarget {
  external factory IdleDetector();
}

extension PropsIdleDetector on IdleDetector {
  UserIdleState? get userState {
    final ret = js_util.getProperty(this, 'userState');

    return ret == null ? null : UserIdleState.values.byName(ret);
  }

  ScreenIdleState? get screenState {
    final ret = js_util.getProperty(this, 'screenState');

    return ret == null ? null : ScreenIdleState.values.byName(ret);
  }

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(IdleDetector, 'requestPermission', []));

  Future<void> start([IdleOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'start', [options]));
}
