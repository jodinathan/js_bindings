/// JSON-LD 1.1 Framing
///
/// https://w3c.github.io/json-ld-framing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library json_ld11_framing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class JsonLdFramingError {
  external factory JsonLdFramingError._(
      {required String code, String? message});

  factory JsonLdFramingError(
          {required JsonLdFramingErrorCode code, String? message}) =>
      JsonLdFramingError._(code: code.name, message: message);
}

extension PropsJsonLdFramingError on JsonLdFramingError {
  JsonLdFramingErrorCode get code =>
      JsonLdFramingErrorCode.values.byName(js_util.getProperty(this, 'code'));
  set code(JsonLdFramingErrorCode newValue) {
    js_util.setProperty(this, 'code', newValue.name);
  }

  String? get message => js_util.getProperty(this, 'message');
  set message(String? newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

enum JsonLdFramingErrorCode { invalidFrame, invalidembedValue }

enum JsonLdEmbed { always, once, never }
