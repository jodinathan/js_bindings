/// The Capture-Handle Actions Mechanism
///
/// https://w3c.github.io/mediacapture-handle/actions/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library mediacapture_handle_actions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum CaptureAction {
  next('next'),
  previous('previous'),
  first('first'),
  last('last');

  final String value;
  static CaptureAction fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CaptureAction> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CaptureAction(this.value);
}

@JS()
@staticInterop
class CaptureActionEvent implements Event {
  external factory CaptureActionEvent([CaptureActionEventInit? init]);
}

extension PropsCaptureActionEvent on CaptureActionEvent {
  CaptureAction get action =>
      CaptureAction.fromValue(js_util.getProperty(this, 'action'));
}

@anonymous
@JS()
@staticInterop
class CaptureActionEventInit implements EventInit {
  external factory CaptureActionEventInit({String? action});
}

extension PropsCaptureActionEventInit on CaptureActionEventInit {
  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }
}
