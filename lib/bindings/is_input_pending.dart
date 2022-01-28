/// Early detection of input events
///
/// https://wicg.github.io/is-input-pending/
@JS('window')
@staticInterop
library is_input_pending;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

@anonymous
@JS()
@staticInterop
class IsInputPendingOptions {
  external factory IsInputPendingOptions({bool includeContinuous = false});
}

extension PropsIsInputPendingOptions on IsInputPendingOptions {
  external bool get includeContinuous;
  external set includeContinuous(bool newValue);
}

@JS()
@staticInterop
class Scheduling {
  external factory Scheduling();
}

extension PropsScheduling on Scheduling {
  external bool isInputPending([IsInputPendingOptions? isInputPendingOptions]);
}
