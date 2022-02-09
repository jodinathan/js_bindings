/// MathML Core
///
/// https://w3c.github.io/mathml-core/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mathml_core;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class MathMLElement
    implements
        Element,
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers,
        HTMLOrSVGElement {
  external MathMLElement();
}
