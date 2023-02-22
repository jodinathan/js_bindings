/// Keyboard Map
///
/// https://wicg.github.io/keyboard-map/

// ignore_for_file: unused_import

@JS('self')
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
class KeyboardLayoutMap extends JsMap<String, String> {
  external factory KeyboardLayoutMap();
}
