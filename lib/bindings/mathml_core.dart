/// MathML Core
///
/// https://mathml-refresh.github.io/mathml-core/
@JS('window')
library mathml_core;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'cssom_1.dart';

///
///
/// The interface represents any MathML element.
@JS()
class MathMLElement extends Element {
  external factory MathMLElement();
}
