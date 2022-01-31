/// Keyboard Map
///
/// https://wicg.github.io/keyboard-map/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library keyboard_map;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Keyboard API is a map-like object with
/// functions for retrieving the string associated with specific
/// physical keys.
///  A list of valid keys is found in the UI Events KeyboardEvent
/// code Values specification.
@experimental
@JS()
@staticInterop
class KeyboardLayoutMap {
  external KeyboardLayoutMap();
}

extension PropsKeyboardLayoutMap on KeyboardLayoutMap {
  String operator [](String index) => js_util.getProperty(this, index);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Keyboard API provides functions that
/// retrieve keyboard layout maps and toggle capturing of key presses
/// from the physical keyboard.
///  A list of valid code values is found in the UI Events
/// KeyboardEvent code Values spec.
@experimental
@JS()
@staticInterop
class Keyboard {
  external Keyboard();
}

extension PropsKeyboard on Keyboard {
  ///  Returns a [Future] that resolves with an instance of
  /// [KeyboardLayoutMap] which is a map-like object with functions for
  /// retrieving the strings associated with specific physical keys.
  ///
  /// var promise = Keyboard.getLayoutMap()
  ///
  ///
  ///  The following example demonstrates how to get the location- or layout-specific string
  ///  associated with the key that corresponds to the 'W' key on an English QWERTY keyboard.
  ///
  /// var keyboard = navigator.keyboard;
  /// keyboard.getLayoutMap()
  /// .then(keyboardLayoutMap => {
  ///  var upKey = keyboardLayoutMap.get('KeyW');
  ///  window.alert('Press ' + upKey + ' to move up.');
  /// })
  ///
  @experimental
  Future<KeyboardLayoutMap> getLayoutMap() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getLayoutMap', []));
}
