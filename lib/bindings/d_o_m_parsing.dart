/// DOM Parsing and Serialization
///
/// https://w3c.github.io/DOM-Parsing/
@JS('window')
library d_o_m_parsing;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

///
///
/// The interface provides
///   the ability to parse XML or HTML source code from a
///   string into a DOM [Document].
///
///  You can perform the opposite operation—converting a DOM tree
/// into XML or HTML
///  source—using the [XMLSerializer] interface.
///
///  In the case of an HTML document, you can also replace portions
/// of the DOM with new DOM
///   trees built from HTML by setting the value of the
/// [Element.innerHTML] and
///  [outerHTML] properties. These properties can also be
///   read to fetch HTML fragments corresponding to the corresponding
/// DOM subtree.
///
/// Note that [XMLHttpRequest] can parse XML and HTML directly
///  from a URL-addressable resource, returning a [Document] in its
///  [response] property.
@JS()
class DOMParser {
  ///  Parses a string using either the HTML parser or the XML parser,
  /// returning an [HTMLDocument] or [XMLDocument].
  /// const doc = domparser.parseFromString(string, mimeType)
  external Document parseFromString(String str, SupportedType type);

  external factory DOMParser();
}

///
///
///  The interface provides the [serializeToString()] method to
/// construct an XML string representing a DOM tree.
@JS()
class XMLSerializer {
  external factory XMLSerializer();
  external String serializeToString(Node root);
}

@JS()
mixin InnerHTML {
  external String get innerHTML;
  external set innerHTML(String newValue);
}

@JS()
enum SupportedType {
  @JS('text/html')
  textHtml,
  @JS('text/xml')
  textXml,
  @JS('application/xml')
  applicationXml,
  @JS('application/xhtml+xml')
  applicationXhtmlxml,
  @JS('image/svg+xml')
  imageSvgxml
}
