/// HTML Sanitizer API
///
/// https://wicg.github.io/sanitizer-api/
@JS('window')
@staticInterop
library sanitizer_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

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
  external factory Sanitizer([SanitizerConfig? config]);
}

extension PropsSanitizer on Sanitizer {
  ///  Returns a sanitized [DocumentFragment] from an input [Document]
  /// or [DocumentFragment]
  ///
  /// sanitize(input)
  ///
  external DocumentFragment sanitize(dynamic input);
  external String sanitizeToString(dynamic input);
  external SanitizerConfig config();
  external static SanitizerConfig defaultConfig();
}

@anonymous
@JS()
@staticInterop
class SanitizerConfig {
  external factory SanitizerConfig(
      {Iterable<String> allowElements,
      Iterable<String> blockElements,
      Iterable<String> dropElements,
      dynamic allowAttributes,
      dynamic dropAttributes,
      bool allowCustomElements});
}

extension PropsSanitizerConfig on SanitizerConfig {
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
}
