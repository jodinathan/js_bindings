/// HTML Standard
///
/// https://html.spec.whatwg.org/multipage/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library html;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class HTMLAllCollection {
  external HTMLAllCollection();
}

extension PropsHTMLAllCollection on HTMLAllCollection {
  int get length => js_util.getProperty(this, 'length');
  dynamic namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);

  dynamic item([String? nameOrIndex]) =>
      js_util.callMethod(this, 'item', [nameOrIndex]);
}

@JS()
@staticInterop
class HTMLFormControlsCollection implements HTMLCollection {
  external HTMLFormControlsCollection();
}

extension PropsHTMLFormControlsCollection on HTMLFormControlsCollection {
  dynamic namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

@JS()
@staticInterop
class RadioNodeList implements NodeList {
  external RadioNodeList();
}

extension PropsRadioNodeList on RadioNodeList {
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class HTMLOptionsCollection implements HTMLCollection {
  external HTMLOptionsCollection();
}

extension PropsHTMLOptionsCollection on HTMLOptionsCollection {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  Object add(dynamic element, [dynamic before]) =>
      js_util.callMethod(this, 'add', [element, before]);

  Object remove(int index) => js_util.callMethod(this, 'remove', [index]);

  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  set selectedIndex(int newValue) {
    js_util.setProperty(this, 'selectedIndex', newValue);
  }
}

@JS()
@staticInterop
class DOMStringList {
  external DOMStringList();
}

extension PropsDOMStringList on DOMStringList {
  int get length => js_util.getProperty(this, 'length');
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  bool contains(String string) =>
      js_util.callMethod(this, 'contains', [string]);
}

enum DocumentReadyState { loading, interactive, complete }

enum DocumentVisibilityState { visible, hidden }

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
  external HTMLElement();
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

  bool get hidden => js_util.getProperty(this, 'hidden');
  set hidden(bool newValue) {
    js_util.setProperty(this, 'hidden', newValue);
  }

  Object click() => js_util.callMethod(this, 'click', []);

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

@JS()
@staticInterop
class HTMLUnknownElement implements HTMLElement {
  external HTMLUnknownElement();
}

@JS()
@staticInterop
class HTMLOrSVGElement {
  external HTMLOrSVGElement();
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

  Object focus([FocusOptions? options]) =>
      js_util.callMethod(this, 'focus', [options]);

  Object blur() => js_util.callMethod(this, 'blur', []);
}

@JS()
@staticInterop
class DOMStringMap {
  external DOMStringMap();
}

@JS()
@staticInterop
class HTMLHtmlElement implements HTMLElement {
  external HTMLHtmlElement();
}

extension PropsHTMLHtmlElement on HTMLHtmlElement {
  String get version => js_util.getProperty(this, 'version');
  set version(String newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}

@JS()
@staticInterop
class HTMLHeadElement implements HTMLElement {
  external HTMLHeadElement();
}

@JS()
@staticInterop
class HTMLTitleElement implements HTMLElement {
  external HTMLTitleElement();
}

extension PropsHTMLTitleElement on HTMLTitleElement {
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }
}

@JS()
@staticInterop
class HTMLBaseElement implements HTMLElement {
  external HTMLBaseElement();
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

@JS()
@staticInterop
class HTMLLinkElement implements HTMLElement, LinkStyle {
  external HTMLLinkElement();
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

  @JS('as')
  @staticInterop
  String get mAs => js_util.getProperty(this, 'as');
  set mAs(String newValue) {
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

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  String get importance => js_util.getProperty(this, 'importance');
  set importance(String newValue) {
    js_util.setProperty(this, 'importance', newValue);
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

@JS()
@staticInterop
class HTMLMetaElement implements HTMLElement {
  external HTMLMetaElement();
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

@JS()
@staticInterop
class HTMLStyleElement implements HTMLElement, LinkStyle {
  external HTMLStyleElement();
}

extension PropsHTMLStyleElement on HTMLStyleElement {
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

@JS()
@staticInterop
class HTMLBodyElement implements HTMLElement, WindowEventHandlers {
  external HTMLBodyElement();
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

@JS()
@staticInterop
class HTMLHeadingElement implements HTMLElement {
  external HTMLHeadingElement();
}

extension PropsHTMLHeadingElement on HTMLHeadingElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

@JS()
@staticInterop
class HTMLParagraphElement implements HTMLElement {
  external HTMLParagraphElement();
}

extension PropsHTMLParagraphElement on HTMLParagraphElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

@JS()
@staticInterop
class HTMLHRElement implements HTMLElement {
  external HTMLHRElement();
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

@JS()
@staticInterop
class HTMLPreElement implements HTMLElement {
  external HTMLPreElement();
}

extension PropsHTMLPreElement on HTMLPreElement {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }
}

@JS()
@staticInterop
class HTMLQuoteElement implements HTMLElement {
  external HTMLQuoteElement();
}

extension PropsHTMLQuoteElement on HTMLQuoteElement {
  String get cite => js_util.getProperty(this, 'cite');
  set cite(String newValue) {
    js_util.setProperty(this, 'cite', newValue);
  }
}

@JS()
@staticInterop
class HTMLOListElement implements HTMLElement {
  external HTMLOListElement();
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

@JS()
@staticInterop
class HTMLUListElement implements HTMLElement {
  external HTMLUListElement();
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

@JS()
@staticInterop
class HTMLMenuElement implements HTMLElement {
  external HTMLMenuElement();
}

extension PropsHTMLMenuElement on HTMLMenuElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

@JS()
@staticInterop
class HTMLLIElement implements HTMLElement {
  external HTMLLIElement();
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

@JS()
@staticInterop
class HTMLDListElement implements HTMLElement {
  external HTMLDListElement();
}

extension PropsHTMLDListElement on HTMLDListElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

@JS()
@staticInterop
class HTMLDivElement implements HTMLElement {
  external HTMLDivElement();
}

extension PropsHTMLDivElement on HTMLDivElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

@JS()
@staticInterop
class HTMLAnchorElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external HTMLAnchorElement();
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

  String get attributionDestination =>
      js_util.getProperty(this, 'attributionDestination');
  set attributionDestination(String newValue) {
    js_util.setProperty(this, 'attributionDestination', newValue);
  }

  String get attributionSourceEventId =>
      js_util.getProperty(this, 'attributionSourceEventId');
  set attributionSourceEventId(String newValue) {
    js_util.setProperty(this, 'attributionSourceEventId', newValue);
  }

  String get attributionReportTo =>
      js_util.getProperty(this, 'attributionReportTo');
  set attributionReportTo(String newValue) {
    js_util.setProperty(this, 'attributionReportTo', newValue);
  }

  int get attributionExpiry => js_util.getProperty(this, 'attributionExpiry');
  set attributionExpiry(int newValue) {
    js_util.setProperty(this, 'attributionExpiry', newValue);
  }

  int get attributionSourcePriority =>
      js_util.getProperty(this, 'attributionSourcePriority');
  set attributionSourcePriority(int newValue) {
    js_util.setProperty(this, 'attributionSourcePriority', newValue);
  }

  bool get registerAttributionSource =>
      js_util.getProperty(this, 'registerAttributionSource');
  set registerAttributionSource(bool newValue) {
    js_util.setProperty(this, 'registerAttributionSource', newValue);
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

@JS()
@staticInterop
class HTMLDataElement implements HTMLElement {
  external HTMLDataElement();
}

extension PropsHTMLDataElement on HTMLDataElement {
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class HTMLTimeElement implements HTMLElement {
  external HTMLTimeElement();
}

extension PropsHTMLTimeElement on HTMLTimeElement {
  String get dateTime => js_util.getProperty(this, 'dateTime');
  set dateTime(String newValue) {
    js_util.setProperty(this, 'dateTime', newValue);
  }
}

@JS()
@staticInterop
class HTMLSpanElement implements HTMLElement {
  external HTMLSpanElement();
}

@JS()
@staticInterop
class HTMLBRElement implements HTMLElement {
  external HTMLBRElement();
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
  external HTMLHyperlinkElementUtils();
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

@JS()
@staticInterop
class HTMLModElement implements HTMLElement {
  external HTMLModElement();
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

@JS()
@staticInterop
class HTMLPictureElement implements HTMLElement {
  external HTMLPictureElement();
}

@JS()
@staticInterop
class HTMLSourceElement implements HTMLElement {
  external HTMLSourceElement();
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

@JS()
@staticInterop
class HTMLImageElement implements HTMLElement {
  external HTMLImageElement();
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

  Future<Object> decode() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', []));

  int get x => js_util.getProperty(this, 'x');
  int get y => js_util.getProperty(this, 'y');
  String get importance => js_util.getProperty(this, 'importance');
  set importance(String newValue) {
    js_util.setProperty(this, 'importance', newValue);
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

@JS()
@staticInterop
class HTMLIFrameElement implements HTMLElement {
  external HTMLIFrameElement();
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

  String get importance => js_util.getProperty(this, 'importance');
  set importance(String newValue) {
    js_util.setProperty(this, 'importance', newValue);
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

@JS()
@staticInterop
class HTMLEmbedElement implements HTMLElement {
  external HTMLEmbedElement();
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

@JS()
@staticInterop
class HTMLObjectElement implements HTMLElement {
  external HTMLObjectElement();
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

  Object setCustomValidity(String error) =>
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

@JS()
@staticInterop
class HTMLParamElement implements HTMLElement {
  external HTMLParamElement();
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
class HTMLVideoElement implements HTMLMediaElement {
  external HTMLVideoElement();
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

  Object cancelVideoFrameCallback(int handle) =>
      js_util.callMethod(this, 'cancelVideoFrameCallback', [handle]);
}

@JS()
@staticInterop
class HTMLAudioElement implements HTMLMediaElement {
  external HTMLAudioElement();
}

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

  external HTMLTrackElement();
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

enum CanPlayTypeResult { empty, maybe, probably }

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

  external HTMLMediaElement();
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
  Object load() => js_util.callMethod(this, 'load', []);

  CanPlayTypeResult canPlayType(String type) =>
      js_util.callMethod(this, 'canPlayType', [type]);

  int get readyState => js_util.getProperty(this, 'readyState');
  bool get seeking => js_util.getProperty(this, 'seeking');
  double get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(double newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  Object fastSeek(double time) => js_util.callMethod(this, 'fastSeek', [time]);

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

  Future<Object> play() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'play', []));

  Object pause() => js_util.callMethod(this, 'pause', []);

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
      js_util.callMethod(this, 'addTextTrack', [kind.name, label, language]);

  MediaStream captureStream() => js_util.callMethod(this, 'captureStream', []);

  String get sinkId => js_util.getProperty(this, 'sinkId');
  Future<Object> setSinkId(String sinkId) =>
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

  Future<Object> setMediaKeys(MediaKeys? mediaKeys) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setMediaKeys', [mediaKeys]));
}

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

  external MediaError();
}

extension PropsMediaError on MediaError {
  int get code => js_util.getProperty(this, 'code');
  String get message => js_util.getProperty(this, 'message');
}

@JS()
@staticInterop
class AudioTrackList implements EventTarget {
  external AudioTrackList();
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

@JS()
@staticInterop
class AudioTrack {
  external AudioTrack();
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

@JS()
@staticInterop
class VideoTrackList implements EventTarget {
  external VideoTrackList();
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

@JS()
@staticInterop
class VideoTrack {
  external VideoTrack();
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

@JS()
@staticInterop
class TextTrackList implements EventTarget {
  external TextTrackList();
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

enum TextTrackMode { disabled, hidden, showing }

enum TextTrackKind { subtitles, captions, descriptions, chapters, metadata }

@JS()
@staticInterop
class TextTrack implements EventTarget {
  external TextTrack();
}

extension PropsTextTrack on TextTrack {
  TextTrackKind get kind =>
      TextTrackKind.values.byName(js_util.getProperty(this, 'kind'));
  String get label => js_util.getProperty(this, 'label');
  String get language => js_util.getProperty(this, 'language');
  String get id => js_util.getProperty(this, 'id');
  String get inBandMetadataTrackDispatchType =>
      js_util.getProperty(this, 'inBandMetadataTrackDispatchType');
  TextTrackMode get mode =>
      TextTrackMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(TextTrackMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }

  TextTrackCueList? get cues => js_util.getProperty(this, 'cues');
  TextTrackCueList? get activeCues => js_util.getProperty(this, 'activeCues');
  Object addCue(TextTrackCue cue) => js_util.callMethod(this, 'addCue', [cue]);

  Object removeCue(TextTrackCue cue) =>
      js_util.callMethod(this, 'removeCue', [cue]);

  EventHandlerNonNull? get oncuechange =>
      js_util.getProperty(this, 'oncuechange');
  set oncuechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncuechange', newValue);
  }

  SourceBuffer? get sourceBuffer => js_util.getProperty(this, 'sourceBuffer');
}

@JS()
@staticInterop
class TextTrackCueList {
  external TextTrackCueList();
}

extension PropsTextTrackCueList on TextTrackCueList {
  int get length => js_util.getProperty(this, 'length');
  TextTrackCue? getCueById(String id) =>
      js_util.callMethod(this, 'getCueById', [id]);
}

@JS()
@staticInterop
class TextTrackCue implements EventTarget {
  external TextTrackCue();
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

  /* double | NaN */ dynamic get endTime =>
      js_util.getProperty(this, 'endTime');
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

@JS()
@staticInterop
class TimeRanges {
  external TimeRanges();
}

extension PropsTimeRanges on TimeRanges {
  int get length => js_util.getProperty(this, 'length');
  double start(int index) => js_util.callMethod(this, 'start', [index]);

  double end(int index) => js_util.callMethod(this, 'end', [index]);
}

@JS()
@staticInterop
class TrackEvent implements Event {
  external TrackEvent(String type, [TrackEventInit? eventInitDict]);
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

@JS()
@staticInterop
class HTMLMapElement implements HTMLElement {
  external HTMLMapElement();
}

extension PropsHTMLMapElement on HTMLMapElement {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  HTMLCollection get areas => js_util.getProperty(this, 'areas');
}

@JS()
@staticInterop
class HTMLAreaElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external HTMLAreaElement();
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

@JS()
@staticInterop
class HTMLTableElement implements HTMLElement {
  external HTMLTableElement();
}

extension PropsHTMLTableElement on HTMLTableElement {
  HTMLTableCaptionElement? get caption => js_util.getProperty(this, 'caption');
  set caption(HTMLTableCaptionElement? newValue) {
    js_util.setProperty(this, 'caption', newValue);
  }

  HTMLTableCaptionElement createCaption() =>
      js_util.callMethod(this, 'createCaption', []);

  Object deleteCaption() => js_util.callMethod(this, 'deleteCaption', []);

  HTMLTableSectionElement? get tHead => js_util.getProperty(this, 'tHead');
  set tHead(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tHead', newValue);
  }

  HTMLTableSectionElement createTHead() =>
      js_util.callMethod(this, 'createTHead', []);

  Object deleteTHead() => js_util.callMethod(this, 'deleteTHead', []);

  HTMLTableSectionElement? get tFoot => js_util.getProperty(this, 'tFoot');
  set tFoot(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tFoot', newValue);
  }

  HTMLTableSectionElement createTFoot() =>
      js_util.callMethod(this, 'createTFoot', []);

  Object deleteTFoot() => js_util.callMethod(this, 'deleteTFoot', []);

  HTMLCollection get tBodies => js_util.getProperty(this, 'tBodies');
  HTMLTableSectionElement createTBody() =>
      js_util.callMethod(this, 'createTBody', []);

  HTMLCollection get rows => js_util.getProperty(this, 'rows');
  HTMLTableRowElement insertRow([int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  Object deleteRow(int index) => js_util.callMethod(this, 'deleteRow', [index]);

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

@JS()
@staticInterop
class HTMLTableCaptionElement implements HTMLElement {
  external HTMLTableCaptionElement();
}

extension PropsHTMLTableCaptionElement on HTMLTableCaptionElement {
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

@JS()
@staticInterop
class HTMLTableColElement implements HTMLElement {
  external HTMLTableColElement();
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

@JS()
@staticInterop
class HTMLTableSectionElement implements HTMLElement {
  external HTMLTableSectionElement();
}

extension PropsHTMLTableSectionElement on HTMLTableSectionElement {
  HTMLCollection get rows => js_util.getProperty(this, 'rows');
  HTMLTableRowElement insertRow([int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  Object deleteRow(int index) => js_util.callMethod(this, 'deleteRow', [index]);

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

@JS()
@staticInterop
class HTMLTableRowElement implements HTMLElement {
  external HTMLTableRowElement();
}

extension PropsHTMLTableRowElement on HTMLTableRowElement {
  int get rowIndex => js_util.getProperty(this, 'rowIndex');
  int get sectionRowIndex => js_util.getProperty(this, 'sectionRowIndex');
  HTMLCollection get cells => js_util.getProperty(this, 'cells');
  HTMLTableCellElement insertCell([int? index = -1]) =>
      js_util.callMethod(this, 'insertCell', [index]);

  Object deleteCell(int index) =>
      js_util.callMethod(this, 'deleteCell', [index]);

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

@JS()
@staticInterop
class HTMLTableCellElement implements HTMLElement {
  external HTMLTableCellElement();
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

@JS()
@staticInterop
class HTMLFormElement implements HTMLElement {
  external HTMLFormElement();
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
  Object submit() => js_util.callMethod(this, 'submit', []);

  Object requestSubmit([HTMLElement? submitter]) =>
      js_util.callMethod(this, 'requestSubmit', [submitter]);

  Object reset() => js_util.callMethod(this, 'reset', []);

  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);
}

@JS()
@staticInterop
class HTMLLabelElement implements HTMLElement {
  external HTMLLabelElement();
}

extension PropsHTMLLabelElement on HTMLLabelElement {
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get htmlFor => js_util.getProperty(this, 'htmlFor');
  set htmlFor(String newValue) {
    js_util.setProperty(this, 'htmlFor', newValue);
  }

  HTMLElement? get control => js_util.getProperty(this, 'control');
}

@JS()
@staticInterop
class HTMLInputElement implements HTMLElement {
  external HTMLInputElement();
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

  @JS('required')
  @staticInterop
  bool get mRequired => js_util.getProperty(this, 'required');
  set mRequired(bool newValue) {
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

  Object stepUp([int? n = 1]) => js_util.callMethod(this, 'stepUp', [n]);

  Object stepDown([int? n = 1]) => js_util.callMethod(this, 'stepDown', [n]);

  bool get willValidate => js_util.getProperty(this, 'willValidate');
  ValidityState get validity => js_util.getProperty(this, 'validity');
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList? get labels => js_util.getProperty(this, 'labels');
  Object select() => js_util.callMethod(this, 'select', []);

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

  Object setRangeText(
          [String? replacement,
          int? start,
          int? end,
          SelectionMode? selectionMode = SelectionMode.preserve]) =>
      js_util.callMethod(
          this, 'setRangeText', [replacement, start, end, selectionMode?.name]);

  Object setSelectionRange(int start, int end, [String? direction]) =>
      js_util.callMethod(this, 'setSelectionRange', [start, end, direction]);

  Object showPicker() => js_util.callMethod(this, 'showPicker', []);

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

@JS()
@staticInterop
class HTMLButtonElement implements HTMLElement {
  external HTMLButtonElement();
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

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

@JS()
@staticInterop
class HTMLSelectElement implements HTMLElement {
  external HTMLSelectElement();
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

  @JS('required')
  @staticInterop
  bool get mRequired => js_util.getProperty(this, 'required');
  set mRequired(bool newValue) {
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

  Object add(dynamic element, [dynamic before]) =>
      js_util.callMethod(this, 'add', [element, before]);

  Object remove([int? index]) => js_util.callMethod(this, 'remove', [index]);

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

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

@JS()
@staticInterop
class HTMLDataListElement implements HTMLElement {
  external HTMLDataListElement();
}

extension PropsHTMLDataListElement on HTMLDataListElement {
  HTMLCollection get options => js_util.getProperty(this, 'options');
}

@JS()
@staticInterop
class HTMLOptGroupElement implements HTMLElement {
  external HTMLOptGroupElement();
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

@JS()
@staticInterop
class HTMLOptionElement implements HTMLElement {
  external HTMLOptionElement();
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

@JS()
@staticInterop
class HTMLTextAreaElement implements HTMLElement {
  external HTMLTextAreaElement();
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

  @JS('required')
  @staticInterop
  bool get mRequired => js_util.getProperty(this, 'required');
  set mRequired(bool newValue) {
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

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
  Object select() => js_util.callMethod(this, 'select', []);

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

  Object setRangeText(
          [String? replacement,
          int? start,
          int? end,
          SelectionMode? selectionMode = SelectionMode.preserve]) =>
      js_util.callMethod(
          this, 'setRangeText', [replacement, start, end, selectionMode?.name]);

  Object setSelectionRange(int start, int end, [String? direction]) =>
      js_util.callMethod(this, 'setSelectionRange', [start, end, direction]);
}

@JS()
@staticInterop
class HTMLOutputElement implements HTMLElement {
  external HTMLOutputElement();
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

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  NodeList get labels => js_util.getProperty(this, 'labels');
}

@JS()
@staticInterop
class HTMLProgressElement implements HTMLElement {
  external HTMLProgressElement();
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

@JS()
@staticInterop
class HTMLMeterElement implements HTMLElement {
  external HTMLMeterElement();
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

@JS()
@staticInterop
class HTMLFieldSetElement implements HTMLElement {
  external HTMLFieldSetElement();
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

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);
}

@JS()
@staticInterop
class HTMLLegendElement implements HTMLElement {
  external HTMLLegendElement();
}

extension PropsHTMLLegendElement on HTMLLegendElement {
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

enum SelectionMode { select, start, end, preserve }

@JS()
@staticInterop
class ValidityState {
  external ValidityState();
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

@JS()
@staticInterop
class SubmitEvent implements Event {
  external SubmitEvent(String type, [SubmitEventInit? eventInitDict]);
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

@JS()
@staticInterop
class FormDataEvent implements Event {
  external FormDataEvent(String type, FormDataEventInit eventInitDict);
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

@JS()
@staticInterop
class HTMLDetailsElement implements HTMLElement {
  external HTMLDetailsElement();
}

extension PropsHTMLDetailsElement on HTMLDetailsElement {
  bool get open => js_util.getProperty(this, 'open');
  set open(bool newValue) {
    js_util.setProperty(this, 'open', newValue);
  }
}

@JS()
@staticInterop
class HTMLDialogElement implements HTMLElement {
  external HTMLDialogElement();
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

  @JS('show')
  @staticInterop
  Object mShow() => js_util.callMethod(this, 'show', []);

  Object showModal() => js_util.callMethod(this, 'showModal', []);

  Object close([String? returnValue]) =>
      js_util.callMethod(this, 'close', [returnValue]);
}

@JS()
@staticInterop
class HTMLScriptElement implements HTMLElement {
  external HTMLScriptElement();
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

  @JS('async')
  @staticInterop
  bool get mAsync => js_util.getProperty(this, 'async');
  set mAsync(bool newValue) {
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

  static bool supports(String type) =>
      js_util.callMethod(HTMLScriptElement, 'supports', [type]);

  String get importance => js_util.getProperty(this, 'importance');
  set importance(String newValue) {
    js_util.setProperty(this, 'importance', newValue);
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

@JS()
@staticInterop
class HTMLTemplateElement implements HTMLElement {
  external HTMLTemplateElement();
}

extension PropsHTMLTemplateElement on HTMLTemplateElement {
  DocumentFragment get content => js_util.getProperty(this, 'content');
}

@JS()
@staticInterop
class HTMLSlotElement implements HTMLElement {
  external HTMLSlotElement();
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

  Object assign([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
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

@JS()
@staticInterop
class HTMLCanvasElement implements HTMLElement {
  external HTMLCanvasElement();
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

  Object toBlob(BlobCallback callback,
          [String? type = 'image/png', dynamic quality]) =>
      js_util
          .callMethod(this, 'toBlob', [allowInterop(callback), type, quality]);

  OffscreenCanvas transferControlToOffscreen() =>
      js_util.callMethod(this, 'transferControlToOffscreen', []);

  MediaStream captureStream([double? frameRequestRate]) =>
      js_util.callMethod(this, 'captureStream', [frameRequestRate]);
}

enum PredefinedColorSpace { srgb, displayP3 }

enum CanvasFillRule { nonzero, evenodd }

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
          alpha: alpha,
          desynchronized: desynchronized,
          colorSpace: colorSpace?.name,
          willReadFrequently: willReadFrequently);
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

  PredefinedColorSpace get colorSpace => PredefinedColorSpace.values
      .byName(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.name);
  }

  bool get willReadFrequently =>
      js_util.getProperty(this, 'willReadFrequently');
  set willReadFrequently(bool newValue) {
    js_util.setProperty(this, 'willReadFrequently', newValue);
  }
}

enum ImageSmoothingQuality { low, medium, high }

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
  external CanvasRenderingContext2D();
}

extension PropsCanvasRenderingContext2D on CanvasRenderingContext2D {
  HTMLCanvasElement get canvas => js_util.getProperty(this, 'canvas');
  CanvasRenderingContext2DSettings getContextAttributes() =>
      js_util.callMethod(this, 'getContextAttributes', []);
}

@JS()
@staticInterop
class CanvasState {
  external CanvasState();
}

extension PropsCanvasState on CanvasState {
  Object save() => js_util.callMethod(this, 'save', []);

  Object restore() => js_util.callMethod(this, 'restore', []);

  Object reset() => js_util.callMethod(this, 'reset', []);

  bool isContextLost() => js_util.callMethod(this, 'isContextLost', []);
}

@JS()
@staticInterop
class CanvasTransform {
  external CanvasTransform();
}

extension PropsCanvasTransform on CanvasTransform {
  Object scale(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'scale', [x, y]);

  Object rotate(/* double | NaN */ dynamic angle) =>
      js_util.callMethod(this, 'rotate', [angle]);

  Object translate(
          /* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'translate', [x, y]);

  Object transform(
          /* double | NaN */ dynamic a,
          /* double | NaN */ dynamic b,
          /* double | NaN */ dynamic c,
          /* double | NaN */ dynamic d,
          /* double | NaN */ dynamic e,
          /* double | NaN */ dynamic f) =>
      js_util.callMethod(this, 'transform', [a, b, c, d, e, f]);

  DOMMatrix getTransform() => js_util.callMethod(this, 'getTransform', []);

  Object setTransform(
          [/* double | NaN */ dynamic a,
          /* double | NaN */ dynamic b,
          /* double | NaN */ dynamic c,
          /* double | NaN */ dynamic d,
          /* double | NaN */ dynamic e,
          /* double | NaN */ dynamic f]) =>
      js_util.callMethod(this, 'setTransform', [a, b, c, d, e, f]);

  Object resetTransform() => js_util.callMethod(this, 'resetTransform', []);
}

@JS()
@staticInterop
class CanvasCompositing {
  external CanvasCompositing();
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
  external CanvasImageSmoothing();
}

extension PropsCanvasImageSmoothing on CanvasImageSmoothing {
  bool get imageSmoothingEnabled =>
      js_util.getProperty(this, 'imageSmoothingEnabled');
  set imageSmoothingEnabled(bool newValue) {
    js_util.setProperty(this, 'imageSmoothingEnabled', newValue);
  }

  ImageSmoothingQuality get imageSmoothingQuality =>
      ImageSmoothingQuality.values
          .byName(js_util.getProperty(this, 'imageSmoothingQuality'));
  set imageSmoothingQuality(ImageSmoothingQuality newValue) {
    js_util.setProperty(this, 'imageSmoothingQuality', newValue.name);
  }
}

@JS()
@staticInterop
class CanvasFillStrokeStyles {
  external CanvasFillStrokeStyles();
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
  external CanvasShadowStyles();
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
  external CanvasFilters();
}

extension PropsCanvasFilters on CanvasFilters {
  dynamic get filter => js_util.getProperty(this, 'filter');
  set filter(dynamic newValue) {
    js_util.setProperty(this, 'filter', newValue);
  }
}

@JS()
@staticInterop
class CanvasFilter {
  external CanvasFilter([dynamic filters]);
}

@JS()
@staticInterop
class CanvasRect {
  external CanvasRect();
}

extension PropsCanvasRect on CanvasRect {
  Object clearRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'clearRect', [x, y, w, h]);

  Object fillRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'fillRect', [x, y, w, h]);

  Object strokeRect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'strokeRect', [x, y, w, h]);
}

@JS()
@staticInterop
class CanvasDrawPath {
  external CanvasDrawPath();
}

extension PropsCanvasDrawPath on CanvasDrawPath {
  Object beginPath() => js_util.callMethod(this, 'beginPath', []);

  Object fill(
          [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'fill', [path, fillRule?.name]);

  Object stroke([Path2D? path]) => js_util.callMethod(this, 'stroke', [path]);

  Object clip(
          [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'clip', [path, fillRule?.name]);

  bool isPointInPath(Path2D path, /* double | NaN */ dynamic x,
          [/* double | NaN */ dynamic y,
          CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'isPointInPath', [path, x, y, fillRule?.name]);

  bool isPointInStroke(Path2D path,
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'isPointInStroke', [path, x, y]);
}

@JS()
@staticInterop
class CanvasUserInterface {
  external CanvasUserInterface();
}

extension PropsCanvasUserInterface on CanvasUserInterface {
  Object drawFocusIfNeeded([Path2D? path, Element? element]) =>
      js_util.callMethod(this, 'drawFocusIfNeeded', [path, element]);

  Object scrollPathIntoView([Path2D? path]) =>
      js_util.callMethod(this, 'scrollPathIntoView', [path]);
}

@JS()
@staticInterop
class CanvasText {
  external CanvasText();
}

extension PropsCanvasText on CanvasText {
  Object fillText(String text, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          [/* double | NaN */ dynamic maxWidth]) =>
      js_util.callMethod(this, 'fillText', [text, x, y, maxWidth]);

  Object strokeText(String text, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          [/* double | NaN */ dynamic maxWidth]) =>
      js_util.callMethod(this, 'strokeText', [text, x, y, maxWidth]);

  TextMetrics measureText(String text) =>
      js_util.callMethod(this, 'measureText', [text]);
}

@JS()
@staticInterop
class CanvasDrawImage {
  external CanvasDrawImage();
}

extension PropsCanvasDrawImage on CanvasDrawImage {
  Object drawImage(dynamic image, /* double | NaN */ dynamic sx,
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
  external CanvasImageData();
}

extension PropsCanvasImageData on CanvasImageData {
  ImageData createImageData([int? sw, int? sh, ImageDataSettings? settings]) =>
      js_util.callMethod(this, 'createImageData', [sw, sh, settings]);

  ImageData getImageData(int sx, int sy, int sw, int sh,
          [ImageDataSettings? settings]) =>
      js_util.callMethod(this, 'getImageData', [sx, sy, sw, sh, settings]);

  Object putImageData(ImageData imagedata, int dx,
          [int? dy,
          int? dirtyX,
          int? dirtyY,
          int? dirtyWidth,
          int? dirtyHeight]) =>
      js_util.callMethod(this, 'putImageData',
          [imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight]);
}

enum CanvasLineCap { butt, round, square }

enum CanvasLineJoin { round, bevel, miter }

enum CanvasTextAlign { start, end, left, right, center }

enum CanvasTextBaseline {
  top,
  hanging,
  middle,
  alphabetic,
  ideographic,
  bottom
}

enum CanvasDirection { ltr, rtl, inherit }

enum CanvasFontKerning { auto, normal, none }

enum CanvasFontStretch {
  ultraCondensed,
  extraCondensed,
  condensed,
  semiCondensed,
  normal,
  semiExpanded,
  expanded,
  extraExpanded,
  ultraExpanded
}

enum CanvasFontVariantCaps {
  normal,
  smallCaps,
  allSmallCaps,
  petiteCaps,
  allPetiteCaps,
  unicase,
  titlingCaps
}

enum CanvasTextRendering {
  auto,
  optimizeSpeed,
  optimizeLegibility,
  geometricPrecision
}

@JS()
@staticInterop
class CanvasPathDrawingStyles {
  external CanvasPathDrawingStyles();
}

extension PropsCanvasPathDrawingStyles on CanvasPathDrawingStyles {
  /* double | NaN */ dynamic get lineWidth =>
      js_util.getProperty(this, 'lineWidth');
  set lineWidth(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'lineWidth', newValue);
  }

  CanvasLineCap get lineCap =>
      CanvasLineCap.values.byName(js_util.getProperty(this, 'lineCap'));
  set lineCap(CanvasLineCap newValue) {
    js_util.setProperty(this, 'lineCap', newValue.name);
  }

  CanvasLineJoin get lineJoin =>
      CanvasLineJoin.values.byName(js_util.getProperty(this, 'lineJoin'));
  set lineJoin(CanvasLineJoin newValue) {
    js_util.setProperty(this, 'lineJoin', newValue.name);
  }

  /* double | NaN */ dynamic get miterLimit =>
      js_util.getProperty(this, 'miterLimit');
  set miterLimit(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'miterLimit', newValue);
  }

  Object setLineDash(Iterable< /* double | NaN */ dynamic> segments) =>
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
  external CanvasTextDrawingStyles();
}

extension PropsCanvasTextDrawingStyles on CanvasTextDrawingStyles {
  String get font => js_util.getProperty(this, 'font');
  set font(String newValue) {
    js_util.setProperty(this, 'font', newValue);
  }

  CanvasTextAlign get textAlign =>
      CanvasTextAlign.values.byName(js_util.getProperty(this, 'textAlign'));
  set textAlign(CanvasTextAlign newValue) {
    js_util.setProperty(this, 'textAlign', newValue.name);
  }

  CanvasTextBaseline get textBaseline => CanvasTextBaseline.values
      .byName(js_util.getProperty(this, 'textBaseline'));
  set textBaseline(CanvasTextBaseline newValue) {
    js_util.setProperty(this, 'textBaseline', newValue.name);
  }

  CanvasDirection get direction =>
      CanvasDirection.values.byName(js_util.getProperty(this, 'direction'));
  set direction(CanvasDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.name);
  }

  String get letterSpacing => js_util.getProperty(this, 'letterSpacing');
  set letterSpacing(String newValue) {
    js_util.setProperty(this, 'letterSpacing', newValue);
  }

  CanvasFontKerning get fontKerning =>
      CanvasFontKerning.values.byName(js_util.getProperty(this, 'fontKerning'));
  set fontKerning(CanvasFontKerning newValue) {
    js_util.setProperty(this, 'fontKerning', newValue.name);
  }

  CanvasFontStretch get fontStretch =>
      CanvasFontStretch.values.byName(js_util.getProperty(this, 'fontStretch'));
  set fontStretch(CanvasFontStretch newValue) {
    js_util.setProperty(this, 'fontStretch', newValue.name);
  }

  CanvasFontVariantCaps get fontVariantCaps => CanvasFontVariantCaps.values
      .byName(js_util.getProperty(this, 'fontVariantCaps'));
  set fontVariantCaps(CanvasFontVariantCaps newValue) {
    js_util.setProperty(this, 'fontVariantCaps', newValue.name);
  }

  CanvasTextRendering get textRendering => CanvasTextRendering.values
      .byName(js_util.getProperty(this, 'textRendering'));
  set textRendering(CanvasTextRendering newValue) {
    js_util.setProperty(this, 'textRendering', newValue.name);
  }

  String get wordSpacing => js_util.getProperty(this, 'wordSpacing');
  set wordSpacing(String newValue) {
    js_util.setProperty(this, 'wordSpacing', newValue);
  }
}

@JS()
@staticInterop
class CanvasPath {
  external CanvasPath();
}

extension PropsCanvasPath on CanvasPath {
  Object closePath() => js_util.callMethod(this, 'closePath', []);

  Object moveTo(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'moveTo', [x, y]);

  Object lineTo(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'lineTo', [x, y]);

  Object quadraticCurveTo(
          /* double | NaN */ dynamic cpx,
          /* double | NaN */ dynamic cpy,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'quadraticCurveTo', [cpx, cpy, x, y]);

  Object bezierCurveTo(
          /* double | NaN */ dynamic cp1x,
          /* double | NaN */ dynamic cp1y,
          /* double | NaN */ dynamic cp2x,
          /* double | NaN */ dynamic cp2y,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'bezierCurveTo', [cp1x, cp1y, cp2x, cp2y, x, y]);

  Object arcTo(
          /* double | NaN */ dynamic x1,
          /* double | NaN */ dynamic y1,
          /* double | NaN */ dynamic x2,
          /* double | NaN */ dynamic y2,
          /* double | NaN */ dynamic radius) =>
      js_util.callMethod(this, 'arcTo', [x1, y1, x2, y2, radius]);

  Object rect(/* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w, /* double | NaN */ dynamic h) =>
      js_util.callMethod(this, 'rect', [x, y, w, h]);

  Object roundRect(
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic w,
          /* double | NaN */ dynamic h,
          dynamic radii) =>
      js_util.callMethod(this, 'roundRect', [x, y, w, h, radii]);

  Object arc(
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic radius,
          /* double | NaN */ dynamic startAngle,
          /* double | NaN */ dynamic endAngle,
          [bool? counterclockwise = false]) =>
      js_util.callMethod(
          this, 'arc', [x, y, radius, startAngle, endAngle, counterclockwise]);

  Object ellipse(
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

@JS()
@staticInterop
class CanvasGradient {
  external CanvasGradient();
}

extension PropsCanvasGradient on CanvasGradient {
  Object addColorStop(double offset, String color) =>
      js_util.callMethod(this, 'addColorStop', [offset, color]);
}

@JS()
@staticInterop
class CanvasPattern {
  external CanvasPattern();
}

extension PropsCanvasPattern on CanvasPattern {
  Object setTransform([DOMMatrix2DInit? transform]) =>
      js_util.callMethod(this, 'setTransform', [transform]);
}

@JS()
@staticInterop
class TextMetrics {
  external TextMetrics();
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
  external factory ImageDataSettings._({required String colorSpace});

  factory ImageDataSettings({required PredefinedColorSpace colorSpace}) =>
      ImageDataSettings._(colorSpace: colorSpace.name);
}

extension PropsImageDataSettings on ImageDataSettings {
  PredefinedColorSpace get colorSpace => PredefinedColorSpace.values
      .byName(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.name);
  }
}

@JS()
@staticInterop
class ImageData {
  external ImageData(Uint8ClampedList data, int sw,
      [int? sh, ImageDataSettings? settings]);
}

extension PropsImageData on ImageData {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  Uint8ClampedList get data => js_util.getProperty(this, 'data');
  PredefinedColorSpace get colorSpace => PredefinedColorSpace.values
      .byName(js_util.getProperty(this, 'colorSpace'));
}

@JS()
@staticInterop
class Path2D implements CanvasPath {
  external Path2D([dynamic path]);
}

extension PropsPath2D on Path2D {
  Object addPath(Path2D path, [DOMMatrix2DInit? transform]) =>
      js_util.callMethod(this, 'addPath', [path, transform]);
}

@JS()
@staticInterop
class ImageBitmapRenderingContext {
  external ImageBitmapRenderingContext();
}

extension PropsImageBitmapRenderingContext on ImageBitmapRenderingContext {
  dynamic get canvas => js_util.getProperty(this, 'canvas');
  Object transferFromImageBitmap(ImageBitmap? bitmap) =>
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

  /* double | NaN */ dynamic get quality =>
      js_util.getProperty(this, 'quality');
  set quality(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'quality', newValue);
  }
}

enum OffscreenRenderingContextId {
  value2d,
  bitmaprenderer,
  webgl,
  webgl2,
  webgpu
}

@JS()
@staticInterop
class OffscreenCanvas implements EventTarget {
  external OffscreenCanvas(int width, int height);
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
      js_util.callMethod(this, 'getContext', [contextId.name, options]);

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
  external OffscreenCanvasRenderingContext2D();
}

extension PropsOffscreenCanvasRenderingContext2D
    on OffscreenCanvasRenderingContext2D {
  Object commit() => js_util.callMethod(this, 'commit', []);

  OffscreenCanvas get canvas => js_util.getProperty(this, 'canvas');
}

@JS()
@staticInterop
class CustomElementRegistry {
  external CustomElementRegistry();
}

extension PropsCustomElementRegistry on CustomElementRegistry {
  Object define(String name, CustomElementConstructor constructor,
          [ElementDefinitionOptions? options]) =>
      js_util.callMethod(
          this, 'define', [name, allowInterop(constructor), options]);

  @JS('get')
  @staticInterop
  dynamic mGet(String name) => js_util.callMethod(this, 'get', [name]);

  Future<CustomElementConstructor> whenDefined(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'whenDefined', [name]));

  Object upgrade(Node root) => js_util.callMethod(this, 'upgrade', [root]);
}

@anonymous
@JS()
@staticInterop
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions({required String mExtends});
}

extension PropsElementDefinitionOptions on ElementDefinitionOptions {
  @JS('extends')
  @staticInterop
  String get mExtends => js_util.getProperty(this, 'extends');
  set mExtends(String newValue) {
    js_util.setProperty(this, 'extends', newValue);
  }
}

@JS()
@staticInterop
class ElementInternals implements ARIAMixin {
  external ElementInternals();
}

extension PropsElementInternals on ElementInternals {
  ShadowRoot? get shadowRoot => js_util.getProperty(this, 'shadowRoot');
  Object setFormValue(dynamic value, [dynamic state]) =>
      js_util.callMethod(this, 'setFormValue', [value, state]);

  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  Object setValidity(
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
  external factory FocusOptions({bool? preventScroll = false});
}

extension PropsFocusOptions on FocusOptions {
  bool get preventScroll => js_util.getProperty(this, 'preventScroll');
  set preventScroll(bool newValue) {
    js_util.setProperty(this, 'preventScroll', newValue);
  }
}

@JS()
@staticInterop
class ElementContentEditable {
  external ElementContentEditable();
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

@JS()
@staticInterop
class DataTransfer {
  external DataTransfer();
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
  Object setDragImage(Element image, int x, int y) =>
      js_util.callMethod(this, 'setDragImage', [image, x, y]);

  Iterable<String> get types => js_util.getProperty(this, 'types');
  String getData(String format) =>
      js_util.callMethod(this, 'getData', [format]);

  Object setData(String format, String data) =>
      js_util.callMethod(this, 'setData', [format, data]);

  Object clearData([String? format]) =>
      js_util.callMethod(this, 'clearData', [format]);

  FileList get files => js_util.getProperty(this, 'files');
}

@JS()
@staticInterop
class DataTransferItemList {
  external DataTransferItemList();
}

extension PropsDataTransferItemList on DataTransferItemList {
  int get length => js_util.getProperty(this, 'length');
  DataTransferItem? add([String? data, String? type]) =>
      js_util.callMethod(this, 'add', [data, type]);

  Object remove(int index) => js_util.callMethod(this, 'remove', [index]);

  Object clear() => js_util.callMethod(this, 'clear', []);
}

@JS()
@staticInterop
class DataTransferItem {
  external DataTransferItem();
}

extension PropsDataTransferItem on DataTransferItem {
  String get kind => js_util.getProperty(this, 'kind');
  String get type => js_util.getProperty(this, 'type');
  Object getAsString(FunctionStringCallback? callback) => js_util.callMethod(
      this, 'getAsString', [callback == null ? null : allowInterop(callback)]);

  File? getAsFile() => js_util.callMethod(this, 'getAsFile', []);

  FileSystemEntry? webkitGetAsEntry() =>
      js_util.callMethod(this, 'webkitGetAsEntry', []);

  Future<FileSystemHandle> getAsFileSystemHandle() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getAsFileSystemHandle', []));
}

@JS()
@staticInterop
class DragEvent implements MouseEvent {
  external DragEvent(String type, [DragEventInit? eventInitDict]);
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
  external Window();
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

  Object close() => js_util.callMethod(this, 'close', []);

  bool get closed => js_util.getProperty(this, 'closed');
  Object stop() => js_util.callMethod(this, 'stop', []);

  Object focus() => js_util.callMethod(this, 'focus', []);

  Object blur() => js_util.callMethod(this, 'blur', []);

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
  Object alert([String? message]) =>
      js_util.callMethod(this, 'alert', [message]);

  bool confirm([String? message = '']) =>
      js_util.callMethod(this, 'confirm', [message]);

  String? prompt([String? message = '', String? mDefault = '']) =>
      js_util.callMethod(this, 'prompt', [message, mDefault]);

  Object print() => js_util.callMethod(this, 'print', []);

  Object postMessage(dynamic message,
          [String? targetOrigin, Iterable<dynamic>? transfer = const []]) =>
      js_util
          .callMethod(this, 'postMessage', [message, targetOrigin, transfer]);

  CookieStore get cookieStore => js_util.getProperty(this, 'cookieStore');
  int requestIdleCallback(IdleRequestCallback callback,
          [IdleRequestOptions? options]) =>
      js_util.callMethod(
          this, 'requestIdleCallback', [allowInterop(callback), options]);

  Object cancelIdleCallback(int handle) =>
      js_util.callMethod(this, 'cancelIdleCallback', [handle]);

  Selection? getSelection() => js_util.callMethod(this, 'getSelection', []);

  AttributionReporting get attributionReporting =>
      js_util.getProperty(this, 'attributionReporting');
  MediaQueryList matchMedia(String query) =>
      js_util.callMethod(this, 'matchMedia', [query]);

  Screen get screen => js_util.getProperty(this, 'screen');
  Object moveTo(int x, int y) => js_util.callMethod(this, 'moveTo', [x, y]);

  Object moveBy(int x, int y) => js_util.callMethod(this, 'moveBy', [x, y]);

  Object resizeTo(int width, int height) =>
      js_util.callMethod(this, 'resizeTo', [width, height]);

  Object resizeBy(int x, int y) => js_util.callMethod(this, 'resizeBy', [x, y]);

  int get innerWidth => js_util.getProperty(this, 'innerWidth');
  int get innerHeight => js_util.getProperty(this, 'innerHeight');
  double get scrollX => js_util.getProperty(this, 'scrollX');
  double get pageXOffset => js_util.getProperty(this, 'pageXOffset');
  double get scrollY => js_util.getProperty(this, 'scrollY');
  double get pageYOffset => js_util.getProperty(this, 'pageYOffset');
  Object scroll([/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scroll', [x, y]);

  Object scrollTo(
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scrollTo', [x, y]);

  Object scrollBy(
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
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

  VisualViewport get visualViewport =>
      js_util.getProperty(this, 'visualViewport');
  dynamic get event => js_util.getProperty(this, 'event');
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

  AppHistory get appHistory => js_util.getProperty(this, 'appHistory');
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

  Object navigate(SpatialNavigationDirection dir) =>
      js_util.callMethod(this, 'navigate', [dir.name]);

  Object captureEvents() => js_util.callMethod(this, 'captureEvents', []);

  Object releaseEvents() => js_util.callMethod(this, 'releaseEvents', []);

  @JS('external')
  @staticInterop
  External get mExternal => js_util.getProperty(this, 'external');
  CSSStyleDeclaration getComputedStyle(Element elt, [String? pseudoElt]) =>
      js_util.callMethod(this, 'getComputedStyle', [elt, pseudoElt]);
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

@JS()
@staticInterop
class BarProp {
  external BarProp();
}

extension PropsBarProp on BarProp {
  bool get visible => js_util.getProperty(this, 'visible');
}

enum ScrollRestoration { auto, manual }

@JS()
@staticInterop
class History {
  external History();
}

extension PropsHistory on History {
  int get length => js_util.getProperty(this, 'length');
  ScrollRestoration get scrollRestoration => ScrollRestoration.values
      .byName(js_util.getProperty(this, 'scrollRestoration'));
  set scrollRestoration(ScrollRestoration newValue) {
    js_util.setProperty(this, 'scrollRestoration', newValue.name);
  }

  dynamic get state => js_util.getProperty(this, 'state');
  Object go([int? delta = 0]) => js_util.callMethod(this, 'go', [delta]);

  Object back() => js_util.callMethod(this, 'back', []);

  Object forward() => js_util.callMethod(this, 'forward', []);

  Object pushState(dynamic data, String unused, [String? url]) =>
      js_util.callMethod(this, 'pushState', [data, unused, url]);

  Object replaceState(dynamic data, String unused, [String? url]) =>
      js_util.callMethod(this, 'replaceState', [data, unused, url]);
}

@JS()
@staticInterop
class Location {
  external Location();
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

  Object assign(String url) => js_util.callMethod(this, 'assign', [url]);

  Object replace(String url) => js_util.callMethod(this, 'replace', [url]);

  Object reload() => js_util.callMethod(this, 'reload', []);

  DOMStringList get ancestorOrigins =>
      js_util.getProperty(this, 'ancestorOrigins');
}

@JS()
@staticInterop
class PopStateEvent implements Event {
  external PopStateEvent(String type, [PopStateEventInit? eventInitDict]);
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

@JS()
@staticInterop
class HashChangeEvent implements Event {
  external HashChangeEvent(String type, [HashChangeEventInit? eventInitDict]);
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

@JS()
@staticInterop
class PageTransitionEvent implements Event {
  external PageTransitionEvent(String type,
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

@JS()
@staticInterop
class BeforeUnloadEvent implements Event {
  external BeforeUnloadEvent();
}

extension PropsBeforeUnloadEvent on BeforeUnloadEvent {
  String get returnValue => js_util.getProperty(this, 'returnValue');
  set returnValue(String newValue) {
    js_util.setProperty(this, 'returnValue', newValue);
  }
}

@JS()
@staticInterop
class ErrorEvent implements Event {
  external ErrorEvent(String type, [ErrorEventInit? eventInitDict]);
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

@JS()
@staticInterop
class PromiseRejectionEvent implements Event {
  external PromiseRejectionEvent(
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

@JS()
@staticInterop
class GlobalEventHandlers {
  external GlobalEventHandlers();
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

  EventHandlerNonNull? get onpointerover =>
      js_util.getProperty(this, 'onpointerover');
  set onpointerover(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerover', newValue);
  }

  EventHandlerNonNull? get onpointerout =>
      js_util.getProperty(this, 'onpointerout');
  set onpointerout(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerout', newValue);
  }

  EventHandlerNonNull? get onpointerenter =>
      js_util.getProperty(this, 'onpointerenter');
  set onpointerenter(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerenter', newValue);
  }

  EventHandlerNonNull? get onpointerleave =>
      js_util.getProperty(this, 'onpointerleave');
  set onpointerleave(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerleave', newValue);
  }

  EventHandlerNonNull? get onbeforexrselect =>
      js_util.getProperty(this, 'onbeforexrselect');
  set onbeforexrselect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforexrselect', newValue);
  }
}

@JS()
@staticInterop
class WindowEventHandlers {
  external WindowEventHandlers();
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
  external DocumentAndElementEventHandlers();
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
  external WindowOrWorkerGlobalScope();
}

extension PropsWindowOrWorkerGlobalScope on WindowOrWorkerGlobalScope {
  String get origin => js_util.getProperty(this, 'origin');
  bool get isSecureContext => js_util.getProperty(this, 'isSecureContext');
  bool get crossOriginIsolated =>
      js_util.getProperty(this, 'crossOriginIsolated');
  Object reportError(dynamic e) => js_util.callMethod(this, 'reportError', [e]);

  String btoa(String data) => js_util.callMethod(this, 'btoa', [data]);

  String atob(String data) => js_util.callMethod(this, 'atob', [data]);

  int setTimeout(dynamic handler,
          [int? timeout = 0,
          dynamic arguments1,
          dynamic arguments2,
          dynamic arguments3]) =>
      js_util.callMethod(this, 'setTimeout',
          [handler, timeout, arguments1, arguments2, arguments3]);

  Object clearTimeout([int? id = 0]) =>
      js_util.callMethod(this, 'clearTimeout', [id]);

  int setInterval(dynamic handler,
          [int? timeout = 0,
          dynamic arguments1,
          dynamic arguments2,
          dynamic arguments3]) =>
      js_util.callMethod(this, 'setInterval',
          [handler, timeout, arguments1, arguments2, arguments3]);

  Object clearInterval([int? id = 0]) =>
      js_util.callMethod(this, 'clearInterval', [id]);

  Object queueMicrotask(VoidFunction callback) =>
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
  CacheStorage get caches => js_util.getProperty(this, 'caches');
  Future<Response> fetch(dynamic input, [RequestInit? init]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'fetch', [input, init]));

  Crypto get crypto => js_util.getProperty(this, 'crypto');
  IDBFactory get indexedDB => js_util.getProperty(this, 'indexedDB');
  Iterable<String> get originPolicyIds =>
      js_util.getProperty(this, 'originPolicyIds');
}

@JS()
@staticInterop
class DOMParser {
  external DOMParser();
}

extension PropsDOMParser on DOMParser {
  Document parseFromString(String string, DOMParserSupportedType type) =>
      js_util.callMethod(this, 'parseFromString', [string, type.name]);
}

enum DOMParserSupportedType {
  textHtml,
  textXml,
  applicationXml,
  applicationXhtmlxml,
  imageSvgxml
}

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
        NavigatorFonts,
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
  external Navigator();
}

extension PropsNavigator on Navigator {
  MediaCapabilities get mediaCapabilities =>
      js_util.getProperty(this, 'mediaCapabilities');
  Permissions get permissions => js_util.getProperty(this, 'permissions');
  MediaSession get mediaSession => js_util.getProperty(this, 'mediaSession');
  Future<Object> share([ShareData? data]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'share', [data]));

  bool canShare([ShareData? data]) =>
      js_util.callMethod(this, 'canShare', [data]);

  AutoplayPolicy getAutoplayPolicy(AutoplayPolicyMediaType type) =>
      js_util.callMethod(this, 'getAutoplayPolicy', [type.name]);

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
  ServiceWorkerContainer get serviceWorker =>
      js_util.getProperty(this, 'serviceWorker');
  int get maxTouchPoints => js_util.getProperty(this, 'maxTouchPoints');
  Future<Object> setClientBadge([int? contents]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setClientBadge', [contents]));

  Future<Object> clearClientBadge() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'clearClientBadge', []));

  MediaDevices get mediaDevices => js_util.getProperty(this, 'mediaDevices');
  Object getUserMedia(
          MediaStreamConstraints constraints,
          NavigatorUserMediaSuccessCallback successCallback,
          NavigatorUserMediaErrorCallback errorCallback) =>
      js_util.callMethod(this, 'getUserMedia', [
        constraints,
        allowInterop(successCallback),
        allowInterop(errorCallback)
      ]);

  XRSystem get xr => js_util.getProperty(this, 'xr');
  Future<Iterable<RelatedApplication>> getInstalledRelatedApps() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getInstalledRelatedApps', []));

  Serial get serial => js_util.getProperty(this, 'serial');
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
  external NavigatorID();
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
  external NavigatorLanguage();
}

extension PropsNavigatorLanguage on NavigatorLanguage {
  String get language => js_util.getProperty(this, 'language');
  Iterable<String> get languages => js_util.getProperty(this, 'languages');
}

@JS()
@staticInterop
class NavigatorOnLine {
  external NavigatorOnLine();
}

extension PropsNavigatorOnLine on NavigatorOnLine {
  bool get onLine => js_util.getProperty(this, 'onLine');
}

@JS()
@staticInterop
class NavigatorContentUtils {
  external NavigatorContentUtils();
}

extension PropsNavigatorContentUtils on NavigatorContentUtils {
  Object registerProtocolHandler(String scheme, String url) =>
      js_util.callMethod(this, 'registerProtocolHandler', [scheme, url]);

  Object unregisterProtocolHandler(String scheme, String url) =>
      js_util.callMethod(this, 'unregisterProtocolHandler', [scheme, url]);
}

@JS()
@staticInterop
class NavigatorCookies {
  external NavigatorCookies();
}

extension PropsNavigatorCookies on NavigatorCookies {
  bool get cookieEnabled => js_util.getProperty(this, 'cookieEnabled');
}

@JS()
@staticInterop
class NavigatorPlugins {
  external NavigatorPlugins();
}

extension PropsNavigatorPlugins on NavigatorPlugins {
  PluginArray get plugins => js_util.getProperty(this, 'plugins');
  MimeTypeArray get mimeTypes => js_util.getProperty(this, 'mimeTypes');
  bool javaEnabled() => js_util.callMethod(this, 'javaEnabled', []);

  bool get pdfViewerEnabled => js_util.getProperty(this, 'pdfViewerEnabled');
}

@JS()
@staticInterop
class PluginArray {
  external PluginArray();
}

extension PropsPluginArray on PluginArray {
  Object refresh() => js_util.callMethod(this, 'refresh', []);

  int get length => js_util.getProperty(this, 'length');
  Plugin? item(int index) => js_util.callMethod(this, 'item', [index]);

  Plugin? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

@JS()
@staticInterop
class MimeTypeArray {
  external MimeTypeArray();
}

extension PropsMimeTypeArray on MimeTypeArray {
  int get length => js_util.getProperty(this, 'length');
  MimeType? item(int index) => js_util.callMethod(this, 'item', [index]);

  MimeType? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

@JS()
@staticInterop
class Plugin {
  external Plugin();
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

@JS()
@staticInterop
class MimeType {
  external MimeType();
}

extension PropsMimeType on MimeType {
  String get type => js_util.getProperty(this, 'type');
  String get description => js_util.getProperty(this, 'description');
  String get suffixes => js_util.getProperty(this, 'suffixes');
  Plugin get enabledPlugin => js_util.getProperty(this, 'enabledPlugin');
}

@JS()
@staticInterop
class ImageBitmap {
  external ImageBitmap();
}

extension PropsImageBitmap on ImageBitmap {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  Object close() => js_util.callMethod(this, 'close', []);
}

enum ImageOrientation { none, flipY }

enum PremultiplyAlpha { none, premultiply, valueDefault }

enum ColorSpaceConversion { none, valueDefault }

enum ResizeQuality { pixelated, low, medium, high }

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
          imageOrientation: imageOrientation?.name,
          premultiplyAlpha: premultiplyAlpha?.name,
          colorSpaceConversion: colorSpaceConversion?.name,
          resizeWidth: resizeWidth,
          resizeHeight: resizeHeight,
          resizeQuality: resizeQuality?.name);
}

extension PropsImageBitmapOptions on ImageBitmapOptions {
  ImageOrientation get imageOrientation => ImageOrientation.values
      .byName(js_util.getProperty(this, 'imageOrientation'));
  set imageOrientation(ImageOrientation newValue) {
    js_util.setProperty(this, 'imageOrientation', newValue.name);
  }

  PremultiplyAlpha get premultiplyAlpha => PremultiplyAlpha.values
      .byName(js_util.getProperty(this, 'premultiplyAlpha'));
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue.name);
  }

  ColorSpaceConversion get colorSpaceConversion => ColorSpaceConversion.values
      .byName(js_util.getProperty(this, 'colorSpaceConversion'));
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue.name);
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
      ResizeQuality.values.byName(js_util.getProperty(this, 'resizeQuality'));
  set resizeQuality(ResizeQuality newValue) {
    js_util.setProperty(this, 'resizeQuality', newValue.name);
  }
}

@JS()
@staticInterop
class AnimationFrameProvider {
  external AnimationFrameProvider();
}

extension PropsAnimationFrameProvider on AnimationFrameProvider {
  int requestAnimationFrame(FrameRequestCallback callback) => js_util
      .callMethod(this, 'requestAnimationFrame', [allowInterop(callback)]);

  Object cancelAnimationFrame(int handle) =>
      js_util.callMethod(this, 'cancelAnimationFrame', [handle]);
}

@JS()
@staticInterop
class MessageEvent implements Event {
  external MessageEvent(String type, [MessageEventInit? eventInitDict]);
}

extension PropsMessageEvent on MessageEvent {
  dynamic get data => js_util.getProperty(this, 'data');
  String get origin => js_util.getProperty(this, 'origin');
  String get lastEventId => js_util.getProperty(this, 'lastEventId');
  dynamic get source => js_util.getProperty(this, 'source');
  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');
  Object initMessageEvent(String type,
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

@JS()
@staticInterop
class EventSource implements EventTarget {
  external EventSource(String url, [EventSourceInit? eventSourceInitDict]);
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

  Object close() => js_util.callMethod(this, 'close', []);
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

enum BinaryType { blob, arraybuffer }

@JS()
@staticInterop
class WebSocket implements EventTarget {
  external WebSocket(String url, [dynamic protocols = const []]);
  @JS('CONNECTING')
  external static int get connecting;

  @JS('OPEN')
  external static int get open;

  @JS('CLOSING')
  external static int get closing;

  @JS('CLOSED')
  external static int get closed;
}

extension PropsWebSocket on WebSocket {
  String get url => js_util.getProperty(this, 'url');
  int get readyState => js_util.getProperty(this, 'readyState');
  int get bufferedAmount => js_util.getProperty(this, 'bufferedAmount');
  EventHandlerNonNull? get onopen => js_util.getProperty(this, 'onopen');
  set onopen(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onopen', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  String get extensions => js_util.getProperty(this, 'extensions');
  String get protocol => js_util.getProperty(this, 'protocol');
  Object close([int? code, String? reason]) =>
      js_util.callMethod(this, 'close', [code, reason]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  BinaryType get binaryType =>
      BinaryType.values.byName(js_util.getProperty(this, 'binaryType'));
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue.name);
  }

  Object send(String data) => js_util.callMethod(this, 'send', [data]);
}

@JS()
@staticInterop
class CloseEvent implements Event {
  external CloseEvent(String type, [CloseEventInit? eventInitDict]);
}

extension PropsCloseEvent on CloseEvent {
  bool get wasClean => js_util.getProperty(this, 'wasClean');
  int get code => js_util.getProperty(this, 'code');
  String get reason => js_util.getProperty(this, 'reason');
}

@anonymous
@JS()
@staticInterop
class CloseEventInit implements EventInit {
  external factory CloseEventInit(
      {bool? wasClean = false, int? code = 0, String? reason = ''});
}

extension PropsCloseEventInit on CloseEventInit {
  bool get wasClean => js_util.getProperty(this, 'wasClean');
  set wasClean(bool newValue) {
    js_util.setProperty(this, 'wasClean', newValue);
  }

  int get code => js_util.getProperty(this, 'code');
  set code(int newValue) {
    js_util.setProperty(this, 'code', newValue);
  }

  String get reason => js_util.getProperty(this, 'reason');
  set reason(String newValue) {
    js_util.setProperty(this, 'reason', newValue);
  }
}

@JS()
@staticInterop
class MessageChannel {
  external MessageChannel();
}

extension PropsMessageChannel on MessageChannel {
  MessagePort get port1 => js_util.getProperty(this, 'port1');
  MessagePort get port2 => js_util.getProperty(this, 'port2');
}

@JS()
@staticInterop
class MessagePort implements EventTarget {
  external MessagePort();
}

extension PropsMessagePort on MessagePort {
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  Object start() => js_util.callMethod(this, 'start', []);

  Object close() => js_util.callMethod(this, 'close', []);

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

@JS()
@staticInterop
class BroadcastChannel implements EventTarget {
  external BroadcastChannel(String name);
}

extension PropsBroadcastChannel on BroadcastChannel {
  String get name => js_util.getProperty(this, 'name');
  Object postMessage(dynamic message) =>
      js_util.callMethod(this, 'postMessage', [message]);

  Object close() => js_util.callMethod(this, 'close', []);

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

@JS()
@staticInterop
class WorkerGlobalScope
    implements EventTarget, FontFaceSource, WindowOrWorkerGlobalScope {
  external WorkerGlobalScope();
}

extension PropsWorkerGlobalScope on WorkerGlobalScope {
  WorkerGlobalScope get self => js_util.getProperty(this, 'self');
  WorkerLocation get location => js_util.getProperty(this, 'location');
  WorkerNavigator get navigator => js_util.getProperty(this, 'navigator');
  Object importScripts([String? urls1, String? urls2, String? urls3]) =>
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

@JS()
@staticInterop
class DedicatedWorkerGlobalScope
    implements WorkerGlobalScope, AnimationFrameProvider {
  external DedicatedWorkerGlobalScope();
}

extension PropsDedicatedWorkerGlobalScope on DedicatedWorkerGlobalScope {
  String get name => js_util.getProperty(this, 'name');
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  Object close() => js_util.callMethod(this, 'close', []);

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

@JS()
@staticInterop
class SharedWorkerGlobalScope implements WorkerGlobalScope {
  external SharedWorkerGlobalScope();
}

extension PropsSharedWorkerGlobalScope on SharedWorkerGlobalScope {
  String get name => js_util.getProperty(this, 'name');
  Object close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }
}

@JS()
@staticInterop
class AbstractWorker {
  external AbstractWorker();
}

extension PropsAbstractWorker on AbstractWorker {
  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

@JS()
@staticInterop
class Worker implements EventTarget, AbstractWorker {
  external Worker(String scriptURL, [WorkerOptions? options]);
}

extension PropsWorker on Worker {
  Object terminate() => js_util.callMethod(this, 'terminate', []);

  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
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
          type: type?.name, credentials: credentials?.name, name: name);
}

extension PropsWorkerOptions on WorkerOptions {
  WorkerType get type =>
      WorkerType.values.byName(js_util.getProperty(this, 'type'));
  set type(WorkerType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  RequestCredentials get credentials => RequestCredentials.values
      .byName(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.name);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum WorkerType { classic, module }

@JS()
@staticInterop
class SharedWorker implements EventTarget, AbstractWorker {
  external SharedWorker(String scriptURL, [dynamic options]);
}

extension PropsSharedWorker on SharedWorker {
  MessagePort get port => js_util.getProperty(this, 'port');
}

@JS()
@staticInterop
class NavigatorConcurrentHardware {
  external NavigatorConcurrentHardware();
}

extension PropsNavigatorConcurrentHardware on NavigatorConcurrentHardware {
  int get hardwareConcurrency =>
      js_util.getProperty(this, 'hardwareConcurrency');
}

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
  external WorkerNavigator();
}

extension PropsWorkerNavigator on WorkerNavigator {
  MediaCapabilities get mediaCapabilities =>
      js_util.getProperty(this, 'mediaCapabilities');
  Permissions get permissions => js_util.getProperty(this, 'permissions');
  ServiceWorkerContainer get serviceWorker =>
      js_util.getProperty(this, 'serviceWorker');
  Serial get serial => js_util.getProperty(this, 'serial');
  Usb get usb => js_util.getProperty(this, 'usb');
}

@JS()
@staticInterop
class WorkerLocation {
  external WorkerLocation();
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
  external WorkletGlobalScope();
}

@JS()
@staticInterop
class Worklet {
  external Worklet();
}

extension PropsWorklet on Worklet {
  Future<Object> addModule(String moduleURL, [WorkletOptions? options]) =>
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
      WorkletOptions._(credentials: credentials?.name);
}

extension PropsWorkletOptions on WorkletOptions {
  RequestCredentials get credentials => RequestCredentials.values
      .byName(js_util.getProperty(this, 'credentials'));
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue.name);
  }
}

@JS()
@staticInterop
class Storage {
  external Storage();
}

extension PropsStorage on Storage {
  int get length => js_util.getProperty(this, 'length');
  String? key(int index) => js_util.callMethod(this, 'key', [index]);

  String? getItem(String key) => js_util.callMethod(this, 'getItem', [key]);

  Object setItem(String key, String value) =>
      js_util.callMethod(this, 'setItem', [key, value]);

  Object removeItem(String key) =>
      js_util.callMethod(this, 'removeItem', [key]);

  Object clear() => js_util.callMethod(this, 'clear', []);
}

@JS()
@staticInterop
class WindowSessionStorage {
  external WindowSessionStorage();
}

extension PropsWindowSessionStorage on WindowSessionStorage {
  Storage get sessionStorage => js_util.getProperty(this, 'sessionStorage');
}

@JS()
@staticInterop
class WindowLocalStorage {
  external WindowLocalStorage();
}

extension PropsWindowLocalStorage on WindowLocalStorage {
  Storage get localStorage => js_util.getProperty(this, 'localStorage');
}

@JS()
@staticInterop
class StorageEvent implements Event {
  external StorageEvent(String type, [StorageEventInit? eventInitDict]);
}

extension PropsStorageEvent on StorageEvent {
  String? get key => js_util.getProperty(this, 'key');
  String? get oldValue => js_util.getProperty(this, 'oldValue');
  String? get newValue => js_util.getProperty(this, 'newValue');
  String get url => js_util.getProperty(this, 'url');
  Storage? get storageArea => js_util.getProperty(this, 'storageArea');
  Object initStorageEvent(String type,
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

@JS()
@staticInterop
class HTMLMarqueeElement implements HTMLElement {
  external HTMLMarqueeElement();
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

  Object start() => js_util.callMethod(this, 'start', []);

  Object stop() => js_util.callMethod(this, 'stop', []);
}

@JS()
@staticInterop
class HTMLFrameSetElement implements HTMLElement, WindowEventHandlers {
  external HTMLFrameSetElement();
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
  external HTMLFrameElement();
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
  external HTMLDirectoryElement();
}

extension PropsHTMLDirectoryElement on HTMLDirectoryElement {
  bool get compact => js_util.getProperty(this, 'compact');
  set compact(bool newValue) {
    js_util.setProperty(this, 'compact', newValue);
  }
}

@JS()
@staticInterop
class HTMLFontElement implements HTMLElement {
  external HTMLFontElement();
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

@JS()
@staticInterop
class External {
  external External();
}

extension PropsExternal on External {
  Object addSearchProvider() =>
      js_util.callMethod(this, 'AddSearchProvider', []);

  Object isSearchProviderInstalled() =>
      js_util.callMethod(this, 'IsSearchProviderInstalled', []);
}
