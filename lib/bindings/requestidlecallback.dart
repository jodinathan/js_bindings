/// Cooperative Scheduling of Background Tasks
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

@JS()
@staticInterop
class IdleDeadline {
  external IdleDeadline();
}

extension PropsIdleDeadline on IdleDeadline {
  double timeRemaining() => js_util.callMethod(this, 'timeRemaining', []);

  bool get didTimeout => js_util.getProperty(this, 'didTimeout');
}
