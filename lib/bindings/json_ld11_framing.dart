/// JSON-LD 1.1 Framing
///
/// https://w3c.github.io/json-ld-framing/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library json_ld11_framing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class JsonLdFramingError {
  external factory JsonLdFramingError._({String? code, String? message});

  factory JsonLdFramingError({JsonLdFramingErrorCode? code, String? message}) =>
      JsonLdFramingError._(
          code: code?.value ?? undefined, message: message ?? undefined);
}

extension PropsJsonLdFramingError on JsonLdFramingError {
  JsonLdFramingErrorCode get code =>
      JsonLdFramingErrorCode.fromValue(js_util.getProperty(this, 'code'));
  set code(JsonLdFramingErrorCode newValue) {
    js_util.setProperty(this, 'code', newValue.value);
  }

  String? get message => js_util.getProperty(this, 'message');
  set message(String? newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

enum JsonLdFramingErrorCode {
  invalidFrame('invalid frame'),
  invalidembedValue('invalid @embed value');

  final String value;
  static JsonLdFramingErrorCode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<JsonLdFramingErrorCode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const JsonLdFramingErrorCode(this.value);
}

enum JsonLdEmbed {
  always('@always'),
  once('@once'),
  never('@never');

  final String value;
  static JsonLdEmbed fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<JsonLdEmbed> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const JsonLdEmbed(this.value);
}
