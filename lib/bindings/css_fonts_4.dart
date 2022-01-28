/// CSS Fonts Module Level 4
///
/// https://drafts.csswg.org/css-fonts-4/
@JS('window')
@staticInterop
library css_fonts_4;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

/// The interface represents an [@font-face] [at-rule].
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSFontFaceRule
///
///
@JS()
@staticInterop
class CSSFontFaceRule implements CSSRule {
  external factory CSSFontFaceRule();
}

extension PropsCSSFontFaceRule on CSSFontFaceRule {
  /// Returns a [CSSStyleDeclaration].
  ///
  external CSSStyleDeclaration get style;
}

@JS()
@staticInterop
class CSSFontFeatureValuesRule implements CSSRule {
  external factory CSSFontFeatureValuesRule();
}

extension PropsCSSFontFeatureValuesRule on CSSFontFeatureValuesRule {
  external String get fontFamily;
  external set fontFamily(String newValue);
  external CSSFontFeatureValuesMap get annotation;
  external CSSFontFeatureValuesMap get ornaments;
  external CSSFontFeatureValuesMap get stylistic;
  external CSSFontFeatureValuesMap get swash;
  external CSSFontFeatureValuesMap get characterVariant;
  external CSSFontFeatureValuesMap get styleset;
}

@JS()
@staticInterop
class CSSFontFeatureValuesMap {
  external factory CSSFontFeatureValuesMap();
}

extension PropsCSSFontFeatureValuesMap on CSSFontFeatureValuesMap {
  @JS('set')
  @staticInterop
  external Object mSet(String featureValueName, dynamic values);
}

@JS()
@staticInterop
class CSSFontPaletteValuesRule implements CSSRule {
  external factory CSSFontPaletteValuesRule();
}

extension PropsCSSFontPaletteValuesRule on CSSFontPaletteValuesRule {
  external String get fontFamily;
  external set fontFamily(String newValue);
  external String get basePalette;
  external set basePalette(String newValue);
}
