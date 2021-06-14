/// CSS Pseudo-Elements Module Level 4
///
/// https://drafts.csswg.org/css-pseudo-4/
@JS('window')
library css_pseudo_4;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'cssom_view_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface represents a pseudo-element that may be the target
/// of an event or animated using the Web Animations API. Instances
/// of this interface may be obtained by calling [Element.pseudo()].
@experimental
@JS()
class CSSPseudoElement extends EventTarget {
  /// Returns the pseudo-element selector as a [CSSOMString].
  @experimental
  external String get type;

  /// Returns the originating/parent [Element] of the pseudo-element.
  @experimental
  external Element get element;

  external factory CSSPseudoElement();
}
