/// Idle Detection API
///
/// https://wicg.github.io/idle-detection/
@JS('window')
@staticInterop
library idle_detection;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
permissions */

enum UserIdleState { active, idle }

enum ScreenIdleState { locked, unlocked }

@anonymous
@JS()
@staticInterop
class IdleOptions {
  external factory IdleOptions({int threshold, AbortSignal signal});
}

extension PropsIdleOptions on IdleOptions {
  external int get threshold;
  external set threshold(int newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
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
  external factory IdleDetector();
}

extension PropsIdleDetector on IdleDetector {
  external UserIdleState? get userState;

  ///
  ///     Returns a string indicating whether the screen is locked, one
  /// of
  ///     ["locked"] or ["unlocked"]. This attribute returns [null]
  /// before [start()]
  ///    is called.
  ///
  ///
  external ScreenIdleState? get screenState;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  ///
  ///    Returns a [Promise] that resolves when the user has chosen
  ///     whether to grant the origin access to their idle state.
  /// Resolves with
  ///    ["granted"] on acceptance and ["denied"] on refusal.
  ///
  ///
  /// IdleDetector.requestPermission()
  ///
  external static Promise<PermissionState> requestPermission();

  ///
  ///     Returns a [Promise] that resolves when the detector starts
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
  external Promise<Object> start([IdleOptions? options]);
}
