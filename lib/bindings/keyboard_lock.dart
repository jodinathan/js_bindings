/// Keyboard Lock
///
/// https://wicg.github.io/keyboard-lock/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library keyboard_lock;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Keyboard API provides functions that
/// retrieve keyboard layout maps and toggle capturing of key presses
/// from the physical keyboard.
///  A list of valid code values is found in the UI Events
/// KeyboardEvent code Values spec.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Keyboard
///
///
@experimental
@JS()
@staticInterop
class Keyboard implements EventTarget {
  external factory Keyboard();
}

extension PropsKeyboard on Keyboard {
  Future<void> lock([Iterable<String>? keyCodes = const []]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'lock', [keyCodes]));

  void unlock() => js_util.callMethod(this, 'unlock', []);

  Future<KeyboardLayoutMap> getLayoutMap() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getLayoutMap', []));

  EventHandlerNonNull? get onlayoutchange =>
      js_util.getProperty(this, 'onlayoutchange');
  set onlayoutchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlayoutchange', newValue);
  }
}
