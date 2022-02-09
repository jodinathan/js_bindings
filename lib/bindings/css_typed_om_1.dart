/// CSS Typed OM Level 1
///
/// https://drafts.css-houdini.org/css-typed-om-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_typed_om_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSSStyleValue {
  external CSSStyleValue();
}

extension PropsCSSStyleValue on CSSStyleValue {
  String mToString() => js_util.callMethod(this, 'toString', []);

  static dynamic parse(String property, String cssText) =>
      js_util.callMethod(CSSStyleValue, 'parse', [property, cssText]);

  static Iterable<CSSStyleValue> parseAll(String property, String cssText) =>
      js_util.callMethod(CSSStyleValue, 'parseAll', [property, cssText]);
}

@JS()
@staticInterop
class StylePropertyMapReadOnly extends JsArray<Iterable<CSSStyleValue>> {
  external StylePropertyMapReadOnly();
}

extension PropsStylePropertyMapReadOnly on StylePropertyMapReadOnly {
  @JS('get')
  @staticInterop
  dynamic mGet(String property) => js_util.callMethod(this, 'get', [property]);

  Iterable<CSSStyleValue> getAll(String property) =>
      js_util.callMethod(this, 'getAll', [property]);

  bool has(String property) => js_util.callMethod(this, 'has', [property]);

  int get size => js_util.getProperty(this, 'size');
}

@JS()
@staticInterop
class StylePropertyMap implements StylePropertyMapReadOnly {
  external StylePropertyMap();
}

extension PropsStylePropertyMap on StylePropertyMap {
  @JS('set')
  @staticInterop
  Object mSet(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'set', [property, values1, values2, values3]);

  Object append(String property,
          [dynamic values1, dynamic values2, dynamic values3]) =>
      js_util.callMethod(this, 'append', [property, values1, values2, values3]);

  Object delete(String property) =>
      js_util.callMethod(this, 'delete', [property]);

  Object clear() => js_util.callMethod(this, 'clear', []);
}

@JS()
@staticInterop
class CSSUnparsedValue implements CSSStyleValue {
  external CSSUnparsedValue([Iterable<dynamic>? members]);
}

extension PropsCSSUnparsedValue on CSSUnparsedValue {
  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class CSSVariableReferenceValue {
  external CSSVariableReferenceValue(String variable,
      [CSSUnparsedValue? fallback]);
}

extension PropsCSSVariableReferenceValue on CSSVariableReferenceValue {
  String get variable => js_util.getProperty(this, 'variable');
  set variable(String newValue) {
    js_util.setProperty(this, 'variable', newValue);
  }

  CSSUnparsedValue? get fallback => js_util.getProperty(this, 'fallback');
}

@JS()
@staticInterop
class CSSKeywordValue implements CSSStyleValue {
  external CSSKeywordValue(String value);
}

extension PropsCSSKeywordValue on CSSKeywordValue {
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

@JS()
@staticInterop
class CSSUnitValue implements CSSNumericValue {
  external CSSUnitValue(double value, String unit);
}

extension PropsCSSUnitValue on CSSUnitValue {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get unit => js_util.getProperty(this, 'unit');
}

@JS()
@staticInterop
class CSSMathValue implements CSSNumericValue {
  external CSSMathValue();
}

extension PropsCSSMathValue on CSSMathValue {
  @JS('operator')
  @staticInterop
  CSSMathOperator get mOperator =>
      CSSMathOperator.values.byName(js_util.getProperty(this, 'operator'));
}

@JS()
@staticInterop
class CSSMathSum implements CSSMathValue {
  external CSSMathSum([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathSum on CSSMathSum {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class CSSMathProduct implements CSSMathValue {
  external CSSMathProduct([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathProduct on CSSMathProduct {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class CSSMathNegate implements CSSMathValue {
  external CSSMathNegate(dynamic arg);
}

extension PropsCSSMathNegate on CSSMathNegate {
  CSSNumericValue get value => js_util.getProperty(this, 'value');
}

@JS()
@staticInterop
class CSSMathInvert implements CSSMathValue {
  external CSSMathInvert(dynamic arg);
}

extension PropsCSSMathInvert on CSSMathInvert {
  CSSNumericValue get value => js_util.getProperty(this, 'value');
}

@JS()
@staticInterop
class CSSMathMin implements CSSMathValue {
  external CSSMathMin([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMin on CSSMathMin {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class CSSMathMax implements CSSMathValue {
  external CSSMathMax([dynamic args1, dynamic args2, dynamic args3]);
}

extension PropsCSSMathMax on CSSMathMax {
  CSSNumericArray get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class CSSMathClamp implements CSSMathValue {
  external CSSMathClamp(dynamic lower, dynamic value, dynamic upper);
}

extension PropsCSSMathClamp on CSSMathClamp {
  CSSNumericValue get lower => js_util.getProperty(this, 'lower');
  CSSNumericValue get value => js_util.getProperty(this, 'value');
  CSSNumericValue get upper => js_util.getProperty(this, 'upper');
}

@JS()
@staticInterop
class CSSNumericArray extends JsArray<CSSNumericValue> {
  external CSSNumericArray();
}

extension PropsCSSNumericArray on CSSNumericArray {
  int get length => js_util.getProperty(this, 'length');
}

enum CSSMathOperator { sum, product, negate, invert, min, max, clamp }

@JS()
@staticInterop
class CSSTransformValue implements CSSStyleValue {
  external CSSTransformValue([Iterable<CSSTransformComponent>? transforms]);
}

extension PropsCSSTransformValue on CSSTransformValue {
  int get length => js_util.getProperty(this, 'length');
  bool get is2D => js_util.getProperty(this, 'is2D');
  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
}

@JS()
@staticInterop
class CSSTransformComponent {
  external CSSTransformComponent();
}

extension PropsCSSTransformComponent on CSSTransformComponent {
  String mToString() => js_util.callMethod(this, 'toString', []);

  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }

  DOMMatrix toMatrix() => js_util.callMethod(this, 'toMatrix', []);
}

@JS()
@staticInterop
class CSSTranslate implements CSSTransformComponent {
  external CSSTranslate(CSSNumericValue x, CSSNumericValue y,
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

@JS()
@staticInterop
class CSSRotate implements CSSTransformComponent {
  external CSSRotate([dynamic x, dynamic y, dynamic z, CSSNumericValue? angle]);
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

@JS()
@staticInterop
class CSSScale implements CSSTransformComponent {
  external CSSScale(dynamic x, dynamic y, [dynamic z]);
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

@JS()
@staticInterop
class CSSSkew implements CSSTransformComponent {
  external CSSSkew(CSSNumericValue ax, CSSNumericValue ay);
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

@JS()
@staticInterop
class CSSSkewX implements CSSTransformComponent {
  external CSSSkewX(CSSNumericValue ax);
}

extension PropsCSSSkewX on CSSSkewX {
  CSSNumericValue get ax => js_util.getProperty(this, 'ax');
  set ax(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ax', newValue);
  }
}

@JS()
@staticInterop
class CSSSkewY implements CSSTransformComponent {
  external CSSSkewY(CSSNumericValue ay);
}

extension PropsCSSSkewY on CSSSkewY {
  CSSNumericValue get ay => js_util.getProperty(this, 'ay');
  set ay(CSSNumericValue newValue) {
    js_util.setProperty(this, 'ay', newValue);
  }
}

@JS()
@staticInterop
class CSSPerspective implements CSSTransformComponent {
  external CSSPerspective(dynamic length);
}

extension PropsCSSPerspective on CSSPerspective {
  dynamic get length => js_util.getProperty(this, 'length');
  set length(dynamic newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

@JS()
@staticInterop
class CSSMatrixComponent implements CSSTransformComponent {
  external CSSMatrixComponent(DOMMatrixReadOnly matrix,
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
  external factory CSSMatrixComponentOptions({required bool is2D});
}

extension PropsCSSMatrixComponentOptions on CSSMatrixComponentOptions {
  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }
}

@JS()
@staticInterop
class CSSImageValue implements CSSStyleValue {
  external CSSImageValue();
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

  static dynamic parse(String cssText) =>
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
  external Csshsl(dynamic h, dynamic s, dynamic l, [dynamic alpha = 1]);
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

@JS('CSSLCH')
@staticInterop
class Csslch implements CSSColorValue {
  external Csslch(dynamic l, dynamic c, dynamic h, [dynamic alpha = 1]);
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
  external CSSOKLab(dynamic l, dynamic a, dynamic b, [dynamic alpha = 1]);
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
  external Cssoklch(dynamic l, dynamic c, dynamic h, [dynamic alpha = 1]);
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
  external CSSColor(dynamic colorSpace, Iterable<dynamic> channels,
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
