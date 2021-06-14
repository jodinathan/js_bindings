/// Keyboard Lock
///
/// https://wicg.github.io/keyboard-lock/
@JS('window')
library keyboard_lock;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'keyboard_map.dart';

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
  ///  Returns a [Promise] after enabling the capture of keypresses for
  /// any or all of the keys on the physical keyboard.
  /// var promise = Keyboard.lock([keyCodes[]])
  @experimental
  external Promise<Object> lock([Iterable<String>? keyCodes = const []]);

  ///  Unlocks all keys captured by the [lock()] method and returns
  /// synchronously.
  /// Keyboard.unlock()
  @experimental
  external Object unlock();

  external factory Keyboard();
}
