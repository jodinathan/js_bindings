/// requestIdleCallback()
///
/// https://w3c.github.io/requestidlecallback/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library requestidlecallback;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class IdleRequestOptions {
  external factory IdleRequestOptions({required int timeout});
}

extension PropsIdleRequestOptions on IdleRequestOptions {
  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }
}

///  The interface is used as the data type of the input parameter to
/// idle callbacks established by calling
/// [Window.requestIdleCallback()]. It offers a method,
/// [timeRemaining()], which lets you determine how much longer the
/// user agent estimates it will remain idle and a property,
/// [didTimeout], which lets you determine if your callback is
/// executing because its timeout duration expired.
///  To learn more about how request callbacks work, see
/// Collaborative Scheduling of Background Tasks.
@JS()
@staticInterop
class IdleDeadline {
  external factory IdleDeadline();
}

extension PropsIdleDeadline on IdleDeadline {
  double timeRemaining() => js_util.callMethod(this, 'timeRemaining', []);

  bool get didTimeout => js_util.getProperty(this, 'didTimeout');
}
