/// DOM Parsing and Serialization
///
/// https://w3c.github.io/DOM-Parsing/
@JS('window')
@staticInterop
library d_o_m_parsing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

///  The interface provides the [serializeToString()] method to
/// construct an XML string representing a DOM tree.
@JS()
@staticInterop
class XMLSerializer {
  external XMLSerializer();
}

extension PropsXMLSerializer on XMLSerializer {
  /// Returns the serialized subtree of a string.
  ///
  /// xmlString = anXMLSerializer.serializeToString(rootNode);
  ///
  String serializeToString(Node root) =>
      js_util.callMethod(this, 'serializeToString', [root]);
}

@JS()
@staticInterop
class InnerHTML {
  external InnerHTML();
}

extension PropsInnerHTML on InnerHTML {
  String get innerHTML => js_util.getProperty(this, 'innerHTML');
  set innerHTML(String newValue) {
    js_util.setProperty(this, 'innerHTML', newValue);
  }
}

enum SupportedType {
  textHtml,
  textXml,
  applicationXml,
  applicationXhtmlxml,
  imageSvgxml
}
