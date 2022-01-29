/// CSS Fonts Module Level 4
///
/// https://drafts.csswg.org/css-fonts-4/
@JS('window')
@staticInterop
library css_fonts_4;

import 'dart:js_util' as js_util;
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
  external CSSFontFaceRule();
}

extension PropsCSSFontFaceRule on CSSFontFaceRule {
  /// Returns a [CSSStyleDeclaration].
  ///
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

@JS()
@staticInterop
class CSSFontFeatureValuesRule implements CSSRule {
  external CSSFontFeatureValuesRule();
}

extension PropsCSSFontFeatureValuesRule on CSSFontFeatureValuesRule {
  String get fontFamily => js_util.getProperty(this, 'fontFamily');
  set fontFamily(String newValue) {
    js_util.setProperty(this, 'fontFamily', newValue);
  }

  CSSFontFeatureValuesMap get annotation =>
      js_util.getProperty(this, 'annotation');
  CSSFontFeatureValuesMap get ornaments =>
      js_util.getProperty(this, 'ornaments');
  CSSFontFeatureValuesMap get stylistic =>
      js_util.getProperty(this, 'stylistic');
  CSSFontFeatureValuesMap get swash => js_util.getProperty(this, 'swash');
  CSSFontFeatureValuesMap get characterVariant =>
      js_util.getProperty(this, 'characterVariant');
  CSSFontFeatureValuesMap get styleset => js_util.getProperty(this, 'styleset');
}

@JS()
@staticInterop
class CSSFontFeatureValuesMap {
  external CSSFontFeatureValuesMap();
}

extension PropsCSSFontFeatureValuesMap on CSSFontFeatureValuesMap {
  @JS('set')
  @staticInterop
  Object mSet(String featureValueName, dynamic values) =>
      js_util.callMethod(this, 'set', [featureValueName, values]);
}

@JS()
@staticInterop
class CSSFontPaletteValuesRule implements CSSRule {
  external CSSFontPaletteValuesRule();
}

extension PropsCSSFontPaletteValuesRule on CSSFontPaletteValuesRule {
  String get fontFamily => js_util.getProperty(this, 'fontFamily');
  set fontFamily(String newValue) {
    js_util.setProperty(this, 'fontFamily', newValue);
  }

  String get basePalette => js_util.getProperty(this, 'basePalette');
  set basePalette(String newValue) {
    js_util.setProperty(this, 'basePalette', newValue);
  }
}
