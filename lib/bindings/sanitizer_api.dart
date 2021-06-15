/// HTML Sanitizer API
///
/// https://wicg.github.io/sanitizer-api/
@JS('window')
library sanitizer_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [HTML Sanitizer API] allows developers to
/// take untrusted strings of HTML, and sanitize them for safe
/// insertion into a document’s DOM.
@JS()
class Sanitizer {
  external factory Sanitizer([SanitizerConfig? config]);

  ///  Returns a sanitized [DocumentFragment] from an input, removing
  /// any offending elements or attributes.
  /// var DocumentFragment = sanitizer.sanitize(input);
  external DocumentFragment sanitize(dynamic input);

  ///  Returns a sanitized [String] from an input, removing any
  /// offending elements or attributes.
  /// var String = sanitizer.sanitizeToString(input);
  external String sanitizeToString(dynamic input);
  external SanitizerConfig config();
  external static SanitizerConfig defaultConfig();
}

@anonymous
@JS()
class SanitizerConfig {
  external Iterable<String> get allowElements;
  external set allowElements(Iterable<String> newValue);
  external Iterable<String> get blockElements;
  external set blockElements(Iterable<String> newValue);
  external Iterable<String> get dropElements;
  external set dropElements(Iterable<String> newValue);
  external dynamic get allowAttributes;
  external set allowAttributes(dynamic newValue);
  external dynamic get dropAttributes;
  external set dropAttributes(dynamic newValue);
  external bool get allowCustomElements;
  external set allowCustomElements(bool newValue);

  external factory SanitizerConfig(
      {Iterable<String> allowElements,
      Iterable<String> blockElements,
      Iterable<String> dropElements,
      dynamic allowAttributes,
      dynamic dropAttributes,
      bool allowCustomElements});
}
