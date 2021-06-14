/// CSS Device Adaptation Module Level 1
///
/// https://drafts.csswg.org/css-device-adapt/
@JS('window')
library css_device_adapt_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';

@JS()
class CSSViewportRule extends CSSRule {
  external CSSStyleDeclaration get style;

  external factory CSSViewportRule();
}
