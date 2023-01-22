/// The <model> element
///
/// https://immersive-web.github.io/model-element/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library model_element;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class HTMLModelElement implements HTMLElement {
  external factory HTMLModelElement();
}
