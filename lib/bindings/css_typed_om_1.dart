/// CSS Typed OM Level 1
///
/// https://drafts.css-houdini.org/css-typed-om-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_typed_om_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external CSSStyleValue();
}

extension PropsCSSStyleValue on CSSStyleValue {
  String mToString() => js_util.callMethod(this, 'toString', []);

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
  static dynamic parse(String property, String cssText) =>
      js_util.callMethod(CSSStyleValue, 'parse', [property, cssText]);

  ///  Sets all occurrences of a specific CSS property to the specified
  /// value and returns an array of [CSSStyleValue] objects, each
  /// containing one of the supplied values.
  ///
  /// CSSStyleValue.parseAll(property, value)
  ///
  static Iterable<CSSStyleValue> parseAll(String property, String cssText) =>
      js_util.callMethod(CSSStyleValue, 'parseAll', [property, cssText]);
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
  external StylePropertyMapReadOnly();
}

extension PropsStylePropertyMapReadOnly on StylePropertyMapReadOnly {
  Iterable<CSSStyleValue> operator [](String index) =>
      js_util.getProperty(this, index);
  operator []=(String index, Iterable<CSSStyleValue> value) {
    js_util.setProperty(this, index, value);
  }

  /// Returns the value of the specified property.
  ///
  /// var declarationBlock = StylePropertyMapReadOnly.get(property)
  ///
  @JS('get')
  @staticInterop
  dynamic mGet(String property) => js_util.callMethod(this, 'get', [property]);

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
  Iterable<CSSStyleValue> getAll(String property) =>
      js_util.callMethod(this, 'getAll', [property]);

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
  bool has(String property) => js_util.callMethod(this, 'has', [property]);

  ///  Returns an unsinged long integer containing the size of the
  /// [StylePropertyMapReadOnly] object.
  ///
  int get size => js_util.getProperty(this, 'size');
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
  external StylePropertyMap();
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
  Object mSet(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'set', [property, values1, values2, values3]);

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
  Object append(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'append', [property, values1, values2, values3]);

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
  Object delete(String property) =>
      js_util.callMethod(this, 'delete', [property]);

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
  Object clear() => js_util.callMethod(this, 'clear', []);
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
  external CSSUnparsedValue([Iterable<dynamic>? members]);
}

extension PropsCSSUnparsedValue on CSSUnparsedValue {
  /// Returns the number of items in the [CSSUnparsedValue] object.
  ///
  int get length => js_util.getProperty(this, 'length');
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
  external CSSVariableReferenceValue(String variable,
      [CSSUnparsedValue? fallback]);
}

extension PropsCSSVariableReferenceValue on CSSVariableReferenceValue {
  /// Returns the custom name passed to the constructor.
  ///
  String get variable => js_util.getProperty(this, 'variable');
  set variable(String newValue) {
    js_util.setProperty(this, 'variable', newValue);
  }

  /// Returns the built-in CSS value for the custom name.
  ///
  CSSUnparsedValue? get fallback => js_util.getProperty(this, 'fallback');
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
  external CSSKeywordValue(String value);
}

extension PropsCSSKeywordValue on CSSKeywordValue {
  /// Returns or sets the value of the [CSSKeywordValue].
  ///
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
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
  external factory CSSNumericType._(
      {required int length,
      required int angle,
      required int time,
      required int frequency,
      required int resolution,
      required int flex,
      required int percent,
      required String percentHint});

  factory CSSNumericType(
          {required int length,
          required int angle,
          required int time,
          required int frequency,
          required int resolution,
          required int flex,
          required int percent,
          required CSSNumericBaseType percentHint}) =>
      CSSNumericType._(
          length: length,
          angle: angle,
          time: time,
          frequency: frequency,
          resolution: resolution,
          flex: flex,
          percent: percent,
          percentHint: percentHint.name);
}

extension PropsCSSNumericType on CSSNumericType {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  int get angle => js_util.getProperty(this, 'angle');
  set angle(int newValue) {
    js_util.setProperty(this, 'angle', newValue);
  }

  int get time => js_util.getProperty(this, 'time');
  set time(int newValue) {
    js_util.setProperty(this, 'time', newValue);
  }

  int get frequency => js_util.getProperty(this, 'frequency');
  set frequency(int newValue) {
    js_util.setProperty(this, 'frequency', newValue);
  }

  int get resolution => js_util.getProperty(this, 'resolution');
  set resolution(int newValue) {
    js_util.setProperty(this, 'resolution', newValue);
  }

  int get flex => js_util.getProperty(this, 'flex');
  set flex(int newValue) {
    js_util.setProperty(this, 'flex', newValue);
  }

  int get percent => js_util.getProperty(this, 'percent');
  set percent(int newValue) {
    js_util.setProperty(this, 'percent', newValue);
  }

  CSSNumericBaseType get percentHint => CSSNumericBaseType.values
      .byName(js_util.getProperty(this, 'percentHint'));
  set percentHint(CSSNumericBaseType newValue) {
    js_util.setProperty(this, 'percentHint', newValue.name);
  }
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
  external CSSNumericValue();
}

extension PropsCSSNumericValue on CSSNumericValue {
  CSSNumericValue add([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'add', [values1, values2, values3]);

  CSSNumericValue sub([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'sub', [values1, values2, values3]);

  CSSNumericValue mul([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'mul', [values1, values2, values3]);

  CSSNumericValue div([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'div', [values1, values2, values3]);

  CSSNumericValue min([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'min', [values1, values2, values3]);

  CSSNumericValue max([dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'max', [values1, values2, values3]);

  bool equals([dynamic value1, dynamic value2, dynamic value3]) =>
      js_util.callMethod(this, 'equals', [value1, value2, value3]);

  CSSUnitValue to(String unit) => js_util.callMethod(this, 'to', [unit]);

  CSSMathSum toSum([String? units1, String? units2, String? units3]) =>
      js_util.callMethod(this, 'toSum', [units1, units2, units3]);

  CSSNumericType type() => js_util.callMethod(this, 'type', []);

  static CSSNumericValue parse(String cssText) =>
      js_util.callMethod(CSSNumericValue, 'parse', [cssText]);
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
  external CSSUnitValue(double value, String unit);
}

extension PropsCSSUnitValue on CSSUnitValue {
  /// Returns a double indicating the number of units.
  ///
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  /// Returns a [String] indicating the type of unit.
  ///
  String get unit => js_util.getProperty(this, 'unit');
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
  external CSSMathValue();
}

extension PropsCSSMathValue on CSSMathValue {
  /// Indicates the operator that the current subtype represents.
  ///
  @JS('operator')
  @staticInterop
  CSSMathOperator get mOperator =>
      CSSMathOperator.values.byName(js_util.getProperty(this, 'operator'));
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
  external CSSMathSum([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathSum on CSSMathSum {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  CSSNumericArray get values => js_util.getProperty(this, 'values');
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
  external CSSMathProduct([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathProduct on CSSMathProduct {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  CSSNumericArray get values => js_util.getProperty(this, 'values');
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
  external CSSMathNegate(dynamic arg);
}

extension PropsCSSMathNegate on CSSMathNegate {
  /// Returns a [CSSNumericValue] object.
  ///
  CSSNumericValue get value => js_util.getProperty(this, 'value');
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
  external CSSMathInvert(dynamic arg);
}

extension PropsCSSMathInvert on CSSMathInvert {
  /// Returns a [CSSNumericValue] object.
  ///
  CSSNumericValue get value => js_util.getProperty(this, 'value');
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
  external CSSMathMin([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMin on CSSMathMin {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  CSSNumericArray get values => js_util.getProperty(this, 'values');
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
  external CSSMathMax([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMax on CSSMathMax {
  ///  Returns a [CSSNumericArray] object which contains one or more
  /// [CSSNumericValue] objects.
  ///
  CSSNumericArray get values => js_util.getProperty(this, 'values');
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
  external CSSNumericArray();
}

extension PropsCSSNumericArray on CSSNumericArray {
  CSSNumericValue operator [](int index) => js_util.getProperty(this, index);
  operator []=(int index, CSSNumericValue value) {
    js_util.setProperty(this, index, value);
  }

  ///  Returns how many [CSSNumericValue] objects are contained within
  /// the [CSSNumericArray].
  ///
  int get length => js_util.getProperty(this, 'length');
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
  external CSSTransformValue([Iterable<CSSTransformComponent>? transforms]);
}

extension PropsCSSTransformValue on CSSTransformValue {
  ///  Returns how many transform components are contained within the
  /// [CSSTransformValue].
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns a boolean indicating whether the transform is 2D or 3D.
  ///
  bool get is2D => js_util.getProperty(this, 'is2D');

  /// Returns a new [DOMMatrix] object.
  ///
  /// var matrix = CSSTransformValue.toMatrix();
  ///
  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
}

///  The interface of the CSS_Object_Model#css_typed_object_model is
/// part of the [CSSTransformValue] interface.
@experimental
@JS()
@staticInterop
class CSSTransformComponent {
  external CSSTransformComponent();
}

extension PropsCSSTransformComponent on CSSTransformComponent {
  String mToString() => js_util.callMethod(this, 'toString', []);

  /// Returns a boolean indicting whether the transform is 2D or 3D.
  ///
  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }

  /// Returns a new [DOMMatrix] object.
  ///
  /// var matrix = CSSTransformComponent.toMatrix();
  ///
  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
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
  external CSSTranslate(CSSNumericValue x, CSSNumericValue y,
      [CSSNumericValue? z]);
}

extension PropsCSSTranslate on CSSTranslate {
  /// Returns or sets the x-axis value.
  ///
  CSSNumericValue get x => js_util.getProperty(this, 'x');
  set x(CSSNumericValue newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  /// Returns or sets the y-axis value.
  ///
  CSSNumericValue get y => js_util.getProperty(this, 'y');
  set y(CSSNumericValue newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  /// Returns or sets the z-axis value.
  ///
  CSSNumericValue get z => js_util.getProperty(this, 'z');
  set z(CSSNumericValue newValue) {
    js_util.setProperty(this, 'z', newValue);
  }
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
  external CSSRotate([dynamic x, dynamic y, dynamic z, CSSNumericValue? angle]);
}

extension PropsCSSRotate on CSSRotate {
  /// Returns or sets the x-axis value.
  ///
  dynamic get x => js_util.getProperty(this, 'x');
  set x(dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  /// Returns or sets the y-axis value.
  ///
  dynamic get y => js_util.getProperty(this, 'y');
  set y(dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  /// Returns or sets the z-axis value.
  ///
  dynamic get z => js_util.getProperty(this, 'z');
  set z(dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

  /// Returns or sets the angle value.
  ///
  CSSNumericValue get angle => js_util.getProperty(this, 'angle');
  set angle(CSSNumericValue newValue) {
    js_util.setProperty(this, 'angle', newValue);
  }
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
  external CSSScale(dynamic x, dynamic y, [dynamic z]);
}

extension PropsCSSScale on CSSScale {
  /// Returns or sets the x-axis value.
  ///
  dynamic get x => js_util.getProperty(this, 'x');
  set x(dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  /// Returns or sets the y-axis value.
  ///
  dynamic get y => js_util.getProperty(this, 'y');
  set y(dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  /// Returns or sets the z-axis value.
  ///
  dynamic get z => js_util.getProperty(this, 'z');
  set z(dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }
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
  external CSSSkew(CSSNumericValue ax, CSSNumericValue ay);
}

extension PropsCSSSkew on CSSSkew {
  /// Returns or sets the x-axis value.
  ///
  CSSNumericValue get ax => js_util.getProperty(this, 'ax');
  set ax(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ax', newValue);
  }

  /// Returns or sets the y-axis value.
  ///
  CSSNumericValue get ay => js_util.getProperty(this, 'ay');
  set ay(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ay', newValue);
  }
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
  external CSSSkewX(CSSNumericValue ax);
}

extension PropsCSSSkewX on CSSSkewX {
  /// Returns or sets the x-axis value.
  ///
  CSSNumericValue get ax => js_util.getProperty(this, 'ax');
  set ax(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ax', newValue);
  }
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
  external CSSSkewY(CSSNumericValue ay);
}

extension PropsCSSSkewY on CSSSkewY {
  /// Returns or sets the y-axis value.
  ///
  CSSNumericValue get ay => js_util.getProperty(this, 'ay');
  set ay(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ay', newValue);
  }
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
  external CSSPerspective(CSSNumericValue length);
}

extension PropsCSSPerspective on CSSPerspective {
  /// Returns or sets the distance from z=0.
  ///
  CSSNumericValue get length => js_util.getProperty(this, 'length');
  set length(CSSNumericValue newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
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
  external CSSMatrixComponent(DOMMatrixReadOnly matrix,
      [CSSMatrixComponentOptions? options]);
}

extension PropsCSSMatrixComponent on CSSMatrixComponent {
  /// A matrix.
  ///
  DOMMatrix get matrix => js_util.getProperty(this, 'matrix');
  set matrix(DOMMatrix newValue) {
    js_util.setProperty(this, 'matrix', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions({required bool is2D});
}

extension PropsCSSMatrixComponentOptions on CSSMatrixComponentOptions {
  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }
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
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class CSSPositionValue implements CSSStyleValue {
  external CSSPositionValue();
}

extension PropsCSSPositionValue on CSSPositionValue {
  ///  Returns the item's position along the web page's horizontal
  /// axis.
  ///
  CSSNumericValue get x => js_util.getProperty(this, 'x');
  set x(CSSNumericValue newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  /// Returns the item's position along the vertical axis.
  ///
  CSSNumericValue get y => js_util.getProperty(this, 'y');
  set y(CSSNumericValue newValue) {
    js_util.setProperty(this, 'y', newValue);
  }
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
  external CSSImageValue();
}

@JS()
@staticInterop
class CSSMathClamp implements CSSMathValue {
  external CSSMathClamp(dynamic min, dynamic val, dynamic max);
}

extension PropsCSSMathClamp on CSSMathClamp {
  CSSNumericValue get val => js_util.getProperty(this, 'val');
}

@JS()
@staticInterop
class CSSColorValue implements CSSStyleValue {
  external CSSColorValue();
}

extension PropsCSSColorValue on CSSColorValue {
  dynamic get colorSpace => js_util.getProperty(this, 'colorSpace');
  CSSColorValue to(dynamic colorSpace) =>
      js_util.callMethod(this, 'to', [colorSpace]);

  static CSSColorValue parse(String cssText) =>
      js_util.callMethod(CSSColorValue, 'parse', [cssText]);
}

@JS('CSSRGB')
@staticInterop
class Cssrgb implements CSSColorValue {
  external Cssrgb(dynamic r, dynamic g, dynamic b, [dynamic alpha = 1]);
}

extension PropsCssrgb on Cssrgb {
  dynamic get r => js_util.getProperty(this, 'r');
  set r(dynamic newValue) {
    js_util.setProperty(this, 'r', newValue);
  }

  dynamic get g => js_util.getProperty(this, 'g');
  set g(dynamic newValue) {
    js_util.setProperty(this, 'g', newValue);
  }

  dynamic get b => js_util.getProperty(this, 'b');
  set b(dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS('CSSHSL')
@staticInterop
class Csshsl implements CSSColorValue {
  external Csshsl(CSSNumericValue h, dynamic s, dynamic l, [dynamic alpha = 1]);
}

extension PropsCsshsl on Csshsl {
  CSSNumericValue get h => js_util.getProperty(this, 'h');
  set h(CSSNumericValue newValue) {
    js_util.setProperty(this, 'h', newValue);
  }

  dynamic get s => js_util.getProperty(this, 's');
  set s(dynamic newValue) {
    js_util.setProperty(this, 's', newValue);
  }

  dynamic get l => js_util.getProperty(this, 'l');
  set l(dynamic newValue) {
    js_util.setProperty(this, 'l', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS('CSSHWB')
@staticInterop
class Csshwb implements CSSColorValue {
  external Csshwb(CSSNumericValue h, dynamic w, dynamic b, [dynamic alpha = 1]);
}

extension PropsCsshwb on Csshwb {
  CSSNumericValue get h => js_util.getProperty(this, 'h');
  set h(CSSNumericValue newValue) {
    js_util.setProperty(this, 'h', newValue);
  }

  dynamic get w => js_util.getProperty(this, 'w');
  set w(dynamic newValue) {
    js_util.setProperty(this, 'w', newValue);
  }

  dynamic get b => js_util.getProperty(this, 'b');
  set b(dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS('CSSLCH')
@staticInterop
class Csslch implements CSSColorValue {
  external Csslch(dynamic l, dynamic c, CSSNumericValue h, [dynamic alpha = 1]);
}

extension PropsCsslch on Csslch {
  dynamic get l => js_util.getProperty(this, 'l');
  set l(dynamic newValue) {
    js_util.setProperty(this, 'l', newValue);
  }

  dynamic get c => js_util.getProperty(this, 'c');
  set c(dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

  CSSNumericValue get h => js_util.getProperty(this, 'h');
  set h(CSSNumericValue newValue) {
    js_util.setProperty(this, 'h', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class CSSLab implements CSSColorValue {
  external CSSLab(dynamic l, dynamic a, dynamic b, [dynamic alpha = 1]);
}

extension PropsCSSLab on CSSLab {
  dynamic get l => js_util.getProperty(this, 'l');
  set l(dynamic newValue) {
    js_util.setProperty(this, 'l', newValue);
  }

  dynamic get a => js_util.getProperty(this, 'a');
  set a(dynamic newValue) {
    js_util.setProperty(this, 'a', newValue);
  }

  dynamic get b => js_util.getProperty(this, 'b');
  set b(dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class CSSColor implements CSSColorValue {
  external CSSColor(dynamic colorSpace, Iterable<dynamic> channels,
      [dynamic alpha = 1]);
}

extension PropsCSSColor on CSSColor {
  dynamic get colorSpace => js_util.getProperty(this, 'colorSpace');
  set colorSpace(dynamic newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
  }

  dynamic get channels => js_util.getProperty(this, 'channels');
  set channels(dynamic newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class CSSDeviceCMYK implements CSSColorValue {
  external CSSDeviceCMYK(dynamic c, dynamic m, dynamic y, dynamic k,
      [dynamic alpha = 1]);
}

extension PropsCSSDeviceCMYK on CSSDeviceCMYK {
  dynamic get c => js_util.getProperty(this, 'c');
  set c(dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

  dynamic get m => js_util.getProperty(this, 'm');
  set m(dynamic newValue) {
    js_util.setProperty(this, 'm', newValue);
  }

  dynamic get y => js_util.getProperty(this, 'y');
  set y(dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  dynamic get k => js_util.getProperty(this, 'k');
  set k(dynamic newValue) {
    js_util.setProperty(this, 'k', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}
