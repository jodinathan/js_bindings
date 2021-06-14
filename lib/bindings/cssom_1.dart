/// CSS Object Model (CSSOM)
///
/// https://drafts.csswg.org/cssom/
@JS('window')
library cssom_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'css_typed_om_1.dart';
import 'css_highlight_api_1.dart';
import 'cssom_1.dart';
import 'construct_stylesheets.dart';
import 'css_properties_values_api_1.dart';
import 'css_parser_api.dart';

///
///
///  The [MediaList] interface represents the media queries of a
/// stylesheet, e.g. those set using a [<link>] element's [media]
/// attribute.
///  Note: is a live list; updating the list using properties or
/// methods listed below will immediately update the behavior of the
/// document.
///
@JS()
class MediaList {
  ///  A stringifier that returns a [DOMString] representing the
  /// [MediaList] as text, and also allows you to set a new
  /// [MediaList].
  external String get mediaText;
  external set mediaText(String newValue);

  /// Returns the number of media queries in the [MediaList].
  external int get length;

  ///  A getter that returns a [CSSOMString] representing a media query
  /// as text, given the media query's index value inside the
  /// [MediaList].
  external String? item(int index);

  /// Adds a media query to the [MediaList].
  external Object appendMedium(String medium);

  /// Removes a media query from the [MediaList].
  external Object deleteMedium(String medium);

  external factory MediaList();
}

///
///
///  An object implementing the interface represents a single style
/// sheet. CSS style sheets will further implement the more
/// specialized [CSSStyleSheet] interface.
@JS()
class StyleSheet {
  ///  Returns a [DOMString] representing the style sheet language for
  /// this style sheet.
  external String get type;

  ///  Returns a [DOMString] representing the location of the
  /// stylesheet.
  external String? get href;

  ///  Returns a [Node] associating this style sheet with the current
  /// document.
  external dynamic get ownerNode;

  ///  Returns a [StyleSheet] including this one, if any; returns
  /// [null] if there aren't any.
  external CSSStyleSheet? get parentStyleSheet;

  ///  Returns a [DOMString] representing the advisory title of the
  /// current style sheet.
  external String? get title;

  ///  Returns a [MediaList] representing the intended destination
  /// medium for style information.
  external MediaList get media;

  ///  Is a [Boolean] representing whether the current stylesheet has
  /// been applied or not.
  external bool get disabled;
  external set disabled(bool newValue);

  external factory StyleSheet();
}

///
///
///  The interface represents a single CSS stylesheet, and lets you
/// inspect and modify the list of rules contained in the stylesheet.
/// It inherits properties and methods from its parent, [StyleSheet].
///
///  A stylesheet consists of a collection of [CSSRule] objects
/// representing each of the rules in the stylesheet. The rules are
/// contained in a [CSSRuleList], which can be obtained from the
/// stylesheet's [cssRules] property.
///
///  For example, one rule might be a [CSSStyleRule] object
/// containing a style such as:
///
/// [h1, h2 {
///  font-size: 16pt;
/// }
/// ]
///
///  Another rule might be an at-rule such as [@import] or [@media],
/// and so forth.
///
///  See the Notes section for the various ways a object can be
/// obtained.
@JS()
class CSSStyleSheet extends StyleSheet {
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external int insertRule(String rule, [int? index = 0]);
  external Object deleteRule(int index);

  external factory CSSStyleSheet({CSSStyleSheetInit? options});
  external Promise<CSSStyleSheet> replace(String text);
  external Object replaceSync(String text);
  external CSSRuleList get rules;
  external int addRule(
      [String? selector = 'undefined',
      String? style = 'undefined',
      int? index]);
  external Object removeRule([int? index = 0]);
}

///
///
/// The interface represents a list of [StyleSheet].
///
///  It is an array-like object but can't be iterated over using
/// [Array] methods. However It can be iterated over in a standard
/// [for] loop over its indices, or converted to an [Array].
@JS()
class StyleSheetList {
  external CSSStyleSheet? item(int index);
  external int get length;

  external factory StyleSheetList();
}

///
///
///  The [LinkStyle] interface provides access to the associated CSS
/// style sheet of a node.
///
///   is a raw interface and no object of this type can be created;
/// it is implemented by [HTMLLinkElement] and [HTMLStyleElement]
/// objects.
@JS()
mixin LinkStyle {
  ///  Returns the [CSSStyleSheet] object associated with the given
  /// element, or [null] if there is none.
  external CSSStyleSheet? get sheet;
}

///
///
///  A is an (indirect-modify only) array-like object containing an
/// ordered collection of [CSSRule] objects.
@JS()
class CSSRuleList {
  external CSSRule? item(int index);
  external int get length;

  external factory CSSRuleList();
}

///
///
///  The interface represents a single CSS rule. There are several
/// types of rules which inherit properties from .
///
///   [CSSStyleRule]
///   [CSSImportRule]
///   [CSSMediaRule]
///   [CSSFontFaceRule]
///   [CSSPageRule]
///   [CSSNamespaceRule]
///   [CSSKeyframesRule]
///   [CSSKeyframeRule]
///   [CSSCounterStyleRule]
///   [CSSDocumentRule]
///   [CSSSupportsRule]
///   [CSSFontFeatureValuesRule]
///   [CSSViewportRule]
///
///
@JS()
class CSSRule {
  external String get cssText;
  external set cssText(String newValue);
  external CSSRule? get parentRule;
  external CSSStyleSheet? get parentStyleSheet;
  external int get type;
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

  external factory CSSRule();
}

///
///
/// The interface represents a single CSS style rule.
///
///
@JS()
class CSSStyleRule extends CSSRule {
  external String get selectorText;
  external set selectorText(String newValue);
  external CSSStyleDeclaration get style;
  external StylePropertyMap get styleMap;
  external CSSRuleList get cssRules;
  external int insertRule(String rule, [int? index = 0]);
  external Object deleteRule(int index);

  external factory CSSStyleRule();
}

///
///
/// The interface represents an [@import] [at-rule].
///
///
@JS()
class CSSImportRule extends CSSRule {
  /// Returns the url specified by the [@import] rule.
  external String get href;

  /// Returns the value of the attribute of the associated stylesheet.
  external MediaList get media;
  external CSSStyleSheet get styleSheet;

  external factory CSSImportRule();
}

///
///
///  The interface of the [CSS Object Model] represents any CSS
/// [at-rule] that contains other rules nested within it.
///
/// Objects deriving from it:
///   [CSSConditionRule] and its children: [CSSMediaRule] and
/// [CSSSupportsRule].
///  [CSSPageRule]
///
@JS()
class CSSGroupingRule extends CSSRule {
  external CSSRuleList get cssRules;
  external int insertRule(String rule, [int? index = 0]);
  external Object deleteRule(int index);

  external factory CSSGroupingRule();
}

///
///  represents a single CSS [@page] rule.
///
///
@JS()
class CSSPageRule extends CSSGroupingRule {
  ///  Represents the text of the page selector associated with the
  /// at-rule.
  external String get selectorText;
  external set selectorText(String newValue);

  /// Returns the declaration block associated with the at-rule.
  external CSSStyleDeclaration get style;

  external factory CSSPageRule();
}

@JS()
class CSSMarginRule extends CSSRule {
  external String get name;
  external CSSStyleDeclaration get style;

  external factory CSSMarginRule();
}

///
///
///  The interface describes an object representing a single CSS
/// [@namespace] [at-rule].
///
///
@JS()
class CSSNamespaceRule extends CSSRule {
  external String get namespaceURI;

  ///  Returns a [DOMString] with the name of the prefix associated to
  /// this namespace. If there is no such prefix, returns an empty
  /// string.
  external String get prefix;

  external factory CSSNamespaceRule();
}

///
///
///  The interface represents an object that is a CSS declaration
/// block, and exposes style information and various style-related
/// methods and properties.
///
/// A object can be exposed using three different APIs:
///   Via [ElementCSSInlineStyle.style], which deals with the inline
/// styles of a single element (e.g., [<div style="...">]).
///   Via the [CSSStyleSheet] API. For example,
/// [document.styleSheets[0].cssRules[0].style] returns a object on
/// the first CSS rule in the document's first stylesheet.
///   Via [Window.getComputedStyle()], which exposes the object as a
/// read-only interface.
///
@JS()
class CSSStyleDeclaration {
  external String get cssText;
  external set cssText(String newValue);
  external int get length;

  ///  Returns a CSS property name by its index, or the empty string if
  /// the index is out-of-bounds.
  /// var propertyName = style.item(index);
  ///
  /// var style = document.getElementById('div1').style;
  /// var propertyName = style.item(1); // or style[1] - returns the second style listed
  external String item(int index);

  /// Returns the property value given a property name.
  /// var value = style.getPropertyValue(property);
  /// The following JavaScript code queries the value of the margin property in
  ///  a CSS selector rule:
  ///
  /// var declaration = document.styleSheets[0].cssRules[0].style;
  /// var value = declaration.getPropertyValue('margin'); // "1px 2px"
  ///
  external String getPropertyValue(String property);

  /// Returns the optional priority, "important".
  /// var priority = style.getPropertyPriority(property);
  /// The following JavaScript code checks whether margin is marked as important
  ///  in a CSS selector rule:
  ///
  /// var declaration = document.styleSheets[0].cssRules[0].style;
  /// var isImportant = declaration.getPropertyPriority('margin') === 'important';
  ///
  external String getPropertyPriority(String property);

  ///  Modifies an existing CSS property or creates a new CSS property
  /// in the declaration block.
  /// style.setProperty(propertyName, value, priority);
  external Object setProperty(String property, String value,
      [String? priority = '']);

  /// Removes a property from the CSS declaration block.
  /// var oldValue = style.removeProperty(property);
  /// The following JavaScript code removes the background-color CSS property
  ///  from a selector rule:
  ///
  /// var declaration = document.styleSheets[0].rules[0].style;
  /// var oldValue = declaration.removeProperty('background-color');
  ///
  external String removeProperty(String property);
  external CSSRule? get parentRule;
  external String get cssFloat;
  external set cssFloat(String newValue);

  external factory CSSStyleDeclaration();
}

///
///
///  The mixin describes CSSOM-specific features common to the
/// [HTMLElement], [SVGElement] and [MathMLElement] interfaces. Each
/// of these interfaces can, of course, add more features in addition
/// to the ones listed below.
///  Note: is a mixin and not an interface; you can't actually create
/// an object of type .
///
@JS()
mixin ElementCSSInlineStyle {
  external CSSStyleDeclaration get style;
  external StylePropertyMap get attributeStyleMap;
}

///
///
///  The [CSS] interface holds useful CSS-related methods. No objects
/// with this interface are implemented: it contains only static
/// methods and is therefore a utilitarian interface.
@JS()
abstract class CSS {
  external String escape(String ident);
}
