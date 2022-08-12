/// Early detection of input events
///
/// https://wicg.github.io/is-input-pending/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library is_input_pending;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class IsInputPendingOptions {
  external factory IsInputPendingOptions({bool? includeContinuous = false});
}

extension PropsIsInputPendingOptions on IsInputPendingOptions {
  bool get includeContinuous => js_util.getProperty(this, 'includeContinuous');
  set includeContinuous(bool newValue) {
    js_util.setProperty(this, 'includeContinuous', newValue);
  }
}

@JS()
@staticInterop
class Scheduling {
  external factory Scheduling();
}

extension PropsScheduling on Scheduling {
  bool isInputPending([IsInputPendingOptions? isInputPendingOptions]) =>
      js_util.callMethod(this, 'isInputPending', [isInputPendingOptions]);
}
