/// Keyboard Map
///
/// https://wicg.github.io/keyboard-map/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library keyboard_map;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class KeyboardLayoutMap extends JsMap<String, String> {
  external KeyboardLayoutMap();
}
