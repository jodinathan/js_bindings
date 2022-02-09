/// Keyboard Lock
///
/// https://wicg.github.io/keyboard-lock/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library keyboard_lock;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Keyboard implements EventTarget {
  external Keyboard();
}

extension PropsKeyboard on Keyboard {
  Future<Object> lock([Iterable<String>? keyCodes = const []]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'lock', [keyCodes]));

  Object unlock() => js_util.callMethod(this, 'unlock', []);

  Future<KeyboardLayoutMap> getLayoutMap() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getLayoutMap', []));

  EventHandlerNonNull? get onlayoutchange =>
      js_util.getProperty(this, 'onlayoutchange');
  set onlayoutchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlayoutchange', newValue);
  }
}
