/// CSS Typed OM Level 1
///
/// https://drafts.css-houdini.org/css-typed-om-1/
@JS('window')
library css_typed_om_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'cssom_1.dart';
import 'geometry_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API is the base
/// class of all CSS values accessible through the Typed OM API. An
/// instance of this class may be used anywhere a string is expected.
@experimental
@JS()
class CSSStyleValue {
  @override
  external String toString();

  ///  Sets a specific CSS property to the specified values and returns
  /// the first value as a [CSSStyleValue] object.
  /// CSSStyleValue.parse(property, cssText)
  /// The code below parses a set of declarations for the transform property.
  ///  The second code block shows the structure of the returned object as it would be rendered
  ///  in a developer tools console.
  ///
  /// const css = CSSStyleValue.parse(
  ///   'transform', 'translate3d(10px,10px,0) scale(0.5)');
  ///
  /// CSSTransformValue {0: CSSTranslate, 1: CSSScale, length: 2, is2D: false}
  external static dynamic parse(String property, String cssText);

  ///  Sets all occurrences of a specific CSS property to the specified
  /// valueand returns an array of [CSSStyleValue] objects, each
  /// containing one of the supplied values.
  /// CSSStyleValue.parseAll(property, value)
  external static Iterable<CSSStyleValue> parseAll(
      String property, String cssText);

  external factory CSSStyleValue();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API provides a
/// read-only representation of a CSS declaration block that is an
/// alternative to [CSSStyleDeclaration]. Retrieve an instance of
/// this interface using [Element.computedStyleMap()].
@experimental
@JS()
class StylePropertyMapReadOnly {
  external Iterable<CSSStyleValue> operator [](String index);

  /// Returns the value of the specified property.
  /// var declarationBlock = StylePropertyMapReadOnly.get(property)
  @JS('get')
  external dynamic mGet(String property);

  ///  Returns an array of [CSSStyleValue] objects containing the
  /// values for the provided property.
  /// var cssStyleValues[] = StylePropertyMapReadOnly.getAll(property)
  /// The following example uses getAll() with the
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
  ///
  external Iterable<CSSStyleValue> getAll(String property);

  ///  Indicates whether the specified property is in the
  /// [StylePropertyMapReadOnly] object.
  /// var boolean = StylePropertyMapReadOnly.has(property)
  /// Here we use the has() method to see if the padding-top property is present
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
  external int get size;

  external factory StylePropertyMapReadOnly();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API provides a
/// representation of a CSS declaration block that is an alternative
/// to [CSSStyleDeclaration].
///
///
@experimental
@JS()
class StylePropertyMap extends StylePropertyMapReadOnly {
  /// Changes the CSS declaration with the given property.
  /// StylePropertyMap.set(property,value)
  /// This example sets the padding-top property, with the given value, within
  ///  the element's style
  ///   attribute.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // set padding-top on button style attribute
  /// buttonEl.attributeStyleMap.set('padding-top', CSS.px(10));
  ///
  @JS('set')
  external Object mSet(String property, [dynamic values]);

  ///  Adds a new CSS declaration to the [StylePropertyMap] with the
  /// given property and value.
  /// StylePropertyMap.append(property,value)
  /// This example shows an extra background image value being added to the
  ///  background-image property of the element, using
  ///  Element.attributeStyleMap.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // append another value to the background-image property set on the attribute
  /// buttonEl.attributeStyleMap.append('background-image', 'linear-gradient(180deg, blue, black');
  ///
  external Object append(String property, [dynamic values]);

  /// Removes the CSS declaration with the given property.
  /// StylePropertyMap.delete(property)
  /// The following example removes the background-image property from the
  ///  element's style attribute.
  /// // get the button element
  /// const buttonEl = document.querySelector('button');
  ///
  /// // remove background-image from style attribute
  /// buttonEl.attributeStyleMap.delete('background-image');
  ///
  external Object delete(String property);

  /// Removes all declarations in the [StylePropertyMap].
  /// StylePropertMap.clear()
  /// The following example removes all styles within the elements style attribute.
  ///
  /// // get the button element
  /// const buttonEl = document.querySelector('.example');
  ///
  /// // remove all styles from the style attribute
  /// buttonEl.attributeStyleMap.clear();
  ///
  external Object clear();

  external factory StylePropertyMap();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents property values that reference custom properties. It
/// consists of a list of string fragments and variable references.
///
///  Custom properties are represented by and [var()] references are
/// represented using [CSSVariableReferenceValue].
@experimental
@JS()
class CSSUnparsedValue extends CSSStyleValue {
  external factory CSSUnparsedValue({Iterable<dynamic>? members});

  /// Returns the number of items in the [CSSUnparsedValue] object.
  external int get length;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// allows you to create a custom name for a built-in CSS value. This
/// object functionality is sometimes called a "CSS variable" and
/// serves the same purpose as the [var()] function. The custom name
/// must begin with two dashes.
@experimental
@JS()
class CSSVariableReferenceValue {
  external factory CSSVariableReferenceValue(
      {String variable, CSSUnparsedValue? fallback});

  /// Returns the custom name passed to the constructor.
  external String get variable;
  external set variable(String newValue);

  /// Returns the built-in CSS value for the custom name.
  external CSSUnparsedValue? get fallback;
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API creates an
/// object to represent CSS keywords and other identifiers. The
/// interface instance name is a stringifier meaning that when used
/// anywhere a string is expected it will return the value of
/// [CSSKeyword.value].
@experimental
@JS()
class CSSKeywordValue extends CSSStyleValue {
  external factory CSSKeywordValue({String value});

  /// Returns or sets the value of the [CSSKeywordValue].
  external String get value;
  external set value(String newValue);
}

@JS()
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
class CSSNumericType {
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

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API represents
/// operations that all numeric values can perform.
@experimental
@JS()
class CSSNumericValue extends CSSStyleValue {
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

  external factory CSSNumericValue();
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents values that contain a single unit type. For example,
/// "42px" would be represented by a [CSSNumericValue].
@experimental
@JS()
class CSSUnitValue extends CSSNumericValue {
  external factory CSSUnitValue({double value, String unit});

  /// Returns a double indicating the number of units.
  external double get value;
  external set value(double newValue);

  /// Returns a [USVString] indicating the type of unit.
  external String get unit;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model a
/// base class for classes representing complex numeric values.
@experimental
@JS()
class CSSMathValue extends CSSNumericValue {
  /// Indicates the operator that the current subtype represents.
  @JS('operator')
  external CSSMathOperator get mOperator;

  external factory CSSMathValue();
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the result obtained by calling [add()], [sub()], or
/// [toSum()] on [CSSNumericValue].
///
///  A CSSMathSum is the object type returned when the
/// [StylePropertyMapReadOnly.get()] method is used on a CSS property
/// whose value is created with a [calc()] function.
@experimental
@JS()
class CSSMathSum extends CSSMathValue {
  external factory CSSMathSum({dynamic args});

  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  external CSSNumericArray get values;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the result obtained by calling [add()], [sub()], or
/// [toSum()] on [CSSNumericValue]. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
class CSSMathProduct extends CSSMathValue {
  external factory CSSMathProduct({dynamic args});

  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  external CSSNumericArray get values;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// negates the value passed into it. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
class CSSMathNegate extends CSSMathValue {
  external factory CSSMathNegate({dynamic arg});

  /// Returns a [CSSNumericValue] object.
  external CSSNumericValue get value;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents a CSS [calc()] used as [calc(1 / <value>).] It
/// inherits properties and methods from its parent
/// [CSSNumericValue].
@experimental
@JS()
class CSSMathInvert extends CSSMathValue {
  external factory CSSMathInvert({dynamic arg});

  /// Returns a [CSSNumericValue] object.
  external CSSNumericValue get value;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [min()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
class CSSMathMin extends CSSMathValue {
  external factory CSSMathMin({dynamic args});

  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  external CSSNumericArray get values;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [max()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
@experimental
@JS()
class CSSMathMax extends CSSMathValue {
  external factory CSSMathMax({dynamic args});

  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  external CSSNumericArray get values;
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// contains a list of [CSSNumericValue] objects.
@experimental
@JS()
class CSSNumericArray {
  external CSSNumericValue operator [](int index);

  ///  Returns how many [CSSNumericValue] objects are contained within
  /// the [CSSNumericArray].
  external int get length;

  external factory CSSNumericArray();
}

@JS()
enum CSSMathOperator { sum, product, negate, invert, min, max, clamp }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///   Draft
///   This page is not complete.
///
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents [transform-list] values as used by the CSS [transform]
/// property.
@experimental
@JS()
class CSSTransformValue extends CSSStyleValue {
  external factory CSSTransformValue(
      {Iterable<CSSTransformComponent>? transforms});

  ///  Returns how many transform components are contained within the
  /// [CSSTransformValue].
  external int get length;

  /// Returns a boolean indicating whether the transform is 2D or 3D.
  external bool get is2D;

  /// Returns a new [DOMMatrix] object.
  /// var matrix = CSSTransformValue.toMatrix();
  external DOMMatrix toMatrix();
}

///
///
///  The interface of the of the
/// CSS_Object_Model#css_typed_object_model is part of the
/// [CSSTransformValue] interface.
@experimental
@JS()
class CSSTransformComponent {
  @override
  external String toString();

  /// Returns a boolean indicting whether the transform is 2D or 3D.
  external bool get is2D;
  external set is2D(bool newValue);

  /// Returns a new [DOMMatrix] object.
  /// var matrix = CSSTransformComponent.toMatrix();
  external DOMMatrix toMatrix();

  external factory CSSTransformComponent();
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the translate() value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
class CSSTranslate extends CSSTransformComponent {
  external factory CSSTranslate(
      {CSSNumericValue x, CSSNumericValue y, CSSNumericValue? z});

  /// Returns or sets the x-axis value.
  external CSSNumericValue get x;
  external set x(CSSNumericValue newValue);

  /// Returns or sets the y-axis value.
  external CSSNumericValue get y;
  external set y(CSSNumericValue newValue);

  /// Returns or sets the z-axis value.
  external CSSNumericValue get z;
  external set z(CSSNumericValue newValue);
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the rotate value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
class CSSRotate extends CSSTransformComponent {
  external factory CSSRotate(
      {dynamic x, dynamic y, dynamic z, CSSNumericValue angle});

  /// Returns or sets the x-axis value.
  external dynamic get x;
  external set x(dynamic newValue);

  /// Returns or sets the y-axis value.
  external dynamic get y;
  external set y(dynamic newValue);

  /// Returns or sets the z-axis value.
  external dynamic get z;
  external set z(dynamic newValue);

  /// Returns or sets the angle value.
  external CSSNumericValue get angle;
  external set angle(CSSNumericValue newValue);
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the scale() and scale3d() values of the individual
/// [transform] property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@experimental
@JS()
class CSSScale extends CSSTransformComponent {
  external factory CSSScale({dynamic x, dynamic y, dynamic z});

  /// Returns or sets the x-axis value.
  external dynamic get x;
  external set x(dynamic newValue);

  /// Returns or sets the y-axis value.
  external dynamic get y;
  external set y(dynamic newValue);

  /// Returns or sets the z-axis value.
  external dynamic get z;
  external set z(dynamic newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///   Draft
///   This page is not complete.
///
///  The interface of the CSS_Object_Model#css_typed_object_model is
/// part of the [CSSTransformValue] interface. It represents the
/// [skew()] value of the individual [transform] property in CSS.
@experimental
@JS()
class CSSSkew extends CSSTransformComponent {
  external factory CSSSkew({CSSNumericValue ax, CSSNumericValue ay});

  /// Returns or sets the x-axis value.
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue newValue);

  /// Returns or sets the y-axis value.
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///   Draft
///   This page is not complete.
///
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the [skewX()] value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
class CSSSkewX extends CSSTransformComponent {
  external factory CSSSkewX({CSSNumericValue ax});

  /// Returns or sets the x-axis value.
  external CSSNumericValue get ax;
  external set ax(CSSNumericValue newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///   Draft
///   This page is not complete.
///
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the [skewY()] value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
class CSSSkewY extends CSSTransformComponent {
  external factory CSSSkewY({CSSNumericValue ay});

  /// Returns or sets the y-axis value.
  external CSSNumericValue get ay;
  external set ay(CSSNumericValue newValue);
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the perspective() value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
@experimental
@JS()
class CSSPerspective extends CSSTransformComponent {
  external factory CSSPerspective({CSSNumericValue length});

  /// Returns or sets the distance from z=0.
  external CSSNumericValue get length;
  external set length(CSSNumericValue newValue);
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the matrix() and matrix3d() values of the individual
/// [transform] property in CSS. It inherits properties and methods
/// from its parent [CSSTransformValue].
@experimental
@JS()
class CSSMatrixComponent extends CSSTransformComponent {
  external factory CSSMatrixComponent(
      {DOMMatrixReadOnly matrix, CSSMatrixComponentOptions? options});

  /// A matrix.
  external DOMMatrix get matrix;
  external set matrix(DOMMatrix newValue);
}

@anonymous
@JS()
class CSSMatrixComponentOptions {
  external bool get is2D;
  external set is2D(bool newValue);

  external factory CSSMatrixComponentOptions({bool is2D});
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface of the CSS Typed Object Model API represents
/// values for properties that take a position, for example
/// [object-position].
@experimental
@deprecated
@JS()
class CSSPositionValue extends CSSStyleValue {
  ///  Returns the item's position along the web page's horizontal
  /// axis.
  external CSSNumericValue get x;
  external set x(CSSNumericValue newValue);

  /// Returns the item's position along the vertical axis.
  external CSSNumericValue get y;
  external set y(CSSNumericValue newValue);

  external factory CSSPositionValue();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the CSS Typed Object Model API represents
/// values for properties that take an image, for example
/// [background-image], [list-style-image], or [border-image-source].
/// The CSSImageValue object represents an [<image>] that involves an
/// URL, such as [url()] or [image()], but not [linear-gradient() ]or
/// [element()] .
@experimental
@JS()
class CSSImageValue extends CSSStyleValue {
  external factory CSSImageValue();
}

@JS()
class CSSMathClamp extends CSSMathValue {
  external factory CSSMathClamp({dynamic min, dynamic val, dynamic max});
  external CSSNumericValue get val;
}

@JS()
class CSSColorValue extends CSSStyleValue {
  external dynamic get colorSpace;
  external CSSColorValue to(dynamic colorSpace);
  external static CSSColorValue parse(String cssText);

  external factory CSSColorValue();
}

@JS()
class CSSRGB extends CSSColorValue {
  external factory CSSRGB({dynamic r, dynamic g, dynamic b, dynamic alpha = 1});
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
class CSSHSL extends CSSColorValue {
  external factory CSSHSL(
      {CSSNumericValue h, dynamic s, dynamic l, dynamic alpha = 1});
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
class CSSHWB extends CSSColorValue {
  external factory CSSHWB(
      {CSSNumericValue h, dynamic w, dynamic b, dynamic alpha = 1});
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
class CSSLCH extends CSSColorValue {
  external factory CSSLCH(
      {dynamic l, dynamic c, CSSNumericValue h, dynamic alpha = 1});
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
class CSSLab extends CSSColorValue {
  external factory CSSLab({dynamic l, dynamic a, dynamic b, dynamic alpha = 1});
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
class CSSColor extends CSSColorValue {
  external factory CSSColor(
      {dynamic colorSpace, Iterable<dynamic> channels, dynamic alpha = 1});
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
class CSSDeviceCMYK extends CSSColorValue {
  external factory CSSDeviceCMYK(
      {dynamic c, dynamic m, dynamic y, dynamic k, dynamic alpha = 1});
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
