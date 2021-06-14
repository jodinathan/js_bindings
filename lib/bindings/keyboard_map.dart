/// Keyboard Map
///
/// https://wicg.github.io/keyboard-map/
@JS('window')
library keyboard_map;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Keyboard API is a map-like object with
/// functions for retrieving the string associated with specific
/// physical keys. A list of valid keys is found in the UI Events
/// KeyboardEvent code Values specification.
@experimental
@JS()
class KeyboardLayoutMap {
  external String operator [](String index);

  external factory KeyboardLayoutMap();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Keyboard API provides functions that
/// retrieve keyboard layout maps and toggle capturing of key presses
/// from the physical keyboard.
///
///  A list of valid code values is found in the UI Events
/// KeyboardEvent code Values spec.
@experimental
@JS()
class Keyboard {
  ///  Returns a [Promise] that resolves with an instance of
  /// [KeyboardLayoutMap] which is a map-like object with functions for
  /// retrieving the strings associated with specific physical keys.
  /// var promise = Keyboard.getLayoutMap()
  /// The following example demonstrates how to get the location- or layout-specific string
  ///  associated with the key that corresponds to the 'W' key on an English QWERTY keyboard.
  /// var keyboard = navigator.keyboard;
  /// keyboard.getLayoutMap()
  /// .then(keyboardLayoutMap => {
  ///  var upKey = keyboardLayoutMap.get('KeyW');
  ///  window.alert('Press ' + upKey + ' to move up.');
  /// })
  @experimental
  external Promise<KeyboardLayoutMap> getLayoutMap();

  external factory Keyboard();
}
