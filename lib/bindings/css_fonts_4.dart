/// CSS Fonts Module Level 4
///
/// https://drafts.csswg.org/css-fonts-4/
@JS('window')
library css_fonts_4;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';

///
///
/// The interface represents an [@font-face] [at-rule].
///
///
@JS()
class CSSFontFaceRule extends CSSRule {
  /// Returns a [CSSStyleDeclaration].
  external CSSStyleDeclaration get style;

  external factory CSSFontFaceRule();
}

@JS()
class CSSFontFeatureValuesRule extends CSSRule {
  external String get fontFamily;
  external set fontFamily(String newValue);
  external CSSFontFeatureValuesMap get annotation;
  external CSSFontFeatureValuesMap get ornaments;
  external CSSFontFeatureValuesMap get stylistic;
  external CSSFontFeatureValuesMap get swash;
  external CSSFontFeatureValuesMap get characterVariant;
  external CSSFontFeatureValuesMap get styleset;

  external factory CSSFontFeatureValuesRule();
}

@JS()
class CSSFontFeatureValuesMap {
  external Iterable<int> operator [](String index);
  @JS('set')
  external Object mSet(String featureValueName, dynamic values);

  external factory CSSFontFeatureValuesMap();
}

@JS()
class CSSFontPaletteValuesRule extends CSSRule {
  external String operator [](int index);
  external String get fontFamily;
  external set fontFamily(String newValue);
  external String get basePalette;
  external set basePalette(String newValue);

  external factory CSSFontPaletteValuesRule();
}
