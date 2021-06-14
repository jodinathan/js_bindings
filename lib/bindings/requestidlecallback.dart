/// Cooperative Scheduling of Background Tasks
///
/// https://w3c.github.io/requestidlecallback/
@JS('window')
library requestidlecallback;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'hr_time_3.dart';

@anonymous
@JS()
class IdleRequestOptions {
  external int get timeout;
  external set timeout(int newValue);

  external factory IdleRequestOptions({int timeout});
}

///
///  The interface is used as the data type of the input parameter to
/// idle callbacks established by calling
/// [Window.requestIdleCallback()]. It offers a method,
/// [timeRemaining()], which lets you determine how much longer the
/// user agent estimates it will remain idle and a property,
/// [didTimeout], which lets you determine if your callback is
/// executing because its timeout duration expired.
///
///  To learn more about how request callbacks work, see
/// Collaborative Scheduling of Background Tasks.
///
@JS()
class IdleDeadline {
  external double timeRemaining();

  ///  A Boolean whose value is [true] if the callback is being
  /// executed because the timeout specified when the idle callback was
  /// installed has expired.
  external bool get didTimeout;

  external factory IdleDeadline();
}
