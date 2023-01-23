/// VirtualKeyboard API
///
/// https://w3c.github.io/virtual-keyboard/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library virtual_keyboard;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the VirtualKeyboard API is useful on devices
/// that have on-screen virtual keyboards, such as tablets, mobile
/// phones, or other devices where a hardware keyboard may not be
/// available.
///  The interface makes it possible to opt out of the automatic way
/// browsers handle on-screen virtual keyboards by reducing the
/// height of the viewport to make room for the virtual keyboard. You
/// can prevent the browser from changing the size of the viewport,
/// detect the position and size of the virtual keyboard — adapting
/// the layout of your web page as a follow-up — and programmatically
/// show or hide the virtual keyboard.
/// You access the interface by using [navigator.virtualKeyboard].
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
///    VirtualKeyboard
///
///
@experimental
@JS()
@staticInterop
class VirtualKeyboard implements EventTarget {
  external factory VirtualKeyboard();
}

extension PropsVirtualKeyboard on VirtualKeyboard {
  @JS('show')
  @staticInterop
  void mShow() => js_util.callMethod(this, 'show', []);

  @JS('hide')
  @staticInterop
  void mHide() => js_util.callMethod(this, 'hide', []);

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
