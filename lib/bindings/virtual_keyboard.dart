/// VirtualKeyboard API
///
/// https://w3c.github.io/virtual-keyboard/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library virtual_keyboard;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class VirtualKeyboard implements EventTarget {
  external factory VirtualKeyboard();
}

extension PropsVirtualKeyboard on VirtualKeyboard {
  @JS('show')
  @staticInterop
  Object mShow() => js_util.callMethod(this, 'show', []);

  @JS('hide')
  @staticInterop
  Object mHide() => js_util.callMethod(this, 'hide', []);

  DOMRect get boundingRect => js_util.getProperty(this, 'boundingRect');
  bool get overlaysContent => js_util.getProperty(this, 'overlaysContent');
  set overlaysContent(bool newValue) {
    js_util.setProperty(this, 'overlaysContent', newValue);
  }

  EventHandlerNonNull? get ongeometrychange =>
      js_util.getProperty(this, 'ongeometrychange');
  set ongeometrychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongeometrychange', newValue);
  }
}
