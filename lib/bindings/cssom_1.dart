/// CSS Object Model (CSSOM)
///
/// https://drafts.csswg.org/cssom-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cssom_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface represents the media queries of a stylesheet, e.g.
/// those set using a [<link>] element's [media] attribute.
///
///   Note: is a live list; updating the list using properties or
/// methods listed below will immediately update the behavior of the
/// document.
///
@JS()
@staticInterop
class MediaList {
  external factory MediaList();
}

extension PropsMediaList on MediaList {
  String get mediaText => js_util.getProperty(this, 'mediaText');
  set mediaText(String newValue) {
    js_util.setProperty(this, 'mediaText', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  void appendMedium(String medium) =>
      js_util.callMethod(this, 'appendMedium', [medium]);

  void deleteMedium(String medium) =>
      js_util.callMethod(this, 'deleteMedium', [medium]);
}

///  An object implementing the interface represents a single style
/// sheet. CSS style sheets will further implement the more
/// specialized [CSSStyleSheet] interface.
@JS()
@staticInterop
class StyleSheet {
  external factory StyleSheet();
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

///  The interface represents a single CSS stylesheet, and lets you
/// inspect and modify the list of rules contained in the stylesheet.
/// It inherits properties and methods from its parent, [StyleSheet].
///
///
///
///    StyleSheet
///
///
///
///
///
///
///
///    CSSStyleSheet
///
///
///  A stylesheet consists of a collection of [CSSRule] objects
/// representing each of the rules in the stylesheet. The rules are
/// contained in a [CSSRuleList], which can be obtained from the
/// stylesheet's [cssRules] property.
///  For example, one rule might be a [CSSStyleRule] object
/// containing a style such as:
/// [h1, h2 {
///  font-size: 16pt;
/// }
/// ]
///  Another rule might be an at-rule such as [@import] or [@media],
/// and so forth.
///  See the Obtaining a StyleSheet section for the various ways a
/// object can be obtained. A object can also be directly
/// constructed. The constructor, and the [CSSStyleSheet.replace()],
/// and [CSSStyleSheet.replaceSync()] methods are newer additions to
/// the specification, enabling Constructable Stylesheets.
@JS()
@staticInterop
class CSSStyleSheet implements StyleSheet {
  external factory CSSStyleSheet([CSSStyleSheetInit? options]);
}

extension PropsCSSStyleSheet on CSSStyleSheet {
  CSSRule? get ownerRule => js_util.getProperty(this, 'ownerRule');
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  void deleteRule(int index) => js_util.callMethod(this, 'deleteRule', [index]);

  Future<CSSStyleSheet> replace(String text) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'replace', [text]));

  void replaceSync(String text) =>
      js_util.callMethod(this, 'replaceSync', [text]);

  CSSRuleList get rules => js_util.getProperty(this, 'rules');
  int addRule(
          [String? selector = 'undefined',
          String? style = 'undefined',
          int? index]) =>
      js_util.callMethod(this, 'addRule', [selector, style, index]);

  void removeRule([int? index = 0]) =>
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

///  The interface represents a list of [CSSStyleSheet] objects. An
/// instance of this object can be returned by
/// [Document.styleSheets].
///  It is an array-like object but can't be iterated over using
/// [Array] methods. However it can be iterated over in a standard
/// [for] loop over its indices, or converted to an [Array].
///
///   Note: This interface was an attempt to create an unmodifiable
/// list and only continues to be supported to not break code that's
/// already using it. Modern APIs use types that wrap around
/// ECMAScript array types instead, so you can treat them like
/// ECMAScript arrays, and at the same time impose additional
/// semantics on their usage (such as making their items read-only).
///
@JS()
@staticInterop
class StyleSheetList {
  external factory StyleSheetList();
}

extension PropsStyleSheetList on StyleSheetList {
  CSSStyleSheet? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class LinkStyle {
  external factory LinkStyle();
}

extension PropsLinkStyle on LinkStyle {
  CSSStyleSheet? get sheet => js_util.getProperty(this, 'sheet');
}

///  A represents an ordered collection of read-only [CSSRule]
/// objects.
///  While the object is read-only, and cannot be directly modified,
/// it is considered a [live] object, as the content can change over
/// time.
///  To edit the underlying rules returned by [CSSRule] objects, use
/// [CSSStyleSheet.insertRule()] and [CSSStyleSheet.deleteRule()],
/// which are methods of [CSSStyleSheet].
///  The interface has no constructor. An instance of is returned by
/// [CSSStyleSheet.cssRules] and [CSSKeyframesRule.cssRules].
///
///   Note: This interface was an attempt to create an unmodifiable
/// list and only continues to be supported to not break code that's
/// already using it. Modern APIs use types that wrap around
/// ECMAScript array types instead, so you can treat them like
/// ECMAScript arrays, and at the same time impose additional
/// semantics on their usage (such as making their items read-only).
///
@JS()
@staticInterop
class CSSRuleList {
  external factory CSSRuleList();
}

extension PropsCSSRuleList on CSSRuleList {
  CSSRule? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

///  The interface represents a single CSS rule. There are several
/// types of rules which inherit properties from .
///
///  [CSSStyleRule]
///  [CSSImportRule]
///  [CSSMediaRule]
///  [CSSFontFaceRule]
///  [CSSPageRule]
///  [CSSNamespaceRule]
///  [CSSKeyframesRule]
///  [CSSKeyframeRule]
///  [CSSCounterStyleRule]
///  [CSSDocumentRule]
///  [CSSSupportsRule]
///  [CSSFontFeatureValuesRule]
///  [CSSViewportRule]
///
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

  external factory CSSRule();
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

/// The interface represents a single CSS style rule.
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
///    CSSStyleRule
///
///
@JS()
@staticInterop
class CSSStyleRule implements CSSRule {
  external factory CSSStyleRule();
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

  void deleteRule(int index) => js_util.callMethod(this, 'deleteRule', [index]);
}

/// The interface represents an [@import] at-rule.
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
///    CSSImportRule
///
///
@JS()
@staticInterop
class CSSImportRule implements CSSRule {
  external factory CSSImportRule();
}

extension PropsCSSImportRule on CSSImportRule {
  String get href => js_util.getProperty(this, 'href');
  MediaList get media => js_util.getProperty(this, 'media');
  CSSStyleSheet get styleSheet => js_util.getProperty(this, 'styleSheet');
  String? get layerName => js_util.getProperty(this, 'layerName');
}

///  The interface of the CSS Object Model represents any CSS at-rule
/// that contains other rules nested within it.
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
///    CSSGroupingRule
///
///
@JS()
@staticInterop
class CSSGroupingRule implements CSSRule {
  external factory CSSGroupingRule();
}

extension PropsCSSGroupingRule on CSSGroupingRule {
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  void deleteRule(int index) => js_util.callMethod(this, 'deleteRule', [index]);
}

///  represents a single CSS [@page] rule.
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
///    CSSGroupingRule
///
///
///
///
///
///
///
///    CSSPageRule
///
///
@JS()
@staticInterop
class CSSPageRule implements CSSGroupingRule {
  external factory CSSPageRule();
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
  external factory CSSMarginRule();
}

extension PropsCSSMarginRule on CSSMarginRule {
  String get name => js_util.getProperty(this, 'name');
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
}

///  The interface describes an object representing a single CSS
/// [@namespace] at-rule.
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
///    CSSNamespaceRule
///
///
@JS()
@staticInterop
class CSSNamespaceRule implements CSSRule {
  external factory CSSNamespaceRule();
}

extension PropsCSSNamespaceRule on CSSNamespaceRule {
  String get namespaceURI => js_util.getProperty(this, 'namespaceURI');
  String get prefix => js_util.getProperty(this, 'prefix');
}

///  The interface represents an object that is a CSS declaration
/// block, and exposes style information and various style-related
/// methods and properties.
/// A object can be exposed using three different APIs:
///
///   Via [HTMLElement.style], which deals with the inline styles of
/// a single element (e.g., [<div style="…">]).
///   Via the [CSSStyleSheet] API. For example,
/// [document.styleSheets[0].cssRules[0].style] returns a object on
/// the first CSS rule in the document's first stylesheet.
///   Via [Window.getComputedStyle()], which exposes the object as a
/// read-only interface.
///
@JS()
@staticInterop
class CSSStyleDeclaration {
  external factory CSSStyleDeclaration();
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

  void setProperty(String property, String value, [String? priority = '']) =>
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
  external factory ElementCSSInlineStyle();
}

extension PropsElementCSSInlineStyle on ElementCSSInlineStyle {
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
  StylePropertyMap get attributeStyleMap =>
      js_util.getProperty(this, 'attributeStyleMap');
}

///  The interface holds useful CSS-related methods. No objects with
/// this interface are implemented: it contains only static methods
/// and is therefore a utilitarian interface.
@JS('CSS')
@staticInterop
class Css {
  external factory Css();
}

extension PropsCss on Css {
  String escape(String ident) => js_util.callMethod(this, 'escape', [ident]);
}
