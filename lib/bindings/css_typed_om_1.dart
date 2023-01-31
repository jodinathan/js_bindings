/// CSS Typed OM Level 1
///
/// https://drafts.css-houdini.org/css-typed-om-1/

// ignore_for_file: unused_import

@JS('self')
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
  external static dynamic parse(String property, String cssText);
  external static Iterable<CSSStyleValue> parseAll(
      String property, String cssText);
  external factory CSSStyleValue();
}

extension PropsCSSStyleValue on CSSStyleValue {
  String mToString() => js_util.callMethod(this, 'toString', []);
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
class StylePropertyMapReadOnly extends JsArray<Iterable<CSSStyleValue>> {
  external factory StylePropertyMapReadOnly();
}

extension PropsStylePropertyMapReadOnly on StylePropertyMapReadOnly {
  dynamic get(String property) => js_util.callMethod(this, 'get', [property]);

  Iterable<CSSStyleValue> getAll(String property) =>
      js_util.callMethod(this, 'getAll', [property]);

  bool has(String property) => js_util.callMethod(this, 'has', [property]);

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
  external factory StylePropertyMap();
}

extension PropsStylePropertyMap on StylePropertyMap {
  void set(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'set', [property, values1, values2, values3]);

  void append(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'append', [property, values1, values2, values3]);

  void delete(String property) =>
      js_util.callMethod(this, 'delete', [property]);

  void clear() => js_util.callMethod(this, 'clear', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents property values that reference custom properties. It
/// consists of a list of string fragments and variable references.
///  Custom properties are represented by and [var()] references are
/// represented using [CSSVariableReferenceValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSUnparsedValue
///
///
@experimental
@JS()
@staticInterop
class CSSUnparsedValue implements CSSStyleValue {
  external factory CSSUnparsedValue(Iterable<dynamic> members);
}

extension PropsCSSUnparsedValue on CSSUnparsedValue {
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
  external factory CSSVariableReferenceValue(String variable,
      [CSSUnparsedValue? fallback]);
}

extension PropsCSSVariableReferenceValue on CSSVariableReferenceValue {
  String get variable => js_util.getProperty(this, 'variable');
  set variable(String newValue) {
    js_util.setProperty(this, 'variable', newValue);
  }

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
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSKeywordValue
///
///
@experimental
@JS()
@staticInterop
class CSSKeywordValue implements CSSStyleValue {
  external factory CSSKeywordValue(String value);
}

extension PropsCSSKeywordValue on CSSKeywordValue {
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

enum CSSNumericBaseType {
  length('length'),
  angle('angle'),
  time('time'),
  frequency('frequency'),
  resolution('resolution'),
  flex('flex'),
  percent('percent');

  final String value;
  static CSSNumericBaseType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CSSNumericBaseType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CSSNumericBaseType(this.value);
}

@anonymous
@JS()
@staticInterop
class CSSNumericType {
  external factory CSSNumericType._(
      {int? length,
      int? angle,
      int? time,
      int? frequency,
      int? resolution,
      int? flex,
      int? percent,
      String? percentHint});

  factory CSSNumericType(
          {int? length,
          int? angle,
          int? time,
          int? frequency,
          int? resolution,
          int? flex,
          int? percent,
          CSSNumericBaseType? percentHint}) =>
      CSSNumericType._(
          length: length,
          angle: angle,
          time: time,
          frequency: frequency,
          resolution: resolution,
          flex: flex,
          percent: percent,
          percentHint: percentHint?.value);
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

  CSSNumericBaseType get percentHint =>
      CSSNumericBaseType.fromValue(js_util.getProperty(this, 'percentHint'));
  set percentHint(CSSNumericBaseType newValue) {
    js_util.setProperty(this, 'percentHint', newValue.value);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Typed Object Model API represents
/// operations that all numeric values can perform.
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
@experimental
@JS()
@staticInterop
class CSSNumericValue implements CSSStyleValue {
  external static CSSNumericValue parse(String cssText);
  external factory CSSNumericValue();
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
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents values that contain a single unit type. For example,
/// "42px" would be represented by a [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSUnitValue
///
///
@experimental
@JS()
@staticInterop
class CSSUnitValue implements CSSNumericValue {
  external factory CSSUnitValue(double value, String unit);
}

extension PropsCSSUnitValue on CSSUnitValue {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get unit => js_util.getProperty(this, 'unit');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model a
/// base class for classes representing complex numeric values.
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
@experimental
@JS()
@staticInterop
class CSSMathValue implements CSSNumericValue {
  external factory CSSMathValue();
}

extension PropsCSSMathValue on CSSMathValue {
  CSSMathOperator get operator =>
      CSSMathOperator.fromValue(js_util.getProperty(this, 'operator'));
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
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathSum
///
///
@experimental
@JS()
@staticInterop
class CSSMathSum implements CSSMathValue {
  external factory CSSMathSum([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathSum on CSSMathSum {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the result obtained by calling [add()], [sub()], or
/// [toSum()] on [CSSNumericValue]. It inherits properties and
/// methods from its parent [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathProduct
///
///
@experimental
@JS()
@staticInterop
class CSSMathProduct implements CSSMathValue {
  external factory CSSMathProduct(
      [dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathProduct on CSSMathProduct {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// negates the value passed into it. It inherits properties and
/// methods from its parent [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathNegate
///
///
@experimental
@JS()
@staticInterop
class CSSMathNegate implements CSSMathValue {
  external factory CSSMathNegate(dynamic arg);
}

extension PropsCSSMathNegate on CSSMathNegate {
  CSSNumericValue get value => js_util.getProperty(this, 'value');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents a CSS [calc()] used as [calc(1 / <value>).] It
/// inherits properties and methods from its parent
/// [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathInvert
///
///
@experimental
@JS()
@staticInterop
class CSSMathInvert implements CSSMathValue {
  external factory CSSMathInvert(dynamic arg);
}

extension PropsCSSMathInvert on CSSMathInvert {
  CSSNumericValue get value => js_util.getProperty(this, 'value');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [min()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathMin
///
///
@experimental
@JS()
@staticInterop
class CSSMathMin implements CSSMathValue {
  external factory CSSMathMin([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMin on CSSMathMin {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the CSS [max()] function. It inherits properties and
/// methods from its parent [CSSNumericValue].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSNumericValue
///
///
///
///
///
///    CSSMathValue
///
///
///
///
///
///    CSSMathMax
///
///
@experimental
@JS()
@staticInterop
class CSSMathMax implements CSSMathValue {
  external factory CSSMathMax([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMax on CSSMathMax {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class CSSMathClamp implements CSSMathValue {
  external factory CSSMathClamp(dynamic lower, dynamic value, dynamic upper);
}

extension PropsCSSMathClamp on CSSMathClamp {
  CSSNumericValue get lower => js_util.getProperty(this, 'lower');
  CSSNumericValue get value => js_util.getProperty(this, 'value');
  CSSNumericValue get upper => js_util.getProperty(this, 'upper');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// contains a list of [CSSNumericValue] objects.
@experimental
@JS()
@staticInterop
class CSSNumericArray extends JsArray<CSSNumericValue> {
  external factory CSSNumericArray();
}

extension PropsCSSNumericArray on CSSNumericArray {
  int get length => js_util.getProperty(this, 'length');
}

enum CSSMathOperator {
  sum('sum'),
  product('product'),
  negate('negate'),
  invert('invert'),
  min('min'),
  max('max'),
  clamp('clamp');

  final String value;
  static CSSMathOperator fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CSSMathOperator> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CSSMathOperator(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents [transform-list] values as used by the CSS [transform]
/// property.
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSTransformValue
///
///
@experimental
@JS()
@staticInterop
class CSSTransformValue implements CSSStyleValue {
  external factory CSSTransformValue(
      Iterable<CSSTransformComponent> transforms);
}

extension PropsCSSTransformValue on CSSTransformValue {
  int get length => js_util.getProperty(this, 'length');
  bool get is2D => js_util.getProperty(this, 'is2D');
  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
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
  String mToString() => js_util.callMethod(this, 'toString', []);

  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }

  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS_Object_Model#css_typed_object_model
/// represents the translate() value of the individual [transform]
/// property in CSS. It inherits properties and methods from its
/// parent [CSSTransformValue].
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSTranslate
///
///
@experimental
@JS()
@staticInterop
class CSSTranslate implements CSSTransformComponent {
  external factory CSSTranslate(CSSNumericValue x, CSSNumericValue y,
      [CSSNumericValue? z]);
}

extension PropsCSSTranslate on CSSTranslate {
  CSSNumericValue get x => js_util.getProperty(this, 'x');
  set x(CSSNumericValue newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  CSSNumericValue get y => js_util.getProperty(this, 'y');
  set y(CSSNumericValue newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSRotate
///
///
@experimental
@JS()
@staticInterop
class CSSRotate implements CSSTransformComponent {
  external factory CSSRotate(
      [dynamic x, dynamic y, dynamic z, CSSNumericValue? angle]);
}

extension PropsCSSRotate on CSSRotate {
  dynamic get x => js_util.getProperty(this, 'x');
  set x(dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  dynamic get y => js_util.getProperty(this, 'y');
  set y(dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  dynamic get z => js_util.getProperty(this, 'z');
  set z(dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSScale
///
///
@experimental
@JS()
@staticInterop
class CSSScale implements CSSTransformComponent {
  external factory CSSScale(dynamic x, dynamic y, [dynamic z]);
}

extension PropsCSSScale on CSSScale {
  dynamic get x => js_util.getProperty(this, 'x');
  set x(dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  dynamic get y => js_util.getProperty(this, 'y');
  set y(dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSSkew
///
///
@experimental
@JS()
@staticInterop
class CSSSkew implements CSSTransformComponent {
  external factory CSSSkew(CSSNumericValue ax, CSSNumericValue ay);
}

extension PropsCSSSkew on CSSSkew {
  CSSNumericValue get ax => js_util.getProperty(this, 'ax');
  set ax(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ax', newValue);
  }

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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSSkewX
///
///
@experimental
@JS()
@staticInterop
class CSSSkewX implements CSSTransformComponent {
  external factory CSSSkewX(CSSNumericValue ax);
}

extension PropsCSSSkewX on CSSSkewX {
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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSSkewY
///
///
@experimental
@JS()
@staticInterop
class CSSSkewY implements CSSTransformComponent {
  external factory CSSSkewY(CSSNumericValue ay);
}

extension PropsCSSSkewY on CSSSkewY {
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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSPerspective
///
///
@experimental
@JS()
@staticInterop
class CSSPerspective implements CSSTransformComponent {
  external factory CSSPerspective(dynamic length);
}

extension PropsCSSPerspective on CSSPerspective {
  dynamic get length => js_util.getProperty(this, 'length');
  set length(dynamic newValue) {
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
///
///
///
///    CSSTransformComponent
///
///
///
///
///
///    CSSMatrixComponent
///
///
@experimental
@JS()
@staticInterop
class CSSMatrixComponent implements CSSTransformComponent {
  external factory CSSMatrixComponent(DOMMatrixReadOnly matrix,
      [CSSMatrixComponentOptions? options]);
}

extension PropsCSSMatrixComponent on CSSMatrixComponent {
  DOMMatrix get matrix => js_util.getProperty(this, 'matrix');
  set matrix(DOMMatrix newValue) {
    js_util.setProperty(this, 'matrix', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CSSMatrixComponentOptions {
  external factory CSSMatrixComponentOptions({bool? is2D});
}

extension PropsCSSMatrixComponentOptions on CSSMatrixComponentOptions {
  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
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
/// or [element()].
///
///
///
///    CSSStyleValue
///
///
///
///
///
///    CSSImageValue
///
///
@experimental
@JS()
@staticInterop
class CSSImageValue implements CSSStyleValue {
  external factory CSSImageValue();
}

@JS()
@staticInterop
class CSSColorValue implements CSSStyleValue {
  external static dynamic parse(String cssText);
  external factory CSSColorValue();
}

@JS('CSSRGB')
@staticInterop
class Cssrgb implements CSSColorValue {
  external factory Cssrgb(dynamic r, dynamic g, dynamic b, [dynamic alpha = 1]);
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
  external factory Csshsl(dynamic h, dynamic s, dynamic l, [dynamic alpha = 1]);
}

extension PropsCsshsl on Csshsl {
  dynamic get h => js_util.getProperty(this, 'h');
  set h(dynamic newValue) {
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
  external factory Csshwb(CSSNumericValue h, dynamic w, dynamic b,
      [dynamic alpha = 1]);
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

@JS()
@staticInterop
class CSSLab implements CSSColorValue {
  external factory CSSLab(dynamic l, dynamic a, dynamic b, [dynamic alpha = 1]);
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

@JS('CSSLCH')
@staticInterop
class Csslch implements CSSColorValue {
  external factory Csslch(dynamic l, dynamic c, dynamic h, [dynamic alpha = 1]);
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

  dynamic get h => js_util.getProperty(this, 'h');
  set h(dynamic newValue) {
    js_util.setProperty(this, 'h', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class CSSOKLab implements CSSColorValue {
  external factory CSSOKLab(dynamic l, dynamic a, dynamic b,
      [dynamic alpha = 1]);
}

extension PropsCSSOKLab on CSSOKLab {
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

@JS('CSSOKLCH')
@staticInterop
class Cssoklch implements CSSColorValue {
  external factory Cssoklch(dynamic l, dynamic c, dynamic h,
      [dynamic alpha = 1]);
}

extension PropsCssoklch on Cssoklch {
  dynamic get l => js_util.getProperty(this, 'l');
  set l(dynamic newValue) {
    js_util.setProperty(this, 'l', newValue);
  }

  dynamic get c => js_util.getProperty(this, 'c');
  set c(dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

  dynamic get h => js_util.getProperty(this, 'h');
  set h(dynamic newValue) {
    js_util.setProperty(this, 'h', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class CSSColor implements CSSColorValue {
  external factory CSSColor(dynamic colorSpace, Iterable<dynamic> channels,
      [dynamic alpha = 1]);
}

extension PropsCSSColor on CSSColor {
  dynamic get colorSpace => js_util.getProperty(this, 'colorSpace');
  set colorSpace(dynamic newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
  }

  Iterable<dynamic> get channels => js_util.getProperty(this, 'channels');
  set channels(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  dynamic get alpha => js_util.getProperty(this, 'alpha');
  set alpha(dynamic newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}
