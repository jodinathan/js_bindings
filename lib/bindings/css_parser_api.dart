/// CSS Parser API
///
/// https://wicg.github.io/css-parser-api/
@JS('window')
@staticInterop
library css_parser_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: streams
css_typed_om_1
cssom_1 */

@anonymous
@JS()
@staticInterop
class CSSParserOptions {
  external factory CSSParserOptions({dynamic atRules});
}

extension PropsCSSParserOptions on CSSParserOptions {
  external dynamic get atRules;
  external set atRules(dynamic newValue);
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
  external String get name;
  external Iterable<CSSParserValue> get prelude;
  external Iterable<CSSParserRule> get body;
  @JS('toString')
  external String mToString();
}

@JS()
@staticInterop
class CSSParserQualifiedRule implements CSSParserRule {
  external factory CSSParserQualifiedRule(Iterable<dynamic> prelude,
      [Iterable<CSSParserRule>? body]);
}

extension PropsCSSParserQualifiedRule on CSSParserQualifiedRule {
  external Iterable<CSSParserValue> get prelude;
  external Iterable<CSSParserRule> get body;
  @JS('toString')
  external String mToString();
}

@JS()
@staticInterop
class CSSParserDeclaration implements CSSParserRule {
  external factory CSSParserDeclaration(String name,
      [Iterable<CSSParserRule>? body]);
}

extension PropsCSSParserDeclaration on CSSParserDeclaration {
  external String get name;
  external Iterable<CSSParserValue> get body;
  @JS('toString')
  external String mToString();
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
  external String get name;
  external Iterable<CSSParserValue> get body;
  @JS('toString')
  external String mToString();
}

@JS()
@staticInterop
class CSSParserFunction implements CSSParserValue {
  external factory CSSParserFunction(
      String name, Iterable<Iterable<CSSParserValue>> args);
}

extension PropsCSSParserFunction on CSSParserFunction {
  external String get name;
  external Iterable<Iterable<CSSParserValue>> get args;
  @JS('toString')
  external String mToString();
}
