/// Custom State Pseudo Class
///
/// https://wicg.github.io/custom-state-pseudo-class/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library custom_state_pseudo_class;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Document Object Model stores a list of
/// possible states for a custom element to be in, and allows states
/// to be added and removed from the set.
@JS()
@staticInterop
class CustomStateSet extends JsArray<String> {
  external factory CustomStateSet();
}

extension PropsCustomStateSet on CustomStateSet {
  Object add(String value) => js_util.callMethod(this, 'add', [value]);
}
