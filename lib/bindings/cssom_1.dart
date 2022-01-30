/// CSS Object Model (CSSOM)
///
/// https://drafts.csswg.org/cssom/
@JS('window')
@staticInterop
library cssom_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
css_typed_om_1
css_highlight_api_1
cssom_1
construct_stylesheets
css_properties_values_api_1
css_parser_api */

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
  external MediaList();
}

extension PropsMediaList on MediaList {
  ///  A stringifier that returns a [DOMString] representing the
  /// [MediaList] as text, and also allows you to set a new
  /// [MediaList].
  ///
  String get mediaText => js_util.getProperty(this, 'mediaText');
  set mediaText(String newValue) {
    js_util.setProperty(this, 'mediaText', newValue);
  }

  /// Returns the number of media queries in the [MediaList].
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  A getter that returns a [CSSOMString] representing a media query
  /// as text, given the media query's index value inside the
  /// [MediaList].
  ///
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Adds a media query to the [MediaList].
  ///
  Object appendMedium(String medium) =>
      js_util.callMethod(this, 'appendMedium', [medium]);

  /// Removes a media query from the [MediaList].
  ///
  Object deleteMedium(String medium) =>
      js_util.callMethod(this, 'deleteMedium', [medium]);
}

///  An object implementing the interface represents a single style
/// sheet. CSS style sheets will further implement the more
/// specialized [CSSStyleSheet] interface.
@JS()
@staticInterop
class StyleSheet {
  external StyleSheet();
}

extension PropsStyleSheet on StyleSheet {
  ///  Returns a [DOMString] representing the style sheet language for
  /// this style sheet.
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  Returns a [DOMString] representing the location of the
  /// stylesheet.
  ///
  String? get href => js_util.getProperty(this, 'href');

  ///  Returns a [Node] associating this style sheet with the current
  /// document.
  ///
  dynamic get ownerNode => js_util.getProperty(this, 'ownerNode');

  ///  Returns a [StyleSheet] including this one, if any; returns
  /// [null] if there aren't any.
  ///
  CSSStyleSheet? get parentStyleSheet =>
      js_util.getProperty(this, 'parentStyleSheet');

  ///  Returns a [DOMString] representing the advisory title of the
  /// current style sheet.
  ///
  String? get title => js_util.getProperty(this, 'title');

  ///  Returns a [MediaList] representing the intended destination
  /// medium for style information.
  ///
  MediaList get media => js_util.getProperty(this, 'media');

  ///  Is a boolean value representing whether the current stylesheet
  /// has been applied or not.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }
}

///  The interface represents a single CSS stylesheet, and lets you
/// inspect and modify the list of rules contained in the stylesheet.
/// It inherits properties and methods from its parent, [StyleSheet].
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
  external CSSStyleSheet([CSSStyleSheetInit? options]);
}

extension PropsCSSStyleSheet on CSSStyleSheet {
  ///  If this stylesheet is imported into the document using an
  /// [@import] rule, the property returns the corresponding
  /// [CSSImportRule]; otherwise, this property's value is [null].
  ///
  CSSRule? get ownerRule => js_util.getProperty(this, 'ownerRule');

  ///  Returns a live [CSSRuleList] which maintains an up-to-date list
  /// of the [CSSRule] objects that comprise the stylesheet.
  ///
  ///     Note: In some browsers, if a stylesheet is loaded from a
  /// different domain, accessing results in a[SecurityError].
  ///
  ///
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');

  ///  Inserts a new rule at the specified position in the stylesheet,
  /// given the textual representation of the rule.
  ///
  /// stylesheet.insertRule(rule [, index])
  ///
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  ///  Deletes the rule at the specified index into the stylesheet's
  /// rule list.
  ///
  /// cssStyleSheet.deleteRule(index)
  ///
  /// This example removes the first rule from the stylesheet myStyles.
  ///  myStyles.deleteRule(0);
  ///
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

///  The interface represents a list of [CSSStyleSheet] objects. An
/// instance of this object can be returned by
/// [Document.styleSheets].
///  It is an array-like object but can't be iterated over using
/// [Array] methods. However it can be iterated over in a standard
/// [for] loop over its indices, or converted to an [Array].
@JS()
@staticInterop
class StyleSheetList {
  external StyleSheetList();
}

extension PropsStyleSheetList on StyleSheetList {
  ///  Returns the [CSSStyleSheet] object at the index passed in, or
  /// [null] if no item exists for that index.
  ///
  /// StyleSheetList.item(index);
  ///
  CSSStyleSheet? item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Returns the number of [CSSStyleSheet] objects in the collection.
  ///
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
@JS()
@staticInterop
class CSSRuleList {
  external CSSRuleList();
}

extension PropsCSSRuleList on CSSRuleList {
  /// Gets a single [CSSRule].
  ///
  /// CSSRuleList.item(index);
  ///
  CSSRule? item(int index) => js_util.callMethod(this, 'item', [index]);

  ///  Returns an integer representing the number of [CSSRule] objects
  /// in the collection.
  ///
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
  external static int get STYLE_RULE;
  external static int get CHARSET_RULE;
  external static int get IMPORT_RULE;
  external static int get MEDIA_RULE;
  external static int get FONT_FACE_RULE;
  external static int get PAGE_RULE;
  external static int get MARGIN_RULE;
  external static int get NAMESPACE_RULE;
  external static int get VIEWPORT_RULE;
  external static int get KEYFRAMES_RULE;
  external static int get KEYFRAME_RULE;
  external static int get SUPPORTS_RULE;
  external static int get COUNTER_STYLE_RULE;
  external static int get FONT_FEATURE_VALUES_RULE;
  external static int get FONT_PALETTE_VALUES_RULE;
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
///    CSSStyleRule
///
///
@JS()
@staticInterop
class CSSStyleRule implements CSSRule {
  external CSSStyleRule();
}

extension PropsCSSStyleRule on CSSStyleRule {
  ///  Returns the textual representation of the selector for this
  /// rule, e.g. ["h1,h2"].
  ///
  String get selectorText => js_util.getProperty(this, 'selectorText');
  set selectorText(String newValue) {
    js_util.setProperty(this, 'selectorText', newValue);
  }

  /// Returns the [CSSStyleDeclaration] object for the rule.
  ///
  CSSStyleDeclaration get style => js_util.getProperty(this, 'style');
  StylePropertyMap get styleMap => js_util.getProperty(this, 'styleMap');
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);
}

/// The interface represents an [@import] [at-rule].
///
///
///
///    CSSRule
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
  external CSSImportRule();
}

extension PropsCSSImportRule on CSSImportRule {
  /// Returns the url specified by the [@import] rule.
  ///
  String get href => js_util.getProperty(this, 'href');

  /// Returns the value of the attribute of the associated stylesheet.
  ///
  MediaList get media => js_util.getProperty(this, 'media');
  CSSStyleSheet get styleSheet => js_util.getProperty(this, 'styleSheet');
}

///  The interface of the [CSS Object Model] represents any CSS
/// [at-rule] that contains other rules nested within it.
@JS()
@staticInterop
class CSSGroupingRule implements CSSRule {
  external CSSGroupingRule();
}

extension PropsCSSGroupingRule on CSSGroupingRule {
  /// Returns a [CSSRuleList] of the CSS rules in the media rule.
  ///
  CSSRuleList get cssRules => js_util.getProperty(this, 'cssRules');

  /// Inserts a new style rule into the current style sheet.
  ///
  /// cssGroupingRule.insertRule(rule);
  /// cssGroupingRule.insertRule(rule, index);
  ///
  int insertRule(String rule, [int? index = 0]) =>
      js_util.callMethod(this, 'insertRule', [rule, index]);

  /// Deletes a rule from the style sheet.
  ///
  /// cssGroupingRule.deleteRule(index);
  ///
  Object deleteRule(int index) =>
      js_util.callMethod(this, 'deleteRule', [index]);
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
///    CSSGroupingRule
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
  external CSSPageRule();
}

extension PropsCSSPageRule on CSSPageRule {
  ///  Represents the text of the page selector associated with the
  /// at-rule.
  ///
  String get selectorText => js_util.getProperty(this, 'selectorText');
  set selectorText(String newValue) {
    js_util.setProperty(this, 'selectorText', newValue);
  }

  /// Returns the declaration block associated with the at-rule.
  ///
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

///  The interface describes an object representing a single CSS
/// [@namespace] [at-rule].
///
///
///
///    CSSRule
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
  external CSSNamespaceRule();
}

extension PropsCSSNamespaceRule on CSSNamespaceRule {
  ///  Returns a [DOMString] containing the text of the URI of the
  /// given namespace.
  ///
  String get namespaceURI => js_util.getProperty(this, 'namespaceURI');

  ///  Returns a [DOMString] with the name of the prefix associated to
  /// this namespace. If there is no such prefix, returns an empty
  /// string.
  ///
  String get prefix => js_util.getProperty(this, 'prefix');
}

///  The interface represents an object that is a CSS declaration
/// block, and exposes style information and various style-related
/// methods and properties.
/// A object can be exposed using three different APIs:
///
///   Via [HTMLElement.style], which deals with the inline styles of
/// a single element (e.g., [<div style="...">]).
///   Via the [CSSStyleSheet] API. For example,
/// [document.styleSheets[0].cssRules[0].style] returns a object on
/// the first CSS rule in the document's first stylesheet.
///   Via [Window.getComputedStyle()], which exposes the object as a
/// read-only interface.
///
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

  ///  Returns a CSS property name by its index, or the empty string if
  /// the index is out-of-bounds.
  ///
  /// var propertyName = style.item(index);
  ///
  /// var style = document.getElementById('div1').style;
  /// var propertyName = style.item(1); // or style[1] - returns the second style listed
  ///
  String item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Returns the property value given a property name.
  ///
  /// var value = style.getPropertyValue(property);
  ///
  ///
  ///  The following JavaScript code queries the value of the margin property in
  ///  a CSS selector rule:
  ///
  /// var declaration = document.styleSheets[0].cssRules[0].style;
  /// var value = declaration.getPropertyValue('margin'); // "1px 2px"
  ///
  String getPropertyValue(String property) =>
      js_util.callMethod(this, 'getPropertyValue', [property]);

  /// Returns the optional priority, "important".
  ///
  /// var priority = style.getPropertyPriority(property);
  ///
  ///
  ///  The following JavaScript code checks whether margin is marked as important
  ///  in a CSS selector rule:
  ///
  /// var declaration = document.styleSheets[0].cssRules[0].style;
  /// var isImportant = declaration.getPropertyPriority('margin') === 'important';
  ///
  String getPropertyPriority(String property) =>
      js_util.callMethod(this, 'getPropertyPriority', [property]);

  ///  Modifies an existing CSS property or creates a new CSS property
  /// in the declaration block.
  ///
  /// style.setProperty(propertyName, value, priority);
  ///
  Object setProperty(String property, String value, [String? priority = '']) =>
      js_util.callMethod(this, 'setProperty', [property, value, priority]);

  /// Removes a property from the CSS declaration block.
  ///
  /// var oldValue = style.removeProperty(property);
  ///
  ///
  ///  The following JavaScript code removes the background-color CSS property
  ///  from a selector rule:
  ///
  /// var declaration = document.styleSheets[0].rules[0].style;
  /// var oldValue = declaration.removeProperty('background-color');
  ///
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

///  The interface holds useful CSS-related methods. No objects with
/// this interface are implemented: it contains only static methods
/// and is therefore a utilitarian interface.
@JS()
@staticInterop
class CSS {
  external CSS();
}

extension PropsCSS on CSS {
  String escape(String ident) => js_util.callMethod(this, 'escape', [ident]);
}
