/// CSS Animations Level 2
///
/// https://drafts.csswg.org/css-animations-2/
@JS('window')
library css_animations_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'web_animations_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Animations API represents an
/// [Animation] object.
@JS()
class CSSAnimation // EventTarget -> {} -> Animation
    extends Animation {
  /// Returns the animation name as a [CSSOMString].
  external String get animationName;

  external factory CSSAnimation();
}
