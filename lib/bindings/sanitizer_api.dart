/// HTML Sanitizer API
///
/// https://wicg.github.io/sanitizer-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library sanitizer_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Sanitizer {
  external Sanitizer([SanitizerConfig? config]);
}

extension PropsSanitizer on Sanitizer {
  DocumentFragment sanitize(dynamic input) =>
      js_util.callMethod(this, 'sanitize', [input]);

  Element? sanitizeFor(String element, String input) =>
      js_util.callMethod(this, 'sanitizeFor', [element, input]);

  SanitizerConfig getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

  static SanitizerConfig getDefaultConfiguration() =>
      js_util.callMethod(Sanitizer, 'getDefaultConfiguration', []);
}

@anonymous
@JS()
@staticInterop
class SetHTMLOptions {
  external factory SetHTMLOptions({required Sanitizer sanitizer});
}

extension PropsSetHTMLOptions on SetHTMLOptions {
  Sanitizer get sanitizer => js_util.getProperty(this, 'sanitizer');
  set sanitizer(Sanitizer newValue) {
    js_util.setProperty(this, 'sanitizer', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SanitizerConfig {
  external factory SanitizerConfig(
      {required Iterable<String> allowElements,
      required Iterable<String> blockElements,
      required Iterable<String> dropElements,
      dynamic allowAttributes,
      dynamic dropAttributes,
      required bool allowCustomElements,
      required bool allowComments});
}

extension PropsSanitizerConfig on SanitizerConfig {
  Iterable<String> get allowElements =>
      js_util.getProperty(this, 'allowElements');
  set allowElements(Iterable<String> newValue) {
    js_util.setProperty(this, 'allowElements', newValue);
  }

  Iterable<String> get blockElements =>
      js_util.getProperty(this, 'blockElements');
  set blockElements(Iterable<String> newValue) {
    js_util.setProperty(this, 'blockElements', newValue);
  }

  Iterable<String> get dropElements =>
      js_util.getProperty(this, 'dropElements');
  set dropElements(Iterable<String> newValue) {
    js_util.setProperty(this, 'dropElements', newValue);
  }

  dynamic get allowAttributes => js_util.getProperty(this, 'allowAttributes');
  set allowAttributes(dynamic newValue) {
    js_util.setProperty(this, 'allowAttributes', newValue);
  }

  dynamic get dropAttributes => js_util.getProperty(this, 'dropAttributes');
  set dropAttributes(dynamic newValue) {
    js_util.setProperty(this, 'dropAttributes', newValue);
  }

  bool get allowCustomElements =>
      js_util.getProperty(this, 'allowCustomElements');
  set allowCustomElements(bool newValue) {
    js_util.setProperty(this, 'allowCustomElements', newValue);
  }

  bool get allowComments => js_util.getProperty(this, 'allowComments');
  set allowComments(bool newValue) {
    js_util.setProperty(this, 'allowComments', newValue);
  }
}
