/// CSS Parser API
///
/// https://wicg.github.io/css-parser-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_parser_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class CSSParserOptions {
  external factory CSSParserOptions({dynamic atRules});
}

extension PropsCSSParserOptions on CSSParserOptions {
  dynamic get atRules => js_util.getProperty(this, 'atRules');
  set atRules(dynamic newValue) {
    js_util.setProperty(this, 'atRules', newValue);
  }
}

@JS()
@staticInterop
class CSSParserRule {
  external factory CSSParserRule();
}

@JS()
@staticInterop
class CSSParserAtRule implements CSSParserRule {
  external factory CSSParserAtRule(String name, Iterable<dynamic> prelude,
      [Iterable<CSSParserRule>? body]);
}

extension PropsCSSParserAtRule on CSSParserAtRule {
  String get name => js_util.getProperty(this, 'name');
  Iterable<CSSParserValue> get prelude => js_util.getProperty(this, 'prelude');
  Iterable<CSSParserRule> get body => js_util.getProperty(this, 'body');
  String mToString() => js_util.callMethod(this, 'toString', []);
}

@JS()
@staticInterop
class CSSParserQualifiedRule implements CSSParserRule {
  external factory CSSParserQualifiedRule(Iterable<dynamic> prelude,
      [Iterable<CSSParserRule>? body]);
}

extension PropsCSSParserQualifiedRule on CSSParserQualifiedRule {
  Iterable<CSSParserValue> get prelude => js_util.getProperty(this, 'prelude');
  Iterable<CSSParserRule> get body => js_util.getProperty(this, 'body');
  String mToString() => js_util.callMethod(this, 'toString', []);
}

@JS()
@staticInterop
class CSSParserDeclaration implements CSSParserRule {
  external factory CSSParserDeclaration(String name,
      [Iterable<CSSParserRule>? body]);
}

extension PropsCSSParserDeclaration on CSSParserDeclaration {
  String get name => js_util.getProperty(this, 'name');
  Iterable<CSSParserValue> get body => js_util.getProperty(this, 'body');
  String mToString() => js_util.callMethod(this, 'toString', []);
}

@JS()
@staticInterop
class CSSParserValue {
  external factory CSSParserValue();
}

@JS()
@staticInterop
class CSSParserBlock implements CSSParserValue {
  external factory CSSParserBlock(String name, Iterable<CSSParserValue> body);
}

extension PropsCSSParserBlock on CSSParserBlock {
  String get name => js_util.getProperty(this, 'name');
  Iterable<CSSParserValue> get body => js_util.getProperty(this, 'body');
  String mToString() => js_util.callMethod(this, 'toString', []);
}

@JS()
@staticInterop
class CSSParserFunction implements CSSParserValue {
  external factory CSSParserFunction(
      String name, Iterable<Iterable<CSSParserValue>> args);
}

extension PropsCSSParserFunction on CSSParserFunction {
  String get name => js_util.getProperty(this, 'name');
  Iterable<Iterable<CSSParserValue>> get args =>
      js_util.getProperty(this, 'args');
  String mToString() => js_util.callMethod(this, 'toString', []);
}
