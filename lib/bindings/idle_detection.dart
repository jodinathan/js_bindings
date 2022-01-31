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
  external factory IdleOptions({int threshold, AbortSignal signal});
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
@JS()
@staticInterop
class IdleDetector implements EventTarget {
  external IdleDetector();
}

extension PropsIdleDetector on IdleDetector {
  UserIdleState? get userState => js_util.getProperty(this, 'userState');

  ///
  ///     Returns a string indicating whether the screen is locked, one
  /// of
  ///     ["locked"] or ["unlocked"]. This attribute returns [null]
  /// before [start()]
  ///    is called.
  ///
  ///
  ScreenIdleState? get screenState => js_util.getProperty(this, 'screenState');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  ///
  ///    Returns a [Future] that resolves when the user has chosen
  ///     whether to grant the origin access to their idle state.
  /// Resolves with
  ///    ["granted"] on acceptance and ["denied"] on refusal.
  ///
  ///
  /// IdleDetector.requestPermission()
  ///
  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(IdleDetector, 'requestPermission', []));

  ///
  ///     Returns a [Future] that resolves when the detector starts
  /// listening for
  ///     changes in the user's idle state. [userState] and
  /// [screenState] are given
  ///     initial values. This method takes an optional [options]
  /// object with the [threshold] in
  ///     milliseconds where inactivity should be reported and [signal]
  /// for an
  ///    [AbortSignal] to abort the idle detector.
  ///
  ///
  /// IdleDetector.start();
  /// IdleDetector.start(options);
  ///
  Future<Object> start(
          [

          /// An object with the following properties:
          ///
          ///     [threshold]: The minimum number of idle milliseconds before
          /// reporting should begin.
          ///     [signal]: A reference to an [AbortSignal] instance allowing
          /// you to abort idel detection.
          ///
          ///
          IdleOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'start', [options]));
}
