/// CSS Animations Level 2
///
/// https://drafts.csswg.org/css-animations-2/
@JS('window')
@staticInterop
library css_animations_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: web_animations_1 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Animations API represents an
/// [Animation] object.
@JS()
@staticInterop
class CSSAnimation implements Animation {
  external factory CSSAnimation();
}

extension PropsCSSAnimation on CSSAnimation {
  /// Returns the animation name as a [CSSOMString].
  ///
  external String get animationName;
}
