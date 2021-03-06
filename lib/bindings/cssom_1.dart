/// CSS Object Model (CSSOM)
///
/// https://drafts.csswg.org/cssom/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cssom_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class MediaList {
  external MediaList();
}

extension PropsMediaList on MediaList {
  String get mediaText => js_util.getProperty(this, 'mediaText');
  set mediaText(String newValue) {
    js_util.setProperty(this, 'mediaText', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  Object appendMedium(String medium) =>
      js_util.callMethod(this, 'appendMedium', [medium]);

  Object deleteMedium(String medium) =>
      js_util.callMethod(this, 'deleteMedium', [medium]);
}

@JS()
@staticInterop
class StyleSheet {
  external StyleSheet();
}

extension PropsStyleSheet on StyleSheet {
  String get type => js_util.getProperty(this, 'type');
  String? get href => js_util.getProperty(this, 'href');
  dynamic get ownerNode => js_util.getProperty(this, 'ownerNode');
  CSSStyleSheet? get parentStyleSheet =>
      js_util.getProperty(this, 'parentStyleSheet');
  String? get title => js_util.getProperty(this, 'title');
  MediaList get media => js_util.getProperty(this, 'media');
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }
}

@JS()
@staticInterop
class CSSStyleSheet implements StyleSheet {
  external CSSStyleSheet([CSSStyleSheetInit? options]);
}

extension PropsCSSStyleSheet on CSSStyleSheet {
  CSSRule? get ownerRule => js_util.getProperty(this, 'ownerRule');
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);

  Future<CSSStyleSheet> replace(String text) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'replace', [text]));

  Object replaceSync(String text) =>
      js_util.callMethod(this, 'replaceSync', [text]);

  CSSRuleList get rules => js_util.getProperty(this, 'rules');
  int addRule(
          [String? selector = 'undefined',
          String? style = 'undefined',
          int? index]) =>
      js_util.callMethod(this, 'addRule', [selector, style, index]);

  Object removeRule([int? index = 0]) =>
      js_util.callMethod(this, 'removeRule', [index]);
}

@anonymous
@JS()
@staticInterop
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit(
      {required String baseURL, dynamic media, bool? disabled = false});
}

extension PropsCSSStyleSheetInit on CSSStyleSheetInit {
  String get baseURL => js_util.getProperty(this, 'baseURL');
  set baseURL(String newValue) {
    js_util.setProperty(this, 'baseURL', newValue);
  }

  dynamic get media => js_util.getProperty(this, 'media');
  set media(dynamic newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }
}

@JS()
@staticInterop
class StyleSheetList {
  external StyleSheetList();
}

extension PropsStyleSheetList on StyleSheetList {
  CSSStyleSheet? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class LinkStyle {
  external LinkStyle();
}

extension PropsLinkStyle on LinkStyle {
  CSSStyleSheet? get sheet => js_util.getProperty(this, 'sheet');
}

@JS()
@staticInterop
class CSSRuleList {
  external CSSRuleList();
}

extension PropsCSSRuleList on CSSRuleList {
  CSSRule? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class CSSRule {
  @JS('STYLE_RULE')
  external static int get styleRule;

  @JS('CHARSET_RULE')
  external static int get charsetRule;

  @JS('IMPORT_RULE')
  external static int get importRule;

  @JS('MEDIA_RULE')
  external static int get mediaRule;

  @JS('FONT_FACE_RULE')
  external static int get fontFaceRule;

  @JS('PAGE_RULE')
  external static int get pageRule;

  @JS('MARGIN_RULE')
  external static int get marginRule;

  @JS('NAMESPACE_RULE')
  external static int get namespaceRule;

  @JS('VIEWPORT_RULE')
  external static int get viewportRule;

  @JS('KEYFRAMES_RULE')
  external static int get keyframesRule;

  @JS('KEYFRAME_RULE')
  external static int get keyframeRule;

  @JS('SUPPORTS_RULE')
  external static int get supportsRule;

  @JS('COUNTER_STYLE_RULE')
  external static int get counterStyleRule;

  @JS('FONT_FEATURE_VALUES_RULE')
  external static int get fontFeatureValuesRule;

  external CSSRule();
}

extension PropsCSSRule on CSSRule {
  String get cssText => js_util.getProperty(this, 'cssText');
  set cssText(String newValue) {
    js_util.setProperty(this, 'cssText', newValue);
  }

  CSSRule? get parentRule => js_util.getProperty(this, 'parentRule');
  CSSStyleSheet? get parentStyleSheet =>
      js_util.getProperty(this, 'parentStyleSheet');
  int get type => js_util.getProperty(this, 'type');
}

@JS()
@staticInterop
class CSSStyleRule implements CSSRule {
  external CSSStyleRule();
}

extension PropsCSSStyleRule on CSSStyleRule {
  String get selectorText => js_util.getProperty(this, 'selectorText');
  set selectorText(String newValue) {
    js_util.setProperty(this, 'selectorText', newValue);
  }

  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
  StylePropertyMap get styleMap => js_util.getProperty(this, 'styleMap');
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);
}

@JS()
@staticInterop
class CSSImportRule implements CSSRule {
  external CSSImportRule();
}

extension PropsCSSImportRule on CSSImportRule {
  String get href => js_util.getProperty(this, 'href');
  MediaList get media => js_util.getProperty(this, 'media');
  CSSStyleSheet get styleSheet => js_util.getProperty(this, 'styleSheet');
  String? get layerName => js_util.getProperty(this, 'layerName');
}

@JS()
@staticInterop
class CSSGroupingRule implements CSSRule {
  external CSSGroupingRule();
}

extension PropsCSSGroupingRule on CSSGroupingRule {
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);
}

@JS()
@staticInterop
class CSSPageRule implements CSSGroupingRule {
  external CSSPageRule();
}

extension PropsCSSPageRule on CSSPageRule {
  String get selectorText => js_util.getProperty(this, 'selectorText');
  set selectorText(String newValue) {
    js_util.setProperty(this, 'selectorText', newValue);
  }

  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

@JS()
@staticInterop
class CSSMarginRule implements CSSRule {
  external CSSMarginRule();
}

extension PropsCSSMarginRule on CSSMarginRule {
  String get name => js_util.getProperty(this, 'name');
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

@JS()
@staticInterop
class CSSNamespaceRule implements CSSRule {
  external CSSNamespaceRule();
}

extension PropsCSSNamespaceRule on CSSNamespaceRule {
  String get namespaceURI => js_util.getProperty(this, 'namespaceURI');
  String get prefix => js_util.getProperty(this, 'prefix');
}

@JS()
@staticInterop
class CSSStyleDeclaration {
  external CSSStyleDeclaration();
}

extension PropsCSSStyleDeclaration on CSSStyleDeclaration {
  String get cssText => js_util.getProperty(this, 'cssText');
  set cssText(String newValue) {
    js_util.setProperty(this, 'cssText', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  String item(int index) => js_util.callMethod(this, 'item', [index]);

  String getPropertyValue(String property) =>
      js_util.callMethod(this, 'getPropertyValue', [property]);

  String getPropertyPriority(String property) =>
      js_util.callMethod(this, 'getPropertyPriority', [property]);

  Object setProperty(String property, String value, [String? priority = '']) =>
      js_util.callMethod(this, 'setProperty', [property, value, priority]);

  String removeProperty(String property) =>
      js_util.callMethod(this, 'removeProperty', [property]);

  CSSRule? get parentRule => js_util.getProperty(this, 'parentRule');
  String get cssFloat => js_util.getProperty(this, 'cssFloat');
  set cssFloat(String newValue) {
    js_util.setProperty(this, 'cssFloat', newValue);
  }
}

@JS()
@staticInterop
class ElementCSSInlineStyle {
  external ElementCSSInlineStyle();
}

extension PropsElementCSSInlineStyle on ElementCSSInlineStyle {
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
  StylePropertyMap get attributeStyleMap =>
      js_util.getProperty(this, 'attributeStyleMap');
}

@JS('CSS')
@staticInterop
class Css {
  external Css();
}

extension PropsCss on Css {
  String escape(String ident) => js_util.callMethod(this, 'escape', [ident]);
}
