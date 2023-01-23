/// CSS View Transitions Module Level 1
///
/// https://drafts.csswg.org/css-view-transitions-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_view_transitions_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ViewTransition {
  external factory ViewTransition();
}

extension PropsViewTransition on ViewTransition {
  void skipTransition() => js_util.callMethod(this, 'skipTransition', []);

  Future<void> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
  Future<void> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<void> get updateCallbackDone =>
      js_util.promiseToFuture(js_util.getProperty(this, 'updateCallbackDone'));
}
