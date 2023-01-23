/// DOM Parsing and Serialization
///
/// https://w3c.github.io/DOM-Parsing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library dom_parsing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface provides the [serializeToString()] method to
/// construct an XML string representing a DOM tree.
@JS()
@staticInterop
class XMLSerializer {
  external factory XMLSerializer();
}

extension PropsXMLSerializer on XMLSerializer {
  String serializeToString(Node root) =>
      js_util.callMethod(this, 'serializeToString', [root]);
}

@JS()
@staticInterop
class InnerHTML {
  external factory InnerHTML();
}

extension PropsInnerHTML on InnerHTML {
  String get innerHTML => js_util.getProperty(this, 'innerHTML');
  set innerHTML(String newValue) {
    js_util.setProperty(this, 'innerHTML', newValue);
  }
}

enum SupportedType {
  textHtml('text/html'),
  textXml('text/xml'),
  applicationXml('application/xml'),
  applicationXhtmlxml('application/xhtml+xml'),
  imageSvgxml('image/svg+xml');

  final String value;
  static SupportedType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SupportedType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const SupportedType(this.value);
}
