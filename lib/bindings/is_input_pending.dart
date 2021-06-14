/// Early detection of input events
///
/// https://wicg.github.io/is-input-pending/
@JS('window')
library is_input_pending;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@anonymous
@JS()
class IsInputPendingOptions {
  external bool get includeContinuous;
  external set includeContinuous(bool newValue);

  external factory IsInputPendingOptions({bool includeContinuous = false});
}

@JS()
class Scheduling {
  external bool isInputPending([IsInputPendingOptions? isInputPendingOptions]);

  external factory Scheduling();
}
