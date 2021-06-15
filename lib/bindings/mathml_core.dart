/// MathML Core
///
/// https://mathml-refresh.github.io/mathml-core/
@JS('window')
library mathml_core;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';
import 'html.dart';
import 'dom.dart';

///
///
/// The interface represents any MathML element.
@JS()
class MathMLElement // Node -> {web_animations_1: {Animatable, ARIAMixin, GeometryUtils, Region, ParentNode, NonDocumentTypeChildNode, ChildNode, Slottable, InnerHTML}, wai_aria_1_2: {ARIAMixin}, cssom_view_1: {GeometryUtils}, css_regions_1: {Region}, dom: {ParentNode, NonDocumentTypeChildNode, ChildNode, Slottable}, d_o_m_parsing: {InnerHTML}} -> Element
    extends Element
    with
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers {
  external factory MathMLElement();
}
