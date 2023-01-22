/// CSS Fonts Module Level 4
///
/// https://drafts.csswg.org/css-fonts-4/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_fonts_4;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

/// The interface represents an [@font-face] at-rule.
///
///
///
///    CSSRule
///
///
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
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

@JS()
@staticInterop
class CSSFontFeatureValuesRule implements CSSRule {
  external factory CSSFontFeatureValuesRule();
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
class CSSFontFeatureValuesMap extends JsMap<Iterable<int>, String> {
  external factory CSSFontFeatureValuesMap();
}

extension PropsCSSFontFeatureValuesMap on CSSFontFeatureValuesMap {
  @JS('set')
  @staticInterop
  void mSet(String featureValueName, dynamic values) =>
      js_util.callMethod(this, 'set', [featureValueName, values]);
}

@JS()
@staticInterop
class CSSFontPaletteValuesRule implements CSSRule {
  external factory CSSFontPaletteValuesRule();
}

extension PropsCSSFontPaletteValuesRule on CSSFontPaletteValuesRule {
  String get name => js_util.getProperty(this, 'name');
  String get fontFamily => js_util.getProperty(this, 'fontFamily');
  String get basePalette => js_util.getProperty(this, 'basePalette');
  String get overrideColors => js_util.getProperty(this, 'overrideColors');
}
