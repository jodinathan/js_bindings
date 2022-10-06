/// CSS Pseudo-Elements Module Level 4
///
/// https://drafts.csswg.org/css-pseudo-4/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_pseudo_4;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents a pseudo-element that may be the target
/// of an event or animated using the Web Animations API. Instances
/// of this interface may be obtained by calling [Element.pseudo()].
///
///
///
///    EventTarget
///
///
///
///
///
///    CSSPseudoElement
///
///
@experimental
@JS()
@staticInterop
class CSSPseudoElement implements EventTarget, GeometryUtils {
  external factory CSSPseudoElement();
}

extension PropsCSSPseudoElement on CSSPseudoElement {
  String get type => js_util.getProperty(this, 'type');
  Element get element => js_util.getProperty(this, 'element');
  dynamic get parent => js_util.getProperty(this, 'parent');
  CSSPseudoElement? pseudo(String type) =>
      js_util.callMethod(this, 'pseudo', [type]);
}
