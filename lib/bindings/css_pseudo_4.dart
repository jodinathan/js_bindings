/// CSS Pseudo-Elements Module Level 4
///
/// https://drafts.csswg.org/css-pseudo-4/
@JS('window')
@staticInterop
library css_pseudo_4;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_view_1
dom */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents a pseudo-element that may be the target
/// of an event or animated using the Web Animations API. Instances
/// of this interface may be obtained by calling [Element.pseudo()].
@experimental
@JS()
@staticInterop
class CSSPseudoElement implements EventTarget, GeometryUtils {
  external CSSPseudoElement();
}

extension PropsCSSPseudoElement on CSSPseudoElement {
  /// Returns the pseudo-element selector as a [CSSOMString].
  ///
  @experimental
  String get type => js_util.getProperty(this, 'type');

  /// Returns the originating/parent [Element] of the pseudo-element.
  ///
  @experimental
  Element get element => js_util.getProperty(this, 'element');
}
