/// CSS Typed OM Level 1
///
/// https://drafts.css-houdini.org/css-typed-om-1/
@JS('window')
@staticInterop
library css_typed_om_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
cssom_1
geometry_1 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API is the base
/// class of all CSS values accessible through the Typed OM API. An
/// instance of this class may be used anywhere a string is expected.
@experimental
@JS()
@staticInterop
class CSSStyleValue {
  external factory CSSStyleValue();
}

extension PropsCSSStyleValue on CSSStyleValue {
  @JS('toString')
  external String mToString();

  ///  Sets a specific CSS property to the specified values and returns
  /// the first value as a [CSSStyleValue] object.
  ///
  /// CSSStyleValue.parse(property, cssText)
  ///
  ///
  ///  The code below parses a set of declarations for the transform property.
  ///  The second code block shows the structure of the returned object as it would be rendered
  ///  in a developer tools console.
  ///
  /// const css = CSSStyleValue.parse(
  ///   'transform', 'translate3d(10px,10px,0) scale(0.5)');
  ///
  /// CSSTransformValue {0: CSSTranslate, 1: CSSScale, length: 2, is2D: false}
  ///
  external static dynamic parse(String property, String cssText);

  ///  Sets all occurrences of a specific CSS property to the specified
  /// value and returns an array of [CSSStyleValue] objects, each
  /// containing one of the supplied values.
  ///
  /// CSSStyleValue.parseAll(property, value)
  ///
  external static Iterable<CSSStyleValue> parseAll(
      String property, String cssText);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API provides a
/// read-only representation of a CSS declaration block that is an
/// alternative to [CSSStyleDeclaration]. Retrieve an instance of
/// this interface using [Element.computedStyleMap()].
@experimental
@JS()
@staticInterop
class StylePropertyMapReadOnly {
  external factory StylePropertyMapReadOnly();
}

extension PropsStylePropertyMapReadOnly on StylePropertyMapReadOnly {
  /// Returns the value of the specified property.
  ///
  /// var declarationBlock = StylePropertyMapReadOnly.get(property)
  ///
  @JS('get')
  @staticInterop
  external dynamic mGet(String property);

  ///  Returns an array of [CSSStyleValue] objects containing the
  /// values for the provided property.
  ///
  /// var cssStyleValues[] = StylePropertyMapReadOnly.getAll(property)
  ///
  ///
  ///  The following example uses getAll() with the
  ///  background-image property. An Array is returned which
  ///  contains an item for each background image declared.
  ///
  /// // get a button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // we can retrieve all computed styles with `computedStyleMap`
  /// const allComputedStyles = buttonEl.computedStyleMap();
  ///
  /// // use getAll() with the background image property
  /// const allBkImages = allComputedStyles.getAll('background-image');
  /// console.log(allBkImages); // logs an array with each background image as an item
  ///
  external Iterable<CSSStyleValue> getAll(String property);

  ///  Indicates whether the specified property is in the
  /// [StylePropertyMapReadOnly] object.
  ///
  /// var boolean = StylePropertyMapReadOnly.has(property)
  ///
  ///
  ///  Here we use the has() method to see if the padding-top property is present
  ///  within the button elements style attribute.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('.example');
  ///
  /// // find what's in the style attribute with attributeStyleMap and has()
  /// const hasPadTop = buttonEl.attributeStyleMap.has('padding-top);
  ///
  /// console.log(hasPadTop); // logs true if padding-top is present in style attribute
  ///
  external bool has(String property);

  ///  Returns an unsinged long integer containing the size of the
  /// [StylePropertyMapReadOnly] object.
  ///
  external int get size;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API provides a
/// representation of a CSS declaration block that is an alternative
/// to [CSSStyleDeclaration].
///
///
///
///    StylePropertyMapReadOnly
///
///
///
///
///
///    StylePropertyMap
///
///
@experimental
@JS()
@staticInterop
class StylePropertyMap implements StylePropertyMapReadOnly {
  external factory StylePropertyMap();
}

extension PropsStylePropertyMap on StylePropertyMap {
  /// Changes the CSS declaration with the given property.
  ///
  /// StylePropertyMap.set(property,value)
  ///
  ///
  ///  This example sets the padding-top property, with the given value, within
  ///  the element's style
  /// attribute.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // set padding-top on button style attribute
  /// buttonEl.attributeStyleMap.set('padding-top', CSS.px(10));
  ///
  @JS('set')
  @staticInterop
  external Object mSet(String property, [dynamic values]);

  ///  Adds a new CSS declaration to the [StylePropertyMap] with the
  /// given property and value.
  ///
  /// StylePropertyMap.append(property,value)
  ///
  ///
  ///  This example shows an extra background image value being added to the
  ///  background-image property of the element, using
  ///  HTMLElement.attributeStyleMap.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // append another value to the background-image property set on the attribute
  /// buttonEl.attributeStyleMap.append('background-image', 'linear-gradient(180deg, blue, black');
  ///
  external Object append(String property, [dynamic values]);

  /// Removes the CSS declaration with the given property.
  ///
  /// StylePropertyMap.delete(property)
  ///
  ///
  ///  The following example removes the background-image property from the
  ///  element's style attribute.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // remove background-image from style attribute
  /// buttonEl.attributeStyleMap.delete('background-image');
  ///
  external Object delete(String property);

  /// Removes all declarations in the [StylePropertyMap].
  ///
  /// StylePropertMap.clear()
  ///
  /// The following example removes all styles within the elements style attribute.
  /// // get the button element
  /// const buttonEl = document.querySelector('.example');
  ///
  /// // remove all styles from the style attribute
  /// buttonEl.attributeStyleMap.clear();
  ///
  external Object clear();
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents property values that reference custom properties. It
/// consists of a list of string fragments and variable references.
///  Custom properties are represented by and [var()] references are
/// represented using [CSSVariableReferenceValue].
@experimental
@JS()
@staticInterop
class CSSUnparsedValue implements CSSStyleValue {
  external factory CSSUnparsedValue([Iterable<dynamic>? members]);
}

extension PropsCSSUnparsedValue on CSSUnparsedValue {
  /// Returns the number of items in the [CSSUnparsedValue] object.
  ///
  external int get length;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// allows you to create a custom name for a built-in CSS value. This
/// object functionality is sometimes called a "CSS variable" and
/// serves the same purpose as the [var()] function. The custom name
/// must begin with two dashes.
@experimental
@JS()
@staticInterop
class CSSVariableReferenceValue {
  external factory CSSVariableReferenceValue(String variable,
      [CSSUnparsedValue? fallback]);
}

extension PropsCSSVariableReferenceValue on CSSVariableReferenceValue {
  /// Returns the custom name passed to the constructor.
  ///
  external String get variable;
  external set variable(String newValue);

  /// Returns the built-in CSS value for the custom name.
  ///
  external CSSUnparsedValue? get fallback;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API creates an
/// object to represent CSS keywords and other identifiers.
///  The interface instance name is a stringifier meaning that when
/// used anywhere a string is expected it will return the value of
/// [CSSKeyword.value].
@experimental
@JS()
@staticInterop
class CSSKeywordValue implements CSSStyleValue {
  external factory CSSKeywordValue(String value);
}

extension PropsCSSKeywordValue on CSSKeywordValue {
  /// Returns or sets the value of the [CSSKeywordValue].
  ///
  external String get value;
  external set value(String newValue);
}

enum CSSNumericBaseType {
  length,
  angle,
  time,
  frequency,
  resolution,
  flex,
  percent
}

@anonymous
@JS()
@staticInterop
class CSSNumericType {
  external factory CSSNumericType(
      {int length,
      int angle,
      int time,
      int frequency,
      int resolution,
      int flex,
      int percent,
      CSSNumericBaseType percentHint});
}

extension PropsCSSNumericType on CSSNumericType {
  external int get length;
  external set length(int newValue);
  external int get angle;
  external set angle(int newValue);
  external int get time;
  external set time(int newValue);
  external int get frequency;
  external set frequency(int newValue);
  external int get resolution;
  external set resolution(int newValue);
  external int get flex;
  external set flex(int newValue);
  external int get percent;
  external set percent(int newValue);
  external CSSNumericBaseType get percentHint;
  external set percentHint(CSSNumericBaseType newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API represents
/// operations that all numeric values can perform.
@experimental
@JS()
@staticInterop
class CSSNumericValue implements CSSStyleValue {
  external factory CSSNumericValue();
}

extension PropsCSSNumericValue on CSSNumericValue {
  external CSSNumericValue add([dynamic values]);
  external CSSNumericValue sub([dynamic values]);
  external CSSNumericValue mul([dynamic values]);
  external CSSNumericValue div([dynamic values]);
  external CSSNumericValue min([dynamic values]);
  external CSSNumericValue max([dynamic values]);
  external bool equals([dynamic value]);
  external CSSUnitValue to(String unit);
  external CSSMathSum toSum([String units]);
  external CSSNumericType type();
  external static CSSNumericValue parse(String cssText);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents values that contain a single unit type. For example,
/// "42px" would be represented by a [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSUnitValue implements CSSNumericValue {
  external factory CSSUnitValue(double value, String unit);
}

extension PropsCSSUnitValue on CSSUnitValue {
  /// Returns a double indicating the number of units.
  ///
  external double get value;
  external set value(double newValue);

  /// Returns a [USVString] indicating the type of unit.
  ///
  external String get unit;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model a
/// base class for classes representing complex numeric values.
@experimental
@JS()
@staticInterop
class CSSMathValue implements CSSNumericValue {
  external factory CSSMathValue();
}

extension PropsCSSMathValue on CSSMathValue {
  /// Indicates the operator that the current subtype represents.
  ///
  @JS('operator')
  @staticInterop
  external CSSMathOperator get mOperator;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the result obtained by calling [add()], [sub()], or
/// [toSum()] on [CSSNumericValue].
///  A CSSMathSum is the object type returned when the
/// [StylePropertyMapReadOnly.get()] method is used on a CSS property
/// whose value is created with a [calc()] function.
@experimental
@JS()
@staticInterop
class CSSMathSum implements CSSMathValue {
  external factory CSSMathSum([dynamic args]);
}

extension PropsCSSMathSum on CSSMathSum {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  external CSSNumericArray get values;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the result obtained by calling [add()], [sub()], or
/// [toSum()] on [CSSNumericValue]. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSMathProduct implements CSSMathValue {
  external factory CSSMathProduct([dynamic args]);
}

extension PropsCSSMathProduct on CSSMathProduct {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  external CSSNumericArray get values;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// negates the value passed into it. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSMathNegate implements CSSMathValue {
  external factory CSSMathNegate(dynamic arg);
}

extension PropsCSSMathNegate on CSSMathNegate {
  /// Returns a [CSSNumericValue] object.
  ///
  external CSSNumericValue get value;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents a CSS [calc()] used as [calc(1 / <value>).] It
/// inherits properties and methods from its parent
/// [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSMathInvert implements CSSMathValue {
  external factory CSSMathInvert(dynamic arg);
}

extension PropsCSSMathInvert on CSSMathInvert {
  /// Returns a [CSSNumericValue] object.
  ///
  external CSSNumericValue get value;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [min()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSMathMin implements CSSMathValue {
  external factory CSSMathMin([dynamic args]);
}

extension PropsCSSMathMin on CSSMathMin {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  external CSSNumericArray get values;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [max()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
@staticInterop
class CSSMathMax implements CSSMathValue {
  external factory CSSMathMax([dynamic args]);
}

extension PropsCSSMathMax on CSSMathMax {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  external CSSNumericArray get values;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// contains a list of [CSSNumericValue] objects.
@experimental
@JS()
@staticInterop
class CSSNumericArray {
  external factory CSSNumericArray();
}

extension PropsCSSNumericArray on CSSNumericArray {
  ///  Returns how many [CSSNumericValue] objects are contained within
  /// the [CSSNumericArray].
  ///
  external int get length;
}

enum CSSMathOperator { sum, product, negate, invert, min, max, clamp }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents [transform-list] values as used by the CSS [transform]
/// property.
@experimental
@JS()
@staticInterop
class CSSTransformValue implements CSSStyleValue {
  external factory CSSTransformValue(
      [Iterable<CSSTransformComponent>? transforms]);
}

extension PropsCSSTransformValue on CSSTransformValue {
  ///  Returns how many transform components are contained within the
  /// [CSSTransformValue].
  ///
  external int get length;

  /// Returns a boolean indicating whether the transform is 2D or 3D.
  ///
  external bool get is2D;

  /// Returns a new [DOMMatrix] object.
  ///
  /// var matrix = CSSTransformValue.toMatrix();
  ///
  external DOMMatrix toMatrix();
}

///  The interface of the CSS_Object_Model#css_typed_object_model is
/// part of the [CSSTransformValue] interface.
@experimental
@JS()
@staticInterop
class CSSTransformComponent {
  external factory CSSTransformComponent();
}

extension PropsCSSTransformComponent on CSSTransformComponent {
  @JS('toString')
  external String mToString();

  /// Returns a boolean indicting whether the transform is 2D or 3D.
  ///
  external bool get is2D;
  external set is2D(bool newValue);

  /// Returns a new [DOMMatrix] object.
  ///
  /// var matrix = CSSTransformComponent.toMatrix();
  ///
  external DOMMatrix toMatrix();
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the translate() value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSTranslate implements CSSTransformComponent {
  external factory CSSTranslate(CSSNumericValue x, CSSNumericValue y,
      [CSSNumericValue? z]);
}

extension PropsCSSTranslate on CSSTranslate {
  /// Returns or sets the x-axis value.
  ///
  external CSSNumericValue get x;
  external set x(CSSNumericValue newValue);

  /// Returns or sets the y-axis value.
  ///
  external CSSNumericValue get y;
  external set y(CSSNumericValue newValue);

  /// Returns or sets the z-axis value.
  ///
  external CSSNumericValue get z;
  external set z(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the rotate value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSRotate implements CSSTransformComponent {
  external factory CSSRotate(
      [dynamic x, dynamic y, dynamic z, CSSNumericValue angle]);
}

extension PropsCSSRotate on CSSRotate {
  /// Returns or sets the x-axis value.
  ///
  external dynamic get x;
  external set x(dynamic newValue);

  /// Returns or sets the y-axis value.
  ///
  external dynamic get y;
  external set y(dynamic newValue);

  /// Returns or sets the z-axis value.
  ///
  external dynamic get z;
  external set z(dynamic newValue);

  /// Returns or sets the angle value.
  ///
  external CSSNumericValue get angle;
  external set angle(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the scale() and scale3d() values of the individual
/// [transform] property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSScale implements CSSTransformComponent {
  external factory CSSScale(dynamic x, dynamic y, [dynamic z]);
}

extension PropsCSSScale on CSSScale {
  /// Returns or sets the x-axis value.
  ///
  external dynamic get x;
  external set x(dynamic newValue);

  /// Returns or sets the y-axis value.
  ///
  external dynamic get y;
  external set y(dynamic newValue);

  /// Returns or sets the z-axis value.
  ///
  external dynamic get z;
  external set z(dynamic newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model is
/// part of the [CSSTransformValue] interface. It represents the
/// [skew()] value of the individual [transform] property in CSS.
@experimental
@JS()
@staticInterop
class CSSSkew implements CSSTransformComponent {
  external factory CSSSkew(CSSNumericValue ax, CSSNumericValue ay);
}

extension PropsCSSSkew on CSSSkew {
  /// Returns or sets the x-axis value.
  ///
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue newValue);

  /// Returns or sets the y-axis value.
  ///
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the [skewX()] value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSSkewX implements CSSTransformComponent {
  external factory CSSSkewX(CSSNumericValue ax);
}

extension PropsCSSSkewX on CSSSkewX {
  /// Returns or sets the x-axis value.
  ///
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the [skewY()] value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSSkewY implements CSSTransformComponent {
  external factory CSSSkewY(CSSNumericValue ay);
}

extension PropsCSSSkewY on CSSSkewY {
  /// Returns or sets the y-axis value.
  ///
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the perspective() value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSPerspective implements CSSTransformComponent {
  external factory CSSPerspective(CSSNumericValue length);
}

extension PropsCSSPerspective on CSSPerspective {
  /// Returns or sets the distance from z=0.
  ///
  external CSSNumericValue get length;
  external set length(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the matrix() and matrix3d() values of the individual
/// [transform] property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@experimental
@JS()
@staticInterop
class CSSMatrixComponent implements CSSTransformComponent {
  external factory CSSMatrixComponent(DOMMatrixReadOnly matrix,
      [CSSMatrixComponentOptions? options]);
}

extension PropsCSSMatrixComponent on CSSMatrixComponent {
  /// A matrix.
  ///
  external DOMMatrix get matrix;
  external set matrix(DOMMatrix newValue);
}

@anonymous
@JS()
@staticInterop
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions({bool is2D});
}

extension PropsCSSMatrixComponentOptions on CSSMatrixComponentOptions {
  external bool get is2D;
  external set is2D(bool newValue);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface of the CSS Typed Object Model API represents
/// values for properties that take a position, for example
/// [object-position].
@experimental
@deprecated
@JS()
@staticInterop
class CSSPositionValue implements CSSStyleValue {
  external factory CSSPositionValue();
}

extension PropsCSSPositionValue on CSSPositionValue {
  ///  Returns the item's position along the web page's horizontal
  /// axis.
  ///
  external CSSNumericValue get x;
  external set x(CSSNumericValue newValue);

  /// Returns the item's position along the vertical axis.
  ///
  external CSSNumericValue get y;
  external set y(CSSNumericValue newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API represents
/// values for properties that take an image, for example
/// [background-image], [list-style-image], or [border-image-source].
///  The CSSImageValue object represents an [<image>] that involves
/// an URL, such as [url()] or [image()], but not [linear-gradient()]
/// or [element()] .
@experimental
@JS()
@staticInterop
class CSSImageValue implements CSSStyleValue {
  external factory CSSImageValue();
}

@JS()
@staticInterop
class CSSMathClamp implements CSSMathValue {
  external factory CSSMathClamp(dynamic min, dynamic val, dynamic max);
}

extension PropsCSSMathClamp on CSSMathClamp {
  external CSSNumericValue get val;
}

@JS()
@staticInterop
class CSSColorValue implements CSSStyleValue {
  external factory CSSColorValue();
}

extension PropsCSSColorValue on CSSColorValue {
  external dynamic get colorSpace;
  external CSSColorValue to(dynamic colorSpace);
  external static CSSColorValue parse(String cssText);
}

@JS()
@staticInterop
class CSSRGB implements CSSColorValue {
  external factory CSSRGB(dynamic r, dynamic g, dynamic b, [dynamic alpha = 1]);
}

extension PropsCSSRGB on CSSRGB {
  external dynamic get r;
  external set r(dynamic newValue);
  external dynamic get g;
  external set g(dynamic newValue);
  external dynamic get b;
  external set b(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSHSL implements CSSColorValue {
  external factory CSSHSL(CSSNumericValue h, dynamic s, dynamic l,
      [dynamic alpha = 1]);
}

extension PropsCSSHSL on CSSHSL {
  external CSSNumericValue get h;
  external set h(CSSNumericValue newValue);
  external dynamic get s;
  external set s(dynamic newValue);
  external dynamic get l;
  external set l(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSHWB implements CSSColorValue {
  external factory CSSHWB(CSSNumericValue h, dynamic w, dynamic b,
      [dynamic alpha = 1]);
}

extension PropsCSSHWB on CSSHWB {
  external CSSNumericValue get h;
  external set h(CSSNumericValue newValue);
  external dynamic get w;
  external set w(dynamic newValue);
  external dynamic get b;
  external set b(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSLCH implements CSSColorValue {
  external factory CSSLCH(dynamic l, dynamic c, CSSNumericValue h,
      [dynamic alpha = 1]);
}

extension PropsCSSLCH on CSSLCH {
  external dynamic get l;
  external set l(dynamic newValue);
  external dynamic get c;
  external set c(dynamic newValue);
  external CSSNumericValue get h;
  external set h(CSSNumericValue newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSLab implements CSSColorValue {
  external factory CSSLab(dynamic l, dynamic a, dynamic b, [dynamic alpha = 1]);
}

extension PropsCSSLab on CSSLab {
  external dynamic get l;
  external set l(dynamic newValue);
  external dynamic get a;
  external set a(dynamic newValue);
  external dynamic get b;
  external set b(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSColor implements CSSColorValue {
  external factory CSSColor(dynamic colorSpace, Iterable<dynamic> channels,
      [dynamic alpha = 1]);
}

extension PropsCSSColor on CSSColor {
  @override
  external dynamic get colorSpace;
  @override
  external set colorSpace(dynamic newValue);
  external dynamic get channels;
  external set channels(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}

@JS()
@staticInterop
class CSSDeviceCMYK implements CSSColorValue {
  external factory CSSDeviceCMYK(dynamic c, dynamic m, dynamic y, dynamic k,
      [dynamic alpha = 1]);
}

extension PropsCSSDeviceCMYK on CSSDeviceCMYK {
  external dynamic get c;
  external set c(dynamic newValue);
  external dynamic get m;
  external set m(dynamic newValue);
  external dynamic get y;
  external set y(dynamic newValue);
  external dynamic get k;
  external set k(dynamic newValue);
  external dynamic get alpha;
  external set alpha(dynamic newValue);
}
