/// HTML Standard
///
/// https://html.spec.whatwg.org/multipage/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library html;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class HTMLAllCollection {
  external factory HTMLAllCollection();
}

extension PropsHTMLAllCollection on HTMLAllCollection {
  int get length => js_util.getProperty(this, 'length');
  dynamic namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);

  dynamic item([String? nameOrIndex]) =>
      js_util.callMethod(this, 'item', [nameOrIndex]);
}

///  The interface represents a collection of HTML form control
/// elements.
///  It represents the lists returned by the [HTMLFormElement]
/// interface's [elements] property and the [HTMLFieldSetElement]
/// interface's [elements] property.
///  This interface replaces one method from [HTMLCollection], on
/// which it is based.
///
///
///
///    HTMLCollection
///
///
///
///
///
///    HTMLFormControlsCollection
///
///
@JS()
@staticInterop
class HTMLFormControlsCollection implements HTMLCollection {
  external factory HTMLFormControlsCollection();
}

extension PropsHTMLFormControlsCollection on HTMLFormControlsCollection {
  dynamic namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

///  The interface represents a collection of radio elements in a
/// [<form>] or a [<fieldset>] element.
///
///
///
///    NodeList
///
///
///
///
///
///    RadioNodeList
///
///
@JS()
@staticInterop
class RadioNodeList implements NodeList {
  external factory RadioNodeList();
}

extension PropsRadioNodeList on RadioNodeList {
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

///  The interface represents a collection of [<option>] HTML
/// elements (in document order) and offers methods and properties
/// for selecting from the list as well as optionally altering its
/// items. This object is returned only by the [options] property of
/// select.
///
///
///
///    HTMLCollection
///
///
///
///
///
///    HTMLOptionsCollection
///
///
@JS()
@staticInterop
class HTMLOptionsCollection implements HTMLCollection {
  external factory HTMLOptionsCollection();
}

extension PropsHTMLOptionsCollection on HTMLOptionsCollection {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  void add(dynamic element, [dynamic before]) =>
      js_util.callMethod(this, 'add', [element, before]);

  void remove(int index) => js_util.callMethod(this, 'remove', [index]);

  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  set selectedIndex(int newValue) {
    js_util.setProperty(this, 'selectedIndex', newValue);
  }
}

///  A type returned by some APIs which contains a list of DOMString
/// (strings).
@JS()
@staticInterop
class DOMStringList {
  external factory DOMStringList();
}

extension PropsDOMStringList on DOMStringList {
  int get length => js_util.getProperty(this, 'length');
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  bool contains(String string) =>
      js_util.callMethod(this, 'contains', [string]);
}

enum DocumentReadyState {
  loading('loading'),
  interactive('interactive'),
  complete('complete');

  final String value;
  static DocumentReadyState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<DocumentReadyState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const DocumentReadyState(this.value);
}

enum DocumentVisibilityState {
  visible('visible'),
  hidden('hidden');

  final String value;
  static DocumentVisibilityState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<DocumentVisibilityState> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const DocumentVisibilityState(this.value);
}

///  The interface represents any HTML element. Some elements
/// directly implement this interface, while others implement it via
/// an interface that inherits it.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
@JS()
@staticInterop
class HTMLElement
    implements
        Element,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers,
        ElementContentEditable,
        HTMLOrSVGElement,
        ElementCSSInlineStyle {
  external factory HTMLElement();
}

extension PropsHTMLElement on HTMLElement {
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  bool get translate => js_util.getProperty(this, 'translate');
  set translate(bool newValue) {
    js_util.setProperty(this, 'translate', newValue);
  }

  String get dir => js_util.getProperty(this, 'dir');
  set dir(String newValue) {
    js_util.setProperty(this, 'dir', newValue);
  }

  dynamic get hidden => js_util.getProperty(this, 'hidden');
  set hidden(dynamic newValue) {
    js_util.setProperty(this, 'hidden', newValue);
  }

  bool get inert => js_util.getProperty(this, 'inert');
  set inert(bool newValue) {
    js_util.setProperty(this, 'inert', newValue);
  }

  void click() => js_util.callMethod(this, 'click', []);

  String get accessKey => js_util.getProperty(this, 'accessKey');
  set accessKey(String newValue) {
    js_util.setProperty(this, 'accessKey', newValue);
  }

  String get accessKeyLabel => js_util.getProperty(this, 'accessKeyLabel');
  bool get draggable => js_util.getProperty(this, 'draggable');
  set draggable(bool newValue) {
    js_util.setProperty(this, 'draggable', newValue);
  }

  bool get spellcheck => js_util.getProperty(this, 'spellcheck');
  set spellcheck(bool newValue) {
    js_util.setProperty(this, 'spellcheck', newValue);
  }

  String get autocapitalize => js_util.getProperty(this, 'autocapitalize');
  set autocapitalize(String newValue) {
    js_util.setProperty(this, 'autocapitalize', newValue);
  }

  String get innerText => js_util.getProperty(this, 'innerText');
  set innerText(String newValue) {
    js_util.setProperty(this, 'innerText', newValue);
  }

  String get outerText => js_util.getProperty(this, 'outerText');
  set outerText(String newValue) {
    js_util.setProperty(this, 'outerText', newValue);
  }

  ElementInternals attachInternals() =>
      js_util.callMethod(this, 'attachInternals', []);

  Element? get offsetParent => js_util.getProperty(this, 'offsetParent');
  int get offsetTop => js_util.getProperty(this, 'offsetTop');
  int get offsetLeft => js_util.getProperty(this, 'offsetLeft');
  int get offsetWidth => js_util.getProperty(this, 'offsetWidth');
  int get offsetHeight => js_util.getProperty(this, 'offsetHeight');
}

///  The interface represents an invalid HTML element and derives
/// from the [HTMLElement] interface, but without implementing any
/// additional properties or methods.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLUnknownElement
///
///
@JS()
@staticInterop
class HTMLUnknownElement implements HTMLElement {
  external factory HTMLUnknownElement();
}

@JS()
@staticInterop
class HTMLOrSVGElement {
  external factory HTMLOrSVGElement();
}

extension PropsHTMLOrSVGElement on HTMLOrSVGElement {
  DOMStringMap get dataset => js_util.getProperty(this, 'dataset');
  String get nonce => js_util.getProperty(this, 'nonce');
  set nonce(String newValue) {
    js_util.setProperty(this, 'nonce', newValue);
  }

  bool get autofocus => js_util.getProperty(this, 'autofocus');
  set autofocus(bool newValue) {
    js_util.setProperty(this, 'autofocus', newValue);
  }

  int get tabIndex => js_util.getProperty(this, 'tabIndex');
  set tabIndex(int newValue) {
    js_util.setProperty(this, 'tabIndex', newValue);
  }

  void focus([FocusOptions? options]) =>
      js_util.callMethod(this, 'focus', [options]);

  void blur() => js_util.callMethod(this, 'blur', []);
}

///  The interface is used for the
/// [HTMLElement.dataset]/[SVGElement.dataset] attribute, to
/// represent data for custom attributes added to elements.
@JS()
@staticInterop
class DOMStringMap {
  external factory DOMStringMap();
}

///  The interface serves as the root node for a given HTML document.
/// This object inherits the properties and methods described in the
/// [HTMLElement] interface.
///  You can retrieve the object for a given document by reading the
/// value of the [document.documentElement] property.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLHtmlElement
///
///
@JS()
@staticInterop
class HTMLHtmlElement implements HTMLElement {
  external factory HTMLHtmlElement();
}

extension PropsHTMLHtmlElement on HTMLHtmlElement {
  String get version => js_util.getProperty(this, 'version');
  set version(String newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}

///  The interface contains the descriptive information, or metadata,
/// for a document. This object inherits all of the properties and
/// methods described in the [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLHeadElement
///
///
@JS()
@staticInterop
class HTMLHeadElement implements HTMLElement {
  external factory HTMLHeadElement();
}

///  The interface contains the title for a document. This element
/// inherits all of the properties and methods of the [HTMLElement]
/// interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTitleElement
///
///
@JS()
@staticInterop
class HTMLTitleElement implements HTMLElement {
  external factory HTMLTitleElement();
}

extension PropsHTMLTitleElement on HTMLTitleElement {
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }
}

///  The interface contains the base URI for a document. This object
/// inherits all of the properties and methods as described in the
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLBaseElement
///
///
@JS()
@staticInterop
class HTMLBaseElement implements HTMLElement {
  external factory HTMLBaseElement();
}

extension PropsHTMLBaseElement on HTMLBaseElement {
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }
}

///  The interface represents reference information for external
/// resources and the relationship of those resources to a document
/// and vice-versa (corresponds to [<link>] element; not to be
/// confused with [<a>], which is represented by
/// [HTMLAnchorElement]). This object inherits all of the properties
/// and methods of the [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLLinkElement
///
///
@JS()
@staticInterop
class HTMLLinkElement implements HTMLElement, LinkStyle {
  external factory HTMLLinkElement();
}

extension PropsHTMLLinkElement on HTMLLinkElement {
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  String get as => js_util.getProperty(this, 'as');
  set as(String newValue) {
    js_util.setProperty(this, 'as', newValue);
  }

  DOMTokenList get relList => js_util.getProperty(this, 'relList');
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get integrity => js_util.getProperty(this, 'integrity');
  set integrity(String newValue) {
    js_util.setProperty(this, 'integrity', newValue);
  }

  String get hreflang => js_util.getProperty(this, 'hreflang');
  set hreflang(String newValue) {
    js_util.setProperty(this, 'hreflang', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  DOMTokenList get sizes => js_util.getProperty(this, 'sizes');
  String get imageSrcset => js_util.getProperty(this, 'imageSrcset');
  set imageSrcset(String newValue) {
    js_util.setProperty(this, 'imageSrcset', newValue);
  }

  String get imageSizes => js_util.getProperty(this, 'imageSizes');
  set imageSizes(String newValue) {
    js_util.setProperty(this, 'imageSizes', newValue);
  }

  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  DOMTokenList get blocking => js_util.getProperty(this, 'blocking');
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  String get fetchPriority => js_util.getProperty(this, 'fetchPriority');
  set fetchPriority(String newValue) {
    js_util.setProperty(this, 'fetchPriority', newValue);
  }

  String get charset => js_util.getProperty(this, 'charset');
  set charset(String newValue) {
    js_util.setProperty(this, 'charset', newValue);
  }

  String get rev => js_util.getProperty(this, 'rev');
  set rev(String newValue) {
    js_util.setProperty(this, 'rev', newValue);
  }

  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }
}

///  The interface contains descriptive metadata about a document. It
/// inherits all of the properties and methods described in the
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMetaElement
///
///
@JS()
@staticInterop
class HTMLMetaElement implements HTMLElement {
  external factory HTMLMetaElement();
}

extension PropsHTMLMetaElement on HTMLMetaElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get httpEquiv => js_util.getProperty(this, 'httpEquiv');
  set httpEquiv(String newValue) {
    js_util.setProperty(this, 'httpEquiv', newValue);
  }

  String get content => js_util.getProperty(this, 'content');
  set content(String newValue) {
    js_util.setProperty(this, 'content', newValue);
  }

  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get scheme => js_util.getProperty(this, 'scheme');
  set scheme(String newValue) {
    js_util.setProperty(this, 'scheme', newValue);
  }
}

///  The interface represents a [<style>] element. It inherits
/// properties and methods from its parent, [HTMLElement].
///  This interface doesn't allow to manipulate the CSS it contains
/// (in most case). To manipulate CSS, see Using dynamic styling
/// information for an overview of the objects used to manipulate
/// specified CSS properties using the DOM.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLStyleElement
///
///
@JS()
@staticInterop
class HTMLStyleElement implements HTMLElement, LinkStyle {
  external factory HTMLStyleElement();
}

extension PropsHTMLStyleElement on HTMLStyleElement {
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  DOMTokenList get blocking => js_util.getProperty(this, 'blocking');
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

///  The interface provides special properties (beyond those
/// inherited from the regular [HTMLElement] interface) for
/// manipulating [<body>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLBodyElement
///
///
@JS()
@staticInterop
class HTMLBodyElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLBodyElement();
}

extension PropsHTMLBodyElement on HTMLBodyElement {
  EventHandlerNonNull? get onorientationchange =>
      js_util.getProperty(this, 'onorientationchange');
  set onorientationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onorientationchange', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get link => js_util.getProperty(this, 'link');
  set link(String newValue) {
    js_util.setProperty(this, 'link', newValue);
  }

  String get vLink => js_util.getProperty(this, 'vLink');
  set vLink(String newValue) {
    js_util.setProperty(this, 'vLink', newValue);
  }

  String get aLink => js_util.getProperty(this, 'aLink');
  set aLink(String newValue) {
    js_util.setProperty(this, 'aLink', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }

  String get background => js_util.getProperty(this, 'background');
  set background(String newValue) {
    js_util.setProperty(this, 'background', newValue);
  }
}

///  The interface represents the different heading elements, [<h1>]
/// through [<h6>]. It inherits methods and properties from the
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLHeadingElement
///
///
@JS()
@staticInterop
class HTMLHeadingElement implements HTMLElement {
  external factory HTMLHeadingElement();
}

extension PropsHTMLHeadingElement on HTMLHeadingElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] object interface it inherits) for
/// manipulating [<p>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLParagraphElement
///
///
@JS()
@staticInterop
class HTMLParagraphElement implements HTMLElement {
  external factory HTMLParagraphElement();
}

extension PropsHTMLParagraphElement on HTMLParagraphElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

///  The interface provides special properties (beyond those of the
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<hr>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLHRElement
///
///
@JS()
@staticInterop
class HTMLHRElement implements HTMLElement {
  external factory HTMLHRElement();
}

extension PropsHTMLHRElement on HTMLHRElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get color => js_util.getProperty(this, 'color');
  set color(String newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  bool get noShade => js_util.getProperty(this, 'noShade');
  set noShade(bool newValue) {
    js_util.setProperty(this, 'noShade', newValue);
  }

  String get size => js_util.getProperty(this, 'size');
  set size(String newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }
}

///  The interface exposes specific properties and methods (beyond
/// those of the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating a block of preformatted text
/// ([<pre>]).
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLPreElement
///
///
@JS()
@staticInterop
class HTMLPreElement implements HTMLElement {
  external factory HTMLPreElement();
}

extension PropsHTMLPreElement on HTMLPreElement {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating quoting elements, like
/// [<blockquote>] and [<q>], but not the [<cite>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLQuoteElement
///
///
@JS()
@staticInterop
class HTMLQuoteElement implements HTMLElement {
  external factory HTMLQuoteElement();
}

extension PropsHTMLQuoteElement on HTMLQuoteElement {
  String get cite => js_util.getProperty(this, 'cite');
  set cite(String newValue) {
    js_util.setProperty(this, 'cite', newValue);
  }
}

///  The interface provides special properties (beyond those defined
/// on the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating ordered list elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLOListElement
///
///
@JS()
@staticInterop
class HTMLOListElement implements HTMLElement {
  external factory HTMLOListElement();
}

extension PropsHTMLOListElement on HTMLOListElement {
  bool get reversed => js_util.getProperty(this, 'reversed');
  set reversed(bool newValue) {
    js_util.setProperty(this, 'reversed', newValue);
  }

  int get start => js_util.getProperty(this, 'start');
  set start(int newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

///  The interface provides special properties (beyond those defined
/// on the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating unordered list elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLUListElement
///
///
@JS()
@staticInterop
class HTMLUListElement implements HTMLElement {
  external factory HTMLUListElement();
}

extension PropsHTMLUListElement on HTMLUListElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides special properties (beyond those defined
/// on the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating [<menu>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMenuElement
///
///
@experimental
@JS()
@staticInterop
class HTMLMenuElement implements HTMLElement {
  external factory HTMLMenuElement();
}

extension PropsHTMLMenuElement on HTMLMenuElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

///  The interface exposes specific properties and methods (beyond
/// those defined by regular [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating list elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLLIElement
///
///
@JS()
@staticInterop
class HTMLLIElement implements HTMLElement {
  external factory HTMLLIElement();
}

extension PropsHTMLLIElement on HTMLLIElement {
  int get value => js_util.getProperty(this, 'value');
  set value(int newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating definition list ([<dl>]) elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDListElement
///
///
@JS()
@staticInterop
class HTMLDListElement implements HTMLElement {
  external factory HTMLDListElement();
}

extension PropsHTMLDListElement on HTMLDListElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<div>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDivElement
///
///
@JS()
@staticInterop
class HTMLDivElement implements HTMLElement {
  external factory HTMLDivElement();
}

extension PropsHTMLDivElement on HTMLDivElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

///  The interface represents hyperlink elements and provides special
/// properties and methods (beyond those of the regular [HTMLElement]
/// object interface that they inherit from) for manipulating the
/// layout and presentation of such elements. This interface
/// corresponds to [<a>] element; not to be confused with [<link>],
/// which is represented by [HTMLLinkElement])
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLAnchorElement
///
///
@JS()
@staticInterop
class HTMLAnchorElement
    implements
        HTMLElement,
        HTMLAttributionSrcElementUtils,
        HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement();
}

extension PropsHTMLAnchorElement on HTMLAnchorElement {
  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  String get download => js_util.getProperty(this, 'download');
  set download(String newValue) {
    js_util.setProperty(this, 'download', newValue);
  }

  String get ping => js_util.getProperty(this, 'ping');
  set ping(String newValue) {
    js_util.setProperty(this, 'ping', newValue);
  }

  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  DOMTokenList get relList => js_util.getProperty(this, 'relList');
  String get hreflang => js_util.getProperty(this, 'hreflang');
  set hreflang(String newValue) {
    js_util.setProperty(this, 'hreflang', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  int get attributionSourceId =>
      js_util.getProperty(this, 'attributionSourceId');
  set attributionSourceId(int newValue) {
    js_util.setProperty(this, 'attributionSourceId', newValue);
  }

  String get coords => js_util.getProperty(this, 'coords');
  set coords(String newValue) {
    js_util.setProperty(this, 'coords', newValue);
  }

  String get charset => js_util.getProperty(this, 'charset');
  set charset(String newValue) {
    js_util.setProperty(this, 'charset', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get rev => js_util.getProperty(this, 'rev');
  set rev(String newValue) {
    js_util.setProperty(this, 'rev', newValue);
  }

  String get shape => js_util.getProperty(this, 'shape');
  set shape(String newValue) {
    js_util.setProperty(this, 'shape', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<data>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDataElement
///
///
@JS()
@staticInterop
class HTMLDataElement implements HTMLElement {
  external factory HTMLDataElement();
}

extension PropsHTMLDataElement on HTMLDataElement {
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<time>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTimeElement
///
///
@JS()
@staticInterop
class HTMLTimeElement implements HTMLElement {
  external factory HTMLTimeElement();
}

extension PropsHTMLTimeElement on HTMLTimeElement {
  String get dateTime => js_util.getProperty(this, 'dateTime');
  set dateTime(String newValue) {
    js_util.setProperty(this, 'dateTime', newValue);
  }
}

///  The interface represents a [<span>] element and derives from the
/// [HTMLElement] interface, but without implementing any additional
/// properties or methods.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLSpanElement
///
///
@JS()
@staticInterop
class HTMLSpanElement implements HTMLElement {
  external factory HTMLSpanElement();
}

///  The interface represents an HTML line break element ([<br>]). It
/// inherits from [HTMLElement].
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLBRElement
///
///
@JS()
@staticInterop
class HTMLBRElement implements HTMLElement {
  external factory HTMLBRElement();
}

extension PropsHTMLBRElement on HTMLBRElement {
  String get clear => js_util.getProperty(this, 'clear');
  set clear(String newValue) {
    js_util.setProperty(this, 'clear', newValue);
  }
}

@JS()
@staticInterop
class HTMLHyperlinkElementUtils {
  external factory HTMLHyperlinkElementUtils();
}

extension PropsHTMLHyperlinkElementUtils on HTMLHyperlinkElementUtils {
  dynamic get href => js_util.getProperty(this, 'href');
  set href(dynamic newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  String get username => js_util.getProperty(this, 'username');
  set username(String newValue) {
    js_util.setProperty(this, 'username', newValue);
  }

  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }

  String get host => js_util.getProperty(this, 'host');
  set host(String newValue) {
    js_util.setProperty(this, 'host', newValue);
  }

  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// methods and properties available through the [HTMLElement]
/// interface they also have available to them by inheritance) for
/// manipulating modification elements, that is [<del>] and [<ins>].
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLModElement
///
///
@JS()
@staticInterop
class HTMLModElement implements HTMLElement {
  external factory HTMLModElement();
}

extension PropsHTMLModElement on HTMLModElement {
  String get cite => js_util.getProperty(this, 'cite');
  set cite(String newValue) {
    js_util.setProperty(this, 'cite', newValue);
  }

  String get dateTime => js_util.getProperty(this, 'dateTime');
  set dateTime(String newValue) {
    js_util.setProperty(this, 'dateTime', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents a [<picture>] HTML element. It doesn't
/// implement specific properties or methods.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLPictureElement
///
///
@experimental
@JS()
@staticInterop
class HTMLPictureElement implements HTMLElement {
  external factory HTMLPictureElement();
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] object interface it also has available to it by
/// inheritance) for manipulating [<source>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLSourceElement
///
///
@JS()
@staticInterop
class HTMLSourceElement implements HTMLElement {
  external factory HTMLSourceElement();
}

extension PropsHTMLSourceElement on HTMLSourceElement {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get srcset => js_util.getProperty(this, 'srcset');
  set srcset(String newValue) {
    js_util.setProperty(this, 'srcset', newValue);
  }

  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

///  The interface represents an HTML [<img>] element, providing the
/// properties and methods used to manipulate image elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLImageElement
///
///
@JS()
@staticInterop
class HTMLImageElement implements HTMLElement, HTMLAttributionSrcElementUtils {
  external factory HTMLImageElement();
}

extension PropsHTMLImageElement on HTMLImageElement {
  String get alt => js_util.getProperty(this, 'alt');
  set alt(String newValue) {
    js_util.setProperty(this, 'alt', newValue);
  }

  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get srcset => js_util.getProperty(this, 'srcset');
  set srcset(String newValue) {
    js_util.setProperty(this, 'srcset', newValue);
  }

  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  String get useMap => js_util.getProperty(this, 'useMap');
  set useMap(String newValue) {
    js_util.setProperty(this, 'useMap', newValue);
  }

  bool get isMap => js_util.getProperty(this, 'isMap');
  set isMap(bool newValue) {
    js_util.setProperty(this, 'isMap', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get naturalWidth => js_util.getProperty(this, 'naturalWidth');
  int get naturalHeight => js_util.getProperty(this, 'naturalHeight');
  bool get complete => js_util.getProperty(this, 'complete');
  String get currentSrc => js_util.getProperty(this, 'currentSrc');
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  String get decoding => js_util.getProperty(this, 'decoding');
  set decoding(String newValue) {
    js_util.setProperty(this, 'decoding', newValue);
  }

  String get loading => js_util.getProperty(this, 'loading');
  set loading(String newValue) {
    js_util.setProperty(this, 'loading', newValue);
  }

  Future<void> decode() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', []));

  int get x => js_util.getProperty(this, 'x');
  int get y => js_util.getProperty(this, 'y');
  String get fetchPriority => js_util.getProperty(this, 'fetchPriority');
  set fetchPriority(String newValue) {
    js_util.setProperty(this, 'fetchPriority', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get lowsrc => js_util.getProperty(this, 'lowsrc');
  set lowsrc(String newValue) {
    js_util.setProperty(this, 'lowsrc', newValue);
  }

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  int get hspace => js_util.getProperty(this, 'hspace');
  set hspace(int newValue) {
    js_util.setProperty(this, 'hspace', newValue);
  }

  int get vspace => js_util.getProperty(this, 'vspace');
  set vspace(int newValue) {
    js_util.setProperty(this, 'vspace', newValue);
  }

  String get longDesc => js_util.getProperty(this, 'longDesc');
  set longDesc(String newValue) {
    js_util.setProperty(this, 'longDesc', newValue);
  }

  String get border => js_util.getProperty(this, 'border');
  set border(String newValue) {
    js_util.setProperty(this, 'border', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// those of the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// inline frame elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLIFrameElement
///
///
@JS()
@staticInterop
class HTMLIFrameElement implements HTMLElement {
  external factory HTMLIFrameElement();
}

extension PropsHTMLIFrameElement on HTMLIFrameElement {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get srcdoc => js_util.getProperty(this, 'srcdoc');
  set srcdoc(String newValue) {
    js_util.setProperty(this, 'srcdoc', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  DOMTokenList get sandbox => js_util.getProperty(this, 'sandbox');
  String get allow => js_util.getProperty(this, 'allow');
  set allow(String newValue) {
    js_util.setProperty(this, 'allow', newValue);
  }

  bool get allowFullscreen => js_util.getProperty(this, 'allowFullscreen');
  set allowFullscreen(bool newValue) {
    js_util.setProperty(this, 'allowFullscreen', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  String get loading => js_util.getProperty(this, 'loading');
  set loading(String newValue) {
    js_util.setProperty(this, 'loading', newValue);
  }

  Document? get contentDocument => js_util.getProperty(this, 'contentDocument');
  Window? get contentWindow => js_util.getProperty(this, 'contentWindow');
  Document? getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);

  String get csp => js_util.getProperty(this, 'csp');
  set csp(String newValue) {
    js_util.setProperty(this, 'csp', newValue);
  }

  String get fetchPriority => js_util.getProperty(this, 'fetchPriority');
  set fetchPriority(String newValue) {
    js_util.setProperty(this, 'fetchPriority', newValue);
  }

  PermissionsPolicy get permissionsPolicy =>
      js_util.getProperty(this, 'permissionsPolicy');
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get scrolling => js_util.getProperty(this, 'scrolling');
  set scrolling(String newValue) {
    js_util.setProperty(this, 'scrolling', newValue);
  }

  String get frameBorder => js_util.getProperty(this, 'frameBorder');
  set frameBorder(String newValue) {
    js_util.setProperty(this, 'frameBorder', newValue);
  }

  String get longDesc => js_util.getProperty(this, 'longDesc');
  set longDesc(String newValue) {
    js_util.setProperty(this, 'longDesc', newValue);
  }

  String get marginHeight => js_util.getProperty(this, 'marginHeight');
  set marginHeight(String newValue) {
    js_util.setProperty(this, 'marginHeight', newValue);
  }

  String get marginWidth => js_util.getProperty(this, 'marginWidth');
  set marginWidth(String newValue) {
    js_util.setProperty(this, 'marginWidth', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<embed>] elements.
///
///   Note: This topic describes the interface as defined in the
/// standard. It does not address earlier, non-standardized version
/// of the interface.
///
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLEmbedElement
///
///
@JS()
@staticInterop
class HTMLEmbedElement implements HTMLElement {
  external factory HTMLEmbedElement();
}

extension PropsHTMLEmbedElement on HTMLEmbedElement {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  Document? getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// those on the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<object>] element, representing external resources.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLObjectElement
///
///
@JS()
@staticInterop
class HTMLObjectElement implements HTMLElement {
  external factory HTMLObjectElement();
}

extension PropsHTMLObjectElement on HTMLObjectElement {
  String get data => js_util.getProperty(this, 'data');
  set data(String newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  Document? get contentDocument => js_util.getProperty(this, 'contentDocument');
  Window? get contentWindow => js_util.getProperty(this, 'contentWindow');
  Document? getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get archive => js_util.getProperty(this, 'archive');
  set archive(String newValue) {
    js_util.setProperty(this, 'archive', newValue);
  }

  String get code => js_util.getProperty(this, 'code');
  set code(String newValue) {
    js_util.setProperty(this, 'code', newValue);
  }

  bool get declare => js_util.getProperty(this, 'declare');
  set declare(bool newValue) {
    js_util.setProperty(this, 'declare', newValue);
  }

  int get hspace => js_util.getProperty(this, 'hspace');
  set hspace(int newValue) {
    js_util.setProperty(this, 'hspace', newValue);
  }

  String get standby => js_util.getProperty(this, 'standby');
  set standby(String newValue) {
    js_util.setProperty(this, 'standby', newValue);
  }

  int get vspace => js_util.getProperty(this, 'vspace');
  set vspace(int newValue) {
    js_util.setProperty(this, 'vspace', newValue);
  }

  String get codeBase => js_util.getProperty(this, 'codeBase');
  set codeBase(String newValue) {
    js_util.setProperty(this, 'codeBase', newValue);
  }

  String get codeType => js_util.getProperty(this, 'codeType');
  set codeType(String newValue) {
    js_util.setProperty(this, 'codeType', newValue);
  }

  String get useMap => js_util.getProperty(this, 'useMap');
  set useMap(String newValue) {
    js_util.setProperty(this, 'useMap', newValue);
  }

  String get border => js_util.getProperty(this, 'border');
  set border(String newValue) {
    js_util.setProperty(this, 'border', newValue);
  }
}

///  The interface provides special properties and methods for
/// manipulating video objects. It also inherits properties and
/// methods of [HTMLMediaElement] and [HTMLElement].
///  The list of supported media formats varies from one browser to
/// the other. You should either provide your video in a single
/// format that all the relevant browsers supports, or provide
/// multiple video sources in enough different formats that all the
/// browsers you need to support are covered.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMediaElement
///
///
///
///
///
///    HTMLVideoElement
///
///
@JS()
@staticInterop
class HTMLVideoElement implements HTMLMediaElement {
  external factory HTMLVideoElement();
}

extension PropsHTMLVideoElement on HTMLVideoElement {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get videoWidth => js_util.getProperty(this, 'videoWidth');
  int get videoHeight => js_util.getProperty(this, 'videoHeight');
  String get poster => js_util.getProperty(this, 'poster');
  set poster(String newValue) {
    js_util.setProperty(this, 'poster', newValue);
  }

  bool get playsInline => js_util.getProperty(this, 'playsInline');
  set playsInline(bool newValue) {
    js_util.setProperty(this, 'playsInline', newValue);
  }

  VideoPlaybackQuality getVideoPlaybackQuality() =>
      js_util.callMethod(this, 'getVideoPlaybackQuality', []);

  Future<PictureInPictureWindow> requestPictureInPicture() => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestPictureInPicture', []));

  EventHandlerNonNull? get onenterpictureinpicture =>
      js_util.getProperty(this, 'onenterpictureinpicture');
  set onenterpictureinpicture(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onenterpictureinpicture', newValue);
  }

  EventHandlerNonNull? get onleavepictureinpicture =>
      js_util.getProperty(this, 'onleavepictureinpicture');
  set onleavepictureinpicture(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onleavepictureinpicture', newValue);
  }

  bool get autoPictureInPicture =>
      js_util.getProperty(this, 'autoPictureInPicture');
  set autoPictureInPicture(bool newValue) {
    js_util.setProperty(this, 'autoPictureInPicture', newValue);
  }

  bool get disablePictureInPicture =>
      js_util.getProperty(this, 'disablePictureInPicture');
  set disablePictureInPicture(bool newValue) {
    js_util.setProperty(this, 'disablePictureInPicture', newValue);
  }

  int requestVideoFrameCallback(VideoFrameRequestCallback callback) => js_util
      .callMethod(this, 'requestVideoFrameCallback', [allowInterop(callback)]);

  void cancelVideoFrameCallback(int handle) =>
      js_util.callMethod(this, 'cancelVideoFrameCallback', [handle]);
}

///  The interface provides access to the properties of [<audio>]
/// elements, as well as methods to manipulate them.
///  This element is based on, and inherits properties and methods
/// from, the [HTMLMediaElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMediaElement
///
///
///
///
///
///    HTMLAudioElement
///
///
@JS()
@staticInterop
class HTMLAudioElement implements HTMLMediaElement {
  external factory HTMLAudioElement();
}

///  The interface represents an HTML [<track>] element within the
/// DOM. This element can be used as a child of either [<audio>] or
/// [<video>] to specify a text track containing information such as
/// closed captions or subtitles.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTrackElement
///
///
@JS()
@staticInterop
class HTMLTrackElement implements HTMLElement {
  @JS('NONE')
  external static int get none;

  @JS('LOADING')
  external static int get loading;

  @JS('LOADED')
  external static int get loaded;

  @JS('ERROR')
  external static int get error;

  external factory HTMLTrackElement();
}

extension PropsHTMLTrackElement on HTMLTrackElement {
  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }

  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get srclang => js_util.getProperty(this, 'srclang');
  set srclang(String newValue) {
    js_util.setProperty(this, 'srclang', newValue);
  }

  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  @JS('default')
  @staticInterop
  bool get mDefault => js_util.getProperty(this, 'default');
  set mDefault(bool newValue) {
    js_util.setProperty(this, 'default', newValue);
  }

  int get readyState => js_util.getProperty(this, 'readyState');
  TextTrack get track => js_util.getProperty(this, 'track');
}

enum CanPlayTypeResult {
  empty(''),
  maybe('maybe'),
  probably('probably');

  final String value;
  static CanPlayTypeResult fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanPlayTypeResult> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanPlayTypeResult(this.value);
}

///  The interface adds to [HTMLElement] the properties and methods
/// needed to support basic media-related capabilities that are
/// common to audio and video.
///  The [HTMLVideoElement] and [HTMLAudioElement] elements both
/// inherit this interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMediaElement
///
///
@JS()
@staticInterop
class HTMLMediaElement implements HTMLElement {
  @JS('NETWORK_EMPTY')
  external static int get networkEmpty;

  @JS('NETWORK_IDLE')
  external static int get networkIdle;

  @JS('NETWORK_LOADING')
  external static int get networkLoading;

  @JS('NETWORK_NO_SOURCE')
  external static int get networkNoSource;

  @JS('HAVE_NOTHING')
  external static int get haveNothing;

  @JS('HAVE_METADATA')
  external static int get haveMetadata;

  @JS('HAVE_CURRENT_DATA')
  external static int get haveCurrentData;

  @JS('HAVE_FUTURE_DATA')
  external static int get haveFutureData;

  @JS('HAVE_ENOUGH_DATA')
  external static int get haveEnoughData;

  external factory HTMLMediaElement();
}

extension PropsHTMLMediaElement on HTMLMediaElement {
  MediaError? get error => js_util.getProperty(this, 'error');
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  dynamic get srcObject => js_util.getProperty(this, 'srcObject');
  set srcObject(dynamic newValue) {
    js_util.setProperty(this, 'srcObject', newValue);
  }

  String get currentSrc => js_util.getProperty(this, 'currentSrc');
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  int get networkState => js_util.getProperty(this, 'networkState');
  String get preload => js_util.getProperty(this, 'preload');
  set preload(String newValue) {
    js_util.setProperty(this, 'preload', newValue);
  }

  TimeRanges get buffered => js_util.getProperty(this, 'buffered');
  void load() => js_util.callMethod(this, 'load', []);

  CanPlayTypeResult canPlayType(String type) =>
      js_util.callMethod(this, 'canPlayType', [type]);

  int get readyState => js_util.getProperty(this, 'readyState');
  bool get seeking => js_util.getProperty(this, 'seeking');
  double get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(double newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  void fastSeek(double time) => js_util.callMethod(this, 'fastSeek', [time]);

/* double | NaN */ dynamic get duration =>
      js_util.getProperty(this, 'duration');
  dynamic getStartDate() => js_util.callMethod(this, 'getStartDate', []);

  bool get paused => js_util.getProperty(this, 'paused');
  double get defaultPlaybackRate =>
      js_util.getProperty(this, 'defaultPlaybackRate');
  set defaultPlaybackRate(double newValue) {
    js_util.setProperty(this, 'defaultPlaybackRate', newValue);
  }

  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }

  bool get preservesPitch => js_util.getProperty(this, 'preservesPitch');
  set preservesPitch(bool newValue) {
    js_util.setProperty(this, 'preservesPitch', newValue);
  }

  TimeRanges get played => js_util.getProperty(this, 'played');
  TimeRanges get seekable => js_util.getProperty(this, 'seekable');
  bool get ended => js_util.getProperty(this, 'ended');
  bool get autoplay => js_util.getProperty(this, 'autoplay');
  set autoplay(bool newValue) {
    js_util.setProperty(this, 'autoplay', newValue);
  }

  bool get loop => js_util.getProperty(this, 'loop');
  set loop(bool newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  Future<void> play() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'play', []));

  void pause() => js_util.callMethod(this, 'pause', []);

  bool get controls => js_util.getProperty(this, 'controls');
  set controls(bool newValue) {
    js_util.setProperty(this, 'controls', newValue);
  }

  double get volume => js_util.getProperty(this, 'volume');
  set volume(double newValue) {
    js_util.setProperty(this, 'volume', newValue);
  }

  bool get muted => js_util.getProperty(this, 'muted');
  set muted(bool newValue) {
    js_util.setProperty(this, 'muted', newValue);
  }

  bool get defaultMuted => js_util.getProperty(this, 'defaultMuted');
  set defaultMuted(bool newValue) {
    js_util.setProperty(this, 'defaultMuted', newValue);
  }

  AudioTrackList get audioTracks => js_util.getProperty(this, 'audioTracks');
  VideoTrackList get videoTracks => js_util.getProperty(this, 'videoTracks');
  TextTrackList get textTracks => js_util.getProperty(this, 'textTracks');
  TextTrack addTextTrack(TextTrackKind kind,
          [String? label = '', String? language = '']) =>
      js_util.callMethod(this, 'addTextTrack', [kind.value, label, language]);

  MediaStream captureStream() => js_util.callMethod(this, 'captureStream', []);

  String get sinkId => js_util.getProperty(this, 'sinkId');
  Future<void> setSinkId(String sinkId) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'setSinkId', [sinkId]));

  RemotePlayback get remote => js_util.getProperty(this, 'remote');
  bool get disableRemotePlayback =>
      js_util.getProperty(this, 'disableRemotePlayback');
  set disableRemotePlayback(bool newValue) {
    js_util.setProperty(this, 'disableRemotePlayback', newValue);
  }

  MediaKeys? get mediaKeys => js_util.getProperty(this, 'mediaKeys');
  EventHandlerNonNull? get onencrypted =>
      js_util.getProperty(this, 'onencrypted');
  set onencrypted(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onencrypted', newValue);
  }

  EventHandlerNonNull? get onwaitingforkey =>
      js_util.getProperty(this, 'onwaitingforkey');
  set onwaitingforkey(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwaitingforkey', newValue);
  }

  Future<void> setMediaKeys(MediaKeys? mediaKeys) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setMediaKeys', [mediaKeys]));
}

///  The interface represents an error which occurred while handling
/// media in an HTML media element based on [HTMLMediaElement], such
/// as [<audio>] or [<video>].
///  A object describes the error in general terms using a numeric
/// [code] categorizing the kind of error, and a [message], which
/// provides specific diagnostics about what went wrong.
@JS()
@staticInterop
class MediaError {
  @JS('MEDIA_ERR_ABORTED')
  external static int get mediaErrAborted;

  @JS('MEDIA_ERR_NETWORK')
  external static int get mediaErrNetwork;

  @JS('MEDIA_ERR_DECODE')
  external static int get mediaErrDecode;

  @JS('MEDIA_ERR_SRC_NOT_SUPPORTED')
  external static int get mediaErrSrcNotSupported;

  external factory MediaError();
}

extension PropsMediaError on MediaError {
  int get code => js_util.getProperty(this, 'code');
  String get message => js_util.getProperty(this, 'message');
}

///  The interface is used to represent a list of the audio tracks
/// contained within a given HTML media element, with each track
/// represented by a separate [AudioTrack] object in the list.
///  Retrieve an instance of this object with
/// [HTMLMediaElement.audioTracks]. The individual tracks can be
/// accessed using array syntax.
///
///
///
///    EventTarget
///
///
///
///
///
///    AudioTrackList
///
///
@JS()
@staticInterop
class AudioTrackList implements EventTarget {
  external factory AudioTrackList();
}

extension PropsAudioTrackList on AudioTrackList {
  int get length => js_util.getProperty(this, 'length');
  AudioTrack? getTrackById(String id) =>
      js_util.callMethod(this, 'getTrackById', [id]);

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  EventHandlerNonNull? get onaddtrack =>
      js_util.getProperty(this, 'onaddtrack');
  set onaddtrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaddtrack', newValue);
  }

  EventHandlerNonNull? get onremovetrack =>
      js_util.getProperty(this, 'onremovetrack');
  set onremovetrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremovetrack', newValue);
  }
}

///  The interface represents a single audio track from one of the
/// HTML media elements, [<audio>] or [<video>].
///  The most common use for accessing an object is to toggle its
/// [enabled] property in order to mute and unmute the track.
@JS()
@staticInterop
class AudioTrack {
  external factory AudioTrack();
}

extension PropsAudioTrack on AudioTrack {
  String get id => js_util.getProperty(this, 'id');
  String get kind => js_util.getProperty(this, 'kind');
  String get label => js_util.getProperty(this, 'label');
  String get language => js_util.getProperty(this, 'language');
  bool get enabled => js_util.getProperty(this, 'enabled');
  set enabled(bool newValue) {
    js_util.setProperty(this, 'enabled', newValue);
  }

  SourceBuffer? get sourceBuffer => js_util.getProperty(this, 'sourceBuffer');
}

///  The interface is used to represent a list of the video tracks
/// contained within a [<video>] element, with each track represented
/// by a separate [VideoTrack] object in the list.
///  Retrieve an instance of this object with
/// [HTMLMediaElement.videoTracks]. The individual tracks can be
/// accessed using array syntax or functions such as [forEach()] for
/// example.
///
///
///
///    EventTarget
///
///
///
///
///
///    VideoTrackList
///
///
@JS()
@staticInterop
class VideoTrackList implements EventTarget {
  external factory VideoTrackList();
}

extension PropsVideoTrackList on VideoTrackList {
  int get length => js_util.getProperty(this, 'length');
  VideoTrack? getTrackById(String id) =>
      js_util.callMethod(this, 'getTrackById', [id]);

  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  EventHandlerNonNull? get onaddtrack =>
      js_util.getProperty(this, 'onaddtrack');
  set onaddtrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaddtrack', newValue);
  }

  EventHandlerNonNull? get onremovetrack =>
      js_util.getProperty(this, 'onremovetrack');
  set onremovetrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremovetrack', newValue);
  }
}

///  The interface represents a single video track from a [<video>]
/// element.
///  The most common use for accessing a object is to toggle its
/// [selected] property in order to make it the active video track
/// for its [<video>] element.
@JS()
@staticInterop
class VideoTrack {
  external factory VideoTrack();
}

extension PropsVideoTrack on VideoTrack {
  String get id => js_util.getProperty(this, 'id');
  String get kind => js_util.getProperty(this, 'kind');
  String get label => js_util.getProperty(this, 'label');
  String get language => js_util.getProperty(this, 'language');
  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }

  SourceBuffer? get sourceBuffer => js_util.getProperty(this, 'sourceBuffer');
}

///  The interface is used to represent a list of the text tracks
/// defined by the [<track>] element, with each track represented by
/// a separate [textTrack] object in the list.
///  Retrieve an instance of this object with the [textTracks]
/// property of an [HTMLMediaElement] object.
///  For a given [HTMLMediaElement] object media, the individual
/// tracks can be accessed using:
///
///   [media.TextTracks[n]], to get the nth text track from the
/// object’s list of text tracks
///  the [media.textTracks].[getTrackById()] method
///
///
///
///
///    EventTarget
///
///
///
///
///
///    TextTrackList
///
///
@JS()
@staticInterop
class TextTrackList implements EventTarget {
  external factory TextTrackList();
}

extension PropsTextTrackList on TextTrackList {
  int get length => js_util.getProperty(this, 'length');
  TextTrack? getTrackById(String id) =>
      js_util.callMethod(this, 'getTrackById', [id]);

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  EventHandlerNonNull? get onaddtrack =>
      js_util.getProperty(this, 'onaddtrack');
  set onaddtrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaddtrack', newValue);
  }

  EventHandlerNonNull? get onremovetrack =>
      js_util.getProperty(this, 'onremovetrack');
  set onremovetrack(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremovetrack', newValue);
  }
}

enum TextTrackMode {
  disabled('disabled'),
  hidden('hidden'),
  showing('showing');

  final String value;
  static TextTrackMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<TextTrackMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const TextTrackMode(this.value);
}

enum TextTrackKind {
  subtitles('subtitles'),
  captions('captions'),
  descriptions('descriptions'),
  chapters('chapters'),
  metadata('metadata');

  final String value;
  static TextTrackKind fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<TextTrackKind> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const TextTrackKind(this.value);
}

///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track
/// associated with a particular [<track>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///    TextTrack
///
///
@JS()
@staticInterop
class TextTrack implements EventTarget {
  external factory TextTrack();
}

extension PropsTextTrack on TextTrack {
  TextTrackKind get kind =>
      TextTrackKind.fromValue(js_util.getProperty(this, 'kind'));
  String get label => js_util.getProperty(this, 'label');
  String get language => js_util.getProperty(this, 'language');
  String get id => js_util.getProperty(this, 'id');
  String get inBandMetadataTrackDispatchType =>
      js_util.getProperty(this, 'inBandMetadataTrackDispatchType');
  TextTrackMode get mode =>
      TextTrackMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(TextTrackMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  TextTrackCueList? get cues => js_util.getProperty(this, 'cues');
  TextTrackCueList? get activeCues => js_util.getProperty(this, 'activeCues');
  void addCue(TextTrackCue cue) => js_util.callMethod(this, 'addCue', [cue]);

  void removeCue(TextTrackCue cue) =>
      js_util.callMethod(this, 'removeCue', [cue]);

  EventHandlerNonNull? get oncuechange =>
      js_util.getProperty(this, 'oncuechange');
  set oncuechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncuechange', newValue);
  }

  SourceBuffer? get sourceBuffer => js_util.getProperty(this, 'sourceBuffer');
}

///  The array-like object represents a dynamically updating list of
/// [TextTrackCue] objects.
///  This interface has no constructor. Retrieve an instance of this
/// object with [TextTrack.cues] which returns all of the cues in a
/// [TextTrack] object.
@JS()
@staticInterop
class TextTrackCueList {
  external factory TextTrackCueList();
}

extension PropsTextTrackCueList on TextTrackCueList {
  int get length => js_util.getProperty(this, 'length');
  TextTrackCue? getCueById(String id) =>
      js_util.callMethod(this, 'getCueById', [id]);
}

///   is an abstract class which is used as the basis for the various
/// derived cue types, such as [VTTCue]; you will instead work with
/// those derived types. These cues represent strings of text
/// presented for some duration of time during the performance of a
/// [TextTrack]. The cue includes the start time (the time at which
/// the text will be displayed) and the end time (the time at which
/// it will be removed from the display), as well as other
/// information.
///
///
///
///    EventTarget
///
///
///
///
///
///    TextTrackCue
///
///
@JS()
@staticInterop
class TextTrackCue implements EventTarget {
  external factory TextTrackCue();
}

extension PropsTextTrackCue on TextTrackCue {
  TextTrack? get track => js_util.getProperty(this, 'track');
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  double get startTime => js_util.getProperty(this, 'startTime');
  set startTime(double newValue) {
    js_util.setProperty(this, 'startTime', newValue);
  }

/* double | NaN */ dynamic get endTime => js_util.getProperty(this, 'endTime');
  set endTime(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'endTime', newValue);
  }

  bool get pauseOnExit => js_util.getProperty(this, 'pauseOnExit');
  set pauseOnExit(bool newValue) {
    js_util.setProperty(this, 'pauseOnExit', newValue);
  }

  EventHandlerNonNull? get onenter => js_util.getProperty(this, 'onenter');
  set onenter(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onenter', newValue);
  }

  EventHandlerNonNull? get onexit => js_util.getProperty(this, 'onexit');
  set onexit(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onexit', newValue);
  }
}

///  When loading a media resource for use by an [<audio>] or
/// [<video>] element, the interface is used for representing the
/// time ranges of the media resource that have been buffered, the
/// time ranges that have been played, and the time ranges that are
/// seekable.
///  A object includes one or more ranges of time, each specified by
/// a starting time offset and an ending time offset. You reference
/// each time range by using the [start()] and [end()] methods,
/// passing the index number of the time range you want to retrieve.
@JS()
@staticInterop
class TimeRanges {
  external factory TimeRanges();
}

extension PropsTimeRanges on TimeRanges {
  int get length => js_util.getProperty(this, 'length');
  double start(int index) => js_util.callMethod(this, 'start', [index]);

  double end(int index) => js_util.callMethod(this, 'end', [index]);
}

///  The interface, which is part of the HTML DOM specification, is
/// used for events which represent changes to a set of available
/// tracks on an HTML media element; these events are [addtrack] and
/// [removetrack].
///  It's important not to confuse with the [RTCTrackEvent]
/// interface, which is used for tracks which are part of an
/// [RTCPeerConnection].
///  Events based on are always sent to one of the media track list
/// types:
///
///   Events involving video tracks are always sent to the
/// [VideoTrackList] found in [HTMLMediaElement.videoTracks]
///   Events involving audio tracks are always sent to the
/// [AudioTrackList] specified in [HTMLMediaElement.audioTracks]
///   Events affecting text tracks are sent to the [TextTrackList]
/// object indicated by [HTMLMediaElement.textTracks].
///
///
///
///
///    Event
///
///
///
///
///
///    TrackEvent
///
///
@JS()
@staticInterop
class TrackEvent implements Event {
  external factory TrackEvent(String type, [TrackEventInit? eventInitDict]);
}

extension PropsTrackEvent on TrackEvent {
  dynamic get track => js_util.getProperty(this, 'track');
}

@anonymous
@JS()
@staticInterop
class TrackEventInit implements EventInit {
  external factory TrackEventInit({dynamic track});
}

extension PropsTrackEventInit on TrackEventInit {
  dynamic get track => js_util.getProperty(this, 'track');
  set track(dynamic newValue) {
    js_util.setProperty(this, 'track', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and
/// presentation of map elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMapElement
///
///
@JS()
@staticInterop
class HTMLMapElement implements HTMLElement {
  external factory HTMLMapElement();
}

extension PropsHTMLMapElement on HTMLMapElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  HTMLCollection get areas => js_util.getProperty(this, 'areas');
}

///  The interface provides special properties and methods (beyond
/// those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and
/// presentation of [<area>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLAreaElement
///
///
@JS()
@staticInterop
class HTMLAreaElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();
}

extension PropsHTMLAreaElement on HTMLAreaElement {
  String get alt => js_util.getProperty(this, 'alt');
  set alt(String newValue) {
    js_util.setProperty(this, 'alt', newValue);
  }

  String get coords => js_util.getProperty(this, 'coords');
  set coords(String newValue) {
    js_util.setProperty(this, 'coords', newValue);
  }

  String get shape => js_util.getProperty(this, 'shape');
  set shape(String newValue) {
    js_util.setProperty(this, 'shape', newValue);
  }

  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  String get download => js_util.getProperty(this, 'download');
  set download(String newValue) {
    js_util.setProperty(this, 'download', newValue);
  }

  String get ping => js_util.getProperty(this, 'ping');
  set ping(String newValue) {
    js_util.setProperty(this, 'ping', newValue);
  }

  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  DOMTokenList get relList => js_util.getProperty(this, 'relList');
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  bool get noHref => js_util.getProperty(this, 'noHref');
  set noHref(bool newValue) {
    js_util.setProperty(this, 'noHref', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] object interface it also has available
/// to it by inheritance) for manipulating the layout and
/// presentation of tables in an HTML document.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableElement
///
///
@JS()
@staticInterop
class HTMLTableElement implements HTMLElement {
  external factory HTMLTableElement();
}

extension PropsHTMLTableElement on HTMLTableElement {
  HTMLTableCaptionElement? get caption => js_util.getProperty(this, 'caption');
  set caption(HTMLTableCaptionElement? newValue) {
    js_util.setProperty(this, 'caption', newValue);
  }

  HTMLTableCaptionElement createCaption() =>
      js_util.callMethod(this, 'createCaption', []);

  void deleteCaption() => js_util.callMethod(this, 'deleteCaption', []);

  HTMLTableSectionElement? get tHead => js_util.getProperty(this, 'tHead');
  set tHead(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tHead', newValue);
  }

  HTMLTableSectionElement createTHead() =>
      js_util.callMethod(this, 'createTHead', []);

  void deleteTHead() => js_util.callMethod(this, 'deleteTHead', []);

  HTMLTableSectionElement? get tFoot => js_util.getProperty(this, 'tFoot');
  set tFoot(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tFoot', newValue);
  }

  HTMLTableSectionElement createTFoot() =>
      js_util.callMethod(this, 'createTFoot', []);

  void deleteTFoot() => js_util.callMethod(this, 'deleteTFoot', []);

  HTMLCollection get tBodies => js_util.getProperty(this, 'tBodies');
  HTMLTableSectionElement createTBody() =>
      js_util.callMethod(this, 'createTBody', []);

  HTMLCollection get rows => js_util.getProperty(this, 'rows');
  HTMLTableRowElement insertRow([int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  void deleteRow(int index) => js_util.callMethod(this, 'deleteRow', [index]);

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get border => js_util.getProperty(this, 'border');
  set border(String newValue) {
    js_util.setProperty(this, 'border', newValue);
  }

  String get frame => js_util.getProperty(this, 'frame');
  set frame(String newValue) {
    js_util.setProperty(this, 'frame', newValue);
  }

  String get rules => js_util.getProperty(this, 'rules');
  set rules(String newValue) {
    js_util.setProperty(this, 'rules', newValue);
  }

  String get summary => js_util.getProperty(this, 'summary');
  set summary(String newValue) {
    js_util.setProperty(this, 'summary', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }

  String get cellPadding => js_util.getProperty(this, 'cellPadding');
  set cellPadding(String newValue) {
    js_util.setProperty(this, 'cellPadding', newValue);
  }

  String get cellSpacing => js_util.getProperty(this, 'cellSpacing');
  set cellSpacing(String newValue) {
    js_util.setProperty(this, 'cellSpacing', newValue);
  }
}

///  The interface special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating table caption elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableCaptionElement
///
///
@JS()
@staticInterop
class HTMLTableCaptionElement implements HTMLElement {
  external factory HTMLTableCaptionElement();
}

extension PropsHTMLTableCaptionElement on HTMLTableCaptionElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

///  The interface provides properties for manipulating single or
/// grouped table column elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableColElement
///
///
@JS()
@staticInterop
class HTMLTableColElement implements HTMLElement {
  external factory HTMLTableColElement();
}

extension PropsHTMLTableColElement on HTMLTableColElement {
  int get span => js_util.getProperty(this, 'span');
  set span(int newValue) {
    js_util.setProperty(this, 'span', newValue);
  }

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get ch => js_util.getProperty(this, 'ch');
  set ch(String newValue) {
    js_util.setProperty(this, 'ch', newValue);
  }

  String get chOff => js_util.getProperty(this, 'chOff');
  set chOff(String newValue) {
    js_util.setProperty(this, 'chOff', newValue);
  }

  String get vAlign => js_util.getProperty(this, 'vAlign');
  set vAlign(String newValue) {
    js_util.setProperty(this, 'vAlign', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of
/// sections, that is headers, footers and bodies, in an HTML table.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableSectionElement
///
///
@JS()
@staticInterop
class HTMLTableSectionElement implements HTMLElement {
  external factory HTMLTableSectionElement();
}

extension PropsHTMLTableSectionElement on HTMLTableSectionElement {
  HTMLCollection get rows => js_util.getProperty(this, 'rows');
  HTMLTableRowElement insertRow([int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  void deleteRow(int index) => js_util.callMethod(this, 'deleteRow', [index]);

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get ch => js_util.getProperty(this, 'ch');
  set ch(String newValue) {
    js_util.setProperty(this, 'ch', newValue);
  }

  String get chOff => js_util.getProperty(this, 'chOff');
  set chOff(String newValue) {
    js_util.setProperty(this, 'chOff', newValue);
  }

  String get vAlign => js_util.getProperty(this, 'vAlign');
  set vAlign(String newValue) {
    js_util.setProperty(this, 'vAlign', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of rows
/// in an HTML table.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableRowElement
///
///
@JS()
@staticInterop
class HTMLTableRowElement implements HTMLElement {
  external factory HTMLTableRowElement();
}

extension PropsHTMLTableRowElement on HTMLTableRowElement {
  int get rowIndex => js_util.getProperty(this, 'rowIndex');
  int get sectionRowIndex => js_util.getProperty(this, 'sectionRowIndex');
  HTMLCollection get cells => js_util.getProperty(this, 'cells');
  HTMLTableCellElement insertCell([int? index = -1]) =>
      js_util.callMethod(this, 'insertCell', [index]);

  void deleteCell(int index) => js_util.callMethod(this, 'deleteCell', [index]);

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get ch => js_util.getProperty(this, 'ch');
  set ch(String newValue) {
    js_util.setProperty(this, 'ch', newValue);
  }

  String get chOff => js_util.getProperty(this, 'chOff');
  set chOff(String newValue) {
    js_util.setProperty(this, 'chOff', newValue);
  }

  String get vAlign => js_util.getProperty(this, 'vAlign');
  set vAlign(String newValue) {
    js_util.setProperty(this, 'vAlign', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// table cells, either header or data cells, in an HTML document.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTableCellElement
///
///
@JS()
@staticInterop
class HTMLTableCellElement implements HTMLElement {
  external factory HTMLTableCellElement();
}

extension PropsHTMLTableCellElement on HTMLTableCellElement {
  int get colSpan => js_util.getProperty(this, 'colSpan');
  set colSpan(int newValue) {
    js_util.setProperty(this, 'colSpan', newValue);
  }

  int get rowSpan => js_util.getProperty(this, 'rowSpan');
  set rowSpan(int newValue) {
    js_util.setProperty(this, 'rowSpan', newValue);
  }

  String get headers => js_util.getProperty(this, 'headers');
  set headers(String newValue) {
    js_util.setProperty(this, 'headers', newValue);
  }

  int get cellIndex => js_util.getProperty(this, 'cellIndex');
  String get scope => js_util.getProperty(this, 'scope');
  set scope(String newValue) {
    js_util.setProperty(this, 'scope', newValue);
  }

  String get abbr => js_util.getProperty(this, 'abbr');
  set abbr(String newValue) {
    js_util.setProperty(this, 'abbr', newValue);
  }

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get axis => js_util.getProperty(this, 'axis');
  set axis(String newValue) {
    js_util.setProperty(this, 'axis', newValue);
  }

  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  String get ch => js_util.getProperty(this, 'ch');
  set ch(String newValue) {
    js_util.setProperty(this, 'ch', newValue);
  }

  String get chOff => js_util.getProperty(this, 'chOff');
  set chOff(String newValue) {
    js_util.setProperty(this, 'chOff', newValue);
  }

  bool get noWrap => js_util.getProperty(this, 'noWrap');
  set noWrap(bool newValue) {
    js_util.setProperty(this, 'noWrap', newValue);
  }

  String get vAlign => js_util.getProperty(this, 'vAlign');
  set vAlign(String newValue) {
    js_util.setProperty(this, 'vAlign', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }
}

///  The interface represents a [<form>] element in the DOM. It
/// allows access to—and, in some cases, modification of—aspects of
/// the form, as well as access to its component elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLFormElement
///
///
@JS()
@staticInterop
class HTMLFormElement implements HTMLElement {
  external factory HTMLFormElement();
}

extension PropsHTMLFormElement on HTMLFormElement {
  String get acceptCharset => js_util.getProperty(this, 'acceptCharset');
  set acceptCharset(String newValue) {
    js_util.setProperty(this, 'acceptCharset', newValue);
  }

  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }

  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  String get enctype => js_util.getProperty(this, 'enctype');
  set enctype(String newValue) {
    js_util.setProperty(this, 'enctype', newValue);
  }

  String get encoding => js_util.getProperty(this, 'encoding');
  set encoding(String newValue) {
    js_util.setProperty(this, 'encoding', newValue);
  }

  String get method => js_util.getProperty(this, 'method');
  set method(String newValue) {
    js_util.setProperty(this, 'method', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  bool get noValidate => js_util.getProperty(this, 'noValidate');
  set noValidate(bool newValue) {
    js_util.setProperty(this, 'noValidate', newValue);
  }

  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  DOMTokenList get relList => js_util.getProperty(this, 'relList');
  HTMLFormControlsCollection get elements =>
      js_util.getProperty(this, 'elements');
  int get length => js_util.getProperty(this, 'length');
  void submit() => js_util.callMethod(this, 'submit', []);

  void requestSubmit([HTMLElement? submitter]) =>
      js_util.callMethod(this, 'requestSubmit', [submitter]);

  void reset() => js_util.callMethod(this, 'reset', []);

  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);
}

///  The interface gives access to properties specific to [<label>]
/// elements. It inherits methods and properties from the base
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLLabelElement
///
///
@JS()
@staticInterop
class HTMLLabelElement implements HTMLElement {
  external factory HTMLLabelElement();
}

extension PropsHTMLLabelElement on HTMLLabelElement {
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get htmlFor => js_util.getProperty(this, 'htmlFor');
  set htmlFor(String newValue) {
    js_util.setProperty(this, 'htmlFor', newValue);
  }

  HTMLElement? get control => js_util.getProperty(this, 'control');
}

///  The interface provides special properties and methods for
/// manipulating the options, layout, and presentation of [<input>]
/// elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLInputElement
///
///
@JS()
@staticInterop
class HTMLInputElement implements HTMLElement {
  external factory HTMLInputElement();
}

extension PropsHTMLInputElement on HTMLInputElement {
  String get accept => js_util.getProperty(this, 'accept');
  set accept(String newValue) {
    js_util.setProperty(this, 'accept', newValue);
  }

  String get alt => js_util.getProperty(this, 'alt');
  set alt(String newValue) {
    js_util.setProperty(this, 'alt', newValue);
  }

  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  bool get defaultChecked => js_util.getProperty(this, 'defaultChecked');
  set defaultChecked(bool newValue) {
    js_util.setProperty(this, 'defaultChecked', newValue);
  }

  bool get checked => js_util.getProperty(this, 'checked');
  set checked(bool newValue) {
    js_util.setProperty(this, 'checked', newValue);
  }

  String get dirName => js_util.getProperty(this, 'dirName');
  set dirName(String newValue) {
    js_util.setProperty(this, 'dirName', newValue);
  }

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  FileList? get files => js_util.getProperty(this, 'files');
  set files(FileList? newValue) {
    js_util.setProperty(this, 'files', newValue);
  }

  String get formAction => js_util.getProperty(this, 'formAction');
  set formAction(String newValue) {
    js_util.setProperty(this, 'formAction', newValue);
  }

  String get formEnctype => js_util.getProperty(this, 'formEnctype');
  set formEnctype(String newValue) {
    js_util.setProperty(this, 'formEnctype', newValue);
  }

  String get formMethod => js_util.getProperty(this, 'formMethod');
  set formMethod(String newValue) {
    js_util.setProperty(this, 'formMethod', newValue);
  }

  bool get formNoValidate => js_util.getProperty(this, 'formNoValidate');
  set formNoValidate(bool newValue) {
    js_util.setProperty(this, 'formNoValidate', newValue);
  }

  String get formTarget => js_util.getProperty(this, 'formTarget');
  set formTarget(String newValue) {
    js_util.setProperty(this, 'formTarget', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  bool get indeterminate => js_util.getProperty(this, 'indeterminate');
  set indeterminate(bool newValue) {
    js_util.setProperty(this, 'indeterminate', newValue);
  }

  HTMLElement? get list => js_util.getProperty(this, 'list');
  String get max => js_util.getProperty(this, 'max');
  set max(String newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  int get maxLength => js_util.getProperty(this, 'maxLength');
  set maxLength(int newValue) {
    js_util.setProperty(this, 'maxLength', newValue);
  }

  String get min => js_util.getProperty(this, 'min');
  set min(String newValue) {
    js_util.setProperty(this, 'min', newValue);
  }

  int get minLength => js_util.getProperty(this, 'minLength');
  set minLength(int newValue) {
    js_util.setProperty(this, 'minLength', newValue);
  }

  bool get multiple => js_util.getProperty(this, 'multiple');
  set multiple(bool newValue) {
    js_util.setProperty(this, 'multiple', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get pattern => js_util.getProperty(this, 'pattern');
  set pattern(String newValue) {
    js_util.setProperty(this, 'pattern', newValue);
  }

  String get placeholder => js_util.getProperty(this, 'placeholder');
  set placeholder(String newValue) {
    js_util.setProperty(this, 'placeholder', newValue);
  }

  bool get readOnly => js_util.getProperty(this, 'readOnly');
  set readOnly(bool newValue) {
    js_util.setProperty(this, 'readOnly', newValue);
  }

  bool get required => js_util.getProperty(this, 'required');
  set required(bool newValue) {
    js_util.setProperty(this, 'required', newValue);
  }

  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get step => js_util.getProperty(this, 'step');
  set step(String newValue) {
    js_util.setProperty(this, 'step', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get defaultValue => js_util.getProperty(this, 'defaultValue');
  set defaultValue(String newValue) {
    js_util.setProperty(this, 'defaultValue', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  dynamic get valueAsDate => js_util.getProperty(this, 'valueAsDate');
  set valueAsDate(dynamic newValue) {
    js_util.setProperty(this, 'valueAsDate', newValue);
  }

/* double | NaN */ dynamic get valueAsNumber =>
      js_util.getProperty(this, 'valueAsNumber');
  set valueAsNumber(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'valueAsNumber', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  void stepUp([int? n = 1]) => js_util.callMethod(this, 'stepUp', [n]);

  void stepDown([int? n = 1]) => js_util.callMethod(this, 'stepDown', [n]);

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList? get labels => js_util.getProperty(this, 'labels');
  void select() => js_util.callMethod(this, 'select', []);

  int? get selectionStart => js_util.getProperty(this, 'selectionStart');
  set selectionStart(int? newValue) {
    js_util.setProperty(this, 'selectionStart', newValue);
  }

  int? get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  set selectionEnd(int? newValue) {
    js_util.setProperty(this, 'selectionEnd', newValue);
  }

  String? get selectionDirection =>
      js_util.getProperty(this, 'selectionDirection');
  set selectionDirection(String? newValue) {
    js_util.setProperty(this, 'selectionDirection', newValue);
  }

  void setRangeText(
          [String? replacement,
          int? start,
          int? end,
          SelectionMode? selectionMode = SelectionMode.preserve]) =>
      js_util.callMethod(this, 'setRangeText',
          [replacement, start, end, selectionMode?.value]);

  void setSelectionRange(int start, int end, [String? direction]) =>
      js_util.callMethod(this, 'setSelectionRange', [start, end, direction]);

  void showPicker() => js_util.callMethod(this, 'showPicker', []);

  bool get webkitdirectory => js_util.getProperty(this, 'webkitdirectory');
  set webkitdirectory(bool newValue) {
    js_util.setProperty(this, 'webkitdirectory', newValue);
  }

  Iterable<FileSystemEntry> get webkitEntries =>
      js_util.getProperty(this, 'webkitEntries');
  String get capture => js_util.getProperty(this, 'capture');
  set capture(String newValue) {
    js_util.setProperty(this, 'capture', newValue);
  }

  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  String get useMap => js_util.getProperty(this, 'useMap');
  set useMap(String newValue) {
    js_util.setProperty(this, 'useMap', newValue);
  }
}

///  The interface provides properties and methods (beyond the
/// regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<button>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLButtonElement
///
///
@JS()
@staticInterop
class HTMLButtonElement implements HTMLElement {
  external factory HTMLButtonElement();
}

extension PropsHTMLButtonElement on HTMLButtonElement {
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get formAction => js_util.getProperty(this, 'formAction');
  set formAction(String newValue) {
    js_util.setProperty(this, 'formAction', newValue);
  }

  String get formEnctype => js_util.getProperty(this, 'formEnctype');
  set formEnctype(String newValue) {
    js_util.setProperty(this, 'formEnctype', newValue);
  }

  String get formMethod => js_util.getProperty(this, 'formMethod');
  set formMethod(String newValue) {
    js_util.setProperty(this, 'formMethod', newValue);
  }

  bool get formNoValidate => js_util.getProperty(this, 'formNoValidate');
  set formNoValidate(bool newValue) {
    js_util.setProperty(this, 'formNoValidate', newValue);
  }

  String get formTarget => js_util.getProperty(this, 'formTarget');
  set formTarget(String newValue) {
    js_util.setProperty(this, 'formTarget', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

///  The interface represents a [<select>] HTML Element. These
/// elements also share all of the properties and methods of other
/// HTML elements via the [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLSelectElement
///
///
@JS()
@staticInterop
class HTMLSelectElement implements HTMLElement {
  external factory HTMLSelectElement();
}

extension PropsHTMLSelectElement on HTMLSelectElement {
  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  bool get multiple => js_util.getProperty(this, 'multiple');
  set multiple(bool newValue) {
    js_util.setProperty(this, 'multiple', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  bool get required => js_util.getProperty(this, 'required');
  set required(bool newValue) {
    js_util.setProperty(this, 'required', newValue);
  }

  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  HTMLOptionsCollection get options => js_util.getProperty(this, 'options');
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  HTMLOptionElement? item(int index) =>
      js_util.callMethod(this, 'item', [index]);

  HTMLOptionElement? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);

  void add(dynamic element, [dynamic before]) =>
      js_util.callMethod(this, 'add', [element, before]);

  void remove([int? index]) => js_util.callMethod(this, 'remove', [index]);

  HTMLCollection get selectedOptions =>
      js_util.getProperty(this, 'selectedOptions');
  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  set selectedIndex(int newValue) {
    js_util.setProperty(this, 'selectedIndex', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

///  The interface provides special properties (beyond the
/// [HTMLElement] object interface it also has available to it by
/// inheritance) to manipulate [<datalist>] elements and their
/// content.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDataListElement
///
///
@JS()
@staticInterop
class HTMLDataListElement implements HTMLElement {
  external factory HTMLDataListElement();
}

extension PropsHTMLDataListElement on HTMLDataListElement {
  HTMLCollection get options => js_util.getProperty(this, 'options');
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] object interface they also have
/// available to them by inheritance) for manipulating the layout and
/// presentation of [<optgroup>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLOptGroupElement
///
///
@JS()
@staticInterop
class HTMLOptGroupElement implements HTMLElement {
  external factory HTMLOptGroupElement();
}

extension PropsHTMLOptGroupElement on HTMLOptGroupElement {
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }
}

///  The interface represents [<option>] elements and inherits all
/// properties and methods of the [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLOptionElement
///
///
@JS()
@staticInterop
class HTMLOptionElement implements HTMLElement {
  external factory HTMLOptionElement();
}

extension PropsHTMLOptionElement on HTMLOptionElement {
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  bool get defaultSelected => js_util.getProperty(this, 'defaultSelected');
  set defaultSelected(bool newValue) {
    js_util.setProperty(this, 'defaultSelected', newValue);
  }

  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  int get index => js_util.getProperty(this, 'index');
}

///  The interface provides special properties and methods for
/// manipulating the layout and presentation of [<textarea>]
/// elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTextAreaElement
///
///
@JS()
@staticInterop
class HTMLTextAreaElement implements HTMLElement {
  external factory HTMLTextAreaElement();
}

extension PropsHTMLTextAreaElement on HTMLTextAreaElement {
  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  int get cols => js_util.getProperty(this, 'cols');
  set cols(int newValue) {
    js_util.setProperty(this, 'cols', newValue);
  }

  String get dirName => js_util.getProperty(this, 'dirName');
  set dirName(String newValue) {
    js_util.setProperty(this, 'dirName', newValue);
  }

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  int get maxLength => js_util.getProperty(this, 'maxLength');
  set maxLength(int newValue) {
    js_util.setProperty(this, 'maxLength', newValue);
  }

  int get minLength => js_util.getProperty(this, 'minLength');
  set minLength(int newValue) {
    js_util.setProperty(this, 'minLength', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get placeholder => js_util.getProperty(this, 'placeholder');
  set placeholder(String newValue) {
    js_util.setProperty(this, 'placeholder', newValue);
  }

  bool get readOnly => js_util.getProperty(this, 'readOnly');
  set readOnly(bool newValue) {
    js_util.setProperty(this, 'readOnly', newValue);
  }

  bool get required => js_util.getProperty(this, 'required');
  set required(bool newValue) {
    js_util.setProperty(this, 'required', newValue);
  }

  int get rows => js_util.getProperty(this, 'rows');
  set rows(int newValue) {
    js_util.setProperty(this, 'rows', newValue);
  }

  String get wrap => js_util.getProperty(this, 'wrap');
  set wrap(String newValue) {
    js_util.setProperty(this, 'wrap', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  String get defaultValue => js_util.getProperty(this, 'defaultValue');
  set defaultValue(String newValue) {
    js_util.setProperty(this, 'defaultValue', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  int get textLength => js_util.getProperty(this, 'textLength');
  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
  void select() => js_util.callMethod(this, 'select', []);

  int get selectionStart => js_util.getProperty(this, 'selectionStart');
  set selectionStart(int newValue) {
    js_util.setProperty(this, 'selectionStart', newValue);
  }

  int get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  set selectionEnd(int newValue) {
    js_util.setProperty(this, 'selectionEnd', newValue);
  }

  String get selectionDirection =>
      js_util.getProperty(this, 'selectionDirection');
  set selectionDirection(String newValue) {
    js_util.setProperty(this, 'selectionDirection', newValue);
  }

  void setRangeText(
          [String? replacement,
          int? start,
          int? end,
          SelectionMode? selectionMode = SelectionMode.preserve]) =>
      js_util.callMethod(this, 'setRangeText',
          [replacement, start, end, selectionMode?.value]);

  void setSelectionRange(int start, int end, [String? direction]) =>
      js_util.callMethod(this, 'setSelectionRange', [start, end, direction]);
}

///  The interface provides properties and methods (beyond those
/// inherited from [HTMLElement]) for manipulating the layout and
/// presentation of [<output>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLOutputElement
///
///
@JS()
@staticInterop
class HTMLOutputElement implements HTMLElement {
  external factory HTMLOutputElement();
}

extension PropsHTMLOutputElement on HTMLOutputElement {
  DOMTokenList get htmlFor => js_util.getProperty(this, 'htmlFor');
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  String get defaultValue => js_util.getProperty(this, 'defaultValue');
  set defaultValue(String newValue) {
    js_util.setProperty(this, 'defaultValue', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<progress>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLProgressElement
///
///
@JS()
@staticInterop
class HTMLProgressElement implements HTMLElement {
  external factory HTMLProgressElement();
}

extension PropsHTMLProgressElement on HTMLProgressElement {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  double get position => js_util.getProperty(this, 'position');
  NodeList get labels => js_util.getProperty(this, 'labels');
}

///  The HTML [<meter>] elements expose the interface, which provides
/// special properties and methods (beyond the [HTMLElement] object
/// interface they also have available to them by inheritance) for
/// manipulating the layout and presentation of [<meter>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMeterElement
///
///
@JS()
@staticInterop
class HTMLMeterElement implements HTMLElement {
  external factory HTMLMeterElement();
}

extension PropsHTMLMeterElement on HTMLMeterElement {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  double get min => js_util.getProperty(this, 'min');
  set min(double newValue) {
    js_util.setProperty(this, 'min', newValue);
  }

  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  double get low => js_util.getProperty(this, 'low');
  set low(double newValue) {
    js_util.setProperty(this, 'low', newValue);
  }

  double get high => js_util.getProperty(this, 'high');
  set high(double newValue) {
    js_util.setProperty(this, 'high', newValue);
  }

  double get optimum => js_util.getProperty(this, 'optimum');
  set optimum(double newValue) {
    js_util.setProperty(this, 'optimum', newValue);
  }

  NodeList get labels => js_util.getProperty(this, 'labels');
}

///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<fieldset>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLFieldSetElement
///
///
@JS()
@staticInterop
class HTMLFieldSetElement implements HTMLElement {
  external factory HTMLFieldSetElement();
}

extension PropsHTMLFieldSetElement on HTMLFieldSetElement {
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  HTMLCollection get elements => js_util.getProperty(this, 'elements');
  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  void setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);
}

///  The is an interface allowing to access properties of the
/// [<legend>] elements. It inherits properties and methods from the
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLLegendElement
///
///
@JS()
@staticInterop
class HTMLLegendElement implements HTMLElement {
  external factory HTMLLegendElement();
}

extension PropsHTMLLegendElement on HTMLLegendElement {
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

enum SelectionMode {
  select('select'),
  start('start'),
  end('end'),
  preserve('preserve');

  final String value;
  static SelectionMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SelectionMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const SelectionMode(this.value);
}

///  The interface represents the validity states that an element can
/// be in, with respect to constraint validation. Together, they help
/// explain why an element's value fails to validate, if it's not
/// valid.
@JS()
@staticInterop
class ValidityState {
  external factory ValidityState();
}

extension PropsValidityState on ValidityState {
  bool get valueMissing => js_util.getProperty(this, 'valueMissing');
  bool get typeMismatch => js_util.getProperty(this, 'typeMismatch');
  bool get patternMismatch => js_util.getProperty(this, 'patternMismatch');
  bool get tooLong => js_util.getProperty(this, 'tooLong');
  bool get tooShort => js_util.getProperty(this, 'tooShort');
  bool get rangeUnderflow => js_util.getProperty(this, 'rangeUnderflow');
  bool get rangeOverflow => js_util.getProperty(this, 'rangeOverflow');
  bool get stepMismatch => js_util.getProperty(this, 'stepMismatch');
  bool get badInput => js_util.getProperty(this, 'badInput');
  bool get customError => js_util.getProperty(this, 'customError');
  bool get valid => js_util.getProperty(this, 'valid');
}

///  The interface defines the object used to represent an HTML
/// form's [submit] event. This event is fired at the [<form>] when
/// the form's submit action is invoked.
///
///
///
///    Event
///
///
///
///
///
///    SubmitEvent
///
///
@JS()
@staticInterop
class SubmitEvent implements Event {
  external factory SubmitEvent(String type, [SubmitEventInit? eventInitDict]);
}

extension PropsSubmitEvent on SubmitEvent {
  HTMLElement? get submitter => js_util.getProperty(this, 'submitter');
}

@anonymous
@JS()
@staticInterop
class SubmitEventInit implements EventInit {
  external factory SubmitEventInit({HTMLElement? submitter});
}

extension PropsSubmitEventInit on SubmitEventInit {
  HTMLElement? get submitter => js_util.getProperty(this, 'submitter');
  set submitter(HTMLElement? newValue) {
    js_util.setProperty(this, 'submitter', newValue);
  }
}

///  The interface represents a [formdata] event — such an event is
/// fired on an [HTMLFormElement] object after the entry list
/// representing the form's data is constructed. This happens when
/// the form is submitted, but can also be triggered by the
/// invocation of a [FormData()] constructor.
///  This allows a [FormData] object to be quickly obtained in
/// response to a [formdata] event firing, rather than needing to put
/// it together yourself when you wish to submit form data via a
/// method like [XMLHttpRequest] (see Using FormData objects).
///
///
///
///    Event
///
///
///
///
///
///    FormDataEvent
///
///
@experimental
@JS()
@staticInterop
class FormDataEvent implements Event {
  external factory FormDataEvent(String type, FormDataEventInit eventInitDict);
}

extension PropsFormDataEvent on FormDataEvent {
  FormData get formData => js_util.getProperty(this, 'formData');
}

@anonymous
@JS()
@staticInterop
class FormDataEventInit implements EventInit {
  external factory FormDataEventInit({required FormData formData});
}

extension PropsFormDataEventInit on FormDataEventInit {
  FormData get formData => js_util.getProperty(this, 'formData');
  set formData(FormData newValue) {
    js_util.setProperty(this, 'formData', newValue);
  }
}

///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<details>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDetailsElement
///
///
@JS()
@staticInterop
class HTMLDetailsElement implements HTMLElement {
  external factory HTMLDetailsElement();
}

extension PropsHTMLDetailsElement on HTMLDetailsElement {
  bool get open => js_util.getProperty(this, 'open');
  set open(bool newValue) {
    js_util.setProperty(this, 'open', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides methods to manipulate [<dialog>]
/// elements. It inherits properties and methods from the
/// [HTMLElement] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLDialogElement
///
///
@experimental
@JS()
@staticInterop
class HTMLDialogElement implements HTMLElement {
  external factory HTMLDialogElement();
}

extension PropsHTMLDialogElement on HTMLDialogElement {
  bool get open => js_util.getProperty(this, 'open');
  set open(bool newValue) {
    js_util.setProperty(this, 'open', newValue);
  }

  String get returnValue => js_util.getProperty(this, 'returnValue');
  set returnValue(String newValue) {
    js_util.setProperty(this, 'returnValue', newValue);
  }

  void show() => js_util.callMethod(this, 'show', []);

  void showModal() => js_util.callMethod(this, 'showModal', []);

  void close([String? returnValue]) =>
      js_util.callMethod(this, 'close', [returnValue]);
}

///  HTML [<script>] elements expose the interface, which provides
/// special properties and methods for manipulating the behavior and
/// execution of [<script>] elements (beyond the inherited
/// [HTMLElement] interface).
///  JavaScript files should be served with the
/// [application/javascript] MIME type, but browsers are lenient and
/// block them only if the script is served with an image type
/// ([image/*]), video type ([video/*]), audio type ([audio/*]), or
/// [text/csv]. If the script is blocked, its element receives an
/// [error] event; otherwise, it receives a [load] event.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLScriptElement
///
///
@JS()
@staticInterop
class HTMLScriptElement implements HTMLElement, HTMLAttributionSrcElementUtils {
  external static bool supports(String type);
  external factory HTMLScriptElement();
}

extension PropsHTMLScriptElement on HTMLScriptElement {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  bool get noModule => js_util.getProperty(this, 'noModule');
  set noModule(bool newValue) {
    js_util.setProperty(this, 'noModule', newValue);
  }

  bool get async => js_util.getProperty(this, 'async');
  set async(bool newValue) {
    js_util.setProperty(this, 'async', newValue);
  }

  bool get defer => js_util.getProperty(this, 'defer');
  set defer(bool newValue) {
    js_util.setProperty(this, 'defer', newValue);
  }

  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get integrity => js_util.getProperty(this, 'integrity');
  set integrity(String newValue) {
    js_util.setProperty(this, 'integrity', newValue);
  }

  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  DOMTokenList get blocking => js_util.getProperty(this, 'blocking');
  String get fetchPriority => js_util.getProperty(this, 'fetchPriority');
  set fetchPriority(String newValue) {
    js_util.setProperty(this, 'fetchPriority', newValue);
  }

  String get charset => js_util.getProperty(this, 'charset');
  set charset(String newValue) {
    js_util.setProperty(this, 'charset', newValue);
  }

  String get event => js_util.getProperty(this, 'event');
  set event(String newValue) {
    js_util.setProperty(this, 'event', newValue);
  }

  String get htmlFor => js_util.getProperty(this, 'htmlFor');
  set htmlFor(String newValue) {
    js_util.setProperty(this, 'htmlFor', newValue);
  }
}

///  The interface enables access to the contents of an HTML
/// [<template>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLTemplateElement
///
///
@JS()
@staticInterop
class HTMLTemplateElement implements HTMLElement {
  external factory HTMLTemplateElement();
}

extension PropsHTMLTemplateElement on HTMLTemplateElement {
  DocumentFragment get content => js_util.getProperty(this, 'content');
}

///  The interface of the Shadow DOM API enables access to the name
/// and assigned nodes of an HTML [<slot>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLSlotElement
///
///
@JS()
@staticInterop
class HTMLSlotElement implements HTMLElement {
  external factory HTMLSlotElement();
}

extension PropsHTMLSlotElement on HTMLSlotElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  Iterable<Node> assignedNodes([AssignedNodesOptions? options]) =>
      js_util.callMethod(this, 'assignedNodes', [options]);

  Iterable<Element> assignedElements([AssignedNodesOptions? options]) =>
      js_util.callMethod(this, 'assignedElements', [options]);

  void assign([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'assign', [nodes1, nodes2, nodes3]);
}

@anonymous
@JS()
@staticInterop
class AssignedNodesOptions {
  external factory AssignedNodesOptions({bool? flatten = false});
}

extension PropsAssignedNodesOptions on AssignedNodesOptions {
  bool get flatten => js_util.getProperty(this, 'flatten');
  set flatten(bool newValue) {
    js_util.setProperty(this, 'flatten', newValue);
  }
}

///  The interface provides properties and methods for manipulating
/// the layout and presentation of [<canvas>] elements. The interface
/// also inherits the properties and methods of the [HTMLElement]
/// interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLCanvasElement
///
///
@JS()
@staticInterop
class HTMLCanvasElement implements HTMLElement {
  external factory HTMLCanvasElement();
}

extension PropsHTMLCanvasElement on HTMLCanvasElement {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  dynamic getContext(String contextId, [dynamic options]) =>
      js_util.callMethod(this, 'getContext', [contextId, options]);

  String toDataURL([String? type = 'image/png', dynamic quality]) =>
      js_util.callMethod(this, 'toDataURL', [type, quality]);

  void toBlob(BlobCallback callback,
          [String? type = 'image/png', dynamic quality]) =>
      js_util
          .callMethod(this, 'toBlob', [allowInterop(callback), type, quality]);

  OffscreenCanvas transferControlToOffscreen() =>
      js_util.callMethod(this, 'transferControlToOffscreen', []);

  MediaStream captureStream([double? frameRequestRate]) =>
      js_util.callMethod(this, 'captureStream', [frameRequestRate]);
}

enum PredefinedColorSpace {
  srgb('srgb'),
  displayP3('display-p3');

  final String value;
  static PredefinedColorSpace fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PredefinedColorSpace> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PredefinedColorSpace(this.value);
}

enum CanvasFillRule {
  nonzero('nonzero'),
  evenodd('evenodd');

  final String value;
  static CanvasFillRule fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasFillRule> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasFillRule(this.value);
}

@anonymous
@JS()
@staticInterop
class CanvasRenderingContext2DSettings {
  external factory CanvasRenderingContext2DSettings._(
      {bool? alpha = true,
      bool? desynchronized = false,
      String? colorSpace,
      bool? willReadFrequently = false});

  factory CanvasRenderingContext2DSettings(
          {bool? alpha = true,
          bool? desynchronized = false,
          PredefinedColorSpace? colorSpace = PredefinedColorSpace.srgb,
          bool? willReadFrequently = false}) =>
      CanvasRenderingContext2DSettings._(
          alpha: alpha ?? undefined,
          desynchronized: desynchronized ?? undefined,
          colorSpace: colorSpace?.value ?? undefined,
          willReadFrequently: willReadFrequently ?? undefined);
}

extension PropsCanvasRenderingContext2DSettings
    on CanvasRenderingContext2DSettings {
  bool get alpha => js_util.getProperty(this, 'alpha');
  set alpha(bool newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  bool get desynchronized => js_util.getProperty(this, 'desynchronized');
  set desynchronized(bool newValue) {
    js_util.setProperty(this, 'desynchronized', newValue);
  }

  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.value);
  }

  bool get willReadFrequently =>
      js_util.getProperty(this, 'willReadFrequently');
  set willReadFrequently(bool newValue) {
    js_util.setProperty(this, 'willReadFrequently', newValue);
  }
}

enum ImageSmoothingQuality {
  low('low'),
  medium('medium'),
  high('high');

  final String value;
  static ImageSmoothingQuality fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ImageSmoothingQuality> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ImageSmoothingQuality(this.value);
}

///  The interface, part of the Canvas API, provides the 2D rendering
/// context for the drawing surface of a [<canvas>] element. It is
/// used for drawing shapes, text, images, and other objects.
///  See the interface's properties and methods in the sidebar and
/// below. The Canvas tutorial has more explanation, examples, and
/// resources, as well.
@JS()
@staticInterop
class CanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasUserInterface,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory CanvasRenderingContext2D();
}

extension PropsCanvasRenderingContext2D on CanvasRenderingContext2D {
  HTMLCanvasElement get canvas => js_util.getProperty(this, 'canvas');
  CanvasRenderingContext2DSettings getContextAttributes() =>
      js_util.callMethod(this, 'getContextAttributes', []);
}

@JS()
@staticInterop
class CanvasState {
  external factory CanvasState();
}

extension PropsCanvasState on CanvasState {
  void save() => js_util.callMethod(this, 'save', []);

  void restore() => js_util.callMethod(this, 'restore', []);

  void reset() => js_util.callMethod(this, 'reset', []);

  bool isContextLost() => js_util.callMethod(this, 'isContextLost', []);
}

@JS()
@staticInterop
class CanvasTransform {
  external factory CanvasTransform();
}

extension PropsCanvasTransform on CanvasTransform {
  void scale(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'scale', [x, y]);

  void rotate(/* double | NaN */ dynamic angle) =>
      js_util.callMethod(this, 'rotate', [angle]);

  void translate(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'translate', [x, y]);

  void transform(
          /* double | NaN */ dynamic a,
          /* double | NaN */ dynamic b,
          /* double | NaN */ dynamic c,
          /* double | NaN */ dynamic d,
          /* double | NaN */ dynamic e,
          /* double | NaN */ dynamic f) =>
      js_util.callMethod(this, 'transform', [a, b, c, d, e, f]);

  DOMMatrix getTransform() => js_util.callMethod(this, 'getTransform', []);

  void setTransform(
          [/* double | NaN */ dynamic a,
          /* double | NaN */ dynamic b,
          /* double | NaN */ dynamic c,
          /* double | NaN */ dynamic d,
          /* double | NaN */ dynamic e,
          /* double | NaN */ dynamic f]) =>
      js_util.callMethod(this, 'setTransform', [a, b, c, d, e, f]);

  void resetTransform() => js_util.callMethod(this, 'resetTransform', []);
}

@JS()
@staticInterop
class CanvasCompositing {
  external factory CanvasCompositing();
}

extension PropsCanvasCompositing on CanvasCompositing {
  /* double | NaN */ dynamic get globalAlpha =>
      js_util.getProperty(this, 'globalAlpha');
  set globalAlpha(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'globalAlpha', newValue);
  }

  String get globalCompositeOperation =>
      js_util.getProperty(this, 'globalCompositeOperation');
  set globalCompositeOperation(String newValue) {
    js_util.setProperty(this, 'globalCompositeOperation', newValue);
  }
}

@JS()
@staticInterop
class CanvasImageSmoothing {
  external factory CanvasImageSmoothing();
}

extension PropsCanvasImageSmoothing on CanvasImageSmoothing {
  bool get imageSmoothingEnabled =>
      js_util.getProperty(this, 'imageSmoothingEnabled');
  set imageSmoothingEnabled(bool newValue) {
    js_util.setProperty(this, 'imageSmoothingEnabled', newValue);
  }

  ImageSmoothingQuality get imageSmoothingQuality =>
      ImageSmoothingQuality.fromValue(
          js_util.getProperty(this, 'imageSmoothingQuality'));
  set imageSmoothingQuality(ImageSmoothingQuality newValue) {
    js_util.setProperty(this, 'imageSmoothingQuality', newValue.value);
  }
}

@JS()
@staticInterop
class CanvasFillStrokeStyles {
  external factory CanvasFillStrokeStyles();
}

extension PropsCanvasFillStrokeStyles on CanvasFillStrokeStyles {
  dynamic get strokeStyle => js_util.getProperty(this, 'strokeStyle');
  set strokeStyle(dynamic newValue) {
    js_util.setProperty(this, 'strokeStyle', newValue);
  }

  dynamic get fillStyle => js_util.getProperty(this, 'fillStyle');
  set fillStyle(dynamic newValue) {
    js_util.setProperty(this, 'fillStyle', newValue);
  }

  CanvasGradient createLinearGradient(
          double x0, double y0, double x1, double y1) =>
      js_util.callMethod(this, 'createLinearGradient', [x0, y0, x1, y1]);

  CanvasGradient createRadialGradient(
          double x0, double y0, double r0, double x1, double y1, double r1) =>
      js_util
          .callMethod(this, 'createRadialGradient', [x0, y0, r0, x1, y1, r1]);

  CanvasGradient createConicGradient(double startAngle, double x, double y) =>
      js_util.callMethod(this, 'createConicGradient', [startAngle, x, y]);

  CanvasPattern? createPattern(dynamic image, String repetition) =>
      js_util.callMethod(this, 'createPattern', [image, repetition]);
}

@JS()
@staticInterop
class CanvasShadowStyles {
  external factory CanvasShadowStyles();
}

extension PropsCanvasShadowStyles on CanvasShadowStyles {
  /* double | NaN */ dynamic get shadowOffsetX =>
      js_util.getProperty(this, 'shadowOffsetX');
  set shadowOffsetX(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'shadowOffsetX', newValue);
  }

/* double | NaN */ dynamic get shadowOffsetY =>
      js_util.getProperty(this, 'shadowOffsetY');
  set shadowOffsetY(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'shadowOffsetY', newValue);
  }

/* double | NaN */ dynamic get shadowBlur =>
      js_util.getProperty(this, 'shadowBlur');
  set shadowBlur(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'shadowBlur', newValue);
  }

  String get shadowColor => js_util.getProperty(this, 'shadowColor');
  set shadowColor(String newValue) {
    js_util.setProperty(this, 'shadowColor', newValue);
  }
}

@JS()
@staticInterop
class CanvasFilters {
  external factory CanvasFilters();
}

extension PropsCanvasFilters on CanvasFilters {
  String get filter => js_util.getProperty(this, 'filter');
  set filter(String newValue) {
    js_util.setProperty(this, 'filter', newValue);
  }
}

@JS()
@staticInterop
class CanvasRect {
  external factory CanvasRect();
}

extension PropsCanvasRect on CanvasRect {
  void clearRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'clearRect', [x, y, w, h]);

  void fillRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'fillRect', [x, y, w, h]);

  void strokeRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'strokeRect', [x, y, w, h]);
}

@JS()
@staticInterop
class CanvasDrawPath {
  external factory CanvasDrawPath();
}

extension PropsCanvasDrawPath on CanvasDrawPath {
  void beginPath() => js_util.callMethod(this, 'beginPath', []);

  void fill(
          [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'fill', [path, fillRule?.value]);

  void stroke([Path2D? path]) => js_util.callMethod(this, 'stroke', [path]);

  void clip(
          [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'clip', [path, fillRule?.value]);

  bool isPointInPath(Path2D path, /* double | NaN */ dynamic x,
          [/* double | NaN */ dynamic y,
          CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'isPointInPath', [path, x, y, fillRule?.value]);

  bool isPointInStroke(Path2D path,
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'isPointInStroke', [path, x, y]);
}

@JS()
@staticInterop
class CanvasUserInterface {
  external factory CanvasUserInterface();
}

extension PropsCanvasUserInterface on CanvasUserInterface {
  void drawFocusIfNeeded([Path2D? path, Element? element]) =>
      js_util.callMethod(this, 'drawFocusIfNeeded', [path, element]);

  void scrollPathIntoView([Path2D? path]) =>
      js_util.callMethod(this, 'scrollPathIntoView', [path]);
}

@JS()
@staticInterop
class CanvasText {
  external factory CanvasText();
}

extension PropsCanvasText on CanvasText {
  void fillText(String text, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          [/* double | NaN */ dynamic maxWidth]) =>
      js_util.callMethod(this, 'fillText', [text, x, y, maxWidth]);

  void strokeText(String text, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          [/* double | NaN */ dynamic maxWidth]) =>
      js_util.callMethod(this, 'strokeText', [text, x, y, maxWidth]);

  TextMetrics measureText(String text) =>
      js_util.callMethod(this, 'measureText', [text]);
}

@JS()
@staticInterop
class CanvasDrawImage {
  external factory CanvasDrawImage();
}

extension PropsCanvasDrawImage on CanvasDrawImage {
  void drawImage(dynamic image, /* double | NaN */ dynamic sx,
          [/* double | NaN */ dynamic sy,
          /* double | NaN */ dynamic sw,
          /* double | NaN */ dynamic sh,
          /* double | NaN */ dynamic dx,
          /* double | NaN */ dynamic dy,
          /* double | NaN */ dynamic dw,
          /* double | NaN */ dynamic dh]) =>
      js_util.callMethod(
          this, 'drawImage', [image, sx, sy, sw, sh, dx, dy, dw, dh]);
}

@JS()
@staticInterop
class CanvasImageData {
  external factory CanvasImageData();
}

extension PropsCanvasImageData on CanvasImageData {
  ImageData createImageData([int? sw, int? sh, ImageDataSettings? settings]) =>
      js_util.callMethod(this, 'createImageData', [sw, sh, settings]);

  ImageData getImageData(int sx, int sy, int sw, int sh,
          [ImageDataSettings? settings]) =>
      js_util.callMethod(this, 'getImageData', [sx, sy, sw, sh, settings]);

  void putImageData(ImageData imagedata, int dx,
          [int? dy,
          int? dirtyX,
          int? dirtyY,
          int? dirtyWidth,
          int? dirtyHeight]) =>
      js_util.callMethod(this, 'putImageData',
          [imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight]);
}

enum CanvasLineCap {
  butt('butt'),
  round('round'),
  square('square');

  final String value;
  static CanvasLineCap fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasLineCap> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasLineCap(this.value);
}

enum CanvasLineJoin {
  round('round'),
  bevel('bevel'),
  miter('miter');

  final String value;
  static CanvasLineJoin fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasLineJoin> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasLineJoin(this.value);
}

enum CanvasTextAlign {
  start('start'),
  end('end'),
  left('left'),
  right('right'),
  center('center');

  final String value;
  static CanvasTextAlign fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasTextAlign> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasTextAlign(this.value);
}

enum CanvasTextBaseline {
  top('top'),
  hanging('hanging'),
  middle('middle'),
  alphabetic('alphabetic'),
  ideographic('ideographic'),
  bottom('bottom');

  final String value;
  static CanvasTextBaseline fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasTextBaseline> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasTextBaseline(this.value);
}

enum CanvasDirection {
  ltr('ltr'),
  rtl('rtl'),
  inherit('inherit');

  final String value;
  static CanvasDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasDirection> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasDirection(this.value);
}

enum CanvasFontKerning {
  auto('auto'),
  normal('normal'),
  none('none');

  final String value;
  static CanvasFontKerning fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasFontKerning> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasFontKerning(this.value);
}

enum CanvasFontStretch {
  ultraCondensed('ultra-condensed'),
  extraCondensed('extra-condensed'),
  condensed('condensed'),
  semiCondensed('semi-condensed'),
  normal('normal'),
  semiExpanded('semi-expanded'),
  expanded('expanded'),
  extraExpanded('extra-expanded'),
  ultraExpanded('ultra-expanded');

  final String value;
  static CanvasFontStretch fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasFontStretch> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasFontStretch(this.value);
}

enum CanvasFontVariantCaps {
  normal('normal'),
  smallCaps('small-caps'),
  allSmallCaps('all-small-caps'),
  petiteCaps('petite-caps'),
  allPetiteCaps('all-petite-caps'),
  unicase('unicase'),
  titlingCaps('titling-caps');

  final String value;
  static CanvasFontVariantCaps fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasFontVariantCaps> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasFontVariantCaps(this.value);
}

enum CanvasTextRendering {
  auto('auto'),
  optimizeSpeed('optimizeSpeed'),
  optimizeLegibility('optimizeLegibility'),
  geometricPrecision('geometricPrecision');

  final String value;
  static CanvasTextRendering fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CanvasTextRendering> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CanvasTextRendering(this.value);
}

@JS()
@staticInterop
class CanvasPathDrawingStyles {
  external factory CanvasPathDrawingStyles();
}

extension PropsCanvasPathDrawingStyles on CanvasPathDrawingStyles {
  /* double | NaN */ dynamic get lineWidth =>
      js_util.getProperty(this, 'lineWidth');
  set lineWidth(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'lineWidth', newValue);
  }

  CanvasLineCap get lineCap =>
      CanvasLineCap.fromValue(js_util.getProperty(this, 'lineCap'));
  set lineCap(CanvasLineCap newValue) {
    js_util.setProperty(this, 'lineCap', newValue.value);
  }

  CanvasLineJoin get lineJoin =>
      CanvasLineJoin.fromValue(js_util.getProperty(this, 'lineJoin'));
  set lineJoin(CanvasLineJoin newValue) {
    js_util.setProperty(this, 'lineJoin', newValue.value);
  }

/* double | NaN */ dynamic get miterLimit =>
      js_util.getProperty(this, 'miterLimit');
  set miterLimit(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'miterLimit', newValue);
  }

  void setLineDash(Iterable< /* double | NaN */ dynamic> segments) =>
      js_util.callMethod(this, 'setLineDash', [segments]);

  Iterable< /* double | NaN */ dynamic> getLineDash() =>
      js_util.callMethod(this, 'getLineDash', []);

/* double | NaN */ dynamic get lineDashOffset =>
      js_util.getProperty(this, 'lineDashOffset');
  set lineDashOffset(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'lineDashOffset', newValue);
  }
}

@JS()
@staticInterop
class CanvasTextDrawingStyles {
  external factory CanvasTextDrawingStyles();
}

extension PropsCanvasTextDrawingStyles on CanvasTextDrawingStyles {
  String get font => js_util.getProperty(this, 'font');
  set font(String newValue) {
    js_util.setProperty(this, 'font', newValue);
  }

  CanvasTextAlign get textAlign =>
      CanvasTextAlign.fromValue(js_util.getProperty(this, 'textAlign'));
  set textAlign(CanvasTextAlign newValue) {
    js_util.setProperty(this, 'textAlign', newValue.value);
  }

  CanvasTextBaseline get textBaseline =>
      CanvasTextBaseline.fromValue(js_util.getProperty(this, 'textBaseline'));
  set textBaseline(CanvasTextBaseline newValue) {
    js_util.setProperty(this, 'textBaseline', newValue.value);
  }

  CanvasDirection get direction =>
      CanvasDirection.fromValue(js_util.getProperty(this, 'direction'));
  set direction(CanvasDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
  }

  String get letterSpacing => js_util.getProperty(this, 'letterSpacing');
  set letterSpacing(String newValue) {
    js_util.setProperty(this, 'letterSpacing', newValue);
  }

  CanvasFontKerning get fontKerning =>
      CanvasFontKerning.fromValue(js_util.getProperty(this, 'fontKerning'));
  set fontKerning(CanvasFontKerning newValue) {
    js_util.setProperty(this, 'fontKerning', newValue.value);
  }

  CanvasFontStretch get fontStretch =>
      CanvasFontStretch.fromValue(js_util.getProperty(this, 'fontStretch'));
  set fontStretch(CanvasFontStretch newValue) {
    js_util.setProperty(this, 'fontStretch', newValue.value);
  }

  CanvasFontVariantCaps get fontVariantCaps => CanvasFontVariantCaps.fromValue(
      js_util.getProperty(this, 'fontVariantCaps'));
  set fontVariantCaps(CanvasFontVariantCaps newValue) {
    js_util.setProperty(this, 'fontVariantCaps', newValue.value);
  }

  CanvasTextRendering get textRendering =>
      CanvasTextRendering.fromValue(js_util.getProperty(this, 'textRendering'));
  set textRendering(CanvasTextRendering newValue) {
    js_util.setProperty(this, 'textRendering', newValue.value);
  }

  String get wordSpacing => js_util.getProperty(this, 'wordSpacing');
  set wordSpacing(String newValue) {
    js_util.setProperty(this, 'wordSpacing', newValue);
  }
}

@JS()
@staticInterop
class CanvasPath {
  external factory CanvasPath();
}

extension PropsCanvasPath on CanvasPath {
  void closePath() => js_util.callMethod(this, 'closePath', []);

  void moveTo(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'moveTo', [x, y]);

  void lineTo(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'lineTo', [x, y]);

  void quadraticCurveTo(
          /* double | NaN */ dynamic cpx,
          /* double | NaN */ dynamic cpy,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'quadraticCurveTo', [cpx, cpy, x, y]);

  void bezierCurveTo(
          /* double | NaN */ dynamic cp1x,
          /* double | NaN */ dynamic cp1y,
          /* double | NaN */ dynamic cp2x,
          /* double | NaN */ dynamic cp2y,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'bezierCurveTo', [cp1x, cp1y, cp2x, cp2y, x, y]);

  void arcTo(
          /* double | NaN */ dynamic x1,
          /* double | NaN */ dynamic y1,
          /* double | NaN */ dynamic x2,
          /* double | NaN */ dynamic y2,
          /* double | NaN */ dynamic radius) =>
      js_util.callMethod(this, 'arcTo', [x1, y1, x2, y2, radius]);

  void rect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'rect', [x, y, w, h]);

  void roundRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h,
          [dynamic radii = 0]) =>
      js_util.callMethod(this, 'roundRect', [x, y, w, h, radii]);

  void arc(
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic radius,
          /* double | NaN */ dynamic startAngle,
          /* double | NaN */ dynamic endAngle,
          [bool? counterclockwise = false]) =>
      js_util.callMethod(
          this, 'arc', [x, y, radius, startAngle, endAngle, counterclockwise]);

  void ellipse(
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic radiusX,
          /* double | NaN */ dynamic radiusY,
          /* double | NaN */ dynamic rotation,
          /* double | NaN */ dynamic startAngle,
          /* double | NaN */ dynamic endAngle,
          [bool? counterclockwise = false]) =>
      js_util.callMethod(this, 'ellipse', [
        x,
        y,
        radiusX,
        radiusY,
        rotation,
        startAngle,
        endAngle,
        counterclockwise
      ]);
}

///  The interface represents an opaque object describing a gradient.
/// It is returned by the methods
/// [CanvasRenderingContext2D.createLinearGradient()],
/// [CanvasRenderingContext2D.createConicGradient()] or
/// [CanvasRenderingContext2D.createRadialGradient()].
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
@staticInterop
class CanvasGradient {
  external factory CanvasGradient();
}

extension PropsCanvasGradient on CanvasGradient {
  void addColorStop(double offset, String color) =>
      js_util.callMethod(this, 'addColorStop', [offset, color]);
}

///  The interface represents an opaque object describing a pattern,
/// based on an image, a canvas, or a video, created by the
/// [CanvasRenderingContext2D.createPattern()] method.
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
@staticInterop
class CanvasPattern {
  external factory CanvasPattern();
}

extension PropsCanvasPattern on CanvasPattern {
  void setTransform([DOMMatrix2DInit? transform]) =>
      js_util.callMethod(this, 'setTransform', [transform]);
}

///  The interface represents the dimensions of a piece of text in
/// the canvas; a instance can be retrieved using the
/// [CanvasRenderingContext2D.measureText()] method.
@JS()
@staticInterop
class TextMetrics {
  external factory TextMetrics();
}

extension PropsTextMetrics on TextMetrics {
  double get width => js_util.getProperty(this, 'width');
  double get actualBoundingBoxLeft =>
      js_util.getProperty(this, 'actualBoundingBoxLeft');
  double get actualBoundingBoxRight =>
      js_util.getProperty(this, 'actualBoundingBoxRight');
  double get fontBoundingBoxAscent =>
      js_util.getProperty(this, 'fontBoundingBoxAscent');
  double get fontBoundingBoxDescent =>
      js_util.getProperty(this, 'fontBoundingBoxDescent');
  double get actualBoundingBoxAscent =>
      js_util.getProperty(this, 'actualBoundingBoxAscent');
  double get actualBoundingBoxDescent =>
      js_util.getProperty(this, 'actualBoundingBoxDescent');
  double get emHeightAscent => js_util.getProperty(this, 'emHeightAscent');
  double get emHeightDescent => js_util.getProperty(this, 'emHeightDescent');
  double get hangingBaseline => js_util.getProperty(this, 'hangingBaseline');
  double get alphabeticBaseline =>
      js_util.getProperty(this, 'alphabeticBaseline');
  double get ideographicBaseline =>
      js_util.getProperty(this, 'ideographicBaseline');
}

@anonymous
@JS()
@staticInterop
class ImageDataSettings {
  external factory ImageDataSettings._({String? colorSpace});

  factory ImageDataSettings({PredefinedColorSpace? colorSpace}) =>
      ImageDataSettings._(colorSpace: colorSpace?.value ?? undefined);
}

extension PropsImageDataSettings on ImageDataSettings {
  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.value);
  }
}

///  The interface represents the underlying pixel data of an area of
/// a [<canvas>] element.
///  It is created using the [ImageData()] constructor or creator
/// methods on the [CanvasRenderingContext2D] object associated with
/// a canvas: [createImageData()] and [getImageData()]. It can also
/// be used to set a part of the canvas by using [putImageData()].
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class ImageData {
  external factory ImageData(Uint8ClampedList data, int sw,
      [int? sh, ImageDataSettings? settings]);
}

extension PropsImageData on ImageData {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  Uint8ClampedList get data => js_util.getProperty(this, 'data');
  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
}

///  The interface of the Canvas 2D API is used to declare a path
/// that can then be used on a [CanvasRenderingContext2D] object. The
/// path methods of the [CanvasRenderingContext2D] interface are also
/// present on this interface, which gives you the convenience of
/// being able to retain and replay your path whenever desired.
@JS()
@staticInterop
class Path2D implements CanvasPath {
  external factory Path2D([dynamic path]);
}

extension PropsPath2D on Path2D {
  void addPath(Path2D path, [DOMMatrix2DInit? transform]) =>
      js_util.callMethod(this, 'addPath', [path, transform]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface is a canvas rendering context that provides the
/// functionality to replace the canvas's contents with the given
/// [ImageBitmap]. Its context id (the first argument to
/// [HTMLCanvasElement.getContext()] or
/// [OffscreenCanvas.getContext()]) is ["bitmaprenderer"].
///  This interface is available in both the window and the worker
/// context.
@experimental
@JS()
@staticInterop
class ImageBitmapRenderingContext {
  external factory ImageBitmapRenderingContext();
}

extension PropsImageBitmapRenderingContext on ImageBitmapRenderingContext {
  dynamic get canvas => js_util.getProperty(this, 'canvas');
  void transferFromImageBitmap(ImageBitmap? bitmap) =>
      js_util.callMethod(this, 'transferFromImageBitmap', [bitmap]);
}

@anonymous
@JS()
@staticInterop
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings({bool? alpha = true});
}

extension PropsImageBitmapRenderingContextSettings
    on ImageBitmapRenderingContextSettings {
  bool get alpha => js_util.getProperty(this, 'alpha');
  set alpha(bool newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ImageEncodeOptions {
  external factory ImageEncodeOptions(
      {String? type = 'image/png', /* double | NaN */ dynamic quality});
}

extension PropsImageEncodeOptions on ImageEncodeOptions {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

/* double | NaN */ dynamic get quality => js_util.getProperty(this, 'quality');
  set quality(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'quality', newValue);
  }
}

enum OffscreenRenderingContextId {
  value2d('2d'),
  bitmaprenderer('bitmaprenderer'),
  webgl('webgl'),
  webgl2('webgl2'),
  webgpu('webgpu');

  final String value;
  static OffscreenRenderingContextId fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OffscreenRenderingContextId> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const OffscreenRenderingContextId(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides a canvas that can be rendered off screen.
/// It is available in both the window and worker contexts.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    OffscreenCanvas
///
///
@experimental
@JS()
@staticInterop
class OffscreenCanvas implements EventTarget {
  external factory OffscreenCanvas(int width, int height);
}

extension PropsOffscreenCanvas on OffscreenCanvas {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  dynamic getContext(OffscreenRenderingContextId contextId,
          [dynamic options]) =>
      js_util.callMethod(this, 'getContext', [contextId.value, options]);

  ImageBitmap transferToImageBitmap() =>
      js_util.callMethod(this, 'transferToImageBitmap', []);

  Future<Blob> convertToBlob([ImageEncodeOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'convertToBlob', [options]));

  EventHandlerNonNull? get oncontextlost =>
      js_util.getProperty(this, 'oncontextlost');
  set oncontextlost(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextlost', newValue);
  }

  EventHandlerNonNull? get oncontextrestored =>
      js_util.getProperty(this, 'oncontextrestored');
  set oncontextrestored(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextrestored', newValue);
  }
}

@JS()
@staticInterop
class OffscreenCanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory OffscreenCanvasRenderingContext2D();
}

extension PropsOffscreenCanvasRenderingContext2D
    on OffscreenCanvasRenderingContext2D {
  void commit() => js_util.callMethod(this, 'commit', []);

  OffscreenCanvas get canvas => js_util.getProperty(this, 'canvas');
}

///  The interface provides methods for registering custom elements
/// and querying registered elements. To get an instance of it, use
/// the [window.customElements] property.
@experimental
@JS()
@staticInterop
class CustomElementRegistry {
  external factory CustomElementRegistry();
}

extension PropsCustomElementRegistry on CustomElementRegistry {
  void define(String name, CustomElementConstructor constructor,
          [ElementDefinitionOptions? options]) =>
      js_util.callMethod(
          this, 'define', [name, allowInterop(constructor), options]);

  dynamic get(String name) => js_util.callMethod(this, 'get', [name]);

  Future<CustomElementConstructor> whenDefined(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'whenDefined', [name]));

  void upgrade(Node root) => js_util.callMethod(this, 'upgrade', [root]);
}

@anonymous
@JS()
@staticInterop
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions({String? mExtends});
}

extension PropsElementDefinitionOptions on ElementDefinitionOptions {
  @JS('extends')
  @staticInterop
  String get mExtends => js_util.getProperty(this, 'extends');
  set mExtends(String newValue) {
    js_util.setProperty(this, 'extends', newValue);
  }
}

///  The interface of the Document_Object_Model gives web developers
/// a way to allow custom elements to fully participate in HTML
/// forms. It provides utilities for working with these elements in
/// the same way you would work with any standard HTML form element,
/// and also exposes the Accessibility Object Model to the element.
@JS()
@staticInterop
class ElementInternals implements ARIAMixin {
  external factory ElementInternals();
}

extension PropsElementInternals on ElementInternals {
  ShadowRoot? get shadowRoot => js_util.getProperty(this, 'shadowRoot');
  void setFormValue(dynamic value, [dynamic state]) =>
      js_util.callMethod(this, 'setFormValue', [value, state]);

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  void setValidity(
          [ValidityStateFlags? flags, String? message, HTMLElement? anchor]) =>
      js_util.callMethod(this, 'setValidity', [flags, message, anchor]);

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  NodeList get labels => js_util.getProperty(this, 'labels');
  CustomStateSet get states => js_util.getProperty(this, 'states');
}

@anonymous
@JS()
@staticInterop
class ValidityStateFlags {
  external factory ValidityStateFlags(
      {bool? valueMissing = false,
      bool? typeMismatch = false,
      bool? patternMismatch = false,
      bool? tooLong = false,
      bool? tooShort = false,
      bool? rangeUnderflow = false,
      bool? rangeOverflow = false,
      bool? stepMismatch = false,
      bool? badInput = false,
      bool? customError = false});
}

extension PropsValidityStateFlags on ValidityStateFlags {
  bool get valueMissing => js_util.getProperty(this, 'valueMissing');
  set valueMissing(bool newValue) {
    js_util.setProperty(this, 'valueMissing', newValue);
  }

  bool get typeMismatch => js_util.getProperty(this, 'typeMismatch');
  set typeMismatch(bool newValue) {
    js_util.setProperty(this, 'typeMismatch', newValue);
  }

  bool get patternMismatch => js_util.getProperty(this, 'patternMismatch');
  set patternMismatch(bool newValue) {
    js_util.setProperty(this, 'patternMismatch', newValue);
  }

  bool get tooLong => js_util.getProperty(this, 'tooLong');
  set tooLong(bool newValue) {
    js_util.setProperty(this, 'tooLong', newValue);
  }

  bool get tooShort => js_util.getProperty(this, 'tooShort');
  set tooShort(bool newValue) {
    js_util.setProperty(this, 'tooShort', newValue);
  }

  bool get rangeUnderflow => js_util.getProperty(this, 'rangeUnderflow');
  set rangeUnderflow(bool newValue) {
    js_util.setProperty(this, 'rangeUnderflow', newValue);
  }

  bool get rangeOverflow => js_util.getProperty(this, 'rangeOverflow');
  set rangeOverflow(bool newValue) {
    js_util.setProperty(this, 'rangeOverflow', newValue);
  }

  bool get stepMismatch => js_util.getProperty(this, 'stepMismatch');
  set stepMismatch(bool newValue) {
    js_util.setProperty(this, 'stepMismatch', newValue);
  }

  bool get badInput => js_util.getProperty(this, 'badInput');
  set badInput(bool newValue) {
    js_util.setProperty(this, 'badInput', newValue);
  }

  bool get customError => js_util.getProperty(this, 'customError');
  set customError(bool newValue) {
    js_util.setProperty(this, 'customError', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class FocusOptions {
  external factory FocusOptions(
      {bool? preventScroll = false, bool? focusVisible});
}

extension PropsFocusOptions on FocusOptions {
  bool get preventScroll => js_util.getProperty(this, 'preventScroll');
  set preventScroll(bool newValue) {
    js_util.setProperty(this, 'preventScroll', newValue);
  }

  bool get focusVisible => js_util.getProperty(this, 'focusVisible');
  set focusVisible(bool newValue) {
    js_util.setProperty(this, 'focusVisible', newValue);
  }
}

@JS()
@staticInterop
class ElementContentEditable {
  external factory ElementContentEditable();
}

extension PropsElementContentEditable on ElementContentEditable {
  String get contentEditable => js_util.getProperty(this, 'contentEditable');
  set contentEditable(String newValue) {
    js_util.setProperty(this, 'contentEditable', newValue);
  }

  String get enterKeyHint => js_util.getProperty(this, 'enterKeyHint');
  set enterKeyHint(String newValue) {
    js_util.setProperty(this, 'enterKeyHint', newValue);
  }

  bool get isContentEditable => js_util.getProperty(this, 'isContentEditable');
  String get inputMode => js_util.getProperty(this, 'inputMode');
  set inputMode(String newValue) {
    js_util.setProperty(this, 'inputMode', newValue);
  }

  String get virtualKeyboardPolicy =>
      js_util.getProperty(this, 'virtualKeyboardPolicy');
  set virtualKeyboardPolicy(String newValue) {
    js_util.setProperty(this, 'virtualKeyboardPolicy', newValue);
  }
}

///  The object is used to hold the data that is being dragged during
/// a drag and drop operation. It may hold one or more data items,
/// each of one or more data types. For more information about drag
/// and drop, see HTML Drag and Drop API.
///  This object is available from the [dataTransfer] property of all
/// [drag events].
@JS()
@staticInterop
class DataTransfer {
  external factory DataTransfer();
}

extension PropsDataTransfer on DataTransfer {
  String get dropEffect => js_util.getProperty(this, 'dropEffect');
  set dropEffect(String newValue) {
    js_util.setProperty(this, 'dropEffect', newValue);
  }

  String get effectAllowed => js_util.getProperty(this, 'effectAllowed');
  set effectAllowed(String newValue) {
    js_util.setProperty(this, 'effectAllowed', newValue);
  }

  DataTransferItemList get items => js_util.getProperty(this, 'items');
  void setDragImage(Element image, int x, int y) =>
      js_util.callMethod(this, 'setDragImage', [image, x, y]);

  Iterable<String> get types => js_util.getProperty(this, 'types');
  String getData(String format) =>
      js_util.callMethod(this, 'getData', [format]);

  void setData(String format, String data) =>
      js_util.callMethod(this, 'setData', [format, data]);

  void clearData([String? format]) =>
      js_util.callMethod(this, 'clearData', [format]);

  FileList get files => js_util.getProperty(this, 'files');
}

///  The object is a list of [DataTransferItem] objects representing
/// items being dragged. During a drag operation, each [DragEvent]
/// has a [dataTransfer] property and that property is a .
///  The individual items can be accessed using the array operator
/// [[]].
/// This interface has no constructor.
@JS()
@staticInterop
class DataTransferItemList {
  external factory DataTransferItemList();
}

extension PropsDataTransferItemList on DataTransferItemList {
  int get length => js_util.getProperty(this, 'length');
  DataTransferItem? add([String? data, String? type]) =>
      js_util.callMethod(this, 'add', [data, type]);

  void remove(int index) => js_util.callMethod(this, 'remove', [index]);

  void clear() => js_util.callMethod(this, 'clear', []);
}

///  The object represents one drag data item. During a drag
/// operation, each [drag event] has a [dataTransfer] property which
/// contains a [list] of drag data items. Each item in the list is a
/// object.
/// This interface has no constructor.
@JS()
@staticInterop
class DataTransferItem {
  external factory DataTransferItem();
}

extension PropsDataTransferItem on DataTransferItem {
  String get kind => js_util.getProperty(this, 'kind');
  String get type => js_util.getProperty(this, 'type');
  void getAsString(FunctionStringCallback? callback) => js_util.callMethod(
      this, 'getAsString', [callback == null ? null : allowInterop(callback)]);

  File? getAsFile() => js_util.callMethod(this, 'getAsFile', []);

  FileSystemEntry? webkitGetAsEntry() =>
      js_util.callMethod(this, 'webkitGetAsEntry', []);

  Future<FileSystemHandle> getAsFileSystemHandle() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getAsFileSystemHandle', []));
}

///  The interface is a [DOM event] that represents a drag and drop
/// interaction. The user initiates a drag by placing a pointer
/// device (such as a mouse) on the touch surface and then dragging
/// the pointer to a new location (such as another DOM element).
/// Applications are free to interpret a drag and drop interaction in
/// an application-specific way.
///  This interface inherits properties from [MouseEvent] and
/// [Event].
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    MouseEvent
///
///
///
///
///
///    DragEvent
///
///
@JS()
@staticInterop
class DragEvent implements MouseEvent {
  external factory DragEvent(String type, [DragEventInit? eventInitDict]);
}

extension PropsDragEvent on DragEvent {
  DataTransfer? get dataTransfer => js_util.getProperty(this, 'dataTransfer');
}

@anonymous
@JS()
@staticInterop
class DragEventInit implements MouseEventInit {
  external factory DragEventInit({DataTransfer? dataTransfer});
}

extension PropsDragEventInit on DragEventInit {
  DataTransfer? get dataTransfer => js_util.getProperty(this, 'dataTransfer');
  set dataTransfer(DataTransfer? newValue) {
    js_util.setProperty(this, 'dataTransfer', newValue);
  }
}

///  The interface represents a window containing a DOM document; the
/// [document] property points to the DOM document loaded in that
/// window.
///  A window for a given document can be obtained using the
/// [document.defaultView] property.
///  A global variable, [window], representing the window in which
/// the script is running, is exposed to JavaScript code.
///  The interface is home to a variety of functions, namespaces,
/// objects, and constructors which are not necessarily directly
/// associated with the concept of a user interface window. However,
/// the interface is a suitable place to include these items that
/// need to be globally available. Many of these are documented in
/// the JavaScript Reference and the DOM Reference.
///  In a tabbed browser, each tab is represented by its own object;
/// the global [window] seen by JavaScript code running within a
/// given tab always represents the tab in which the code is running.
/// That said, even in a tabbed browser, some properties and methods
/// still apply to the overall window that contains the tab, such as
/// [resizeTo()] and [innerHeight]. Generally, anything that can't
/// reasonably pertain to a tab pertains to the window instead.
///
///
///
///    EventTarget
///
///
///
///
///
///    Window
///
///
@JS()
@staticInterop
class Window
    implements
        EventTarget,
        GlobalEventHandlers,
        WindowEventHandlers,
        WindowOrWorkerGlobalScope,
        AnimationFrameProvider,
        WindowSessionStorage,
        WindowLocalStorage {
  external factory Window();
}

extension PropsWindow on Window {
  Window get window => js_util.getProperty(this, 'window');
  Window get self => js_util.getProperty(this, 'self');
  Document get document => js_util.getProperty(this, 'document');
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  Location get location => js_util.getProperty(this, 'location');
  History get history => js_util.getProperty(this, 'history');
  CustomElementRegistry get customElements =>
      js_util.getProperty(this, 'customElements');
  BarProp get locationbar => js_util.getProperty(this, 'locationbar');
  BarProp get menubar => js_util.getProperty(this, 'menubar');
  BarProp get personalbar => js_util.getProperty(this, 'personalbar');
  BarProp get scrollbars => js_util.getProperty(this, 'scrollbars');
  BarProp get statusbar => js_util.getProperty(this, 'statusbar');
  BarProp get toolbar => js_util.getProperty(this, 'toolbar');
  String get status => js_util.getProperty(this, 'status');
  set status(String newValue) {
    js_util.setProperty(this, 'status', newValue);
  }

  void close() => js_util.callMethod(this, 'close', []);

  bool get closed => js_util.getProperty(this, 'closed');
  void stop() => js_util.callMethod(this, 'stop', []);

  void focus() => js_util.callMethod(this, 'focus', []);

  void blur() => js_util.callMethod(this, 'blur', []);

  Window get frames => js_util.getProperty(this, 'frames');
  int get length => js_util.getProperty(this, 'length');
  Window? get top => js_util.getProperty(this, 'top');
  dynamic get opener => js_util.getProperty(this, 'opener');
  set opener(dynamic newValue) {
    js_util.setProperty(this, 'opener', newValue);
  }

  Window? get parent => js_util.getProperty(this, 'parent');
  Element? get frameElement => js_util.getProperty(this, 'frameElement');
  Window? open(
          [String? url = '',
          String? target = '_blank',
          String? features = '']) =>
      js_util.callMethod(this, 'open', [url, target, features]);

  Navigator get navigator => js_util.getProperty(this, 'navigator');
  Navigator get clientInformation =>
      js_util.getProperty(this, 'clientInformation');
  bool get originAgentCluster =>
      js_util.getProperty(this, 'originAgentCluster');
  void alert([String? message]) => js_util.callMethod(this, 'alert', [message]);

  bool confirm([String? message = '']) =>
      js_util.callMethod(this, 'confirm', [message]);

  String? prompt([String? message = '', String? mDefault = '']) =>
      js_util.callMethod(this, 'prompt', [message, mDefault]);

  void print() => js_util.callMethod(this, 'print', []);

  void postMessage(dynamic message,
          [String? targetOrigin, Iterable<dynamic>? transfer = const []]) =>
      js_util
          .callMethod(this, 'postMessage', [message, targetOrigin, transfer]);

  Future<DigitalGoodsService> getDigitalGoodsService(String serviceProvider) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'getDigitalGoodsService', [serviceProvider]));

  CookieStore get cookieStore => js_util.getProperty(this, 'cookieStore');
  Future<ScreenDetails> getScreenDetails() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getScreenDetails', []));

  int requestIdleCallback(IdleRequestCallback callback,
          [IdleRequestOptions? options]) =>
      js_util.callMethod(
          this, 'requestIdleCallback', [allowInterop(callback), options]);

  void cancelIdleCallback(int handle) =>
      js_util.callMethod(this, 'cancelIdleCallback', [handle]);

  Selection? getSelection() => js_util.callMethod(this, 'getSelection', []);

  MediaQueryList matchMedia(String query) =>
      js_util.callMethod(this, 'matchMedia', [query]);

  Screen get screen => js_util.getProperty(this, 'screen');
  VisualViewport? get visualViewport =>
      js_util.getProperty(this, 'visualViewport');
  void moveTo(int x, int y) => js_util.callMethod(this, 'moveTo', [x, y]);

  void moveBy(int x, int y) => js_util.callMethod(this, 'moveBy', [x, y]);

  void resizeTo(int width, int height) =>
      js_util.callMethod(this, 'resizeTo', [width, height]);

  void resizeBy(int x, int y) => js_util.callMethod(this, 'resizeBy', [x, y]);

  int get innerWidth => js_util.getProperty(this, 'innerWidth');
  int get innerHeight => js_util.getProperty(this, 'innerHeight');
  double get scrollX => js_util.getProperty(this, 'scrollX');
  double get pageXOffset => js_util.getProperty(this, 'pageXOffset');
  double get scrollY => js_util.getProperty(this, 'scrollY');
  double get pageYOffset => js_util.getProperty(this, 'pageYOffset');
  void scroll([/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scroll', [x, y]);

  void scrollTo([/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scrollTo', [x, y]);

  void scrollBy([/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scrollBy', [x, y]);

  int get screenX => js_util.getProperty(this, 'screenX');
  int get screenLeft => js_util.getProperty(this, 'screenLeft');
  int get screenY => js_util.getProperty(this, 'screenY');
  int get screenTop => js_util.getProperty(this, 'screenTop');
  int get outerWidth => js_util.getProperty(this, 'outerWidth');
  int get outerHeight => js_util.getProperty(this, 'outerHeight');
  double get devicePixelRatio => js_util.getProperty(this, 'devicePixelRatio');
  EventHandlerNonNull? get ondeviceorientation =>
      js_util.getProperty(this, 'ondeviceorientation');
  set ondeviceorientation(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondeviceorientation', newValue);
  }

  EventHandlerNonNull? get ondeviceorientationabsolute =>
      js_util.getProperty(this, 'ondeviceorientationabsolute');
  set ondeviceorientationabsolute(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondeviceorientationabsolute', newValue);
  }

  EventHandlerNonNull? get oncompassneedscalibration =>
      js_util.getProperty(this, 'oncompassneedscalibration');
  set oncompassneedscalibration(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncompassneedscalibration', newValue);
  }

  EventHandlerNonNull? get ondevicemotion =>
      js_util.getProperty(this, 'ondevicemotion');
  set ondevicemotion(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondevicemotion', newValue);
  }

  dynamic get event => js_util.getProperty(this, 'event');
  Future<Iterable<FontData>> queryLocalFonts([QueryOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'queryLocalFonts', [options]));

  PortalHost? get portalHost => js_util.getProperty(this, 'portalHost');
  SpeechSynthesis get speechSynthesis =>
      js_util.getProperty(this, 'speechSynthesis');
  Future<Iterable<FileSystemFileHandle>> showOpenFilePicker(
          [OpenFilePickerOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'showOpenFilePicker', [options]));

  Future<FileSystemFileHandle> showSaveFilePicker(
          [SaveFilePickerOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'showSaveFilePicker', [options]));

  Future<FileSystemDirectoryHandle> showDirectoryPicker(
          [DirectoryPickerOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'showDirectoryPicker', [options]));

  int get orientation => js_util.getProperty(this, 'orientation');
  EventHandlerNonNull? get onorientationchange =>
      js_util.getProperty(this, 'onorientationchange');
  set onorientationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onorientationchange', newValue);
  }

  EventHandlerNonNull? get onappinstalled =>
      js_util.getProperty(this, 'onappinstalled');
  set onappinstalled(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onappinstalled', newValue);
  }

  EventHandlerNonNull? get onbeforeinstallprompt =>
      js_util.getProperty(this, 'onbeforeinstallprompt');
  set onbeforeinstallprompt(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeinstallprompt', newValue);
  }

  LaunchQueue get launchQueue => js_util.getProperty(this, 'launchQueue');
  void navigate(SpatialNavigationDirection dir) =>
      js_util.callMethod(this, 'navigate', [dir.value]);

  void captureEvents() => js_util.callMethod(this, 'captureEvents', []);

  void releaseEvents() => js_util.callMethod(this, 'releaseEvents', []);

  External get external => js_util.getProperty(this, 'external');
  CSSStyleDeclaration getComputedStyle(Element elt, [String? pseudoElt]) =>
      js_util.callMethod(this, 'getComputedStyle', [elt, pseudoElt]);

  Navigation get navigation => js_util.getProperty(this, 'navigation');
}

@anonymous
@JS()
@staticInterop
class WindowPostMessageOptions implements StructuredSerializeOptions {
  external factory WindowPostMessageOptions({String? targetOrigin = '/'});
}

extension PropsWindowPostMessageOptions on WindowPostMessageOptions {
  String get targetOrigin => js_util.getProperty(this, 'targetOrigin');
  set targetOrigin(String newValue) {
    js_util.setProperty(this, 'targetOrigin', newValue);
  }
}

///  The interface of the [Document Object Model] represents the web
/// browser user interface elements that are exposed to scripts in
/// web pages. Each of the following interface elements are
/// represented by a object.
///
///  [Window.locationbar]
///
///   The browser location bar.
///
///  [Window.menubar]
///
///   The browser menu bar.
///
///  [Window.personalbar]
///
///   The browser personal bar.
///
///  [Window.scrollbars]
///
///   The browser scrollbars.
///
///  [Window.statusbar]
///
///   The browser status bar.
///
///  [Window.toolbar]
///
///   The browser toolbar.
///
///
///  The interface is not accessed directly, but via one of these
/// elements.
@JS()
@staticInterop
class BarProp {
  external factory BarProp();
}

extension PropsBarProp on BarProp {
  bool get visible => js_util.getProperty(this, 'visible');
}

enum ScrollRestoration {
  auto('auto'),
  manual('manual');

  final String value;
  static ScrollRestoration fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ScrollRestoration> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ScrollRestoration(this.value);
}

///  The interface allows manipulation of the browser session
/// history, that is the pages visited in the tab or frame that the
/// current page is loaded in.
@JS()
@staticInterop
class History {
  external factory History();
}

extension PropsHistory on History {
  int get length => js_util.getProperty(this, 'length');
  ScrollRestoration get scrollRestoration => ScrollRestoration.fromValue(
      js_util.getProperty(this, 'scrollRestoration'));
  set scrollRestoration(ScrollRestoration newValue) {
    js_util.setProperty(this, 'scrollRestoration', newValue.value);
  }

  dynamic get state => js_util.getProperty(this, 'state');
  void go([int? delta = 0]) => js_util.callMethod(this, 'go', [delta]);

  void back() => js_util.callMethod(this, 'back', []);

  void forward() => js_util.callMethod(this, 'forward', []);

  void pushState(dynamic data, String unused, [String? url]) =>
      js_util.callMethod(this, 'pushState', [data, unused, url]);

  void replaceState(dynamic data, String unused, [String? url]) =>
      js_util.callMethod(this, 'replaceState', [data, unused, url]);
}

///  The interface represents the location (URL) of the object it is
/// linked to. Changes done on it are reflected on the object it
/// relates to. Both the [Document] and [Window] interface have such
/// a linked , accessible via [Document.location] and
/// [Window.location] respectively.
@JS()
@staticInterop
class Location {
  external factory Location();
}

extension PropsLocation on Location {
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  String get host => js_util.getProperty(this, 'host');
  set host(String newValue) {
    js_util.setProperty(this, 'host', newValue);
  }

  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  void assign(String url) => js_util.callMethod(this, 'assign', [url]);

  void replace(String url) => js_util.callMethod(this, 'replace', [url]);

  void reload() => js_util.callMethod(this, 'reload', []);

  DOMStringList get ancestorOrigins =>
      js_util.getProperty(this, 'ancestorOrigins');
}

///
///   is an event handler for the
///  [popstate] event on the window.
///   A [popstate] event is dispatched to the window every time the
/// active history
///   entry changes between two history entries for the same
/// document. If the history entry
///   being activated was created by a call to [history.pushState()]
/// or was
///  affected by a call to [history.replaceState()], the [popstate]
///   event's [state] property contains a copy of the history entry's
/// state object.
///
///   Note: Just calling [history.pushState()] or
///   [history.replaceState()] won't trigger a [popstate] event. The
///    [popstate] event is only triggered by doing a browser action
/// such as a
///    clicking on the back button (or calling [history.back()] in
/// JavaScript).
///    And the event is only triggered when the user navigates
/// between two history entries
///   for the same document.
///
///
///   Note: Browsers used to handle the [popstate] event
///    differently on page load, but now they behave the same.
/// Firefox never emitted a
///    popstate event on page load. Chrome did until version 34,
/// while Safari did until
///   version 10.0.
///
///
///
///
///
///    Event
///
///
///
///
///
///    PopStateEvent
///
///
@JS()
@staticInterop
class PopStateEvent implements Event {
  external factory PopStateEvent(String type,
      [PopStateEventInit? eventInitDict]);
}

extension PropsPopStateEvent on PopStateEvent {
  dynamic get state => js_util.getProperty(this, 'state');
}

@anonymous
@JS()
@staticInterop
class PopStateEventInit implements EventInit {
  external factory PopStateEventInit({dynamic state});
}

extension PropsPopStateEventInit on PopStateEventInit {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }
}

///  The interface represents events that fire when the fragment
/// identifier of the URL has changed.
///  The fragment identifier is the part of the URL that follows (and
/// includes) the [#] symbol.
///
///
///
///    Event
///
///
///
///
///
///    HashChangeEvent
///
///
@JS()
@staticInterop
class HashChangeEvent implements Event {
  external factory HashChangeEvent(String type,
      [HashChangeEventInit? eventInitDict]);
}

extension PropsHashChangeEvent on HashChangeEvent {
  String get oldURL => js_util.getProperty(this, 'oldURL');
  String get newURL => js_util.getProperty(this, 'newURL');
}

@anonymous
@JS()
@staticInterop
class HashChangeEventInit implements EventInit {
  external factory HashChangeEventInit(
      {String? oldURL = '', String? newURL = ''});
}

extension PropsHashChangeEventInit on HashChangeEventInit {
  String get oldURL => js_util.getProperty(this, 'oldURL');
  set oldURL(String newValue) {
    js_util.setProperty(this, 'oldURL', newValue);
  }

  String get newURL => js_util.getProperty(this, 'newURL');
  set newURL(String newValue) {
    js_util.setProperty(this, 'newURL', newValue);
  }
}

///  The event object is available inside handler functions for the
/// [pageshow] and [pagehide] events, fired when a document is being
/// loaded or unloaded.
///
///
///
///    Event
///
///
///
///
///
///    PageTransitionEvent
///
///
@JS()
@staticInterop
class PageTransitionEvent implements Event {
  external factory PageTransitionEvent(String type,
      [PageTransitionEventInit? eventInitDict]);
}

extension PropsPageTransitionEvent on PageTransitionEvent {
  bool get persisted => js_util.getProperty(this, 'persisted');
}

@anonymous
@JS()
@staticInterop
class PageTransitionEventInit implements EventInit {
  external factory PageTransitionEventInit({bool? persisted = false});
}

extension PropsPageTransitionEventInit on PageTransitionEventInit {
  bool get persisted => js_util.getProperty(this, 'persisted');
  set persisted(bool newValue) {
    js_util.setProperty(this, 'persisted', newValue);
  }
}

///  The [beforeunload] event is fired when the window, the document
/// and its resources are about to be unloaded.
///  When a non-empty string is assigned to the [returnValue] Event
/// property, a dialog box appears, asking the users for confirmation
/// to leave the page (see example below). When no value is provided,
/// the event is processed silently. Some implementations only show
/// the dialog box if the frame or any embedded frame receives a user
/// gesture or user interaction. See Browser compatibility for more
/// information.
///
///
///
///    Event
///
///
///
///
///
///    BeforeUnloadEvent
///
///
///
///
///
///    Bubbles
///    No
///
///
///    Cancelable
///    Yes
///
///
///    Target objects
///    defaultView
///
///
///    Interface
///    [Event]
///
///
///
@JS()
@staticInterop
class BeforeUnloadEvent implements Event {
  external factory BeforeUnloadEvent();
}

extension PropsBeforeUnloadEvent on BeforeUnloadEvent {
  String get returnValue => js_util.getProperty(this, 'returnValue');
  set returnValue(String newValue) {
    js_util.setProperty(this, 'returnValue', newValue);
  }
}

///  The interface represents events providing information related to
/// errors in scripts or in files.
///
///
///
///    Event
///
///
///
///
///
///    ErrorEvent
///
///
@JS()
@staticInterop
class ErrorEvent implements Event {
  external factory ErrorEvent(String type, [ErrorEventInit? eventInitDict]);
}

extension PropsErrorEvent on ErrorEvent {
  String get message => js_util.getProperty(this, 'message');
  String get filename => js_util.getProperty(this, 'filename');
  int get lineno => js_util.getProperty(this, 'lineno');
  int get colno => js_util.getProperty(this, 'colno');
  dynamic get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class ErrorEventInit implements EventInit {
  external factory ErrorEventInit(
      {String? message = '',
      String? filename = '',
      int? lineno = 0,
      int? colno = 0,
      dynamic error});
}

extension PropsErrorEventInit on ErrorEventInit {
  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }

  String get filename => js_util.getProperty(this, 'filename');
  set filename(String newValue) {
    js_util.setProperty(this, 'filename', newValue);
  }

  int get lineno => js_util.getProperty(this, 'lineno');
  set lineno(int newValue) {
    js_util.setProperty(this, 'lineno', newValue);
  }

  int get colno => js_util.getProperty(this, 'colno');
  set colno(int newValue) {
    js_util.setProperty(this, 'colno', newValue);
  }

  dynamic get error => js_util.getProperty(this, 'error');
  set error(dynamic newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

///  The interface represents events which are sent to the global
/// script context when JavaScript [Future]s are rejected. These
/// events are particularly useful for telemetry and debugging
/// purposes.
///  For details on promise rejection events, see Promise rejection
/// events in Using Promises.
///
///
///
///    Event
///
///
///
///
///
///    PromiseRejectionEvent
///
///
@JS()
@staticInterop
class PromiseRejectionEvent implements Event {
  external factory PromiseRejectionEvent(
      String type, PromiseRejectionEventInit eventInitDict);
}

extension PropsPromiseRejectionEvent on PromiseRejectionEvent {
  Future<dynamic> get promise =>
      js_util.promiseToFuture(js_util.getProperty(this, 'promise'));
  dynamic get reason => js_util.getProperty(this, 'reason');
}

@anonymous
@JS()
@staticInterop
class PromiseRejectionEventInit implements EventInit {
  external factory PromiseRejectionEventInit(
      {required Future<dynamic> promise, dynamic reason});
}

extension PropsPromiseRejectionEventInit on PromiseRejectionEventInit {
  Future<dynamic> get promise =>
      js_util.promiseToFuture(js_util.getProperty(this, 'promise'));
  set promise(Future<dynamic> newValue) {
    js_util.setProperty(this, 'promise', newValue);
  }

  dynamic get reason => js_util.getProperty(this, 'reason');
  set reason(dynamic newValue) {
    js_util.setProperty(this, 'reason', newValue);
  }
}

///  The mixin describes the event handlers common to several
/// interfaces like [HTMLElement], [Document], or [Window]. Each of
/// these interfaces can, of course, add more event handlers in
/// addition to the ones listed below.
///
///   Note: is a mixin and not an interface; you can't actually
/// create an object of type .
///
@JS()
@staticInterop
class GlobalEventHandlers {
  external factory GlobalEventHandlers();
}

extension PropsGlobalEventHandlers on GlobalEventHandlers {
  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  EventHandlerNonNull? get onauxclick =>
      js_util.getProperty(this, 'onauxclick');
  set onauxclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onauxclick', newValue);
  }

  EventHandlerNonNull? get onbeforeinput =>
      js_util.getProperty(this, 'onbeforeinput');
  set onbeforeinput(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeinput', newValue);
  }

  EventHandlerNonNull? get onbeforematch =>
      js_util.getProperty(this, 'onbeforematch');
  set onbeforematch(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforematch', newValue);
  }

  EventHandlerNonNull? get onblur => js_util.getProperty(this, 'onblur');
  set onblur(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onblur', newValue);
  }

  EventHandlerNonNull? get oncancel => js_util.getProperty(this, 'oncancel');
  set oncancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncancel', newValue);
  }

  EventHandlerNonNull? get oncanplay => js_util.getProperty(this, 'oncanplay');
  set oncanplay(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncanplay', newValue);
  }

  EventHandlerNonNull? get oncanplaythrough =>
      js_util.getProperty(this, 'oncanplaythrough');
  set oncanplaythrough(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncanplaythrough', newValue);
  }

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

  EventHandlerNonNull? get onclick => js_util.getProperty(this, 'onclick');
  set onclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclick', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  EventHandlerNonNull? get oncontextlost =>
      js_util.getProperty(this, 'oncontextlost');
  set oncontextlost(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextlost', newValue);
  }

  EventHandlerNonNull? get oncontextmenu =>
      js_util.getProperty(this, 'oncontextmenu');
  set oncontextmenu(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextmenu', newValue);
  }

  EventHandlerNonNull? get oncontextrestored =>
      js_util.getProperty(this, 'oncontextrestored');
  set oncontextrestored(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextrestored', newValue);
  }

  EventHandlerNonNull? get oncuechange =>
      js_util.getProperty(this, 'oncuechange');
  set oncuechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncuechange', newValue);
  }

  EventHandlerNonNull? get ondblclick =>
      js_util.getProperty(this, 'ondblclick');
  set ondblclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondblclick', newValue);
  }

  EventHandlerNonNull? get ondrag => js_util.getProperty(this, 'ondrag');
  set ondrag(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondrag', newValue);
  }

  EventHandlerNonNull? get ondragend => js_util.getProperty(this, 'ondragend');
  set ondragend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondragend', newValue);
  }

  EventHandlerNonNull? get ondragenter =>
      js_util.getProperty(this, 'ondragenter');
  set ondragenter(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondragenter', newValue);
  }

  EventHandlerNonNull? get ondragleave =>
      js_util.getProperty(this, 'ondragleave');
  set ondragleave(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondragleave', newValue);
  }

  EventHandlerNonNull? get ondragover =>
      js_util.getProperty(this, 'ondragover');
  set ondragover(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondragover', newValue);
  }

  EventHandlerNonNull? get ondragstart =>
      js_util.getProperty(this, 'ondragstart');
  set ondragstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondragstart', newValue);
  }

  EventHandlerNonNull? get ondrop => js_util.getProperty(this, 'ondrop');
  set ondrop(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondrop', newValue);
  }

  EventHandlerNonNull? get ondurationchange =>
      js_util.getProperty(this, 'ondurationchange');
  set ondurationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondurationchange', newValue);
  }

  EventHandlerNonNull? get onemptied => js_util.getProperty(this, 'onemptied');
  set onemptied(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onemptied', newValue);
  }

  EventHandlerNonNull? get onended => js_util.getProperty(this, 'onended');
  set onended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onended', newValue);
  }

  OnErrorEventHandlerNonNull? get onerror =>
      js_util.getProperty(this, 'onerror');
  set onerror(OnErrorEventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onfocus => js_util.getProperty(this, 'onfocus');
  set onfocus(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfocus', newValue);
  }

  EventHandlerNonNull? get onformdata =>
      js_util.getProperty(this, 'onformdata');
  set onformdata(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onformdata', newValue);
  }

  EventHandlerNonNull? get oninput => js_util.getProperty(this, 'oninput');
  set oninput(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninput', newValue);
  }

  EventHandlerNonNull? get oninvalid => js_util.getProperty(this, 'oninvalid');
  set oninvalid(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninvalid', newValue);
  }

  EventHandlerNonNull? get onkeydown => js_util.getProperty(this, 'onkeydown');
  set onkeydown(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onkeydown', newValue);
  }

  EventHandlerNonNull? get onkeypress =>
      js_util.getProperty(this, 'onkeypress');
  set onkeypress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onkeypress', newValue);
  }

  EventHandlerNonNull? get onkeyup => js_util.getProperty(this, 'onkeyup');
  set onkeyup(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onkeyup', newValue);
  }

  EventHandlerNonNull? get onload => js_util.getProperty(this, 'onload');
  set onload(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onload', newValue);
  }

  EventHandlerNonNull? get onloadeddata =>
      js_util.getProperty(this, 'onloadeddata');
  set onloadeddata(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadeddata', newValue);
  }

  EventHandlerNonNull? get onloadedmetadata =>
      js_util.getProperty(this, 'onloadedmetadata');
  set onloadedmetadata(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadedmetadata', newValue);
  }

  EventHandlerNonNull? get onloadstart =>
      js_util.getProperty(this, 'onloadstart');
  set onloadstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadstart', newValue);
  }

  EventHandlerNonNull? get onmousedown =>
      js_util.getProperty(this, 'onmousedown');
  set onmousedown(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmousedown', newValue);
  }

  EventHandlerNonNull? get onmouseenter =>
      js_util.getProperty(this, 'onmouseenter');
  set onmouseenter(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmouseenter', newValue);
  }

  EventHandlerNonNull? get onmouseleave =>
      js_util.getProperty(this, 'onmouseleave');
  set onmouseleave(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmouseleave', newValue);
  }

  EventHandlerNonNull? get onmousemove =>
      js_util.getProperty(this, 'onmousemove');
  set onmousemove(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmousemove', newValue);
  }

  EventHandlerNonNull? get onmouseout =>
      js_util.getProperty(this, 'onmouseout');
  set onmouseout(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmouseout', newValue);
  }

  EventHandlerNonNull? get onmouseover =>
      js_util.getProperty(this, 'onmouseover');
  set onmouseover(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmouseover', newValue);
  }

  EventHandlerNonNull? get onmouseup => js_util.getProperty(this, 'onmouseup');
  set onmouseup(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmouseup', newValue);
  }

  EventHandlerNonNull? get onpause => js_util.getProperty(this, 'onpause');
  set onpause(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpause', newValue);
  }

  EventHandlerNonNull? get onplay => js_util.getProperty(this, 'onplay');
  set onplay(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onplay', newValue);
  }

  EventHandlerNonNull? get onplaying => js_util.getProperty(this, 'onplaying');
  set onplaying(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onplaying', newValue);
  }

  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  EventHandlerNonNull? get onratechange =>
      js_util.getProperty(this, 'onratechange');
  set onratechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onratechange', newValue);
  }

  EventHandlerNonNull? get onreset => js_util.getProperty(this, 'onreset');
  set onreset(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreset', newValue);
  }

  EventHandlerNonNull? get onresize => js_util.getProperty(this, 'onresize');
  set onresize(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresize', newValue);
  }

  EventHandlerNonNull? get onscroll => js_util.getProperty(this, 'onscroll');
  set onscroll(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscroll', newValue);
  }

  EventHandlerNonNull? get onsecuritypolicyviolation =>
      js_util.getProperty(this, 'onsecuritypolicyviolation');
  set onsecuritypolicyviolation(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsecuritypolicyviolation', newValue);
  }

  EventHandlerNonNull? get onseeked => js_util.getProperty(this, 'onseeked');
  set onseeked(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onseeked', newValue);
  }

  EventHandlerNonNull? get onseeking => js_util.getProperty(this, 'onseeking');
  set onseeking(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onseeking', newValue);
  }

  EventHandlerNonNull? get onselect => js_util.getProperty(this, 'onselect');
  set onselect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselect', newValue);
  }

  EventHandlerNonNull? get onslotchange =>
      js_util.getProperty(this, 'onslotchange');
  set onslotchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onslotchange', newValue);
  }

  EventHandlerNonNull? get onstalled => js_util.getProperty(this, 'onstalled');
  set onstalled(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstalled', newValue);
  }

  EventHandlerNonNull? get onsubmit => js_util.getProperty(this, 'onsubmit');
  set onsubmit(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsubmit', newValue);
  }

  EventHandlerNonNull? get onsuspend => js_util.getProperty(this, 'onsuspend');
  set onsuspend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsuspend', newValue);
  }

  EventHandlerNonNull? get ontimeupdate =>
      js_util.getProperty(this, 'ontimeupdate');
  set ontimeupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontimeupdate', newValue);
  }

  EventHandlerNonNull? get ontoggle => js_util.getProperty(this, 'ontoggle');
  set ontoggle(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontoggle', newValue);
  }

  EventHandlerNonNull? get onvolumechange =>
      js_util.getProperty(this, 'onvolumechange');
  set onvolumechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onvolumechange', newValue);
  }

  EventHandlerNonNull? get onwaiting => js_util.getProperty(this, 'onwaiting');
  set onwaiting(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwaiting', newValue);
  }

  EventHandlerNonNull? get onwebkitanimationend =>
      js_util.getProperty(this, 'onwebkitanimationend');
  set onwebkitanimationend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwebkitanimationend', newValue);
  }

  EventHandlerNonNull? get onwebkitanimationiteration =>
      js_util.getProperty(this, 'onwebkitanimationiteration');
  set onwebkitanimationiteration(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwebkitanimationiteration', newValue);
  }

  EventHandlerNonNull? get onwebkitanimationstart =>
      js_util.getProperty(this, 'onwebkitanimationstart');
  set onwebkitanimationstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwebkitanimationstart', newValue);
  }

  EventHandlerNonNull? get onwebkittransitionend =>
      js_util.getProperty(this, 'onwebkittransitionend');
  set onwebkittransitionend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwebkittransitionend', newValue);
  }

  EventHandlerNonNull? get onwheel => js_util.getProperty(this, 'onwheel');
  set onwheel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onwheel', newValue);
  }

  EventHandlerNonNull? get onselectstart =>
      js_util.getProperty(this, 'onselectstart');
  set onselectstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselectstart', newValue);
  }

  EventHandlerNonNull? get onselectionchange =>
      js_util.getProperty(this, 'onselectionchange');
  set onselectionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselectionchange', newValue);
  }

  EventHandlerNonNull? get ontransitionrun =>
      js_util.getProperty(this, 'ontransitionrun');
  set ontransitionrun(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontransitionrun', newValue);
  }

  EventHandlerNonNull? get ontransitionstart =>
      js_util.getProperty(this, 'ontransitionstart');
  set ontransitionstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontransitionstart', newValue);
  }

  EventHandlerNonNull? get ontransitionend =>
      js_util.getProperty(this, 'ontransitionend');
  set ontransitionend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontransitionend', newValue);
  }

  EventHandlerNonNull? get ontransitioncancel =>
      js_util.getProperty(this, 'ontransitioncancel');
  set ontransitioncancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontransitioncancel', newValue);
  }

  EventHandlerNonNull? get ontouchstart =>
      js_util.getProperty(this, 'ontouchstart');
  set ontouchstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontouchstart', newValue);
  }

  EventHandlerNonNull? get ontouchend =>
      js_util.getProperty(this, 'ontouchend');
  set ontouchend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontouchend', newValue);
  }

  EventHandlerNonNull? get ontouchmove =>
      js_util.getProperty(this, 'ontouchmove');
  set ontouchmove(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontouchmove', newValue);
  }

  EventHandlerNonNull? get ontouchcancel =>
      js_util.getProperty(this, 'ontouchcancel');
  set ontouchcancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontouchcancel', newValue);
  }

  EventHandlerNonNull? get onanimationstart =>
      js_util.getProperty(this, 'onanimationstart');
  set onanimationstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onanimationstart', newValue);
  }

  EventHandlerNonNull? get onanimationiteration =>
      js_util.getProperty(this, 'onanimationiteration');
  set onanimationiteration(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onanimationiteration', newValue);
  }

  EventHandlerNonNull? get onanimationend =>
      js_util.getProperty(this, 'onanimationend');
  set onanimationend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onanimationend', newValue);
  }

  EventHandlerNonNull? get onanimationcancel =>
      js_util.getProperty(this, 'onanimationcancel');
  set onanimationcancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onanimationcancel', newValue);
  }

  EventHandlerNonNull? get onpointerover =>
      js_util.getProperty(this, 'onpointerover');
  set onpointerover(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerover', newValue);
  }

  EventHandlerNonNull? get onpointerenter =>
      js_util.getProperty(this, 'onpointerenter');
  set onpointerenter(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerenter', newValue);
  }

  EventHandlerNonNull? get onpointerdown =>
      js_util.getProperty(this, 'onpointerdown');
  set onpointerdown(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerdown', newValue);
  }

  EventHandlerNonNull? get onpointermove =>
      js_util.getProperty(this, 'onpointermove');
  set onpointermove(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointermove', newValue);
  }

  EventHandlerNonNull? get onpointerrawupdate =>
      js_util.getProperty(this, 'onpointerrawupdate');
  set onpointerrawupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerrawupdate', newValue);
  }

  EventHandlerNonNull? get onpointerup =>
      js_util.getProperty(this, 'onpointerup');
  set onpointerup(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerup', newValue);
  }

  EventHandlerNonNull? get onpointercancel =>
      js_util.getProperty(this, 'onpointercancel');
  set onpointercancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointercancel', newValue);
  }

  EventHandlerNonNull? get onpointerout =>
      js_util.getProperty(this, 'onpointerout');
  set onpointerout(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerout', newValue);
  }

  EventHandlerNonNull? get onpointerleave =>
      js_util.getProperty(this, 'onpointerleave');
  set onpointerleave(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerleave', newValue);
  }

  EventHandlerNonNull? get ongotpointercapture =>
      js_util.getProperty(this, 'ongotpointercapture');
  set ongotpointercapture(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongotpointercapture', newValue);
  }

  EventHandlerNonNull? get onlostpointercapture =>
      js_util.getProperty(this, 'onlostpointercapture');
  set onlostpointercapture(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlostpointercapture', newValue);
  }

  EventHandlerNonNull? get onbeforexrselect =>
      js_util.getProperty(this, 'onbeforexrselect');
  set onbeforexrselect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforexrselect', newValue);
  }
}

///  The mixin describes the event handlers common to several
/// interfaces like [Window], or [HTMLBodyElement] and
/// [HTMLFrameSetElement]. Each of these interfaces can implement
/// additional specific event handlers.
///
///   Note: is a mixin and not an interface; you can't actually
/// create an object of type .
///
@JS()
@staticInterop
class WindowEventHandlers {
  external factory WindowEventHandlers();
}

extension PropsWindowEventHandlers on WindowEventHandlers {
  EventHandlerNonNull? get onafterprint =>
      js_util.getProperty(this, 'onafterprint');
  set onafterprint(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onafterprint', newValue);
  }

  EventHandlerNonNull? get onbeforeprint =>
      js_util.getProperty(this, 'onbeforeprint');
  set onbeforeprint(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeprint', newValue);
  }

  OnBeforeUnloadEventHandlerNonNull? get onbeforeunload =>
      js_util.getProperty(this, 'onbeforeunload');
  set onbeforeunload(OnBeforeUnloadEventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeunload', newValue);
  }

  EventHandlerNonNull? get onhashchange =>
      js_util.getProperty(this, 'onhashchange');
  set onhashchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onhashchange', newValue);
  }

  EventHandlerNonNull? get onlanguagechange =>
      js_util.getProperty(this, 'onlanguagechange');
  set onlanguagechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlanguagechange', newValue);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }

  EventHandlerNonNull? get onoffline => js_util.getProperty(this, 'onoffline');
  set onoffline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onoffline', newValue);
  }

  EventHandlerNonNull? get ononline => js_util.getProperty(this, 'ononline');
  set ononline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ononline', newValue);
  }

  EventHandlerNonNull? get onpagehide =>
      js_util.getProperty(this, 'onpagehide');
  set onpagehide(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpagehide', newValue);
  }

  EventHandlerNonNull? get onpageshow =>
      js_util.getProperty(this, 'onpageshow');
  set onpageshow(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpageshow', newValue);
  }

  EventHandlerNonNull? get onpopstate =>
      js_util.getProperty(this, 'onpopstate');
  set onpopstate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpopstate', newValue);
  }

  EventHandlerNonNull? get onrejectionhandled =>
      js_util.getProperty(this, 'onrejectionhandled');
  set onrejectionhandled(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrejectionhandled', newValue);
  }

  EventHandlerNonNull? get onstorage => js_util.getProperty(this, 'onstorage');
  set onstorage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstorage', newValue);
  }

  EventHandlerNonNull? get onunhandledrejection =>
      js_util.getProperty(this, 'onunhandledrejection');
  set onunhandledrejection(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunhandledrejection', newValue);
  }

  EventHandlerNonNull? get onunload => js_util.getProperty(this, 'onunload');
  set onunload(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunload', newValue);
  }

  EventHandlerNonNull? get onportalactivate =>
      js_util.getProperty(this, 'onportalactivate');
  set onportalactivate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onportalactivate', newValue);
  }

  EventHandlerNonNull? get ongamepadconnected =>
      js_util.getProperty(this, 'ongamepadconnected');
  set ongamepadconnected(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongamepadconnected', newValue);
  }

  EventHandlerNonNull? get ongamepaddisconnected =>
      js_util.getProperty(this, 'ongamepaddisconnected');
  set ongamepaddisconnected(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongamepaddisconnected', newValue);
  }
}

@JS()
@staticInterop
class DocumentAndElementEventHandlers {
  external factory DocumentAndElementEventHandlers();
}

extension PropsDocumentAndElementEventHandlers
    on DocumentAndElementEventHandlers {
  EventHandlerNonNull? get oncopy => js_util.getProperty(this, 'oncopy');
  set oncopy(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncopy', newValue);
  }

  EventHandlerNonNull? get oncut => js_util.getProperty(this, 'oncut');
  set oncut(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncut', newValue);
  }

  EventHandlerNonNull? get onpaste => js_util.getProperty(this, 'onpaste');
  set onpaste(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpaste', newValue);
  }
}

@JS()
@staticInterop
class WindowOrWorkerGlobalScope {
  external factory WindowOrWorkerGlobalScope();
}

extension PropsWindowOrWorkerGlobalScope on WindowOrWorkerGlobalScope {
  String get origin => js_util.getProperty(this, 'origin');
  bool get isSecureContext => js_util.getProperty(this, 'isSecureContext');
  bool get crossOriginIsolated =>
      js_util.getProperty(this, 'crossOriginIsolated');
  void reportError(dynamic e) => js_util.callMethod(this, 'reportError', [e]);

  String btoa(String data) => js_util.callMethod(this, 'btoa', [data]);

  String atob(String data) => js_util.callMethod(this, 'atob', [data]);

  int setTimeout(dynamic handler,
          [int? timeout = 0,
          dynamic arguments1,
          dynamic arguments2,
          dynamic arguments3]) =>
      js_util.callMethod(this, 'setTimeout',
          [handler, timeout, arguments1, arguments2, arguments3]);

  void clearTimeout([int? id = 0]) =>
      js_util.callMethod(this, 'clearTimeout', [id]);

  int setInterval(dynamic handler,
          [int? timeout = 0,
          dynamic arguments1,
          dynamic arguments2,
          dynamic arguments3]) =>
      js_util.callMethod(this, 'setInterval',
          [handler, timeout, arguments1, arguments2, arguments3]);

  void clearInterval([int? id = 0]) =>
      js_util.callMethod(this, 'clearInterval', [id]);

  void queueMicrotask(VoidFunction callback) =>
      js_util.callMethod(this, 'queueMicrotask', [allowInterop(callback)]);

  Future<ImageBitmap> createImageBitmap(dynamic image,
          [int? sx, int? sy, int? sw, int? sh, ImageBitmapOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'createImageBitmap', [image, sx, sy, sw, sh, options]));

  dynamic structuredClone(dynamic value,
          [StructuredSerializeOptions? options]) =>
      js_util.callMethod(this, 'structuredClone', [value, options]);

  Scheduler get scheduler => js_util.getProperty(this, 'scheduler');
  TrustedTypePolicyFactory get trustedTypes =>
      js_util.getProperty(this, 'trustedTypes');
  Performance get performance => js_util.getProperty(this, 'performance');
  Future<Response> fetch(dynamic input, [RequestInit? init]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'fetch', [input, init]));

  CacheStorage get caches => js_util.getProperty(this, 'caches');
  Crypto get crypto => js_util.getProperty(this, 'crypto');
  IDBFactory get indexedDB => js_util.getProperty(this, 'indexedDB');
}

///
///  The interface provides
///  the ability to parse XML or HTML source code from a
///  string into a DOM [Document].
///   You can perform the opposite operation—converting a DOM tree
/// into XML or HTML
///  source—using the [XMLSerializer] interface.
///   In the case of an HTML document, you can also replace portions
/// of the DOM with new DOM
///   trees built from HTML by setting the value of the
/// [Element.innerHTML] and
///  [outerHTML] properties. These properties can also be
///   read to fetch HTML fragments corresponding to the corresponding
/// DOM subtree.
///  Note that [XMLHttpRequest] can parse XML and HTML directly
///  from a URL-addressable resource, returning a [Document] in its
///  [response] property.
///
///   Note: Be aware that block-level elements
///   like [<p>] will be automatically closed if another
///    block-level element is nested inside and therefore parsed
/// before the closing [</p>] tag.
///
///
@JS()
@staticInterop
class DOMParser {
  external factory DOMParser();
}

extension PropsDOMParser on DOMParser {
  Document parseFromString(String string, DOMParserSupportedType type) =>
      js_util.callMethod(this, 'parseFromString', [string, type.value]);
}

enum DOMParserSupportedType {
  textHtml('text/html'),
  textXml('text/xml'),
  applicationXml('application/xml'),
  applicationXhtmlxml('application/xhtml+xml'),
  imageSvgxml('image/svg+xml');

  final String value;
  static DOMParserSupportedType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<DOMParserSupportedType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const DOMParserSupportedType(this.value);
}

///  The interface represents the state and the identity of the user
/// agent. It allows scripts to query it and to register themselves
/// to carry on some activities.
///  A object can be retrieved using the read-only [window.navigator]
/// property.
@JS()
@staticInterop
class Navigator
    implements
        NavigatorGPU,
        NavigatorAutomationInformation,
        NavigatorUA,
        NavigatorLocks,
        NavigatorDeviceMemory,
        NavigatorNetworkInformation,
        NavigatorBadge,
        NavigatorML,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorContentUtils,
        NavigatorCookies,
        NavigatorPlugins,
        NavigatorConcurrentHardware,
        NavigatorStorage {
  external factory Navigator();
}

extension PropsNavigator on Navigator {
  MediaCapabilities get mediaCapabilities =>
      js_util.getProperty(this, 'mediaCapabilities');
  Permissions get permissions => js_util.getProperty(this, 'permissions');
  MediaSession get mediaSession => js_util.getProperty(this, 'mediaSession');
  Future<void> share([ShareData? data]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'share', [data]));

  bool canShare([ShareData? data]) =>
      js_util.callMethod(this, 'canShare', [data]);

  Scheduling get scheduling => js_util.getProperty(this, 'scheduling');
  VirtualKeyboard get virtualKeyboard =>
      js_util.getProperty(this, 'virtualKeyboard');
  Geolocation get geolocation => js_util.getProperty(this, 'geolocation');
  ContactsManager get contacts => js_util.getProperty(this, 'contacts');
  WakeLock get wakeLock => js_util.getProperty(this, 'wakeLock');
  Hid get hid => js_util.getProperty(this, 'hid');
  Ink get ink => js_util.getProperty(this, 'ink');
  Clipboard get clipboard => js_util.getProperty(this, 'clipboard');
  Presentation get presentation => js_util.getProperty(this, 'presentation');
  CredentialsContainer get credentials =>
      js_util.getProperty(this, 'credentials');
  Bluetooth get bluetooth => js_util.getProperty(this, 'bluetooth');
  Keyboard get keyboard => js_util.getProperty(this, 'keyboard');
  WindowControlsOverlay get windowControlsOverlay =>
      js_util.getProperty(this, 'windowControlsOverlay');
  AutoplayPolicy getAutoplayPolicy(AutoplayPolicyMediaType type) =>
      js_util.callMethod(this, 'getAutoplayPolicy', [type.value]);

  int get maxTouchPoints => js_util.getProperty(this, 'maxTouchPoints');
  Future<void> setClientBadge([int? contents]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setClientBadge', [contents]));

  Future<void> clearClientBadge() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'clearClientBadge', []));

  MediaDevices get mediaDevices => js_util.getProperty(this, 'mediaDevices');
  void getUserMedia(
          MediaStreamConstraints constraints,
          NavigatorUserMediaSuccessCallback successCallback,
          NavigatorUserMediaErrorCallback errorCallback) =>
      js_util.callMethod(this, 'getUserMedia', [
        constraints,
        allowInterop(successCallback),
        allowInterop(errorCallback)
      ]);

  EpubReadingSystem get epubReadingSystem =>
      js_util.getProperty(this, 'epubReadingSystem');
  XRSystem get xr => js_util.getProperty(this, 'xr');
  Future<Iterable<RelatedApplication>> getInstalledRelatedApps() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getInstalledRelatedApps', []));

  Serial get serial => js_util.getProperty(this, 'serial');
  ServiceWorkerContainer get serviceWorker =>
      js_util.getProperty(this, 'serviceWorker');
  bool vibrate(dynamic pattern) =>
      js_util.callMethod(this, 'vibrate', [pattern]);

  Iterable<Gamepad>? getGamepads() =>
      js_util.callMethod(this, 'getGamepads', []);

  DevicePosture get devicePosture => js_util.getProperty(this, 'devicePosture');
  bool sendBeacon(String url, [dynamic data]) =>
      js_util.callMethod(this, 'sendBeacon', [url, data]);

  Usb get usb => js_util.getProperty(this, 'usb');
  Future<BatteryManager> getBattery() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getBattery', []));

  Future<MIDIAccess> requestMIDIAccess([MIDIOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestMIDIAccess', [options]));

  Future<MediaKeySystemAccess> requestMediaKeySystemAccess(String keySystem,
          Iterable<MediaKeySystemConfiguration> supportedConfigurations) =>
      js_util.promiseToFuture(js_util.callMethod(this,
          'requestMediaKeySystemAccess', [keySystem, supportedConfigurations]));
}

@JS()
@staticInterop
class NavigatorID {
  external factory NavigatorID();
}

extension PropsNavigatorID on NavigatorID {
  String get appCodeName => js_util.getProperty(this, 'appCodeName');
  String get appName => js_util.getProperty(this, 'appName');
  String get appVersion => js_util.getProperty(this, 'appVersion');
  String get platform => js_util.getProperty(this, 'platform');
  String get product => js_util.getProperty(this, 'product');
  String get productSub => js_util.getProperty(this, 'productSub');
  String get userAgent => js_util.getProperty(this, 'userAgent');
  String get vendor => js_util.getProperty(this, 'vendor');
  String get vendorSub => js_util.getProperty(this, 'vendorSub');
  bool taintEnabled() => js_util.callMethod(this, 'taintEnabled', []);

  String get oscpu => js_util.getProperty(this, 'oscpu');
}

@JS()
@staticInterop
class NavigatorLanguage {
  external factory NavigatorLanguage();
}

extension PropsNavigatorLanguage on NavigatorLanguage {
  String get language => js_util.getProperty(this, 'language');
  Iterable<String> get languages => js_util.getProperty(this, 'languages');
}

@JS()
@staticInterop
class NavigatorOnLine {
  external factory NavigatorOnLine();
}

extension PropsNavigatorOnLine on NavigatorOnLine {
  bool get onLine => js_util.getProperty(this, 'onLine');
}

@JS()
@staticInterop
class NavigatorContentUtils {
  external factory NavigatorContentUtils();
}

extension PropsNavigatorContentUtils on NavigatorContentUtils {
  void registerProtocolHandler(String scheme, String url) =>
      js_util.callMethod(this, 'registerProtocolHandler', [scheme, url]);

  void unregisterProtocolHandler(String scheme, String url) =>
      js_util.callMethod(this, 'unregisterProtocolHandler', [scheme, url]);
}

@JS()
@staticInterop
class NavigatorCookies {
  external factory NavigatorCookies();
}

extension PropsNavigatorCookies on NavigatorCookies {
  bool get cookieEnabled => js_util.getProperty(this, 'cookieEnabled');
}

@JS()
@staticInterop
class NavigatorPlugins {
  external factory NavigatorPlugins();
}

extension PropsNavigatorPlugins on NavigatorPlugins {
  PluginArray get plugins => js_util.getProperty(this, 'plugins');
  MimeTypeArray get mimeTypes => js_util.getProperty(this, 'mimeTypes');
  bool javaEnabled() => js_util.callMethod(this, 'javaEnabled', []);

  bool get pdfViewerEnabled => js_util.getProperty(this, 'pdfViewerEnabled');
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface is used to store a list of [Plugin] objects
/// describing the available plugins; it's returned by the
/// [navigator.plugins] property. The is not a JavaScript array, but
/// has the [length] property and supports accessing individual items
/// using bracket notation ([plugins[2]]), as well as via
/// [item(index)] and [namedItem("name")] methods.
///
///   Note: Own properties of objects are no longer enumerable in the
/// latest browser versions.
///
@experimental
@JS()
@staticInterop
class PluginArray {
  external factory PluginArray();
}

extension PropsPluginArray on PluginArray {
  void refresh() => js_util.callMethod(this, 'refresh', []);

  int get length => js_util.getProperty(this, 'length');
  Plugin? item(int index) => js_util.callMethod(this, 'item', [index]);

  Plugin? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface returns an array of [MimeType] instances, each of
/// which contains information about a supported browser plugins.
/// This object is returned by [Navigator.mimeTypes].
@JS()
@staticInterop
class MimeTypeArray {
  external factory MimeTypeArray();
}

extension PropsMimeTypeArray on MimeTypeArray {
  int get length => js_util.getProperty(this, 'length');
  MimeType? item(int index) => js_util.callMethod(this, 'item', [index]);

  MimeType? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
/// The interface provides information about a browser plugin.
///
///   Note: Own properties of objects are no longer enumerable in the
/// latest browser versions.
///
@JS()
@staticInterop
class Plugin {
  external factory Plugin();
}

extension PropsPlugin on Plugin {
  String get name => js_util.getProperty(this, 'name');
  String get description => js_util.getProperty(this, 'description');
  String get filename => js_util.getProperty(this, 'filename');
  int get length => js_util.getProperty(this, 'length');
  MimeType? item(int index) => js_util.callMethod(this, 'item', [index]);

  MimeType? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface provides contains information about a MIME type
/// associated with a particular plugin. [Navigator.mimeTypes]
/// returns an array of this object.
@JS()
@staticInterop
class MimeType {
  external factory MimeType();
}

extension PropsMimeType on MimeType {
  String get type => js_util.getProperty(this, 'type');
  String get description => js_util.getProperty(this, 'description');
  String get suffixes => js_util.getProperty(this, 'suffixes');
  Plugin get enabledPlugin => js_util.getProperty(this, 'enabledPlugin');
}

///  The interface represents a bitmap image which can be drawn to a
/// [<canvas>] without undue latency. It can be created from a
/// variety of source objects using the [createImageBitmap()] factory
/// method. provides an asynchronous and resource efficient pathway
/// to prepare textures for rendering in WebGL.
@JS()
@staticInterop
class ImageBitmap {
  external factory ImageBitmap();
}

extension PropsImageBitmap on ImageBitmap {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  void close() => js_util.callMethod(this, 'close', []);
}

enum ImageOrientation {
  none('none'),
  flipY('flipY');

  final String value;
  static ImageOrientation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ImageOrientation> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ImageOrientation(this.value);
}

enum PremultiplyAlpha {
  none('none'),
  premultiply('premultiply'),
  valueDefault('default');

  final String value;
  static PremultiplyAlpha fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PremultiplyAlpha> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PremultiplyAlpha(this.value);
}

enum ColorSpaceConversion {
  none('none'),
  valueDefault('default');

  final String value;
  static ColorSpaceConversion fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ColorSpaceConversion> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ColorSpaceConversion(this.value);
}

enum ResizeQuality {
  pixelated('pixelated'),
  low('low'),
  medium('medium'),
  high('high');

  final String value;
  static ResizeQuality fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ResizeQuality> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ResizeQuality(this.value);
}

@anonymous
@JS()
@staticInterop
class ImageBitmapOptions {
  external factory ImageBitmapOptions._(
      {String? imageOrientation,
      String? premultiplyAlpha,
      String? colorSpaceConversion,
      int? resizeWidth,
      int? resizeHeight,
      String? resizeQuality});

  factory ImageBitmapOptions(
          {ImageOrientation? imageOrientation = ImageOrientation.none,
          PremultiplyAlpha? premultiplyAlpha = PremultiplyAlpha.valueDefault,
          ColorSpaceConversion? colorSpaceConversion =
              ColorSpaceConversion.valueDefault,
          int? resizeWidth,
          int? resizeHeight,
          ResizeQuality? resizeQuality = ResizeQuality.low}) =>
      ImageBitmapOptions._(
          imageOrientation: imageOrientation?.value ?? undefined,
          premultiplyAlpha: premultiplyAlpha?.value ?? undefined,
          colorSpaceConversion: colorSpaceConversion?.value ?? undefined,
          resizeWidth: resizeWidth ?? undefined,
          resizeHeight: resizeHeight ?? undefined,
          resizeQuality: resizeQuality?.value ?? undefined);
}

extension PropsImageBitmapOptions on ImageBitmapOptions {
  ImageOrientation get imageOrientation =>
      ImageOrientation.fromValue(js_util.getProperty(this, 'imageOrientation'));
  set imageOrientation(ImageOrientation newValue) {
    js_util.setProperty(this, 'imageOrientation', newValue.value);
  }

  PremultiplyAlpha get premultiplyAlpha =>
      PremultiplyAlpha.fromValue(js_util.getProperty(this, 'premultiplyAlpha'));
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue.value);
  }

  ColorSpaceConversion get colorSpaceConversion =>
      ColorSpaceConversion.fromValue(
          js_util.getProperty(this, 'colorSpaceConversion'));
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue.value);
  }

  int get resizeWidth => js_util.getProperty(this, 'resizeWidth');
  set resizeWidth(int newValue) {
    js_util.setProperty(this, 'resizeWidth', newValue);
  }

  int get resizeHeight => js_util.getProperty(this, 'resizeHeight');
  set resizeHeight(int newValue) {
    js_util.setProperty(this, 'resizeHeight', newValue);
  }

  ResizeQuality get resizeQuality =>
      ResizeQuality.fromValue(js_util.getProperty(this, 'resizeQuality'));
  set resizeQuality(ResizeQuality newValue) {
    js_util.setProperty(this, 'resizeQuality', newValue.value);
  }
}

@JS()
@staticInterop
class AnimationFrameProvider {
  external factory AnimationFrameProvider();
}

extension PropsAnimationFrameProvider on AnimationFrameProvider {
  int requestAnimationFrame(FrameRequestCallback callback) => js_util
      .callMethod(this, 'requestAnimationFrame', [allowInterop(callback)]);

  void cancelAnimationFrame(int handle) =>
      js_util.callMethod(this, 'cancelAnimationFrame', [handle]);
}

/// The interface represents a message received by a target object.
/// This is used to represent messages in:
///
///  Server-sent events (see [EventSource.onmessage]).
///   Web sockets (see the [onmessage] property of the WebSocket
/// interface).
///   Cross-document messaging (see [Window.postMessage()] and
/// [Window.onmessage]).
///   Channel messaging (see [MessagePort.postMessage()] and
/// [MessagePort.onmessage]).
///   Cross-worker/document messaging (see the above two entries, but
/// also [Worker.postMessage()], [Worker.onmessage],
/// [ServiceWorkerGlobalScope.onmessage], etc.)
///   Broadcast channels (see [Broadcastchannel.postMessage()]) and
/// [BroadcastChannel.onmessage]).
///  WebRTC data channels (see [RTCDataChannel.onmessage]).
///
///  The action triggered by this event is defined in a function set
/// as the event handler for the relevant [message] event (e.g. using
/// an [onmessage] handler as listed above).
///  Note: This feature is available in Web Workers
///
///
///
///    Event
///
///
///
///
///
///    MessageEvent
///
///
@JS()
@staticInterop
class MessageEvent implements Event {
  external factory MessageEvent(String type, [MessageEventInit? eventInitDict]);
}

extension PropsMessageEvent on MessageEvent {
  dynamic get data => js_util.getProperty(this, 'data');
  String get origin => js_util.getProperty(this, 'origin');
  String get lastEventId => js_util.getProperty(this, 'lastEventId');
  dynamic get source => js_util.getProperty(this, 'source');
  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');
  void initMessageEvent(String type,
          [bool? bubbles = false,
          bool? cancelable = false,
          dynamic data,
          String? origin = '',
          String? lastEventId = '',
          dynamic source,
          Iterable<MessagePort>? ports = const []]) =>
      js_util.callMethod(this, 'initMessageEvent', [
        type,
        bubbles,
        cancelable,
        data,
        origin,
        lastEventId,
        source,
        ports
      ]);
}

@anonymous
@JS()
@staticInterop
class MessageEventInit implements EventInit {
  external factory MessageEventInit(
      {dynamic data,
      String? origin = '',
      String? lastEventId = '',
      dynamic source,
      Iterable<MessagePort>? ports = const []});
}

extension PropsMessageEventInit on MessageEventInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  String get lastEventId => js_util.getProperty(this, 'lastEventId');
  set lastEventId(String newValue) {
    js_util.setProperty(this, 'lastEventId', newValue);
  }

  dynamic get source => js_util.getProperty(this, 'source');
  set source(dynamic newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');
  set ports(Iterable<MessagePort> newValue) {
    js_util.setProperty(this, 'ports', newValue);
  }
}

/// The interface is web content's interface to server-sent events.
///  An instance opens a persistent connection to an HTTP server,
/// which sends events in [text/event-stream] format. The connection
/// remains open until closed by calling [EventSource.close()].
///
///
///
///    EventTarget
///
///
///
///
///
///    EventSource
///
///
///  Once the connection is opened, incoming messages from the server
/// are delivered to your code in the form of events. If there is an
/// event field in the incoming message, the triggered event is the
/// same as the event field value. If no event field is present, then
/// a generic [message] event is fired.
///  Unlike WebSockets, server-sent events are unidirectional; that
/// is, data messages are delivered in one direction, from the server
/// to the client (such as a user's web browser). That makes them an
/// excellent choice when there's no need to send data from the
/// client to the server in message form. For example, is a useful
/// approach for handling things like social media status updates,
/// news feeds, or delivering data into a client-side storage
/// mechanism like IndexedDB or web storage.
///
///   Warning: When not used over HTTP/2, SSE suffers from a
/// limitation to the maximum number of open connections, which can
/// be specially painful when opening various tabs as the limit is
/// per browser and set to a very low number (6). The issue has been
/// marked as "Won't fix" in Chrome and Firefox. This limit is per
/// browser + domain, so that means that you can open 6 SSE
/// connections across all of the tabs to [www.example1.com] and
/// another 6 SSE connections to [www.example2.com.] (from
/// Stackoverflow). When using HTTP/2, the maximum number of
/// simultaneous HTTP streams is negotiated between the server and
/// the client (defaults to 100).
///
@JS()
@staticInterop
class EventSource implements EventTarget {
  external factory EventSource(String url,
      [EventSourceInit? eventSourceInitDict]);
  @JS('CONNECTING')
  external static int get connecting;

  @JS('OPEN')
  external static int get open;

  @JS('CLOSED')
  external static int get closed;
}

extension PropsEventSource on EventSource {
  String get url => js_util.getProperty(this, 'url');
  bool get withCredentials => js_util.getProperty(this, 'withCredentials');
  int get readyState => js_util.getProperty(this, 'readyState');
  EventHandlerNonNull? get onopen => js_util.getProperty(this, 'onopen');
  set onopen(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onopen', newValue);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  void close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class EventSourceInit {
  external factory EventSourceInit({bool? withCredentials = false});
}

extension PropsEventSourceInit on EventSourceInit {
  bool get withCredentials => js_util.getProperty(this, 'withCredentials');
  set withCredentials(bool newValue) {
    js_util.setProperty(this, 'withCredentials', newValue);
  }
}

///  The interface of the Channel Messaging API allows us to create a
/// new message channel and send data through it via its two
/// [MessagePort] properties.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class MessageChannel {
  external factory MessageChannel();
}

extension PropsMessageChannel on MessageChannel {
  MessagePort get port1 => js_util.getProperty(this, 'port1');
  MessagePort get port2 => js_util.getProperty(this, 'port2');
}

///  The interface of the Channel Messaging API represents one of the
/// two ports of a [MessageChannel], allowing messages to be sent
/// from one port and listening out for them arriving at the other.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    MessagePort
///
///
@JS()
@staticInterop
class MessagePort implements EventTarget {
  external factory MessagePort();
}

extension PropsMessagePort on MessagePort {
  void postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  void start() => js_util.callMethod(this, 'start', []);

  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class StructuredSerializeOptions {
  external factory StructuredSerializeOptions(
      {Iterable<dynamic>? transfer = const []});
}

extension PropsStructuredSerializeOptions on StructuredSerializeOptions {
  Iterable<dynamic> get transfer => js_util.getProperty(this, 'transfer');
  set transfer(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'transfer', newValue);
  }
}

///  The interface represents a named channel that any browsing
/// context of a given origin can subscribe to. It allows
/// communication between different documents (in different windows,
/// tabs, frames or iframes) of the same origin. Messages are
/// broadcasted via a [message] event fired at all objects listening
/// to the channel.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    BroadcastChannel
///
///
@experimental
@JS()
@staticInterop
class BroadcastChannel implements EventTarget {
  external factory BroadcastChannel(String name);
}

extension PropsBroadcastChannel on BroadcastChannel {
  String get name => js_util.getProperty(this, 'name');
  void postMessage(dynamic message) =>
      js_util.callMethod(this, 'postMessage', [message]);

  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

///  The interface of the Web Workers API is an interface
/// representing the scope of any worker. Workers have no browsing
/// context; this scope contains the information usually conveyed by
/// [Window] objects — in this case event handlers, the console or
/// the associated [WorkerNavigator] object. Each has its own event
/// loop.
///  This interface is usually specialized by each worker type:
/// [DedicatedWorkerGlobalScope] for dedicated workers,
/// [SharedWorkerGlobalScope] for shared workers, and
/// [ServiceWorkerGlobalScope] for ServiceWorker. The [self] property
/// returns the specialized scope for each context.
///
///
///
///    EventTarget
///
///
///
///
///
///    WorkerGlobalScope
///
///
@JS()
@staticInterop
class WorkerGlobalScope
    implements EventTarget, FontFaceSource, WindowOrWorkerGlobalScope {
  external factory WorkerGlobalScope();
}

extension PropsWorkerGlobalScope on WorkerGlobalScope {
  WorkerGlobalScope get self => js_util.getProperty(this, 'self');
  WorkerLocation get location => js_util.getProperty(this, 'location');
  WorkerNavigator get navigator => js_util.getProperty(this, 'navigator');
  void importScripts([String? urls1, String? urls2, String? urls3]) =>
      js_util.callMethod(this, 'importScripts', [urls1, urls2, urls3]);

  OnErrorEventHandlerNonNull? get onerror =>
      js_util.getProperty(this, 'onerror');
  set onerror(OnErrorEventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onlanguagechange =>
      js_util.getProperty(this, 'onlanguagechange');
  set onlanguagechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlanguagechange', newValue);
  }

  EventHandlerNonNull? get onoffline => js_util.getProperty(this, 'onoffline');
  set onoffline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onoffline', newValue);
  }

  EventHandlerNonNull? get ononline => js_util.getProperty(this, 'ononline');
  set ononline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ononline', newValue);
  }

  EventHandlerNonNull? get onrejectionhandled =>
      js_util.getProperty(this, 'onrejectionhandled');
  set onrejectionhandled(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrejectionhandled', newValue);
  }

  EventHandlerNonNull? get onunhandledrejection =>
      js_util.getProperty(this, 'onunhandledrejection');
  set onunhandledrejection(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunhandledrejection', newValue);
  }
}

///  The object (the [Worker] global scope) is accessible through the
/// [self] keyword. Some additional global functions, namespaces
/// objects, and constructors, not typically associated with the
/// worker global scope, but available on it, are listed in the
/// JavaScript Reference. See also: Functions available to workers.
///
///
///
///    EventTarget
///
///
///
///
///
///    WorkerGlobalScope
///
///
///
///
///
///    DedicatedWorkerGlobalScope
///
///
@JS()
@staticInterop
class DedicatedWorkerGlobalScope
    implements WorkerGlobalScope, AnimationFrameProvider {
  external factory DedicatedWorkerGlobalScope();
}

extension PropsDedicatedWorkerGlobalScope on DedicatedWorkerGlobalScope {
  String get name => js_util.getProperty(this, 'name');
  void postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }

  EventHandlerNonNull? get onrtctransform =>
      js_util.getProperty(this, 'onrtctransform');
  set onrtctransform(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrtctransform', newValue);
  }
}

///  The object (the [SharedWorker] global scope) is accessible
/// through the [self] keyword. Some additional global functions,
/// namespaces objects, and constructors, not typically associated
/// with the worker global scope, but available on it, are listed in
/// the JavaScript Reference. See the complete list of functions
/// available to workers.
///
///
///
///    EventTarget
///
///
///
///
///
///    WorkerGlobalScope
///
///
///
///
///
///    SharedWorkerGlobalScope
///
///
@JS()
@staticInterop
class SharedWorkerGlobalScope implements WorkerGlobalScope {
  external factory SharedWorkerGlobalScope();
}

extension PropsSharedWorkerGlobalScope on SharedWorkerGlobalScope {
  String get name => js_util.getProperty(this, 'name');
  void close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }
}

@JS()
@staticInterop
class AbstractWorker {
  external factory AbstractWorker();
}

extension PropsAbstractWorker on AbstractWorker {
  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

///  The interface of the Web Workers API represents a background
/// task that can be created via script, which can send messages back
/// to its creator.
///  Creating a worker is done by calling the
/// [Worker("path/to/worker/script")] constructor.
///  Workers may themselves spawn new workers, as long as those
/// workers are hosted at the same origin as the parent page. (Note:
/// nested workers are not yet implemented in WebKit).
///  Not all interfaces and functions are available to scripts inside
/// a . Workers may use [XMLHttpRequest] for network communication,
/// but its [responseXML] and [channel] attributes are always [null].
/// ([fetch] is also available, with no such restrictions.)
///
///
///
///    EventTarget
///
///
///
///
///
///    Worker
///
///
@JS()
@staticInterop
class Worker implements EventTarget, AbstractWorker {
  external factory Worker(String scriptURL, [WorkerOptions? options]);
}

extension PropsWorker on Worker {
  void terminate() => js_util.callMethod(this, 'terminate', []);

  void postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class WorkerOptions {
  external factory WorkerOptions._(
      {String? type, String? credentials, String? name = ''});

  factory WorkerOptions(
          {WorkerType? type = WorkerType.classic,
          RequestCredentials? credentials = RequestCredentials.sameOrigin,
          String? name = ''}) =>
      WorkerOptions._(
          type: type?.value ?? undefined,
          credentials: credentials?.value ?? undefined,
          name: name ?? undefined);
}

extension PropsWorkerOptions on WorkerOptions {
  WorkerType get type =>
      WorkerType.fromValue(js_util.getProperty(this, 'type'));
  set type(WorkerType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  RequestCredentials get credentials =>
      RequestCredentials.fromValue(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.value);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum WorkerType {
  classic('classic'),
  module('module');

  final String value;
  static WorkerType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<WorkerType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const WorkerType(this.value);
}

///  The interface represents a specific kind of worker that can be
/// accessed from several browsing contexts, such as several windows,
/// iframes or even workers. They implement an interface different
/// than dedicated workers and have a different global scope,
/// [SharedWorkerGlobalScope].
///
///   Note: If SharedWorker can be accessed from several browsing
/// contexts, all those browsing contexts must share the exact same
/// origin (same protocol, host and port).
///
///
///
///
///    EventTarget
///
///
///
///
///
///    SharedWorker
///
///
@JS()
@staticInterop
class SharedWorker implements EventTarget, AbstractWorker {
  external factory SharedWorker(String scriptURL, [dynamic options]);
}

extension PropsSharedWorker on SharedWorker {
  MessagePort get port => js_util.getProperty(this, 'port');
}

@JS()
@staticInterop
class NavigatorConcurrentHardware {
  external factory NavigatorConcurrentHardware();
}

extension PropsNavigatorConcurrentHardware on NavigatorConcurrentHardware {
  int get hardwareConcurrency =>
      js_util.getProperty(this, 'hardwareConcurrency');
}

///  The interface represents a subset of the [Navigator] interface
/// allowed to be accessed from a [Worker]. Such an object is
/// initialized for each worker and is available via the
/// [self.navigator] property.
@JS()
@staticInterop
class WorkerNavigator
    implements
        NavigatorGPU,
        NavigatorUA,
        NavigatorLocks,
        NavigatorDeviceMemory,
        NavigatorNetworkInformation,
        NavigatorBadge,
        NavigatorML,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorConcurrentHardware,
        NavigatorStorage {
  external factory WorkerNavigator();
}

extension PropsWorkerNavigator on WorkerNavigator {
  MediaCapabilities get mediaCapabilities =>
      js_util.getProperty(this, 'mediaCapabilities');
  Permissions get permissions => js_util.getProperty(this, 'permissions');
  Hid get hid => js_util.getProperty(this, 'hid');
  Serial get serial => js_util.getProperty(this, 'serial');
  ServiceWorkerContainer get serviceWorker =>
      js_util.getProperty(this, 'serviceWorker');
  Usb get usb => js_util.getProperty(this, 'usb');
}

///  The interface defines the absolute location of the script
/// executed by the [Worker]. Such an object is initialized for each
/// worker and is available via the [WorkerGlobalScope.location]
/// property obtained by calling [self.location].
///  This interface is only visible from inside a JavaScript script
/// executed in the context of a Web worker.
@JS()
@staticInterop
class WorkerLocation {
  external factory WorkerLocation();
}

extension PropsWorkerLocation on WorkerLocation {
  String get href => js_util.getProperty(this, 'href');
  String get origin => js_util.getProperty(this, 'origin');
  String get protocol => js_util.getProperty(this, 'protocol');
  String get host => js_util.getProperty(this, 'host');
  String get hostname => js_util.getProperty(this, 'hostname');
  String get port => js_util.getProperty(this, 'port');
  String get pathname => js_util.getProperty(this, 'pathname');
  String get search => js_util.getProperty(this, 'search');
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
}

@JS()
@staticInterop
class WorkletGlobalScope {
  external factory WorkletGlobalScope();
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface is a lightweight version of [Web Workers] and
/// gives developers access to low-level parts of the rendering
/// pipeline.
///  With Worklets, you can run JavaScript and WebAssembly code to do
/// graphics rendering or audio processing where high performance is
/// required.
@JS()
@staticInterop
class Worklet {
  external factory Worklet();
}

extension PropsWorklet on Worklet {
  Future<void> addModule(String moduleURL, [WorkletOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'addModule', [moduleURL, options]));
}

@anonymous
@JS()
@staticInterop
class WorkletOptions {
  external factory WorkletOptions._({String? credentials});

  factory WorkletOptions(
          {RequestCredentials? credentials = RequestCredentials.sameOrigin}) =>
      WorkletOptions._(credentials: credentials?.value ?? undefined);
}

extension PropsWorkletOptions on WorkletOptions {
  RequestCredentials get credentials =>
      RequestCredentials.fromValue(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.value);
  }
}

///  The interface of the Web Storage API provides access to a
/// particular domain's session or local storage. It allows, for
/// example, the addition, modification, or deletion of stored data
/// items.
///  To manipulate, for instance, the session storage for a domain, a
/// call to [Window.sessionStorage] is made; whereas for local
/// storage the call is made to [Window.localStorage].
@JS()
@staticInterop
class Storage {
  external factory Storage();
}

extension PropsStorage on Storage {
  int get length => js_util.getProperty(this, 'length');
  String? key(int index) => js_util.callMethod(this, 'key', [index]);

  String? getItem(String key) => js_util.callMethod(this, 'getItem', [key]);

  void setItem(String key, String value) =>
      js_util.callMethod(this, 'setItem', [key, value]);

  void removeItem(String key) => js_util.callMethod(this, 'removeItem', [key]);

  void clear() => js_util.callMethod(this, 'clear', []);
}

@JS()
@staticInterop
class WindowSessionStorage {
  external factory WindowSessionStorage();
}

extension PropsWindowSessionStorage on WindowSessionStorage {
  Storage get sessionStorage => js_util.getProperty(this, 'sessionStorage');
}

@JS()
@staticInterop
class WindowLocalStorage {
  external factory WindowLocalStorage();
}

extension PropsWindowLocalStorage on WindowLocalStorage {
  Storage get localStorage => js_util.getProperty(this, 'localStorage');
}

///
///  The interface is implemented by the [storage] event, which is
///  sent to a window
///   when a storage area the window has access to is changed within
/// the context of another document.
///
///
///
///
///    Event
///
///
///
///
///
///    StorageEvent
///
///
@JS()
@staticInterop
class StorageEvent implements Event {
  external factory StorageEvent(String type, [StorageEventInit? eventInitDict]);
}

extension PropsStorageEvent on StorageEvent {
  String? get key => js_util.getProperty(this, 'key');
  String? get oldValue => js_util.getProperty(this, 'oldValue');
  String? get newValue => js_util.getProperty(this, 'newValue');
  String get url => js_util.getProperty(this, 'url');
  Storage? get storageArea => js_util.getProperty(this, 'storageArea');
  void initStorageEvent(String type,
          [bool? bubbles = false,
          bool? cancelable = false,
          String? key,
          String? oldValue,
          String? newValue,
          String? url = '',
          Storage? storageArea]) =>
      js_util.callMethod(this, 'initStorageEvent', [
        type,
        bubbles,
        cancelable,
        key,
        oldValue,
        newValue,
        url,
        storageArea
      ]);
}

@anonymous
@JS()
@staticInterop
class StorageEventInit implements EventInit {
  external factory StorageEventInit(
      {String? key,
      String? oldValue,
      String? newValue,
      String? url = '',
      Storage? storageArea});
}

extension PropsStorageEventInit on StorageEventInit {
  String? get key => js_util.getProperty(this, 'key');
  set key(String? newValue) {
    js_util.setProperty(this, 'key', newValue);
  }

  String? get oldValue => js_util.getProperty(this, 'oldValue');
  set oldValue(String? newValue) {
    js_util.setProperty(this, 'oldValue', newValue);
  }

  String? get newValue => js_util.getProperty(this, 'newValue');
  set newValue(String? newValue) {
    js_util.setProperty(this, 'newValue', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  Storage? get storageArea => js_util.getProperty(this, 'storageArea');
  set storageArea(Storage? newValue) {
    js_util.setProperty(this, 'storageArea', newValue);
  }
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface provides methods to manipulate [<marquee>]
/// elements.
///  It inherits properties and methods from the [HTMLElement]
/// interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLMarqueeElement
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class HTMLMarqueeElement implements HTMLElement {
  external factory HTMLMarqueeElement();
}

extension PropsHTMLMarqueeElement on HTMLMarqueeElement {
  String get behavior => js_util.getProperty(this, 'behavior');
  set behavior(String newValue) {
    js_util.setProperty(this, 'behavior', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }

  String get direction => js_util.getProperty(this, 'direction');
  set direction(String newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get hspace => js_util.getProperty(this, 'hspace');
  set hspace(int newValue) {
    js_util.setProperty(this, 'hspace', newValue);
  }

  int get loop => js_util.getProperty(this, 'loop');
  set loop(int newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  int get scrollAmount => js_util.getProperty(this, 'scrollAmount');
  set scrollAmount(int newValue) {
    js_util.setProperty(this, 'scrollAmount', newValue);
  }

  int get scrollDelay => js_util.getProperty(this, 'scrollDelay');
  set scrollDelay(int newValue) {
    js_util.setProperty(this, 'scrollDelay', newValue);
  }

  bool get trueSpeed => js_util.getProperty(this, 'trueSpeed');
  set trueSpeed(bool newValue) {
    js_util.setProperty(this, 'trueSpeed', newValue);
  }

  int get vspace => js_util.getProperty(this, 'vspace');
  set vspace(int newValue) {
    js_util.setProperty(this, 'vspace', newValue);
  }

  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  void start() => js_util.callMethod(this, 'start', []);

  void stop() => js_util.callMethod(this, 'stop', []);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] interface they also inherit) for
/// manipulating [<frameset>] elements.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLFrameSetElement
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class HTMLFrameSetElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLFrameSetElement();
}

extension PropsHTMLFrameSetElement on HTMLFrameSetElement {
  String get cols => js_util.getProperty(this, 'cols');
  set cols(String newValue) {
    js_util.setProperty(this, 'cols', newValue);
  }

  String get rows => js_util.getProperty(this, 'rows');
  set rows(String newValue) {
    js_util.setProperty(this, 'rows', newValue);
  }
}

@JS()
@staticInterop
class HTMLFrameElement implements HTMLElement {
  external factory HTMLFrameElement();
}

extension PropsHTMLFrameElement on HTMLFrameElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get scrolling => js_util.getProperty(this, 'scrolling');
  set scrolling(String newValue) {
    js_util.setProperty(this, 'scrolling', newValue);
  }

  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get frameBorder => js_util.getProperty(this, 'frameBorder');
  set frameBorder(String newValue) {
    js_util.setProperty(this, 'frameBorder', newValue);
  }

  String get longDesc => js_util.getProperty(this, 'longDesc');
  set longDesc(String newValue) {
    js_util.setProperty(this, 'longDesc', newValue);
  }

  bool get noResize => js_util.getProperty(this, 'noResize');
  set noResize(bool newValue) {
    js_util.setProperty(this, 'noResize', newValue);
  }

  Document? get contentDocument => js_util.getProperty(this, 'contentDocument');
  Window? get contentWindow => js_util.getProperty(this, 'contentWindow');
  String get marginHeight => js_util.getProperty(this, 'marginHeight');
  set marginHeight(String newValue) {
    js_util.setProperty(this, 'marginHeight', newValue);
  }

  String get marginWidth => js_util.getProperty(this, 'marginWidth');
  set marginWidth(String newValue) {
    js_util.setProperty(this, 'marginWidth', newValue);
  }
}

@JS()
@staticInterop
class HTMLDirectoryElement implements HTMLElement {
  external factory HTMLDirectoryElement();
}

extension PropsHTMLDirectoryElement on HTMLDirectoryElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  Implements the document object model (DOM) representation of the
/// font element. The HTML Font Element [<font>] defines the font
/// size, font face and color of text.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLFontElement
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class HTMLFontElement implements HTMLElement {
  external factory HTMLFontElement();
}

extension PropsHTMLFontElement on HTMLFontElement {
  String get color => js_util.getProperty(this, 'color');
  set color(String newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  String get face => js_util.getProperty(this, 'face');
  set face(String newValue) {
    js_util.setProperty(this, 'face', newValue);
  }

  String get size => js_util.getProperty(this, 'size');
  set size(String newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}

///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] object interface it inherits) for
/// manipulating [<param>] elements, representing a pair of a key and
/// a value that acts as a parameter for an [<object>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///    Node
///
///
///
///
///
///    Element
///
///
///
///
///
///    HTMLElement
///
///
///
///
///
///    HTMLParamElement
///
///
@JS()
@staticInterop
class HTMLParamElement implements HTMLElement {
  external factory HTMLParamElement();
}

extension PropsHTMLParamElement on HTMLParamElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get valueType => js_util.getProperty(this, 'valueType');
  set valueType(String newValue) {
    js_util.setProperty(this, 'valueType', newValue);
  }
}

@JS()
@staticInterop
class External {
  external factory External();
}

extension PropsExternal on External {
  void addSearchProvider() => js_util.callMethod(this, 'AddSearchProvider', []);

  void isSearchProviderInstalled() =>
      js_util.callMethod(this, 'IsSearchProviderInstalled', []);
}
