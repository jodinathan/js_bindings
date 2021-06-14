/// CSS Parser API
///
/// https://wicg.github.io/css-parser-api/
@JS('window')
library css_parser_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'streams.dart';
import 'css_typed_om_1.dart';
import 'cssom_1.dart';

@anonymous
@JS()
class CSSParserOptions {
  external dynamic get atRules;
  external set atRules(dynamic newValue);

  external factory CSSParserOptions({dynamic atRules});
}

@JS()
class CSSParserRule {
  external factory CSSParserRule();
}

@JS()
class CSSParserAtRule extends CSSParserRule {
  external factory CSSParserAtRule(
      {String name, Iterable<dynamic> prelude, Iterable<CSSParserRule>? body});
  external String get name;
  external Iterable<CSSParserValue> get prelude;
  external Iterable<CSSParserRule> get body;
  @override
  external String toString();
}

@JS()
class CSSParserQualifiedRule extends CSSParserRule {
  external factory CSSParserQualifiedRule(
      {Iterable<dynamic> prelude, Iterable<CSSParserRule>? body});
  external Iterable<CSSParserValue> get prelude;
  external Iterable<CSSParserRule> get body;
  @override
  external String toString();
}

@JS()
class CSSParserDeclaration extends CSSParserRule {
  external factory CSSParserDeclaration(
      {String name, Iterable<CSSParserRule>? body});
  external String get name;
  external Iterable<CSSParserValue> get body;
  @override
  external String toString();
}

@JS()
class CSSParserValue {
  external factory CSSParserValue();
}

@JS()
class CSSParserBlock extends CSSParserValue {
  external factory CSSParserBlock({String name, Iterable<CSSParserValue> body});
  external String get name;
  external Iterable<CSSParserValue> get body;
  @override
  external String toString();
}

@JS()
class CSSParserFunction extends CSSParserValue {
  external factory CSSParserFunction(
      {String name, Iterable<Iterable<CSSParserValue>> args});
  external String get name;
  external Iterable<Iterable<CSSParserValue>> get args;
  @override
  external String toString();
}
