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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///
///   The interface of the [HTML Sanitizer API] provides methods to
/// sanitize untrusted strings of HTML, [Document] and
/// [DocumentFragment] objects.
///   After sanitization, unwanted elements or attributes are
/// removed, and the returned objects can safely be inserted into a
/// document’s DOM.
///
///  A object is also used by the [Element.setHTML()] method to parse
/// and sanitize a string of HTML, and immediately insert it into an
/// element.
///
///   The default configuration strips out XSS-relevant input by
/// default, including [<script>] tags, custom elements, and
/// comments.
///  This configuration may be customized using constructor options.
///
@JS()
@staticInterop
class Sanitizer {
  external Sanitizer([SanitizerConfig? config]);
}

extension PropsSanitizer on Sanitizer {
  ///  Returns a sanitized [DocumentFragment] from an input [Document]
  /// or [DocumentFragment]
  ///
  /// sanitize(input)
  ///
  DocumentFragment sanitize(

          /// A [DocumentFragment] or [Document] to be sanitized.
          ///
          dynamic input) =>
      js_util.callMethod(this, 'sanitize', [input]);

  String sanitizeToString(dynamic input) =>
      js_util.callMethod(this, 'sanitizeToString', [input]);

  SanitizerConfig config() => js_util.callMethod(this, 'config', []);

  static SanitizerConfig defaultConfig() =>
      js_util.callMethod(Sanitizer, 'defaultConfig', []);
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
      required bool allowCustomElements});
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
}
