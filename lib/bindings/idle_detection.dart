/// Idle Detection API
///
/// https://wicg.github.io/idle-detection/
@JS('window')
library idle_detection;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

@JS()
enum UserIdleState { active, idle }

@JS()
enum ScreenIdleState { locked, unlocked }

@anonymous
@JS()
class IdleOptions {
  external int get threshold;
  external set threshold(int newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);

  external factory IdleOptions({int threshold, AbortSignal signal});
}

@JS()
class IdleDetector extends EventTarget {
  external factory IdleDetector();
  external UserIdleState? get userState;
  external ScreenIdleState? get screenState;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external static Promise<PermissionState> requestPermission();
  external Promise<Object> start([IdleOptions? options]);
}
