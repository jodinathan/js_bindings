/// MathML Core
///
/// https://mathml-refresh.github.io/mathml-core/
@JS('window')
@staticInterop
library mathml_core;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1
html
dom */

/// The interface represents any MathML element.
@JS()
@staticInterop
class MathMLElement
    implements
        Element,
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers {
  external factory MathMLElement();
}
