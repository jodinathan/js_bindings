/// HTML Standard
///
/// https://html.spec.whatwg.org/multipage/
@JS('window')
@staticInterop
library html;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
cssom_1
wai_aria_1_2
webgpu
webdriver2
ua_client_hints
web_locks
device_memory_1
netinfo
local_font_access
badging
storage
css_font_loading_3
dom
svg11
mediacapture_streams
media_source
file_a_p_i
xhr
webgl1
webgl2
geometry_1
uievents
hr_time_3
service_workers_1
fetch
geolocation_a_p_i
media_capabilities
permissions
mediasession
web_share
media_playback_quality
cookie_store
is_input_pending
contact_api
scheduling_apis
trusted_types
screen_wake_lock
requestidlecallback
selection_api
entries_api
webhid
clipboard_apis
cssom_view_1
presentation_api
credential_management_1
web_bluetooth
keyboard_map
visual_viewport
picture_in_picture
portals
custom_state_pseudo_class
video_rvfc
speech_api
file_system_access
webxr
get_installed_related_apps
serial
web_crypto_a_p_i
vibration
gamepad
device_posture
webusb
remote_playback
permissions_policy_1
css_nav_1
battery_status
webmidi
indexed_d_b_3
encrypted_media */

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
  external HTMLFormControlsCollection();
}

extension PropsHTMLFormControlsCollection on HTMLFormControlsCollection {
  ///  Returns the [RadioNodeList] or the [Element] in the collection
  /// whose [name] or [id] matches the specified name, or [null] if no
  /// nodes match. Note that this version of [namedItem()] hide the one
  /// inherited from [HTMLCollection]. Like that one, in JavaScript,
  /// using the array bracket syntax with a [String], like
  /// [collection["value"]] is equivalent to
  /// [collection.namedItem("value")].
  ///
  /// var item = collection.namedItem(str);
  /// var item = collection[str];
  ///
  @override
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
  external RadioNodeList();
}

extension PropsRadioNodeList on RadioNodeList {
  ///  If the underlying element collection contains radio buttons, the
  /// property represents the checked radio button. On retrieving the
  /// property, the of the currently [checked] radio button is returned
  /// as a string. If the collection does not contain any radio buttons
  /// or none of the radio buttons in the collection is in [checked]
  /// state, the empty string is returned. On setting the property, the
  /// first radio button input element whose property is equal to the
  /// new value will be set to [checked].
  ///
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
  external HTMLOptionsCollection();
}

extension PropsHTMLOptionsCollection on HTMLOptionsCollection {
  ///  [int]. As optionally allowed by the spec, this property isn't
  /// read-only. You can either remove options from the end by lowering
  /// the value, or add blank options at the end by raising the value.
  /// Mozilla allows this, while other implementations could
  /// potentially throw a DOMException.
  ///
  @override
  int get length => js_util.getProperty(this, 'length');
  @override
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

///  A type returned by some APIs which contains a list of DOMString
/// (strings).
@JS()
@staticInterop
class DOMStringList {
  external DOMStringList();
}

extension PropsDOMStringList on DOMStringList {
  /// Returns the length of the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns a [String].
  ///
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  ///  Returns a boolean value indicating if the given string is in the
  /// list
  ///
  bool contains(String string) =>
      js_util.callMethod(this, 'contains', [string]);
}

enum DocumentReadyState { loading, interactive, complete }

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
  external HTMLElement();
}

extension PropsHTMLElement on HTMLElement {
  ///  A string containing the text that appears in a popup box when
  /// mouse is over the element.
  ///
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  ///  A string representing the language of an element's attributes,
  /// text, and element contents.
  ///
  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  /// A boolean value representing the translation.
  ///
  @experimental
  bool get translate => js_util.getProperty(this, 'translate');
  set translate(bool newValue) {
    js_util.setProperty(this, 'translate', newValue);
  }

  ///  A string, reflecting the global attribute, representing the
  /// directionality of the element. Possible values are ["ltr"],
  /// ["rtl"], and ["auto"].
  ///
  String get dir => js_util.getProperty(this, 'dir');
  set dir(String newValue) {
    js_util.setProperty(this, 'dir', newValue);
  }

  /// A boolean value indicating if the element is hidden or not.
  ///
  bool get hidden => js_util.getProperty(this, 'hidden');
  set hidden(bool newValue) {
    js_util.setProperty(this, 'hidden', newValue);
  }

  /// Sends a mouse click event to the element.
  ///
  /// element.click()
  ///
  /// Simulate a mouse-click when moving the mouse pointer over a checkbox:
  /// <form>
  ///  <input type="checkbox" id="myCheck" onmouseover="myFunction()" onclick="alert('click event occurred')">
  /// </form>
  ///
  /// ```
  ///
  /// // On mouse-over, execute myFunction
  /// function myFunction() {
  ///  document.getElementById("myCheck").click();
  /// }
  ///
  /// ```
  ///
  Object click() => js_util.callMethod(this, 'click', []);

  /// A string representing the access key assigned to the element.
  ///
  String get accessKey => js_util.getProperty(this, 'accessKey');
  set accessKey(String newValue) {
    js_util.setProperty(this, 'accessKey', newValue);
  }

  /// Returns a string containing the element's assigned access key.
  ///
  String get accessKeyLabel => js_util.getProperty(this, 'accessKeyLabel');

  /// A boolean value indicating if the element can be dragged.
  ///
  bool get draggable => js_util.getProperty(this, 'draggable');
  set draggable(bool newValue) {
    js_util.setProperty(this, 'draggable', newValue);
  }

  ///  A boolean value that controls spell-checking. It is present on
  /// all HTML elements, though it doesn't have an effect on all of
  /// them.
  ///
  bool get spellcheck => js_util.getProperty(this, 'spellcheck');
  set spellcheck(bool newValue) {
    js_util.setProperty(this, 'spellcheck', newValue);
  }

  String get autocapitalize => js_util.getProperty(this, 'autocapitalize');
  set autocapitalize(String newValue) {
    js_util.setProperty(this, 'autocapitalize', newValue);
  }

  ///  Represents the "rendered" text content of a node and its
  /// descendants. As a getter, it approximates the text the user would
  /// get if they highlighted the contents of the element with the
  /// cursor and then copied it to the clipboard.
  ///
  String get innerText => js_util.getProperty(this, 'innerText');
  set innerText(String newValue) {
    js_util.setProperty(this, 'innerText', newValue);
  }

  String get outerText => js_util.getProperty(this, 'outerText');
  set outerText(String newValue) {
    js_util.setProperty(this, 'outerText', newValue);
  }

  ///  Returns an [ElementInternals] object, and enables a custom
  /// element to participate in HTML forms.
  ///
  /// var internals = element.attachInternals();
  ///
  @experimental
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

///  The interface is used for the
/// [HTMLElement.dataset]/[SVGElement.dataset] attribute, to
/// represent data for custom attributes added to elements.
@JS()
@staticInterop
class DOMStringMap {
  external DOMStringMap();
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
  external HTMLHtmlElement();
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
  external HTMLHeadElement();
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
  external HTMLTitleElement();
}

extension PropsHTMLTitleElement on HTMLTitleElement {
  ///  Is a [String] representing the text of the document's title, and
  /// only the text part. For example, consider this:
  ///
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
  external HTMLBaseElement();
}

extension PropsHTMLBaseElement on HTMLBaseElement {
  ///  Is a [String] that reflects the HTML attribute, containing a
  /// base URL for relative URLs in the document.
  ///
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing a
  /// default target browsing context or frame for elements that do not
  /// have a target reference specified.
  ///
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
  external HTMLLinkElement();
}

extension PropsHTMLLinkElement on HTMLLinkElement {
  /// A string representing the URI for the target resource.
  ///
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  ///  A string that corresponds to the CORS setting for this link
  /// element. See CORS settings attributes for details.
  ///
  @experimental
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  ///  A string representing the forward relationship of the linked
  /// resource from the document to the resource.
  ///
  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  ///  A string representing the type of content being loaded by the
  /// HTML link.
  ///
  @JS('as')
  @staticInterop
  String get mAs => js_util.getProperty(this, 'as');
  set mAs(String newValue) {
    js_util.setProperty(this, 'as', newValue);
  }

  ///  A [DOMTokenList] that reflects the [rel] HTML attribute, as a
  /// list of tokens.
  ///
  DOMTokenList get relList => js_util.getProperty(this, 'relList');

  ///  A string representing a list of one or more media formats to
  /// which the resource applies.
  ///
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get integrity => js_util.getProperty(this, 'integrity');
  set integrity(String newValue) {
    js_util.setProperty(this, 'integrity', newValue);
  }

  /// A string representing the language code for the linked resource.
  ///
  String get hreflang => js_util.getProperty(this, 'hreflang');
  set hreflang(String newValue) {
    js_util.setProperty(this, 'hreflang', newValue);
  }

  /// A string representing the MIME type of the linked resource.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  A [DOMTokenList] that reflects the HTML attribute, as a list of
  /// tokens.
  ///
  DOMTokenList get sizes => js_util.getProperty(this, 'sizes');
  String get imageSrcset => js_util.getProperty(this, 'imageSrcset');
  set imageSrcset(String newValue) {
    js_util.setProperty(this, 'imageSrcset', newValue);
  }

  String get imageSizes => js_util.getProperty(this, 'imageSizes');
  set imageSizes(String newValue) {
    js_util.setProperty(this, 'imageSizes', newValue);
  }

  ///  A string that reflects the [referrerpolicy] HTML attribute
  /// indicating which referrer to use.
  ///
  @experimental
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  ///  A boolean value which represents whether the link is disabled;
  /// currently only used with style sheet links.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
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
  external HTMLStyleElement();
}

extension PropsHTMLStyleElement on HTMLStyleElement {
  ///  Is a [String] reflecting the HTML attribute representing the
  /// intended destination medium for style information.
  ///
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

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
  external HTMLHeadingElement();
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
  external HTMLParagraphElement();
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
  external HTMLPreElement();
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
  external HTMLQuoteElement();
}

extension PropsHTMLQuoteElement on HTMLQuoteElement {
  ///  Is a [String] reflecting the HTML attribute, containing a URL
  /// for the source of the quotation.
  ///
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
  external HTMLOListElement();
}

extension PropsHTMLOListElement on HTMLOListElement {
  ///  Is a boolean value reflecting the and defining if the numbering
  /// is descending, that is its value is [true], or ascending
  /// ([false]).
  ///
  bool get reversed => js_util.getProperty(this, 'reversed');
  set reversed(bool newValue) {
    js_util.setProperty(this, 'reversed', newValue);
  }

  ///  Is a [int] value reflecting the and defining the value of the
  /// first number of the first element of the list.
  ///
  int get start => js_util.getProperty(this, 'start');
  set start(int newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  ///  Is a [String] value reflecting the and defining the kind of
  /// marker to be used to display. It can have the following values:
  ///
  ///     ['1'] meaning that decimal numbers are used: [1], [2], [3],
  /// [4], [5], …
  ///     ['a'] meaning that the lowercase latin alphabet is used: [a],
  /// [b], [c], [d], [e], …
  ///     ['A'] meaning that the uppercase latin alphabet is used: [A],
  /// [B], [C], [D], [E], …
  ///     ['i'] meaning that the lowercase latin numerals are used:
  /// [i], [ii], [iii], [iv], [v], …
  ///     ['I'] meaning that the uppercase latin numerals are used:
  /// [I], [II], [III], [IV], [V], …
  ///
  ///
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
  external HTMLMenuElement();
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
  external HTMLLIElement();
}

extension PropsHTMLLIElement on HTMLLIElement {
  ///  Is a [int] indicating the ordinal position of the list element
  /// inside a given [<ol>]. It reflects the attribute of the HTML
  /// [<li>] element, and can be smaller than [0]. If the [<li>]
  /// element is not a child of an [<ol>] element, the property has no
  /// meaning.
  ///
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
  external HTMLDListElement();
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
  external HTMLDivElement();
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
class HTMLAnchorElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external HTMLAnchorElement();
}

extension PropsHTMLAnchorElement on HTMLAnchorElement {
  ///  Is a [String] that reflects the HTML attribute, indicating where
  /// to display the linked resource.
  ///
  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  ///  Is a [String] indicating that the linked resource is intended to
  /// be downloaded rather than displayed in the browser. The value
  /// represent the proposed name of the file. If the name is not a
  /// valid filename of the underlying OS, browser will adapt it.
  ///
  @experimental
  String get download => js_util.getProperty(this, 'download');
  set download(String newValue) {
    js_util.setProperty(this, 'download', newValue);
  }

  String get ping => js_util.getProperty(this, 'ping');
  set ping(String newValue) {
    js_util.setProperty(this, 'ping', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, specifying the
  /// relationship of the target object to the linked object.
  ///
  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  ///  Returns a [DOMTokenList] that reflects the [rel] HTML attribute,
  /// as a list of tokens.
  ///
  DOMTokenList get relList => js_util.getProperty(this, 'relList');

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// language of the linked resource.
  ///
  String get hreflang => js_util.getProperty(this, 'hreflang');
  set hreflang(String newValue) {
    js_util.setProperty(this, 'hreflang', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// MIME type of the linked resource.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Is a [String] being a synonym for the [Node.textContent]
  /// property.
  ///
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  ///  Is a [String] that reflects the [referrerpolicy] HTML attribute
  /// indicating which referrer to use.
  ///
  @experimental
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  int get attributionSourceId =>
      js_util.getProperty(this, 'attributionSourceId');
  set attributionSourceId(int newValue) {
    js_util.setProperty(this, 'attributionSourceId', newValue);
  }

  String get attributionDestination =>
      js_util.getProperty(this, 'attributionDestination');
  set attributionDestination(String newValue) {
    js_util.setProperty(this, 'attributionDestination', newValue);
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
  external HTMLDataElement();
}

extension PropsHTMLDataElement on HTMLDataElement {
  ///  Is a [String] reflecting the HTML attribute, containing a
  /// machine-readable form of the element's value.
  ///
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
  external HTMLTimeElement();
}

extension PropsHTMLTimeElement on HTMLTimeElement {
  ///  Is a [String] that reflects the [datetime] HTML attribute,
  /// containing a machine-readable form of the element's date and time
  /// value.
  ///
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
  external HTMLSpanElement();
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
  external HTMLModElement();
}

extension PropsHTMLModElement on HTMLModElement {
  ///  Is a [String] reflecting the HTML attribute, containing a URI of
  /// a resource explaining the change.
  ///
  String get cite => js_util.getProperty(this, 'cite');
  set cite(String newValue) {
    js_util.setProperty(this, 'cite', newValue);
  }

  ///  Is a [String] reflecting the [datetime] HTML attribute,
  /// containing a date-and-time string representing a timestamp for
  /// the change.
  ///
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
  external HTMLPictureElement();
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
  external HTMLSourceElement();
}

extension PropsHTMLSourceElement on HTMLSourceElement {
  ///  Is a [String] reflecting the HTML attribute, containing the URL
  /// for the media resource. The [HTMLSourceElement.src] property has
  /// a meaning only when the associated [<source>] element is nested
  /// in a media element that is a [<video>] or an [<audio>] element.
  /// It has no meaning and is ignored when it is nested in a
  /// [<picture>] element.
  ///
  ///     Note: If the property is updated (along with any siblings),
  /// the parent [HTMLMediaElement]'s [load] method should be called
  /// when done, since [<source>] elements are not re-scanned
  /// automatically.
  ///
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Is a [String] reflecting the HTML attribute, containing the type
  /// of the media resource.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Is a [String] reflecting the HTML attribute, containing a list
  /// of candidate images, separated by a comma ([',', U+002C COMMA]).
  /// A candidate image is a URL followed by a ['w'] with the width of
  /// the images, or an ['x'] followed by the pixel density.
  ///
  @experimental
  String get srcset => js_util.getProperty(this, 'srcset');
  set srcset(String newValue) {
    js_util.setProperty(this, 'srcset', newValue);
  }

  /// Is a [String] representing image sizes between breakpoints
  ///
  @experimental
  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  ///  Is a [String] reflecting the HTML attribute, containing the
  /// intended type of the media resource.
  ///
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
class HTMLImageElement implements HTMLElement {
  external HTMLImageElement();
}

extension PropsHTMLImageElement on HTMLImageElement {
  ///  A [String] that reflects the HTML attribute, thus indicating the
  /// alternate fallback content to be displayed if the image has not
  /// been loaded.
  ///
  String get alt => js_util.getProperty(this, 'alt');
  set alt(String newValue) {
    js_util.setProperty(this, 'alt', newValue);
  }

  ///  A [String] that reflects the HTML attribute, which contains the
  /// full URL of the image including base URI. You can load a
  /// different image into the element by changing the URL in the
  /// attribute.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  A [String] reflecting the HTML attribute. This specifies a list
  /// of candidate images, separated by commas ([',', U+002C COMMA]).
  /// Each candidate image is a URL followed by a space, followed by a
  /// specially-formatted string indicating the size of the image. The
  /// size may be specified either the width or a size multiple. Read
  /// the page for specifics on the format of the size substring.
  ///
  String get srcset => js_util.getProperty(this, 'srcset');
  set srcset(String newValue) {
    js_util.setProperty(this, 'srcset', newValue);
  }

  ///  A [String] reflecting the HTML attribute. This string specifies
  /// a list of comma-separated conditional sizes for the image; that
  /// is, for a given viewport size, a particular image size is to be
  /// used. Read the documentation on the page for details on the
  /// format of this string.
  ///
  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  ///  A [String] specifying the CORS setting for this image element.
  /// See CORS settings attributes for further details. This may be
  /// [null] if CORS is not used.
  ///
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  ///  A [String] reflecting the [usemap] HTML attribute, containing
  /// the page-local URL of the [<map>] element describing the image
  /// map to use. The page-local URL is a pound (hash) symbol ([#])
  /// followed by the ID of the [<map>] element, such as
  /// [#my-map-element]. The [<map>] in turn contains [<area>] elements
  /// indicating the clickable areas in the image.
  ///
  String get useMap => js_util.getProperty(this, 'useMap');
  set useMap(String newValue) {
    js_util.setProperty(this, 'useMap', newValue);
  }

  ///  A boolean value that reflects the [ismap] HTML attribute,
  /// indicating that the image is part of a server-side image map.
  /// This is different from a client-side image map, specified using
  /// an [<img>] element and a corresponding [<map>] which contains
  /// [<area>] elements indicating the clickable areas in the image.
  /// The image must be contained within an [<a>] element; see the
  /// [ismap] page for details.
  ///
  bool get isMap => js_util.getProperty(this, 'isMap');
  set isMap(bool newValue) {
    js_util.setProperty(this, 'isMap', newValue);
  }

  ///  An integer value that reflects the HTML attribute, indicating
  /// the rendered width of the image in CSS pixels.
  ///
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  An integer value that reflects the HTML attribute, indicating
  /// the rendered height of the image in CSS pixels.
  ///
  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  An integer value representing the intrinsic width of the image
  /// in CSS pixels, if it is available; otherwise, it will show [0].
  /// This is the width the image would be if it were rendered at its
  /// natural full size.
  ///
  int get naturalWidth => js_util.getProperty(this, 'naturalWidth');

  ///  Returns an integer value representing the intrinsic height of
  /// the image in CSS pixels, if it is available; else, it shows [0].
  /// This is the height the image would be if it were rendered at its
  /// natural full size.
  ///
  int get naturalHeight => js_util.getProperty(this, 'naturalHeight');

  ///  Returns a boolean value that is [true] if the browser has
  /// finished fetching the image, whether successful or not. That
  /// means this value is also [true] if the image has no [src] value
  /// indicating an image to load.
  ///
  bool get complete => js_util.getProperty(this, 'complete');

  ///  Returns a [String] representing the URL from which the currently
  /// displayed image was loaded. This may change as the image is
  /// adjusted due to changing conditions, as directed by any media
  /// queries which are in place.
  ///
  String get currentSrc => js_util.getProperty(this, 'currentSrc');

  ///  A [String] that reflects the [referrerpolicy] HTML attribute,
  /// which tells the user agent how to decide which referrer to use in
  /// order to fetch the image. Read this article for details on the
  /// possible values of this string.
  ///
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  ///  An optional [String] representing a hint given to the browser on
  /// how it should decode the image. If this value is provided, it
  /// must be one of the possible permitted values: [sync] to decode
  /// the image synchronously, [async] to decode it asynchronously, or
  /// [auto] to indicate no preference (which is the default). Read the
  /// page for details on the implications of this property's values.
  ///
  String get decoding => js_util.getProperty(this, 'decoding');
  set decoding(String newValue) {
    js_util.setProperty(this, 'decoding', newValue);
  }

  ///  A [String] providing a hint to the browser used to optimize
  /// loading the document by determining whether to load the image
  /// immediately ([eager]) or on an as-needed basis ([lazy]).
  ///
  String get loading => js_util.getProperty(this, 'loading');
  set loading(String newValue) {
    js_util.setProperty(this, 'loading', newValue);
  }

  ///  Returns a [Future] that resolves when the image is decoded and
  /// it's safe to append the image to the DOM. This prevents rendering
  /// of the next frame from having to pause to decode the image, as
  /// would happen if an undecoded image were added to the DOM.
  ///
  /// var promise = HTMLImageElement.decode();
  ///
  Future<Object> decode() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decode', []));

  int get x => js_util.getProperty(this, 'x');
  int get y => js_util.getProperty(this, 'y');
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
  external HTMLIFrameElement();
}

extension PropsHTMLIFrameElement on HTMLIFrameElement {
  ///  A string that reflects the HTML attribute, containing the
  /// address of the content to be embedded. Note that programmatically
  /// removing an [<iframe>]'s src attribute (e.g. via
  /// [Element.removeAttribute()]) causes [about:blank] to be loaded in
  /// the frame in Firefox (from version 65), Chromium-based browsers,
  /// and Safari/iOS.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  /// A string that represents the content to display in the frame.
  ///
  String get srcdoc => js_util.getProperty(this, 'srcdoc');
  set srcdoc(String newValue) {
    js_util.setProperty(this, 'srcdoc', newValue);
  }

  ///  A string that reflects the HTML attribute, containing a name by
  /// which to refer to the frame.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  A [DOMTokenList] that reflects the HTML attribute, indicating
  /// extra restrictions on the behavior of the nested content.
  ///
  DOMTokenList get sandbox => js_util.getProperty(this, 'sandbox');

  ///  A list of origins the frame is allowed to display content from.
  /// This attribute also accepts the values [self] and [src] which
  /// represent the origin in the iframe's src attribute. The default
  /// value is [src].
  ///
  @experimental
  String get allow => js_util.getProperty(this, 'allow');
  set allow(String newValue) {
    js_util.setProperty(this, 'allow', newValue);
  }

  bool get allowFullscreen => js_util.getProperty(this, 'allowFullscreen');
  set allowFullscreen(bool newValue) {
    js_util.setProperty(this, 'allowFullscreen', newValue);
  }

  ///  A string that reflects the HTML attribute, indicating the width
  /// of the frame.
  ///
  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  A string that reflects the HTML attribute, indicating the height
  /// of the frame.
  ///
  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  A string that reflects the [referrerpolicy] HTML attribute
  /// indicating which referrer to use when fetching the linked
  /// resource.
  ///
  @experimental
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  String get loading => js_util.getProperty(this, 'loading');
  set loading(String newValue) {
    js_util.setProperty(this, 'loading', newValue);
  }

  ///  Returns a [Document], the active document in the inline frame's
  /// nested browsing context.
  ///
  Document? get contentDocument => js_util.getProperty(this, 'contentDocument');

  ///  Returns a [WindowProxy], the window proxy for the nested
  /// browsing context.
  ///
  Window? get contentWindow => js_util.getProperty(this, 'contentWindow');
  Document? getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);

  String get csp => js_util.getProperty(this, 'csp');
  set csp(String newValue) {
    js_util.setProperty(this, 'csp', newValue);
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
  external HTMLEmbedElement();
}

extension PropsHTMLEmbedElement on HTMLEmbedElement {
  ///  Is a [String] that reflects the HTML attribute, containing the
  /// address of the resource.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing the
  /// type of the resource.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing the
  /// displayed width of the resource.
  ///
  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  Is a [String] reflecting the HTML attribute, containing the
  /// displayed height of the resource.
  ///
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
  external HTMLObjectElement();
}

extension PropsHTMLObjectElement on HTMLObjectElement {
  ///  Returns a [String] that reflects the HTML attribute, specifying
  /// the address of a resource's data.
  ///
  String get data => js_util.getProperty(this, 'data');
  set data(String newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, specifying the
  /// MIME type of the resource.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Returns a [String] that reflects the HTML attribute, specifying
  /// the name of the browsing context.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Returns a [HTMLFormElement] representing the object element's
  /// form owner, or null if there isn't one.
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  Is a [String] that reflects the HTML attribute, specifying the
  /// displayed width of the resource in CSS pixels.
  ///
  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  Returns a [String] that reflects the HTML attribute, specifying
  /// the displayed height of the resource in CSS pixels.
  ///
  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  Returns a [Document] representing the active document of the
  /// object element's nested browsing context, if any; otherwise
  /// [null].
  ///
  Document? get contentDocument => js_util.getProperty(this, 'contentDocument');

  ///  Returns a [WindowProxy] representing the window proxy of the
  /// object element's nested browsing context, if any; otherwise
  /// [null].
  ///
  Window? get contentWindow => js_util.getProperty(this, 'contentWindow');
  Document? getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);

  ///  Returns a boolean value that indicates whether the element is a
  /// candidate for constraint validation. Always [false] for
  /// [HTMLObjectElement] objects.
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  Returns a [ValidityState] with the validity states that this
  /// element is in.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  ///  Returns a [String] representing a localized message that
  /// describes the validation constraints that the control does not
  /// satisfy (if any). This is the empty string if the control is not
  /// a candidate for constraint validation ([willValidate] is
  /// [false]), or it satisfies its constraints.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');

  ///  Returns a boolean value that always is [true], because [dynamic]
  /// objects are never candidates for constraint validation.
  ///
  /// const valid = HTMLObjectElement.checkValidity();
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  ///  Sets a custom validity message for the element. If this message
  /// is not the empty string, then the element is suffering from a
  /// custom validity error, and does not validate.
  ///
  /// HTMLObjectElement.setCustomValidity(message);
  ///
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
  external HTMLParamElement();
}

extension PropsHTMLParamElement on HTMLParamElement {
  ///  Is a [String] representing the name of the parameter. It
  /// reflects the attribute.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Is a [String] representing the value associated to the
  /// parameter. It reflects the attribute.
  ///
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
  external HTMLVideoElement();
}

extension PropsHTMLVideoElement on HTMLVideoElement {
  ///  Is a [String] that reflects the HTML attribute, which specifies
  /// the width of the display area, in CSS pixels.
  ///
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, which specifies
  /// the height of the display area, in CSS pixels.
  ///
  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  Returns an unsigned integer value indicating the intrinsic width
  /// of the resource in CSS pixels, or 0 if no media is available yet.
  ///
  int get videoWidth => js_util.getProperty(this, 'videoWidth');

  ///  Returns an unsigned integer value indicating the intrinsic
  /// height of the resource in CSS pixels, or 0 if no media is
  /// available yet.
  ///
  int get videoHeight => js_util.getProperty(this, 'videoHeight');

  ///  Is a [String] that reflects the HTML attribute, which specifies
  /// an image to show while no video data is available.
  ///
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
  external HTMLAudioElement();
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
  external static int get NONE;
  external static int get LOADING;
  external static int get LOADED;
  external static int get ERROR;
  external HTMLTrackElement();
}

extension PropsHTMLTrackElement on HTMLTrackElement {
  ///  Is a [String] that reflects the HTML attribute, indicating how
  /// the text track is meant to be used. Possible values are:
  /// [subtitles], [captions], [descriptions], [chapters], or
  /// [metadata].
  ///
  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// address of the text track data.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// language of the text track data.
  ///
  String get srclang => js_util.getProperty(this, 'srclang');
  set srclang(String newValue) {
    js_util.setProperty(this, 'srclang', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating a
  /// user-readable title for the track.
  ///
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  ///  A boolean value reflecting the attribute, indicating that the
  /// track is to be enabled if the user's preferences do not indicate
  /// that another track would be more appropriate.
  ///
  @JS('default')
  @staticInterop
  bool get mDefault => js_util.getProperty(this, 'default');
  set mDefault(bool newValue) {
    js_util.setProperty(this, 'default', newValue);
  }

  /// Returns an [int] that show the readiness state of the track:
  ///
  ///
  ///
  ///      Constant
  ///      Value
  ///      Description
  ///
  ///
  ///
  ///
  ///      [NONE]
  ///      0
  ///       Indicates that the text track's cues have not been
  /// obtained.
  ///
  ///
  ///      [LOADING]
  ///      1
  ///       Indicates that the text track is loading and there have
  /// been no fatal errors encountered so far. Further cues might still
  /// be added to the track by the parser.
  ///
  ///
  ///      [LOADED]
  ///      2
  ///       Indicates that the text track has been loaded with no fatal
  /// errors.
  ///
  ///
  ///      [ERROR]
  ///      3
  ///       Indicates that the text track was enabled, but when the
  /// user agent attempted to obtain it, this failed in some way. Some
  /// or all of the cues are likely missing and will not be obtained.
  ///
  ///
  ///
  ///
  int get readyState => js_util.getProperty(this, 'readyState');

  /// Returns [TextTrack] is the track element's text track data.
  ///
  TextTrack get track => js_util.getProperty(this, 'track');
}

enum CanPlayTypeResult { empty, maybe, probably }

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
  external static int get NETWORK_EMPTY;
  external static int get NETWORK_IDLE;
  external static int get NETWORK_LOADING;
  external static int get NETWORK_NO_SOURCE;
  external static int get HAVE_NOTHING;
  external static int get HAVE_METADATA;
  external static int get HAVE_CURRENT_DATA;
  external static int get HAVE_FUTURE_DATA;
  external static int get HAVE_ENOUGH_DATA;
  external HTMLMediaElement();
}

extension PropsHTMLMediaElement on HTMLMediaElement {
  ///  Returns a [MediaError] object for the most recent error, or
  /// [null] if there has not been an error.
  ///
  MediaError? get error => js_util.getProperty(this, 'error');

  ///  Is a [String] that reflects the HTML attribute, which contains
  /// the URL of a media resource to use.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Is a [MediaStream] representing the media to play or that has
  /// played in the current [HTMLMediaElement], or [null] if not
  /// assigned.
  ///
  dynamic get srcObject => js_util.getProperty(this, 'srcObject');
  set srcObject(dynamic newValue) {
    js_util.setProperty(this, 'srcObject', newValue);
  }

  ///  Returns a [String] with the absolute URL of the chosen media
  /// resource.
  ///
  String get currentSrc => js_util.getProperty(this, 'currentSrc');

  /// A [String] indicating the CORS setting for this media element.
  ///
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  ///  Returns a [int] (enumeration) indicating the current state of
  /// fetching the media over the network.
  ///
  int get networkState => js_util.getProperty(this, 'networkState');

  ///  Is a [String] that reflects the HTML attribute, indicating what
  /// data should be preloaded, if any. Possible values are: [none],
  /// [metadata], [auto].
  ///
  String get preload => js_util.getProperty(this, 'preload');
  set preload(String newValue) {
    js_util.setProperty(this, 'preload', newValue);
  }

  ///  Returns a [TimeRanges] object that indicates the ranges of the
  /// media source that the browser has buffered (if any) at the moment
  /// the property is accessed.
  ///
  TimeRanges get buffered => js_util.getProperty(this, 'buffered');

  ///  Resets the media to the beginning and selects the best available
  /// source from the sources provided using the [src] attribute or the
  /// [<source>] element.
  ///
  /// mediaElement.load();
  ///
  ///
  ///  This example finds a <video> element in the document and resets it by
  ///  calling load().
  ///
  /// var mediaElem = document.querySelector("video");
  /// mediaElem.load();
  ///
  Object load() => js_util.callMethod(this, 'load', []);

  ///  Given a string specifying a MIME media type (potentially with
  /// the [codecs] parameter included), [canPlayType()] returns the
  /// string [probably] if the media should be playable, [maybe] if
  /// there's not enough information to determine whether the media
  /// will play or not, or an empty string if the media cannot be
  /// played.
  ///
  /// canPlayResponse = audioOrVideo.canPlayType(mediaType);
  ///
  /// var obj = document.createElement('video');
  /// console.log(obj.canPlayType('video/mp4')); // "maybe"
  ///
  CanPlayTypeResult canPlayType(String type) =>
      js_util.callMethod(this, 'canPlayType', [type]);

  ///  Returns a [int] (enumeration) indicating the readiness state of
  /// the media.
  ///
  int get readyState => js_util.getProperty(this, 'readyState');

  ///  Returns a [Boolean] that indicates whether the media is in the
  /// process of seeking to a new position.
  ///
  bool get seeking => js_util.getProperty(this, 'seeking');

  ///  A double-precision floating-point value indicating the current
  /// playback time in seconds; if the media has not started to play
  /// and has not been seeked, this value is the media's initial
  /// playback time. Setting this value seeks the media to the new
  /// time. The time is specified relative to the media's timeline.
  ///
  double get currentTime => js_util.getProperty(this, 'currentTime');
  set currentTime(double newValue) {
    js_util.setProperty(this, 'currentTime', newValue);
  }

  /// Quickly seeks to the given time with low precision.
  ///
  /// HTMLMediaElement.fastSeek(time);
  ///
  /// This example quickly seeks to 20-second position of the video element.
  /// let myVideo = document.getElementById("myVideoElement");
  ///
  /// myVideo.fastSeek(20);
  ///
  @experimental
  Object fastSeek(double time) => js_util.callMethod(this, 'fastSeek', [time]);

  ///  A read-only double-precision floating-point value indicating the
  /// total duration of the media in seconds. If no media data is
  /// available, the returned value is [Object]. If the media is of
  /// indefinite length (such as streamed live media, a WebRTC call's
  /// media, or similar), the value is [+Infinity].
  ///
  /* double | NaN */ dynamic get duration =>
      js_util.getProperty(this, 'duration');
  dynamic getStartDate() => js_util.callMethod(this, 'getStartDate', []);

  ///  Returns a [Boolean] that indicates whether the media element is
  /// paused.
  ///
  bool get paused => js_util.getProperty(this, 'paused');

  /// A [double] indicating the default playback rate for the media.
  ///
  double get defaultPlaybackRate =>
      js_util.getProperty(this, 'defaultPlaybackRate');
  set defaultPlaybackRate(double newValue) {
    js_util.setProperty(this, 'defaultPlaybackRate', newValue);
  }

  ///  Is a [double] that indicates the rate at which the media is
  /// being played back.
  ///
  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }

  ///  Is a [Boolean] that determines if the pitch of the sound will be
  /// preserved. If set to [false], the pitch will adjust to the speed
  /// of the audio. This is implemented with prefixes in Firefox
  /// ([mozPreservesPitch]) and WebKit ([webkitPreservesPitch]).
  ///
  bool get preservesPitch => js_util.getProperty(this, 'preservesPitch');
  set preservesPitch(bool newValue) {
    js_util.setProperty(this, 'preservesPitch', newValue);
  }

  ///  Returns a [TimeRanges] object that contains the ranges of the
  /// media source that the browser has played, if any.
  ///
  TimeRanges get played => js_util.getProperty(this, 'played');

  ///  Returns a [TimeRanges] object that contains the time ranges that
  /// the user is able to seek to, if any.
  ///
  TimeRanges get seekable => js_util.getProperty(this, 'seekable');

  ///  Returns a [Boolean] that indicates whether the media element has
  /// finished playing.
  ///
  bool get ended => js_util.getProperty(this, 'ended');

  ///  A boolean value that reflects the HTML attribute, indicating
  /// whether playback should automatically begin as soon as enough
  /// media is available to do so without interruption.
  ///
  ///     Note: Automatically playing audio when the user doesn't
  /// expect or desire it is a poor user experience and should be
  /// avoided in most cases, though there are exceptions. See the
  /// Autoplay guide for media and Web Audio APIs for more information.
  /// Keep in mind that browsers may ignore autoplay requests, so you
  /// should ensure that your code isn't dependent on autoplay working.
  ///
  ///
  bool get autoplay => js_util.getProperty(this, 'autoplay');
  set autoplay(bool newValue) {
    js_util.setProperty(this, 'autoplay', newValue);
  }

  ///  A [Boolean] that reflects the HTML attribute, which indicates
  /// whether the media element should start over when it reaches the
  /// end.
  ///
  bool get loop => js_util.getProperty(this, 'loop');
  set loop(bool newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  /// Begins playback of the media.
  ///
  /// var promise = HTMLMediaElement.play();
  ///
  ///
  ///  This example demonstrates how to confirm that playback has begun and how to gracefully
  ///  handle blocked automatic playback:
  ///
  /// let videoElem = document.getElementById("video");
  /// let playButton = document.getElementById("playbutton");
  ///
  /// playButton.addEventListener("click", handlePlayButton, false);
  /// playVideo();
  ///
  /// async function playVideo() {
  ///  try {
  ///   await videoElem.play();
  ///   playButton.classList.add("playing");
  ///  } catch(err) {
  ///   playButton.classList.remove("playing");
  ///  }
  /// }
  ///
  /// function handlePlayButton() {
  ///  if (videoElem.paused) {
  ///   playVideo();
  ///  } else {
  ///   videoElem.pause();
  ///   playButton.classList.remove("playing");
  ///  }
  /// }
  ///  In this example, playback of video is toggled off and on by the
  ///  async
  ///  playVideo() function. It tries to play the video, and if successful sets
  ///  the class name of the playButton element to "playing". If
  ///  playback fails to start, the playButton element's class is cleared,
  ///  restoring its default appearance. This ensures that the play button matches the actual
  ///  state of playback by watching for the resolution or rejection of the
  ///  Promise returned by play().
  ///  When this example is executed, it begins by collecting references to the
  ///  <video> element as well as the <button> used to toggle
  ///  playback on and off. It then sets up an event handler for the click event
  ///  on the play toggle button and attempts to automatically begin playback by calling
  ///  playVideo().
  ///
  /// You can try out or remix this example in real time on Glitch.
  Future<Object> play() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'play', []));

  /// Pauses the media playback.
  ///
  /// HTMLMediaElement.pause()
  ///
  Object pause() => js_util.callMethod(this, 'pause', []);

  ///  Is a [Boolean] that reflects the HTML attribute, indicating
  /// whether user interface items for controlling the resource should
  /// be displayed.
  ///
  bool get controls => js_util.getProperty(this, 'controls');
  set controls(bool newValue) {
    js_util.setProperty(this, 'controls', newValue);
  }

  ///  Is a [double] indicating the audio volume, from 0.0 (silent) to
  /// 1.0 (loudest).
  ///
  double get volume => js_util.getProperty(this, 'volume');
  set volume(double newValue) {
    js_util.setProperty(this, 'volume', newValue);
  }

  ///  Is a [Boolean] that determines whether audio is muted. [true] if
  /// the audio is muted and [false] otherwise.
  ///
  bool get muted => js_util.getProperty(this, 'muted');
  set muted(bool newValue) {
    js_util.setProperty(this, 'muted', newValue);
  }

  ///  A [Boolean] that reflects the [muted] HTML attribute, which
  /// indicates whether the media element's audio output should be
  /// muted by default.
  ///
  bool get defaultMuted => js_util.getProperty(this, 'defaultMuted');
  set defaultMuted(bool newValue) {
    js_util.setProperty(this, 'defaultMuted', newValue);
  }

  ///  A [AudioTrackList] that lists the [AudioTrack] objects contained
  /// in the element.
  ///
  AudioTrackList get audioTracks => js_util.getProperty(this, 'audioTracks');

  ///  Returns a [VideoTrackList] object containing the list of
  /// [VideoTrack] objects contained in the element.
  ///
  VideoTrackList get videoTracks => js_util.getProperty(this, 'videoTracks');

  ///  Returns a [TextTrackList] object containing the list of
  /// [TextTrack] objects contained in the element.
  ///
  TextTrackList get textTracks => js_util.getProperty(this, 'textTracks');

  ///  Adds a new [TextTrack] object (such as a track for subtitles) to
  /// a media element. This is a programmatic interface only and does
  /// not affect the DOM.
  ///
  TextTrack addTextTrack(TextTrackKind kind,
          [String? label = '', String? language = '']) =>
      js_util.callMethod(this, 'addTextTrack', [kind, label, language]);

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

///  The interface represents an error which occurred while handling
/// media in an HTML media element based on [HTMLMediaElement], such
/// as [<audio>] or [<video>].
///  A object describes the error in general terms using a numeric
/// [code] categorizing the kind of error, and a [message], which
/// provides specific diagnostics about what went wrong.
@JS()
@staticInterop
class MediaError {
  external static int get MEDIA_ERR_ABORTED;
  external static int get MEDIA_ERR_NETWORK;
  external static int get MEDIA_ERR_DECODE;
  external static int get MEDIA_ERR_SRC_NOT_SUPPORTED;
  external MediaError();
}

extension PropsMediaError on MediaError {
  ///  A number which represents the general type of error that
  /// occurred, as follows:
  ///
  ///
  ///    Name
  ///    Value
  ///    Description
  ///
  ///
  ///
  ///
  ///    [MEDIA_ERR_ABORTED]
  ///    [1]
  ///
  ///      The fetching of the associated resource was aborted by the
  /// user's
  ///     request.
  ///
  ///
  ///
  ///    [MEDIA_ERR_NETWORK]
  ///    [2]
  ///
  ///      Some kind of network error occurred which prevented the
  /// media from being
  ///      successfully fetched, despite having previously been
  /// available.
  ///
  ///
  ///
  ///    [MEDIA_ERR_DECODE]
  ///    [3]
  ///
  ///      Despite having previously been determined to be usable, an
  /// error
  ///      occurred while trying to decode the media resource,
  /// resulting in an
  ///     error.
  ///
  ///
  ///
  ///    [MEDIA_ERR_SRC_NOT_SUPPORTED]
  ///    [4]
  ///
  ///     The associated resource or media provider object (such as a
  ///     [MediaStream]) has been found to be unsuitable.
  ///
  ///
  ///
  ///
  ///
  int get code => js_util.getProperty(this, 'code');

  ///  A [String] object containing a human-readable string which
  /// provides specific diagnostic information to help the reader
  /// understand the error condition which occurred; specifically, it
  /// isn't a summary of what the error code means, but actual
  /// diagnostic information to help in understanding what exactly went
  /// wrong. This text and its format is not defined by the
  /// specification and will vary from one user agent to another. If no
  /// diagnostics are available, or no explanation can be provided,
  /// this value is an empty string ([""]).
  ///
  String get message => js_util.getProperty(this, 'message');
}

///  The interface is used to represent a list of the audio tracks
/// contained within a given HTML media element, with each track
/// represented by a separate [AudioTrack] object in the list.
///  Retrieve an instance of this object with
/// [HTMLMediaElement.audioTracks]. The individual tracks can be
/// accessed using array syntax.
@JS()
@staticInterop
class AudioTrackList implements EventTarget {
  external AudioTrackList();
}

extension PropsAudioTrackList on AudioTrackList {
  /// The number of tracks in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns the [AudioTrack] found within the [AudioTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  ///
  /// var theTrack = AudioTrackList.getTrackById(id);
  ///
  ///
  ///  This example suggests a hypothetical game in which movies are used as cut-scenes or
  ///  other key set pieces within the game. Each movie has one audio track for each character,
  ///  as well as one for the music, sound effects, and so forth. This function allows the game
  ///  to disable a specific character's audio in order to adjust the movie's performance based
  ///  on occurrences within the game; if the character's dialog isn't relevant, it gets left
  ///  out. Obviously that would require some clever graphic design to make work, but... it's a
  ///  hypothetical game.
  ///
  /// function disableCharacter(videoElem, characterName) {
  ///  videoElem.audioTracks.getTrackById(characterName).enabled = false;
  /// }
  ///  This short function gets the AudioTrackList containing the video's audio
  ///  tracks using HTMLMediaElement.audioTracks, then calls
  ///  getTrackById() on it, specifying the character's name. The resulting
  ///  track's audio is then disabled by setting its enabled flag to false.
  ///
  AudioTrack? getTrackById(

          ///
          ///     A [String] indicating the ID of the track to locate within
          /// the track
          ///    list.
          ///
          ///
          String id) =>
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
  external AudioTrack();
}

extension PropsAudioTrack on AudioTrack {
  ///  A [String] which uniquely identifies the track within the media.
  /// This ID can be used to locate a specific track within an audio
  /// track list by calling [AudioTrackList.getTrackById()]. The ID can
  /// also be used as the fragment part of the URL if the media
  /// supports seeking by media fragment per the Media Fragments URI
  /// specification.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  A [String] specifying the category into which the track falls.
  /// For example, the main audio track would have a of ["main"].
  ///
  String get kind => js_util.getProperty(this, 'kind');

  ///  A [String] providing a human-readable label for the track. For
  /// example, an audio commentary track for a movie might have a of
  /// ["Commentary with director John Q. Public and actors John Doe and
  /// Jane Eod."] This string is empty if no label is provided.
  ///
  String get label => js_util.getProperty(this, 'label');

  ///  A [String] specifying the audio track's primary language, or an
  /// empty string if unknown. The language is specified as a BCP 47
  /// (RFC 5646) language code, such as ["en-US"] or ["pt-BR"].
  ///
  String get language => js_util.getProperty(this, 'language');

  ///  A Boolean value which controls whether or not the audio track's
  /// sound is enabled. Setting this value to [false] mutes the track's
  /// audio.
  ///
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
@JS()
@staticInterop
class VideoTrackList implements EventTarget {
  external VideoTrackList();
}

extension PropsVideoTrackList on VideoTrackList {
  /// The number of tracks in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns the [VideoTrack] found within the [VideoTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  ///
  /// var theTrack = VideoTrackList.getTrackById(id);
  ///
  VideoTrack? getTrackById(

          ///
          ///     A [String] indicating the ID of the track to locate within
          /// the track
          ///    list.
          ///
          ///
          String id) =>
      js_util.callMethod(this, 'getTrackById', [id]);

  ///  The index of the currently selected track, if any, or [−1]
  /// otherwise.
  ///
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
  external VideoTrack();
}

extension PropsVideoTrack on VideoTrack {
  ///  A [String] which uniquely identifies the track within the media.
  /// This ID can be used to locate a specific track within a video
  /// track list by calling [VideoTrackList.getTrackById()]. The ID can
  /// also be used as the fragment part of the URL if the media
  /// supports seeking by media fragment per the Media Fragments URI
  /// specification.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  A [String] specifying the category into which the track falls.
  /// For example, the main video track would have a of ["main"].
  ///
  String get kind => js_util.getProperty(this, 'kind');

  ///  A [String] providing a human-readable label for the track. For
  /// example, a track whose [kind] is ["sign"] might have a of ["A
  /// sign-language interpretation"]. This string is empty if no label
  /// is provided.
  ///
  String get label => js_util.getProperty(this, 'label');

  ///  A [String] specifying the video track's primary language, or an
  /// empty string if unknown. The language is specified as a BCP 47
  /// (RFC 5646) language code, such as ["en-US"] or ["pt-BR"].
  ///
  String get language => js_util.getProperty(this, 'language');

  ///  A Boolean value which controls whether or not the video track is
  /// active. Only a single video track can be active at any given
  /// time, so setting this property to [true] for one track while
  /// another track is active will make that other track inactive.
  ///
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
@JS()
@staticInterop
class TextTrackList implements EventTarget {
  external TextTrackList();
}

extension PropsTextTrackList on TextTrackList {
  /// The number of tracks in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns the [TextTrack] found within the [TextTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  ///
  /// var theTrack = TextTrackList.getTrackById(id);
  ///
  TextTrack? getTrackById(

          ///
          ///     A [String] indicating the ID of the track to locate within
          /// the track
          ///    list.
          ///
          ///
          String id) =>
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

///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track
/// associated with a particular [<track>] element.
@JS()
@staticInterop
class TextTrack implements EventTarget {
  external TextTrack();
}

extension PropsTextTrack on TextTrack {
  ///  Returns a [String] indicating what kind of text track the
  /// [TextTrack] describes. It must be one of the permitted values.
  ///
  TextTrackKind get kind => js_util.getProperty(this, 'kind');

  ///  A human-readable [String] which contains the text track's label,
  /// if one is present; otherwise, this is an empty string ([""]), in
  /// which case a custom label may need to be generated by your code
  /// using other attributes of the track, if the track's label needs
  /// to be exposed to the user.
  ///
  String get label => js_util.getProperty(this, 'label');

  ///  A [String] which specifies the text language in which the text
  /// track's contents is written. The value must adhere to the format
  /// specified in RFC 5646: Tags for Identifying Languages (also known
  /// as BCP 47), just like the HTML [lang] attribute. For example,
  /// this can be ["en-US"] for United States English or ["pt-BR"] for
  /// Brazilian Portuguese.
  ///
  String get language => js_util.getProperty(this, 'language');

  ///  A [String] which identifies the track, if it has one. If it
  /// doesn't have an ID, then this value is an empty string ([""]). If
  /// the [TextTrack] is associated with a [<track>] element, then the
  /// track's ID matches the element's ID.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  Returns a [String] which indicates the track's in-band metadata
  /// track dispatch type.
  ///
  String get inBandMetadataTrackDispatchType =>
      js_util.getProperty(this, 'inBandMetadataTrackDispatchType');

  ///  A [String] specifying the track's current mode, which must be
  /// one of the permitted values. Changing this property's value
  /// changes the track's current mode to match. The default is
  /// [disabled], unless the [<track>] element's [default] Boolean
  /// attribute is specified, in which case the default mode is
  /// [started].
  ///
  TextTrackMode get mode => js_util.getProperty(this, 'mode');
  set mode(TextTrackMode newValue) {
    js_util.setProperty(this, 'mode', newValue);
  }

  /// A [TextTrackCueList] which contains all of the track's cues.
  ///
  TextTrackCueList? get cues => js_util.getProperty(this, 'cues');

  ///  A [TextTrackCueList] object listing the currently active set of
  /// text track cues. Track cues are active if the current playback
  /// position of the media is between the cues' start and end times.
  /// Thus, for displayed cues such as captions or subtitles, the
  /// active cues are currently being displayed.
  ///
  TextTrackCueList? get activeCues => js_util.getProperty(this, 'activeCues');

  ///  Adds a cue (specified as a [TextTrackCue] object) to the track's
  /// list of cues.
  ///
  /// TextTrack.addCue(cue);
  ///
  Object addCue(

          /// A [TextTrackCue].
          ///
          TextTrackCue cue) =>
      js_util.callMethod(this, 'addCue', [cue]);

  ///  Removes a cue (specified as a [TextTrackCue] object) from the
  /// track's list of cues.
  ///
  /// TextTrack.removeCue(cue);
  ///
  Object removeCue(

          /// A [TextTrackCue].
          ///
          TextTrackCue cue) =>
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
  external TextTrackCueList();
}

extension PropsTextTrackCueList on TextTrackCueList {
  /// An [int] that is the number of cues in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns the first [TextTrackCue] object with the identifier
  /// passed to it.
  ///
  /// var cue = TextTrackCueList.getCueById(id);
  ///
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
@JS()
@staticInterop
class TextTrackCue implements EventTarget {
  external TextTrackCue();
}

extension PropsTextTrackCue on TextTrackCue {
  ///  The [TextTrack] that this cue belongs to, or [null] if it
  /// doesn't belong to any.
  ///
  TextTrack? get track => js_util.getProperty(this, 'track');

  /// A [String] that identifies the cue.
  ///
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  ///  A [double] that represents the video time that the cue will
  /// start being displayed, in seconds.
  ///
  double get startTime => js_util.getProperty(this, 'startTime');
  set startTime(double newValue) {
    js_util.setProperty(this, 'startTime', newValue);
  }

  ///  A [double] that represents the video time that the cue will stop
  /// being displayed, in seconds.
  ///
  /* double | NaN */ dynamic get endTime =>
      js_util.getProperty(this, 'endTime');
  set endTime(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'endTime', newValue);
  }

  ///  A [bool] for whether the video will pause when this cue stops
  /// being displayed.
  ///
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
  external TimeRanges();
}

extension PropsTimeRanges on TimeRanges {
  ///  Returns an [int] representing the number of time ranges
  /// represented by the time range object.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns the time for the start of the range with the specified
  /// index.
  ///
  /// startTime = TimeRanges.start(index)
  ///
  /// Given a video element with the ID "myVideo":
  /// var v = document.getElementById("myVideo");
  ///
  /// var buf = v.buffered;
  ///
  /// var numRanges = buf.length;
  ///
  /// if (buf.length == 1) {
  ///  // only one range
  ///  if (buf.start(0) == 0 && buf.end(0) == v.duration) {
  ///   // The one range starts at the beginning and ends at
  ///   // the end of the video, so the whole thing is loaded
  ///  }
  /// }
  ///  This example looks at the time ranges and looks to see if the entire video has been
  ///  loaded.
  ///
  double start(int index) => js_util.callMethod(this, 'start', [index]);

  /// Returns the time for the end of the specified range.
  ///
  /// endTime = TimeRanges.end(index)
  ///
  /// Given a video element with the ID "myVideo":
  /// var v = document.getElementById("myVideo");
  ///
  /// var buf = v.buffered;
  ///
  /// var numRanges = buf.length;
  ///
  /// if (buf.length == 1) {
  ///  // only one range
  ///  if (buf.start(0) == 0 && buf.end(0) == v.duration) {
  ///   // The one range starts at the beginning and ends at
  ///   // the end of the video, so the whole thing is loaded
  ///  }
  /// }
  ///  This example looks at the time ranges and looks to see if the entire video has been
  ///  loaded.
  ///
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
@JS()
@staticInterop
class TrackEvent implements Event {
  external TrackEvent(String type, [TrackEventInit? eventInitDict]);
}

extension PropsTrackEvent on TrackEvent {
  ///  The DOM track object the event is in reference to. If not
  /// [null], this is always an object of one of the media track types:
  /// [AudioTrack], [VideoTrack], or [TextTrack]).
  ///
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
  external HTMLMapElement();
}

extension PropsHTMLMapElement on HTMLMapElement {
  ///  Is a [String] representing the [<map>] element for referencing
  /// it other context. If the [id] attribute is set, this must have
  /// the same value; and it cannot be [null] or empty.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Is a live [HTMLCollection] representing the [<area>] elements
  /// associated to this [<map>].
  ///
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
  external HTMLAreaElement();
}

extension PropsHTMLAreaElement on HTMLAreaElement {
  ///  Is a [String] that reflects the HTML attribute, containing
  /// alternative text for the element.
  ///
  String get alt => js_util.getProperty(this, 'alt');
  set alt(String newValue) {
    js_util.setProperty(this, 'alt', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing
  /// coordinates to define the hot-spot region.
  ///
  String get coords => js_util.getProperty(this, 'coords');
  set coords(String newValue) {
    js_util.setProperty(this, 'coords', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// shape of the hot-spot, limited to known values.
  ///
  String get shape => js_util.getProperty(this, 'shape');
  set shape(String newValue) {
    js_util.setProperty(this, 'shape', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating the
  /// browsing context in which to open the linked resource.
  ///
  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  ///  Is a [String] indicating that the linked resource is intended to
  /// be downloaded rather than displayed in the browser. The value
  /// represent the proposed name of the file. If the name is not a
  /// valid filename of the underlying OS, browser will adapt it.
  ///
  @experimental
  String get download => js_util.getProperty(this, 'download');
  set download(String newValue) {
    js_util.setProperty(this, 'download', newValue);
  }

  String get ping => js_util.getProperty(this, 'ping');
  set ping(String newValue) {
    js_util.setProperty(this, 'ping', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, indicating
  /// relationships of the current document to the linked resource.
  ///
  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  ///  Returns a [DOMTokenList] that reflects the [rel] HTML attribute,
  /// indicating relationships of the current document to the linked
  /// resource, as a list of tokens.
  ///
  DOMTokenList get relList => js_util.getProperty(this, 'relList');

  ///  Is a [String] that reflects the [referrerpolicy] HTML attribute
  /// indicating which referrer to use when fetching the linked
  /// resource.
  ///
  @experimental
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
  external HTMLTableElement();
}

extension PropsHTMLTableElement on HTMLTableElement {
  ///  Is a [HTMLTableCaptionElement] representing the first
  /// [<caption>] that is a child of the element, or [null] if none is
  /// found. When set, if the object doesn't represent a [<caption>], a
  /// [Exception] with the [HierarchyRequestError] name is thrown. If a
  /// correct object is given, it is inserted in the tree as the first
  /// child of this element and the first [<caption>] that is a child
  /// of this element is removed from the tree, if any.
  ///
  HTMLTableCaptionElement? get caption => js_util.getProperty(this, 'caption');
  set caption(HTMLTableCaptionElement? newValue) {
    js_util.setProperty(this, 'caption', newValue);
  }

  ///  Returns an [HTMLElement] representing the first [<caption>] that
  /// is a child of the element. If none is found, a new one is created
  /// and inserted in the tree as the first child of the [<table>]
  /// element.
  ///
  /// HTMLTableElement = table.createCaption();
  ///
  /// This example uses JavaScript to add a caption to a table that initially lacks one.
  /// <table>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td><td>Cell 1.3</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td><td>Cell 2.3</td></tr>
  /// </table>
  ///
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// let caption = table.createCaption();
  /// caption.textContent = 'This caption was created by JavaScript!';
  ///
  /// ```
  ///
  HTMLTableCaptionElement createCaption() =>
      js_util.callMethod(this, 'createCaption', []);

  /// Removes the first [<caption>] that is a child of the element.
  ///
  /// HTMLTableElement.deleteCaption()
  ///
  /// This example uses JavaScript to delete a table's caption.
  /// <table>
  ///  <caption>This caption will be deleted!</caption>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td></tr>
  /// </table>
  ///
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteCaption();
  ///
  /// ```
  ///
  Object deleteCaption() => js_util.callMethod(this, 'deleteCaption', []);

  ///  Is a [HTMLTableSectionElement] representing the first [<thead>]
  /// that is a child of the element, or [null] if none is found. When
  /// set, if the object doesn't represent a [<thead>], a [Exception]
  /// with the [HierarchyRequestError] name is thrown. If a correct
  /// object is given, it is inserted in the tree immediately before
  /// the first element that is neither a [<caption>], nor a
  /// [<colgroup>], or as the last child if there is no such element,
  /// and the first [<thead>] that is a child of this element is
  /// removed from the tree, if any.
  ///
  HTMLTableSectionElement? get tHead => js_util.getProperty(this, 'tHead');
  set tHead(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tHead', newValue);
  }

  ///  Returns an [HTMLTableSectionElement] representing the first
  /// [<thead>] that is a child of the element. If none is found, a new
  /// one is created and inserted in the tree immediately before the
  /// first element that is neither a [<caption>], nor a [<colgroup>],
  /// or as the last child if there is no such element.
  ///
  /// table.createTHead();
  ///
  /// let myhead = mytable.createTHead();
  /// // Now this should be true: myhead == mytable.tHead
  ///
  HTMLTableSectionElement createTHead() =>
      js_util.callMethod(this, 'createTHead', []);

  /// Removes the first [<thead>] that is a child of the element.
  ///
  /// HTMLTableElement.deleteTHead();
  ///
  /// This example uses JavaScript to delete a table's header.
  /// <table>
  ///  <thead><th>Name</th><th>Occupation</th></thead>
  ///  <tr><td>Bob</td><td>Plumber</td></tr>
  ///  <tr><td>Jim</td><td>Roofer</td></tr>
  /// </table>
  ///
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteTHead();
  ///
  /// ```
  ///
  Object deleteTHead() => js_util.callMethod(this, 'deleteTHead', []);

  ///  Is a [HTMLTableSectionElement] representing the first [<tfoot>]
  /// that is a child of the element, or [null] if none is found. When
  /// set, if the object doesn't represent a [<tfoot>], a [Exception]
  /// with the [HierarchyRequestError] name is thrown. If a correct
  /// object is given, it is inserted in the tree immediately before
  /// the first element that is neither a [<caption>], a [<colgroup>],
  /// nor a [<thead>], or as the last child if there is no such
  /// element, and the first [<tfoot>] that is a child of this element
  /// is removed from the tree, if any.
  ///
  HTMLTableSectionElement? get tFoot => js_util.getProperty(this, 'tFoot');
  set tFoot(HTMLTableSectionElement? newValue) {
    js_util.setProperty(this, 'tFoot', newValue);
  }

  ///  Returns an [HTMLTableSectionElement] representing the first
  /// [<tfoot>] that is a child of the element. If none is found, a new
  /// one is created and inserted in the tree as the last child.
  ///
  /// table.createTFoot();
  ///
  /// let myfoot = mytable.createTFoot();
  /// // Now this should be true: myfoot == mytable.tFoot
  ///
  HTMLTableSectionElement createTFoot() =>
      js_util.callMethod(this, 'createTFoot', []);

  /// Removes the first [<tfoot>] that is a child of the element.
  ///
  /// HTMLTableElement.deleteTFoot();
  ///
  /// This example uses JavaScript to delete a table's footer.
  /// <table>
  ///  <thead><th>Name</th><th>Score</th></thead>
  ///  <tr><td>Bob</td><td>541</td></tr>
  ///  <tr><td>Jim</td><td>225</td></tr>
  ///  <tfoot><th>Average</th><td>383</td></tfoot>
  /// </table>
  ///
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteTFoot();
  ///
  /// ```
  ///
  Object deleteTFoot() => js_util.callMethod(this, 'deleteTFoot', []);

  ///  Returns a live [HTMLCollection] containing all the [<tbody>] of
  /// the element. The [HTMLCollection] is live and is automatically
  /// updated when the [HTMLTableElement] changes.
  ///
  HTMLCollection get tBodies => js_util.getProperty(this, 'tBodies');

  ///  Returns a [HTMLTableSectionElement] representing a new [<tbody>]
  /// that is a child of the element. It is inserted in the tree after
  /// the last element that is a [<tbody>], or as the last child if
  /// there is no such element.
  ///
  /// table.createTBody();
  ///
  /// let mybody = mytable.createTBody();
  /// // Now this should be true: mybody == mytable.tBodies.item(mytable.tBodies.length - 1)
  ///
  HTMLTableSectionElement createTBody() =>
      js_util.callMethod(this, 'createTBody', []);

  ///  Returns a live [HTMLCollection] containing all the rows of the
  /// element, that is all [<tr>] that are a child of the element, or a
  /// child of one of its [<thead>], [<tbody>] and [<tfoot>] children.
  /// The rows members of a [<thead>] appear first, in tree order, and
  /// those members of a [<tbody>] last, also in tree order. The
  /// [HTMLCollection] is live and is automatically updated when the
  /// [HTMLTableElement] changes.
  ///
  HTMLCollection get rows => js_util.getProperty(this, 'rows');

  ///  Returns an [HTMLTableRowElement] representing a new row of the
  /// table. It inserts it in the rows collection immediately before
  /// the [<tr>] element at the given [index] position. If necessary a
  /// [<tbody>] is created. If the [index] is [-1], the new row is
  /// appended to the collection. If the [index] is smaller than [-1]
  /// or greater than the number of rows in the collection, a
  /// [Exception] with the value [IndexSizeError] is raised.
  ///
  /// var newRow = HTMLTableElement.insertRow(index);
  ///  HTMLTableElement is a reference to an HTML <table>
  ///  element.
  ///
  /// This example uses insertRow(-1) to append a new row to a table.
  ///
  ///  We then use HTMLTableRowElement.insertCell() to insert a new cell in the
  ///  new row. (To be valid HTML, a <tr> must have at least one
  ///  <td> element.) Finally, we add some text to the cell using
  ///  Document.createTextNode() and Node.appendChild().
  ///
  /// <table id="my-table">
  ///  <tr><td>Row 1</td></tr>
  ///  <tr><td>Row 2</td></tr>
  ///  <tr><td>Row 3</td></tr>
  /// </table>
  ///
  /// ```
  ///
  /// function addRow(tableID) {
  ///  // Get a reference to the table
  ///  let tableRef = document.getElementById(tableID);
  ///
  ///  // Insert a row at the end of the table
  ///  let newRow = tableRef.insertRow(-1);
  ///
  ///  // Insert a cell in the row at index 0
  ///  let newCell = newRow.insertCell(0);
  ///
  ///  // Append a text node to the cell
  ///  let newText = document.createTextNode('New bottom row');
  ///  newCell.appendChild(newText);
  /// }
  ///
  /// // Call addRow() with the table's ID
  /// addRow('my-table');
  ///
  /// ```
  ///
  HTMLTableRowElement insertRow(
          [

          ///
          ///    The row index of the new row. If is [-1] or equal to
          ///    the number of rows, the row is appended as the last row.
          ///    If is omitted it defaults to [-1].
          ///
          ///
          int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  ///  Removes the row corresponding to the [index] given in parameter.
  /// If the [index] value is [-1] the last row is removed; if it is
  /// smaller than [-1] or greater than the amount of rows in the
  /// collection, a [Exception] with the value [IndexSizeError] is
  /// raised.
  ///
  /// HTMLTableElement.deleteRow(index)
  ///
  /// This example uses JavaScript to delete a table's second row.
  /// <table>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td><td>Cell 1.3</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td><td>Cell 2.3</td></tr>
  ///  <tr><td>Cell 3.1</td><td>Cell 3.2</td><td>Cell 3.3</td></tr>
  /// </table>
  ///
  /// ```
  ///
  /// let table = document.querySelector('table');
  ///
  /// // Delete second row
  /// table.deleteRow(1);
  ///
  /// ```
  ///
  Object deleteRow(

          ///
          ///     is an integer representing the row that should be deleted.
          ///     However, the special index [-1] can be used to remove the
          /// very last row of
          ///    a table.
          ///
          ///
          int index) =>
      js_util.callMethod(this, 'deleteRow', [index]);

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
  external HTMLTableCaptionElement();
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
  external HTMLTableColElement();
}

extension PropsHTMLTableColElement on HTMLTableColElement {
  ///  Is an [int] that reflects the HTML attribute, indicating the
  /// number of columns to apply this object's attributes to. Must be a
  /// positive integer.
  ///
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
  external HTMLTableSectionElement();
}

extension PropsHTMLTableSectionElement on HTMLTableSectionElement {
  ///  Returns a live [HTMLCollection] containing the rows in the
  /// section. The [HTMLCollection] is live and is automatically
  /// updated when rows are added or removed.
  ///
  HTMLCollection get rows => js_util.getProperty(this, 'rows');

  ///  Returns an [HTMLTableRowElement] representing a new row of the
  /// section. It inserts it in the rows collection immediately before
  /// the [<tr>] element at the given [index] position. If the [index]
  /// is [-1], the new row is appended to the collection. If the
  /// [index] is smaller than [-1] or greater than the number of rows
  /// in the collection, a [Exception] with the value [IndexSizeError]
  /// is raised.
  ///
  HTMLTableRowElement insertRow([int? index = -1]) =>
      js_util.callMethod(this, 'insertRow', [index]);

  ///  Removes the row, corresponding to the [index] given in
  /// parameter, in the section. If the [index] value is [-1] the last
  /// row is removed; if it smaller than [-1] or greater than the
  /// amount of rows in the collection, a [Exception] with the value
  /// [IndexSizeError] is raised.
  ///
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
  external HTMLTableRowElement();
}

extension PropsHTMLTableRowElement on HTMLTableRowElement {
  ///  Returns a [int] value which gives the logical position of the
  /// row within the entire table. If the row is not part of a table,
  /// returns [-1].
  ///
  int get rowIndex => js_util.getProperty(this, 'rowIndex');

  ///  Returns a [int] value which gives the logical position of the
  /// row within the table section it belongs to. If the row is not
  /// part of a section, returns [-1].
  ///
  int get sectionRowIndex => js_util.getProperty(this, 'sectionRowIndex');

  ///  Returns a live [HTMLCollection] containing the cells in the row.
  /// The [HTMLCollection] is live and is automatically updated when
  /// cells are added or removed.
  ///
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
  external HTMLTableCellElement();
}

extension PropsHTMLTableCellElement on HTMLTableCellElement {
  ///  An unsigned long integer indicating the number of columns this
  /// cell must span; this lets the cell occupy space across multiple
  /// columns of the table. It reflects the [colspan] attribute.
  ///
  int get colSpan => js_util.getProperty(this, 'colSpan');
  set colSpan(int newValue) {
    js_util.setProperty(this, 'colSpan', newValue);
  }

  ///  An unsigned long integer indicating the number of rows this cell
  /// must span; this lets a cell occupy space across multiple rows of
  /// the table. It reflects the [rowspan] attribute.
  ///
  int get rowSpan => js_util.getProperty(this, 'rowSpan');
  set rowSpan(int newValue) {
    js_util.setProperty(this, 'rowSpan', newValue);
  }

  ///  A [DOMTokenList] describing a list of [id] of [<th>] elements
  /// that represents headers associated with the cell. It reflects the
  /// attribute.
  ///
  String get headers => js_util.getProperty(this, 'headers');
  set headers(String newValue) {
    js_util.setProperty(this, 'headers', newValue);
  }

  ///  A long integer representing the cell's position in the [cells]
  /// collection of the [<tr>] the cell is contained within. If the
  /// cell doesn't belong to a [<tr>], it returns [-1].
  ///
  int get cellIndex => js_util.getProperty(this, 'cellIndex');

  ///  A string indicating the scope of a [<th>] cell. Header cells can
  /// be configured, using the property, the apply to a specified row
  /// or column, or to the not-yet-scoped cells within the current row
  /// group (that is, the same ancestor [<thead>], [<tbody>], or
  /// [<tfoot>] element). If no value is specified for , the header is
  /// not associated directly with cells in this way. Permitted values
  /// for are:
  ///
  ///    [col]
  ///
  ///      The header cell applies to the following cells in the same
  /// column (or columns, if [colspan] is used as well), until either
  /// the end of the column or another [<th>] in the column establishes
  /// a new scope.
  ///
  ///    [colgroup]
  ///
  ///      The header cell applies to all cells in the current column
  /// group that do not already have a scope applied to them. This
  /// value is only allowed if the cell is in a column group.
  ///
  ///    [row]
  ///
  ///      The header cell applies to the following cells in the same
  /// row (or rows, if [rowspan] is used as well), until either the end
  /// of the row or another [<th>] in the same row establishes a new
  /// scope.
  ///
  ///    [rowgroup]
  ///
  ///      The header cell applies to all cells in the current row
  /// group that do not already have a scope applied to them. This
  /// value is only allowed if the cell is in a row group.
  ///
  ///    The empty string ([""])
  ///
  ///      The header cell has no predefined scope; the user agent will
  /// establish the scope based on contextual clues.
  ///
  ///
  ///
  String get scope => js_util.getProperty(this, 'scope');
  set scope(String newValue) {
    js_util.setProperty(this, 'scope', newValue);
  }

  ///  A string which can be used on [<th>] elements (not on [<td>]),
  /// specifying an alternative label for the header cell. This
  /// alternate label can be used in other contexts, such as when
  /// describing the headers that apply to a data cell. This is used to
  /// offer a shorter term for use by screen readers in particular, and
  /// is a valuable accessibility tool. Usually the value of is an
  /// abbreviation or acronym, but can be any text that's appropriate
  /// contextually.
  ///
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
  external HTMLFormElement();
}

extension PropsHTMLFormElement on HTMLFormElement {
  ///  A [String] reflecting the value of the form's [accept-charset]
  /// HTML attribute, representing the character encoding that the
  /// server accepts.
  ///
  String get acceptCharset => js_util.getProperty(this, 'acceptCharset');
  set acceptCharset(String newValue) {
    js_util.setProperty(this, 'acceptCharset', newValue);
  }

  ///  A [String] reflecting the value of the form's HTML attribute,
  /// containing the URI of a program that processes the information
  /// submitted by the form.
  ///
  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }

  ///  A [String] reflecting the value of the form's HTML attribute,
  /// indicating whether the controls in this form can have their
  /// values automatically populated by the browser.
  ///
  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  String get enctype => js_util.getProperty(this, 'enctype');
  set enctype(String newValue) {
    js_util.setProperty(this, 'enctype', newValue);
  }

  ///  A [String] reflecting the value of the form's [enctype] HTML
  /// attribute, indicating the type of content that is used to
  /// transmit the form to the server. Only specified values can be
  /// set. The two properties are synonyms.
  ///
  String get encoding => js_util.getProperty(this, 'encoding');
  set encoding(String newValue) {
    js_util.setProperty(this, 'encoding', newValue);
  }

  ///  A [String] reflecting the value of the form's HTML attribute,
  /// indicating the HTTP method used to submit the form. Only
  /// specified values can be set.
  ///
  String get method => js_util.getProperty(this, 'method');
  set method(String newValue) {
    js_util.setProperty(this, 'method', newValue);
  }

  ///  A [String] reflecting the value of the form's HTML attribute,
  /// containing the name of the form.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  A boolean value reflecting the value of the form's [novalidate]
  /// HTML attribute, indicating whether the form should not be
  /// validated.
  ///
  bool get noValidate => js_util.getProperty(this, 'noValidate');
  set noValidate(bool newValue) {
    js_util.setProperty(this, 'noValidate', newValue);
  }

  ///  A [String] reflecting the value of the form's HTML attribute,
  /// indicating where to display the results received from submitting
  /// the form.
  ///
  String get target => js_util.getProperty(this, 'target');
  set target(String newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  DOMTokenList get relList => js_util.getProperty(this, 'relList');

  ///  A [HTMLFormControlsCollection] holding all form controls
  /// belonging to this form element.
  ///
  HTMLFormControlsCollection get elements =>
      js_util.getProperty(this, 'elements');

  /// A [int] reflecting the number of controls in the form.
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Submits the form to the server.
  ///
  /// HTMLFormElement.submit()
  ///
  /// document.forms["myform"].submit();
  ///
  Object submit() => js_util.callMethod(this, 'submit', []);

  ///  Requests that the form be submitted using the specified submit
  /// button and its corresponding configuration.
  ///
  /// htmlFormElement.requestSubmit(submitter);
  ///
  Object requestSubmit(
          [

          ///
          ///     The submit button whose attributes describe the method by
          /// which the form is to be
          ///    submitted. This may be either an [<input>] or
          ///    [<button>] element whose [type] attribute
          ///    is [submit].
          ///
          ///
          ///    If you omit the parameter, the form element
          ///    itself is used as the submitter.
          ///
          ///
          HTMLElement? submitter]) =>
      js_util.callMethod(this, 'requestSubmit', [submitter]);

  /// Resets the form to its initial state.
  ///
  /// HTMLFormElement.reset()
  ///
  /// document.getElementById('myform').reset();
  ///
  Object reset() => js_util.callMethod(this, 'reset', []);

  ///  Returns [true] if the element's child controls are subject to
  /// constraint validation and satisfy those constraints; returns
  /// [false] if some controls do not satisfy their constraints. Fires
  /// an event named [invalid] at any control that does not satisfy its
  /// constraints; such controls are considered invalid if the event is
  /// not canceled. It is up to the programmer to decide how to respond
  /// to [false].
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  ///  Returns [true] if the element's child controls satisfy their
  /// validation constraints. When [false] is returned, cancelable
  /// [invalid] events are fired for each invalid child and validation
  /// problems are reported to the user.
  ///
  /// HTMLFormElement.reportValidity()
  ///
  /// document.forms['myform'].addEventListener('submit', function() {
  ///  document.forms['myform'].reportValidity();
  /// }, false);
  ///
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
  external HTMLLabelElement();
}

extension PropsHTMLLabelElement on HTMLLabelElement {
  ///  Is a [HTMLFormElement] object representing the form with which
  /// the labeled control is associated, or [null] if there is no
  /// associated control, or if that control isn't associated with a
  /// form. In other words, this is just a shortcut for
  /// [HTMLLabelElement.control.form].
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  Is a string containing the ID of the labeled control. This
  /// reflects the [for] attribute.
  ///
  String get htmlFor => js_util.getProperty(this, 'htmlFor');
  set htmlFor(String newValue) {
    js_util.setProperty(this, 'htmlFor', newValue);
  }

  ///  Is a [HTMLElement] representing the control with which the label
  /// is associated.
  ///
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

  ///  Increments the [value] by ([step] * n), where n defaults to 1 if
  /// not specified. Throws an [InvalidStateError] exception:
  ///
  ///     if the method is not applicable to for the current [type]
  /// value.,
  ///    if the element has no [step] value,
  ///    if the [value] cannot be converted to a number,
  ///    if the resulting value is above the [max] or below the [min].
  ///
  ///
  /// element.stepUp( [ stepIncrement ] );
  ///
  /// Click the button in this example to increment the number input type:
  /// <p>
  ///  <label>Enter a number between 0 and 400 that is divisible by 5:
  ///   <input type="number" step="5" id="theNumber" min="0" max="400">
  ///  </label>
  /// </p>
  /// <p>
  ///  <label>Enter how many values of step you would like to increment by or leave it blank:
  ///   <input type="number" step="1" id="incrementer" min="0" max="25">
  ///  </label>
  /// </p>
  /// <input type="button" value="Increment" id="theButton">
  ///
  /// ```
  ///
  /// /* make the button call the function */
  /// let button = document.getElementById('theButton')
  /// button.addEventListener('click', function() {
  ///  steponup()
  /// })
  ///
  /// function steponup() {
  ///  let input = document.getElementById('theNumber')
  ///  let val = document.getElementById('incrementer').value
  ///
  ///  if (val) { /* increment with a parameter */
  ///   input.stepUp(val)
  ///  } else {  /* or without a parameter. Try it with 0 */
  ///   input.stepUp()
  ///  }
  /// }
  ///
  /// ```
  ///
  Object stepUp([int? n = 1]) => js_util.callMethod(this, 'stepUp', [n]);

  ///  Decrements the [value] by ([step] * n), where n defaults to 1 if
  /// not specified. Throws an [InvalidStateError] exception:
  ///
  ///     if the method is not applicable to for the current [type]
  /// value,
  ///    if the element has no [step] value,
  ///    if the [value] cannot be converted to a number,
  ///    if the resulting value is above the [max] or below the [min].
  ///
  ///
  /// element.stepDown( [ stepDecrement ] );
  ///
  /// Click the button in this example to increment the number input type:
  /// <p>
  ///  <label>Enter a number between 0 and 400 that is divisible by 5:
  ///   <input type="number" step="5" id="theNumber" min="0" max="400">
  ///  </label>
  /// </p>
  /// <p>
  ///  <label>Enter how many values of step you would like to increment by or leave it blank:
  ///   <input type="number" step="1" id="decrementer" min="-2" max="15">
  ///  </label>
  /// </p>
  /// <input type="button" value="Decrement" id="theButton">
  ///
  /// ```
  ///
  /// /* make the button call the function */
  /// let button = document.getElementById('theButton');
  /// button.addEventListener('click', function() {
  ///  stepondown();}
  /// );
  ///
  /// function stepondown() {
  ///  let input = document.getElementById('theNumber');
  ///  let val = document.getElementById('decrementer').value;
  ///
  ///  if (val) { /* increment with a parameter */
  ///   input.stepDown(val);
  ///  } else {  /* or without a parameter. Try it with 0, 5, -2, etc. */
  ///   input.stepDown();
  ///  }
  /// }
  ///
  /// ```
  ///
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
          this, 'setRangeText', [replacement, start, end, selectionMode]);

  Object setSelectionRange(int start, int end, [String? direction]) =>
      js_util.callMethod(this, 'setSelectionRange', [start, end, direction]);

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
  external HTMLButtonElement();
}

extension PropsHTMLButtonElement on HTMLButtonElement {
  ///  Is a boolean value indicating whether or not the control is
  /// disabled, meaning that it does not accept any clicks.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  ///
  ///     Is an [HTMLFormElement] reflecting the form that this button
  /// is associated with. If the button is a descendant of a form
  /// element, then this attribute is a reference to that form's
  /// associated [HTMLFormElement].
  ///     If the button is not a descendant of a form element, then the
  /// attribute can be a reference to any [HTMLFormElement] element in
  /// the same document it is related to, or the [null] value if none
  /// matches.
  ///
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  Is a [String] reflecting the URI of a resource that processes
  /// information submitted by the button. If specified, this attribute
  /// overrides the [action] attribute of the [<form>] element that
  /// owns this element.
  ///
  String get formAction => js_util.getProperty(this, 'formAction');
  set formAction(String newValue) {
    js_util.setProperty(this, 'formAction', newValue);
  }

  ///  Is a [String] reflecting the type of content that is used to
  /// submit the form to the server. If specified, this attribute
  /// overrides the [enctype] attribute of the [<form>] element that
  /// owns this element.
  ///
  String get formEnctype => js_util.getProperty(this, 'formEnctype');
  set formEnctype(String newValue) {
    js_util.setProperty(this, 'formEnctype', newValue);
  }

  ///  Is a [String] reflecting the HTTP method that the browser uses
  /// to submit the form. If specified, this attribute overrides the
  /// [method] attribute of the [<form>] element that owns this
  /// element.
  ///
  String get formMethod => js_util.getProperty(this, 'formMethod');
  set formMethod(String newValue) {
    js_util.setProperty(this, 'formMethod', newValue);
  }

  ///  Is a boolean value indicating that the form is not to be
  /// validated when it is submitted. If specified, this attribute
  /// overrides the [novalidate] attribute of the [<form>] element that
  /// owns this element.
  ///
  bool get formNoValidate => js_util.getProperty(this, 'formNoValidate');
  set formNoValidate(bool newValue) {
    js_util.setProperty(this, 'formNoValidate', newValue);
  }

  ///  Is a [String] reflecting a name or keyword indicating where to
  /// display the response that is received after submitting the form.
  /// If specified, this attribute overrides the [target] attribute of
  /// the [<form>] element that owns this element.
  ///
  String get formTarget => js_util.getProperty(this, 'formTarget');
  set formTarget(String newValue) {
    js_util.setProperty(this, 'formTarget', newValue);
  }

  ///  Is a [String] representing the name of the object when submitted
  /// with a form. If specified, it must not be the empty string.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Is a [String] indicating the behavior of the button. This is an
  /// enumerated attribute with the following possible values:
  ///
  ///     [submit]: The button submits the form. This is the default
  /// value if the attribute is not specified, or if it is dynamically
  /// changed to an empty or invalid value.
  ///    [reset]: The button resets the form.
  ///    [button]: The button does nothing.
  ///    [menu]: The button displays a menu.
  ///
  ///
  ///
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Is a [String] representing the current form control value of the
  /// button.
  ///
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  Is a boolean value indicating whether the button is a candidate
  /// for constraint validation. It is [false] if any conditions bar it
  /// from constraint validation, including: its [type] property is
  /// [reset] or [button]; it has a [<datalist>] ancestor; or the
  /// [disabled] property is set to [true].
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  Is a [ValidityState] representing the validity states that this
  /// button is in.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  ///  Is a [String] representing the localized message that describes
  /// the validation constraints that the control does not satisfy (if
  /// any). This attribute is the empty string if the control is not a
  /// candidate for constraint validation ([willValidate] is [false]),
  /// or it satisfies its constraints.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  ///  Is a [NodeList] that represents a list of [<label>] elements
  /// that are labels for this button.
  ///
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
  external HTMLSelectElement();
}

extension PropsHTMLSelectElement on HTMLSelectElement {
  String get autocomplete => js_util.getProperty(this, 'autocomplete');
  set autocomplete(String newValue) {
    js_util.setProperty(this, 'autocomplete', newValue);
  }

  ///  A boolean value reflecting the HTML attribute, which indicates
  /// whether the control is disabled. If it is disabled, it does not
  /// accept clicks.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  ///  An [HTMLFormElement] referencing the form that this element is
  /// associated with. If the element is not associated with of a
  /// [<form>] element, then it returns [null].
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  A boolean value reflecting the HTML attribute, which indicates
  /// whether multiple items can be selected.
  ///
  bool get multiple => js_util.getProperty(this, 'multiple');
  set multiple(bool newValue) {
    js_util.setProperty(this, 'multiple', newValue);
  }

  ///  A [String] reflecting the HTML attribute, containing the name of
  /// this control used by servers and DOM search functions.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  A boolean value reflecting the HTML attribute, which indicates
  /// whether the user is required to select a value before submitting
  /// the form.
  ///
  @JS('required')
  @staticInterop
  bool get mRequired => js_util.getProperty(this, 'required');
  set mRequired(bool newValue) {
    js_util.setProperty(this, 'required', newValue);
  }

  ///  A [int] reflecting the HTML attribute, which contains the number
  /// of visible items in the control. The default is 1, unless
  /// [multiple] is [true], in which case it is 4.
  ///
  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  ///  A [String] representing the form control's type. When [multiple]
  /// is [true], it returns ["select-multiple"]; otherwise, it returns
  /// ["select-one"].
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  An [HTMLOptionsCollection] representing the set of [<option>]
  /// ([HTMLOptionElement]) elements contained by this element.
  ///
  HTMLOptionsCollection get options => js_util.getProperty(this, 'options');

  ///  An [int] The number of [<option>] elements in this [select]
  /// element.
  ///
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  ///  Gets an item from the options collection for this [<select>]
  /// element. You can also access an item by specifying the index in
  /// array-style brackets or parentheses, without calling this method
  /// explicitly.
  ///
  /// var item = collection.item(index);
  /// var item = collection[index];
  ///
  Element? item(int index) => js_util.callMethod(this, 'item', [index]);

  ///  Gets the item in the options collection with the specified name.
  /// The name string can match either the [id] or the [name] attribute
  /// of an option node. You can also access an item by specifying the
  /// name in array-style brackets or parentheses, without calling this
  /// method explicitly.
  ///
  /// var item = select.namedItem(str);
  ///
  HTMLOptionElement? namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);

  ///  Adds an element to the collection of [option] elements for this
  /// [select] element.
  ///
  /// collection.add(item[, before]);
  ///
  Object add(dynamic element, [dynamic before]) =>
      js_util.callMethod(this, 'add', [element, before]);

  ///  Removes the element at the specified index from the options
  /// collection for this [select] element.
  ///
  /// collection.remove(index);
  ///
  /// <select id="existingList" name="existingList">
  ///   <option value="1">Option: Value 1</option>
  ///   <option value="2">Option: Value 2</option>
  ///   <option value="3">Option: Value 3</option>
  /// </select>
  ///
  /// let sel = document.getElementById("existingList");
  /// sel.remove(1);
  ///
  /// HTML is now:
  /// <select id="existingList" name="existingList">
  ///   <option value="1">Option: Value 1</option>
  ///   <option value="3">Option: Value 3</option>
  /// </select>
  ///
  Object remove([int? index]) => js_util.callMethod(this, 'remove', [index]);

  ///  An [HTMLCollection] representing the set of [<option>] elements
  /// that are selected.
  ///
  HTMLCollection get selectedOptions =>
      js_util.getProperty(this, 'selectedOptions');

  ///  A [int] reflecting the index of the first selected [<option>]
  /// element. The value [-1] indicates no element is selected.
  ///
  int get selectedIndex => js_util.getProperty(this, 'selectedIndex');
  set selectedIndex(int newValue) {
    js_util.setProperty(this, 'selectedIndex', newValue);
  }

  ///  A [String] reflecting the value of the form control. Returns the
  /// property of the first selected option element if there is one,
  /// otherwise the empty string.
  ///
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  A boolean value that indicates whether the button is a candidate
  /// for constraint validation. It is [false] if any conditions bar it
  /// from constraint validation.
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  A [ValidityState] reflecting the validity state that this
  /// control is in.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  ///  A [String] representing a localized message that describes the
  /// validation constraints that the control does not satisfy (if
  /// any). This attribute is the empty string if the control is not a
  /// candidate for constraint validation ([willValidate] is false), or
  /// it satisfies its constraints.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');

  ///  Checks whether the element has any constraints and whether it
  /// satisfies them. If the element fails its constraints, the browser
  /// fires a cancelable [invalid] event at the element (and returns
  /// [false]).
  ///
  /// var result = selectElt.checkValidity();
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  ///  This method reports the problems with the constraints on the
  /// element, if any, to the user. If there are problems, it fires a
  /// cancelable [invalid] event at the element, and returns [false];
  /// if there are no problems, it returns [true].
  ///
  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  ///  Sets the custom validity message for the selection element to
  /// the specified message. Use the empty string to indicate that the
  /// element does not have a custom validity error.
  ///
  /// selectElt.setCustomValidity(string);
  ///
  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  /// A [NodeList] of [<label>] elements associated with the element.
  ///
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
  external HTMLDataListElement();
}

extension PropsHTMLDataListElement on HTMLDataListElement {
  ///  Is a [HTMLCollection] representing a collection of the contained
  /// option elements.
  ///
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
  external HTMLOptGroupElement();
}

extension PropsHTMLOptGroupElement on HTMLOptGroupElement {
  ///  Is a boolean value representing whether or not the whole list of
  /// children [<option>] is disabled (true) or not (false).
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  /// Is a [String] representing the label for the group.
  ///
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
  external HTMLOptionElement();
}

extension PropsHTMLOptionElement on HTMLOptionElement {
  ///  Has a value of either [true] or [false] representing the value
  /// of the HTML attribute, which indicates that the option is
  /// unavailable to be selected. An option can also be disabled if it
  /// is a child of an [<optgroup>] element that is disabled.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  ///  Is a [HTMLFormElement] representing the same value as the of the
  /// corresponding [<select>] element, if the option is a descendant
  /// of a [<select>] element, or null if none is found.
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  Is a [String] that reflects the value of the HTML attribute,
  /// which provides a label for the option. If this attribute isn't
  /// specifically set, reading it returns the element's text content.
  ///
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  ///  Has a value of either [true] or [false] that shows the initial
  /// value of the [selected] HTML attribute, indicating whether the
  /// option is selected by default or not.
  ///
  bool get defaultSelected => js_util.getProperty(this, 'defaultSelected');
  set defaultSelected(bool newValue) {
    js_util.setProperty(this, 'defaultSelected', newValue);
  }

  ///  Has a value of either [true] or [false] that indicates whether
  /// the option is currently selected.
  ///
  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }

  ///  Is a [String] that reflects the value of the HTML attribute, if
  /// it exists; otherwise reflects value of the [Node.textContent]
  /// property.
  ///
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  /// Is a [String] that contains the text content of the element.
  ///
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  ///  Is a [int] representing the position of the option within the
  /// list of options it belongs to, in tree-order. If the option is
  /// not part of a list of options, like when it is part of the
  /// [<datalist>] element, the value is [0].
  ///
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
          this, 'setRangeText', [replacement, start, end, selectionMode]);

  Object setSelectionRange(int start, int end, [String? direction]) =>
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
  external HTMLOutputElement();
}

extension PropsHTMLOutputElement on HTMLOutputElement {
  ///  A [DOMTokenList] reflecting the [for] HTML attribute, containing
  /// a list of IDs of other elements in the same document that
  /// contribute to (or otherwise affect) the calculated [value].
  ///
  DOMTokenList get htmlFor => js_util.getProperty(this, 'htmlFor');

  ///  An [HTMLFormElement] indicating the form associated with the
  /// control, reflecting the HTML attribute if it is defined.
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  A [String] reflecting the HTML attribute, containing the name
  /// for the control that is submitted with form data.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  /// The [String] "[output]".
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  A [String] representing the default value of the element,
  /// initially the empty string.
  ///
  String get defaultValue => js_util.getProperty(this, 'defaultValue');
  set defaultValue(String newValue) {
    js_util.setProperty(this, 'defaultValue', newValue);
  }

  ///  A [String] representing the value of the contents of the
  /// elements. Behaves like the [Node.textContent] property.
  ///
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  A boolean value indicating whether the element is a candidate
  /// for constraint validation.
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  A [ValidityState] representing the validity states that this
  /// element is in.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  ///  A [String] representing a localized message that describes the
  /// validation constraints that the control does not satisfy (if
  /// any). This is the empty string if the control is not a candidate
  /// for constraint validation ([willValidate] is [false]), or it
  /// satisfies its constraints.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');

  ///  Checks the validity of the element and returns a boolean value
  /// holding the check result.
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  ///  This method reports the problems with the constraints on the
  /// element, if any, to the user. If there are problems, fires an
  /// [invalid] event at the element, and returns [false]; if there are
  /// no problems, it returns [true].
  ///    When the problem is reported, the user agent may focus the
  /// element and change the scrolling position of the document or
  /// perform some other action that brings the element to the user's
  /// attention. User agents may report more than one constraint
  /// violation if this element suffers from multiple problems at once.
  /// If the element is not rendered, then the user agent may report
  /// the error for the running script instead of notifying the user.
  ///
  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  ///  Sets a custom validity message for the element. If this message
  /// is not the empty string, then the element is suffering from a
  /// custom validity error, and does not validate.
  ///
  Object setCustomValidity(String error) =>
      js_util.callMethod(this, 'setCustomValidity', [error]);

  /// A [NodeList] of [<label>] elements associated with the element.
  ///
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
  external HTMLProgressElement();
}

extension PropsHTMLProgressElement on HTMLProgressElement {
  ///  Is a [double] value that reflects the current value; if the
  /// progress bar is an indeterminate progress bar, it returns [0].
  ///
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  Is a [double] value reflecting the content attribute of the same
  /// name, limited to numbers greater than zero. Its default value is
  /// [1.0].
  ///
  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  ///  Returns a [double] value returning the result of dividing the
  /// current value ([value]) by the maximum value ([max]); if the
  /// progress bar is an indeterminate progress bar, it returns [-1].
  ///
  double get position => js_util.getProperty(this, 'position');

  ///  Returns [NodeList] containing the list of [<label>] elements
  /// that are labels for this element.
  ///
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
  external HTMLMeterElement();
}

extension PropsHTMLMeterElement on HTMLMeterElement {
  ///  A [double] representing the current value, reflecting the
  /// attribute.
  ///
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  A [double] representing the minimum value, reflecting the
  /// attribute.
  ///
  double get min => js_util.getProperty(this, 'min');
  set min(double newValue) {
    js_util.setProperty(this, 'min', newValue);
  }

  ///  A [double] representing the maximum value, reflecting the
  /// attribute.
  ///
  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  ///  A [double] representing the value of the low boundary,
  /// reflecting the attribute.
  ///
  double get low => js_util.getProperty(this, 'low');
  set low(double newValue) {
    js_util.setProperty(this, 'low', newValue);
  }

  ///  A [double] representing the value of the high boundary,
  /// reflecting the attribute.
  ///
  double get high => js_util.getProperty(this, 'high');
  set high(double newValue) {
    js_util.setProperty(this, 'high', newValue);
  }

  /// A [double] representing the optimum, reflecting the attribute.
  ///
  double get optimum => js_util.getProperty(this, 'optimum');
  set optimum(double newValue) {
    js_util.setProperty(this, 'optimum', newValue);
  }

  ///  A [NodeList] of [<label>] elements that are associated with the
  /// element.
  ///
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
  external HTMLFieldSetElement();
}

extension PropsHTMLFieldSetElement on HTMLFieldSetElement {
  ///  A boolean value reflecting the HTML attribute, indicating
  /// whether the user can interact with the control.
  ///
  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }

  ///
  ///     An [HTMLFormControlsCollection] or [HTMLCollection]
  /// referencing the containing form element, if this element is in a
  /// form.
  ///     If the field set is not a descendant of a form element, then
  /// the attribute can be the ID of any form element in the same
  /// document it is related to, or the [null] value if none matches.
  ///
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  ///  A [String] reflecting the HTML attribute, containing the name of
  /// the field set. This can be used when accessing the field set in
  /// JavaScript. It is not part of the data which is sent to the
  /// server.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  /// The [String] "[fieldset]".
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  The elements belonging to this field set. The type of this
  /// property depends on the version of the spec that is implemented
  /// by the browser.
  ///
  HTMLCollection get elements => js_util.getProperty(this, 'elements');

  ///  A boolean value [false], because [<fieldset>] objects are never
  /// candidates for constraint validation.
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  A [ValidityState] representing the validity states that this
  /// element is in.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  ///  A [String] representing a localized message that describes the
  /// validation constraints that the element does not satisfy (if
  /// any). This is the empty string if the element is not a candidate
  /// for constraint validation ([willValidate] is [false]), or it
  /// satisfies its constraints.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');

  ///  Always returns [true] because [<fieldset>] objects are never
  /// candidates for constraint validation.
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  ///  Always returns [true] because [<fieldset>] objects are never
  /// candidates for constraint validation.
  ///
  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  ///  Sets a custom validity message for the field set. If this
  /// message is not the empty string, then the field set is suffering
  /// from a custom validity error, and does not validate.
  ///
  Object setCustomValidity(String error) =>
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
  external HTMLLegendElement();
}

extension PropsHTMLLegendElement on HTMLLegendElement {
  ///  Is a [HTMLFormElement] representing the form that this legend
  /// belongs to. If the legend has a fieldset element as its parent,
  /// then this attribute returns the same value as the form attribute
  /// on the parent fieldset element. Otherwise, it returns null.
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');
  String get align => js_util.getProperty(this, 'align');
  set align(String newValue) {
    js_util.setProperty(this, 'align', newValue);
  }
}

enum SelectionMode { select, start, end, preserve }

///  The interface represents the validity states that an element can
/// be in, with respect to constraint validation. Together, they help
/// explain why an element's value fails to validate, if it's not
/// valid.
@JS()
@staticInterop
class ValidityState {
  external ValidityState();
}

extension PropsValidityState on ValidityState {
  ///  A boolean value that is [true] if the element has a [required]
  /// attribute, but no value, or [false] otherwise. If [true], the
  /// element matches the [:invalid] CSS pseudo-class.
  ///
  bool get valueMissing => js_util.getProperty(this, 'valueMissing');

  ///  A boolean value that is [true] if the value is not in the
  /// required syntax (when [type] is [email] or [url]), or [false] if
  /// the syntax is correct. If [true], the element matches the
  /// [:invalid] CSS pseudo-class.
  ///
  bool get typeMismatch => js_util.getProperty(this, 'typeMismatch');

  ///  A boolean value that is [true] if the value does not match the
  /// specified [pattern], and [false] if it does match. If [true], the
  /// element matches the [:invalid] CSS pseudo-class.
  ///
  bool get patternMismatch => js_util.getProperty(this, 'patternMismatch');

  ///  A boolean value that is [true] if the value exceeds the
  /// specified [maxlength] for [HTMLInputElement] or
  /// [HTMLTextAreaElement] objects, or [false] if its length is less
  /// than or equal to the maximum length. Note: This property is never
  /// [true] in Gecko, because elements' values are prevented from
  /// being longer than [maxlength]. If [true], the element matches the
  /// [:invalid] and [:out-of-range] CSS pseudo-classes.
  ///
  bool get tooLong => js_util.getProperty(this, 'tooLong');

  ///  A boolean value that is [true] if the value fails to meet the
  /// specified [minlength] for [HTMLInputElement] or
  /// [HTMLTextAreaElement] objects, or [false] if its length is
  /// greater than or equal to the minimum length. If [true], the
  /// element matches the [:invalid] and [:out-of-range] CSS
  /// pseudo-classes.
  ///
  bool get tooShort => js_util.getProperty(this, 'tooShort');

  ///  A boolean value that is [true] if the value is less than the
  /// minimum specified by the [min] attribute, or [false] if it is
  /// greater than or equal to the minimum. If [true], the element
  /// matches the [:invalid] and [:out-of-range] CSS pseudo-classes.
  ///
  bool get rangeUnderflow => js_util.getProperty(this, 'rangeUnderflow');

  ///  A boolean value that is [true] if the value is greater than the
  /// maximum specified by the [max] attribute, or [false] if it is
  /// less than or equal to the maximum. If [true], the element matches
  /// the [:invalid] and [:out-of-range] and CSS pseudo-classes.
  ///
  bool get rangeOverflow => js_util.getProperty(this, 'rangeOverflow');

  ///  A boolean value that is [true] if the value does not fit the
  /// rules determined by the [step] attribute (that is, it's not
  /// evenly divisible by the step value), or [false] if it does fit
  /// the step rule. If [true], the element matches the [:invalid] and
  /// [:out-of-range] CSS pseudo-classes.
  ///
  bool get stepMismatch => js_util.getProperty(this, 'stepMismatch');

  ///  A boolean value that is [true] if the user has provided input
  /// that the browser is unable to convert.
  ///
  bool get badInput => js_util.getProperty(this, 'badInput');

  ///  A boolean value indicating whether the element's custom validity
  /// message has been set to a non-empty string by calling the
  /// element's [setCustomValidity()] method.
  ///
  bool get customError => js_util.getProperty(this, 'customError');

  ///  A boolean value that is [true] if the element meets all its
  /// validation constraints, and is therefore considered to be valid,
  /// or [false] if it fails any constraint. If [true], the element
  /// matches the [:valid] CSS pseudo-class; the [:invalid] CSS
  /// pseudo-class otherwise.
  ///
  bool get valid => js_util.getProperty(this, 'valid');
}

///  The interface defines the object used to represent an HTML
/// form's [submit] event. This event is fired at the [<form>] when
/// the form's submit action is invoked.
@JS()
@staticInterop
class SubmitEvent implements Event {
  external SubmitEvent(String type, [SubmitEventInit? eventInitDict]);
}

extension PropsSubmitEvent on SubmitEvent {
  ///  An [HTMLElement] object which identifies the button or other
  /// element which was invoked to trigger the form being submitted.
  ///
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
@experimental
@JS()
@staticInterop
class FormDataEvent implements Event {
  external FormDataEvent(String type, FormDataEventInit eventInitDict);
}

extension PropsFormDataEvent on FormDataEvent {
  ///  Contains the [FormData] object representing the data contained
  /// in the form when the event was fired.
  ///
  FormData get formData => js_util.getProperty(this, 'formData');
}

@anonymous
@JS()
@staticInterop
class FormDataEventInit implements EventInit {
  external factory FormDataEventInit({FormData formData});
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
  external HTMLDetailsElement();
}

extension PropsHTMLDetailsElement on HTMLDetailsElement {
  ///  Is a boolean value reflecting the HTML attribute, indicating
  /// whether or not the element's contents (not counting the
  /// [<summary>]) is to be shown to the user.
  ///
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
  external HTMLDialogElement();
}

extension PropsHTMLDialogElement on HTMLDialogElement {
  ///  A boolean value reflecting the HTML attribute, indicating
  /// whether the dialog is available for interaction.
  ///
  bool get open => js_util.getProperty(this, 'open');
  set open(bool newValue) {
    js_util.setProperty(this, 'open', newValue);
  }

  /// A [String] that sets or returns the return value for the dialog.
  ///
  String get returnValue => js_util.getProperty(this, 'returnValue');
  set returnValue(String newValue) {
    js_util.setProperty(this, 'returnValue', newValue);
  }

  ///  Displays the dialog modelessly, i.e. still allowing interaction
  /// with content outside of the dialog.
  ///
  /// dialogInstance.show();
  ///
  @JS('show')
  @staticInterop
  Object mShow() => js_util.callMethod(this, 'show', []);

  ///  Displays the dialog as a modal, over the top of any other
  /// dialogs that might be present. Interaction outside the dialog is
  /// blocked.
  ///
  /// dialogInstance.showModal();
  ///
  Object showModal() => js_util.callMethod(this, 'showModal', []);

  ///  Closes the dialog. An optional [String] may be passed as an
  /// argument, updating the [returnValue] of the dialog.
  ///
  /// dialogInstance.close(returnValue);
  ///
  Object close([String? returnValue]) =>
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
class HTMLScriptElement implements HTMLElement {
  external HTMLScriptElement();
}

extension PropsHTMLScriptElement on HTMLScriptElement {
  ///  Is a [String] representing the URL of an external script. It
  /// reflects the attribute.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Is a [String] representing the MIME type of the script. It
  /// reflects the attribute.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  Is a boolean value that if true, stops the script's execution in
  /// browsers that support ES2015 modules — used to run fallback
  /// scripts in older browsers that do not support JavaScript modules.
  ///
  bool get noModule => js_util.getProperty(this, 'noModule');
  set noModule(bool newValue) {
    js_util.setProperty(this, 'noModule', newValue);
  }

  ///  The and [defer] attributes are boolean attributes that control
  /// how the script should be executed. The [defer] and attributes
  /// must not be specified if the [src] attribute is absent.
  ///   There are three possible execution modes:
  ///
  ///     If the attribute is present, then the script will be executed
  /// asynchronously as soon as it downloads.
  ///     If the attribute is absent but the [defer] attribute is
  /// present, then the script is executed when the page has finished
  /// parsing.
  ///     If neither attribute is present, then the script is fetched
  /// and executed immediately, blocking further parsing of the page.
  ///
  ///    The [defer] attribute may be specified with the attribute, so
  /// legacy browsers that only support [defer] (and not ) fall back to
  /// the [defer] behavior instead of the default blocking behavior.
  ///
  ///     Note: The exact processing details for these attributes are
  /// complex, involving many different aspects of HTML, and therefore
  /// are scattered throughout the specification. These algorithms
  /// describe the core ideas, but they rely on the parsing rules for
  /// [<script>] start and end tags in HTML, in foreign content, and in
  /// XML; the rules for the [document.write()] method; the handling of
  /// scripting; and so on.
  ///
  ///
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

  ///  Is a [String] reflecting the CORS setting for the script
  /// element. For scripts from other origins, this controls if error
  /// information will be exposed.
  ///
  @experimental
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  ///  Is a [String] that joins and returns the contents of all [Text]
  /// nodes inside the [<script>] element (ignoring other nodes like
  /// comments) in tree order. On setting, it acts the same way as the
  /// [textContent] IDL attribute.
  ///
  ///     Note: When inserted using the [document.write()] method,
  /// [<script>] elements execute (typically synchronously), but when
  /// inserted using [innerHTML] or [outerHTML], they do not execute at
  /// all.
  ///
  ///
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get integrity => js_util.getProperty(this, 'integrity');
  set integrity(String newValue) {
    js_util.setProperty(this, 'integrity', newValue);
  }

  ///  Is a [String] that reflects the [referrerpolicy] HTML attribute
  /// indicating which referrer to use when fetching the script, and
  /// fetches done by that script.
  ///
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
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
  external HTMLTemplateElement();
}

extension PropsHTMLTemplateElement on HTMLTemplateElement {
  ///  A read-only [DocumentFragment] which contains the DOM subtree
  /// representing the [<template>] element's template contents.
  ///
  DocumentFragment get content => js_util.getProperty(this, 'content');
}

///  The interface of the Shadow DOM API enables access to the name
/// and assigned nodes of an HTML [<slot>] element.
@JS()
@staticInterop
class HTMLSlotElement implements HTMLElement {
  external HTMLSlotElement();
}

extension PropsHTMLSlotElement on HTMLSlotElement {
  /// A [string] used to get and set the slot's name.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Returns a sequence of the nodes assigned to this slot. If the
  /// [flatten] option is set to [true], it returns a sequence of both
  /// the nodes assigned to this slot, and the nodes assigned to any
  /// other slots that are descendants of this slot. If no assigned
  /// nodes are found, it returns the slot's fallback content.
  ///
  /// HTMLSlotElement.assignedNodes()
  /// HTMLSlotElement.assignedNodes(options)
  ///
  Iterable<Node> assignedNodes(
          [

          ///  An object that sets options for the nodes to be returned. The
          /// available options are:
          ///
          ///    [flatten]
          ///
          ///      A boolean value indicating whether to return the assigned
          /// nodes of any available child [<slot>] elements ([true]) or not
          /// ([false]). Defaults to [false].
          ///
          ///
          ///
          AssignedNodesOptions? options]) =>
      js_util.callMethod(this, 'assignedNodes', [options]);

  ///  Returns a sequence of the elements assigned to this slot (and no
  /// other nodes). If the [flatten] option is set to [true], it
  /// returns a sequence of both the elements assigned to this slot,
  /// and the elements assigned to any other slots that are descendants
  /// of this slot. If no assigned elements are found, it returns the
  /// slot's fallback content.
  ///
  /// HTMLSlotElement.assignedElements()
  /// HTMLSlotElement.assignedElements(options)
  ///
  Iterable<Element> assignedElements(
          [

          ///  An object that sets options for the nodes to be returned. The
          /// available options are:
          ///
          ///    [flatten]
          ///
          ///
          ///      A boolean value indicating whether to return the
          ///      assigned elements of any available child [<slot>] elements
          ///      ([true]) or not ([false]). Defaults to [false].
          ///
          ///
          ///
          ///
          AssignedNodesOptions? options]) =>
      js_util.callMethod(this, 'assignedElements', [options]);

  ///  Sets the manually assigned nodes for this slot to the given
  /// nodes.
  ///
  /// HTMLSlotElement.assign(...nodes)
  ///
  Object assign(
          [

          /// A set of [Element] or [Text] nodes.
          ///
          dynamic nodes]) =>
      js_util.callMethod(this, 'assign', [nodes]);
}

@anonymous
@JS()
@staticInterop
class AssignedNodesOptions {
  external factory AssignedNodesOptions({bool flatten = false});
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
  external HTMLCanvasElement();
}

extension PropsHTMLCanvasElement on HTMLCanvasElement {
  ///  The HTML attribute of the [<canvas>] element is a positive
  /// [integer] reflecting the number of logical pixels (or RGBA
  /// values) going across one row of the canvas. When the attribute is
  /// not specified, or if it is set to an invalid value, like a
  /// negative, the default value of [300] is used. If no [separate]
  /// CSS width is assigned to the [<canvas>], then this value will
  /// also be used as the width of the canvas in the length-unit CSS
  /// Pixel.
  ///
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  The HTML attribute of the [<canvas>] element is a positive
  /// [integer] reflecting the number of logical pixels (or RGBA
  /// values) going down one column of the canvas. When the attribute
  /// is not specified, or if it is set to an invalid value, like a
  /// negative, the default value of [150] is used. If no [separate]
  /// CSS height is assigned to the [<canvas>], then this value will
  /// also be used as the height of the canvas in the length-unit CSS
  /// Pixel.
  ///
  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  ///  Returns a drawing context on the canvas, or null if the context
  /// ID is not supported. A drawing context lets you draw on the
  /// canvas. Calling getContext with ["2d"] returns a
  /// [CanvasRenderingContext2D] object, whereas calling it with
  /// ["webgl"] (or ["experimental-webgl"]) returns a
  /// [WebGLRenderingContext] object. This context is only available on
  /// browsers that implement WebGL.
  ///
  /// var ctx = canvas.getContext(contextType);
  /// var ctx = canvas.getContext(contextType, contextAttributes);
  ///
  dynamic getContext(String contextId, [dynamic options]) =>
      js_util.callMethod(this, 'getContext', [contextId, options]);

  ///  Returns a data-URL containing a representation of the image in
  /// the format specified by the [type] parameter (defaults to [png]).
  /// The returned image is in a resolution of 96dpi.
  ///
  /// canvas.toDataURL(type, encoderOptions);
  ///
  String toDataURL(
          [

          ///
          ///    A [String] indicating the image format.
          ///     The default type is [image/png]; this image format will be
          /// also used if the specified type is not supported.
          ///
          ///
          String? type = 'image/png',
          dynamic quality]) =>
      js_util.callMethod(this, 'toDataURL', [type, quality]);

  ///  Creates a [Blob] object representing the image contained in the
  /// canvas; this file may be cached on the disk or stored in memory
  /// at the discretion of the user agent.
  ///
  /// toBlob(callback, type, quality)
  ///
  Object toBlob(

          ///
          ///     A callback function with the resulting [Blob] object as a
          /// single argument.
          ///     [null] may be passed if the image cannot be created for any
          /// reason.
          ///
          ///
          BlobCallback callback,
          [

          ///
          ///    A [String] indicating the image format.
          ///     The default type is [image/png]; that type is also used if
          /// the given type isn't supported.
          ///
          ///
          String? type = 'image/png',

          ///
          ///     A [Number] between [0] and [1] indicating the image quality
          /// to be used when creating images using file formats that support
          /// lossy compression (such as [image/jpeg] or [image/webp]).
          ///     A user agent will use its default quality value if this
          /// option is not specified, or if the number is outside the allowed
          /// range.
          ///
          ///
          dynamic quality]) =>
      js_util
          .callMethod(this, 'toBlob', [allowInterop(callback), type, quality]);

  ///  Transfers control to an [OffscreenCanvas] object, either on the
  /// main thread or on a worker.
  ///
  /// OffscreenCanvas HTMLCanvasElement.transferControlToOffscreen()
  ///
  @experimental
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
  external factory CanvasRenderingContext2DSettings(
      {bool alpha = true,
      bool? desynchronized = false,
      PredefinedColorSpace? colorSpace = PredefinedColorSpace.srgb});
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
      js_util.getProperty(this, 'colorSpace');
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
  }
}

enum ImageSmoothingQuality { low, medium, high }

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
      js_util.getProperty(this, 'imageSmoothingQuality');
  set imageSmoothingQuality(ImageSmoothingQuality newValue) {
    js_util.setProperty(this, 'imageSmoothingQuality', newValue);
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
  String get filter => js_util.getProperty(this, 'filter');
  set filter(String newValue) {
    js_util.setProperty(this, 'filter', newValue);
  }
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
      js_util.callMethod(this, 'fill', [path, fillRule]);

  Object stroke([Path2D? path]) => js_util.callMethod(this, 'stroke', [path]);

  Object clip(
          [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'clip', [path, fillRule]);

  bool isPointInPath(Path2D path, /* double | NaN */ dynamic x,
          [/* double | NaN */ dynamic y,
          CanvasFillRule? fillRule = CanvasFillRule.nonzero]) =>
      js_util.callMethod(this, 'isPointInPath', [path, x, y, fillRule]);

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

  CanvasLineCap get lineCap => js_util.getProperty(this, 'lineCap');
  set lineCap(CanvasLineCap newValue) {
    js_util.setProperty(this, 'lineCap', newValue);
  }

  CanvasLineJoin get lineJoin => js_util.getProperty(this, 'lineJoin');
  set lineJoin(CanvasLineJoin newValue) {
    js_util.setProperty(this, 'lineJoin', newValue);
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

  CanvasTextAlign get textAlign => js_util.getProperty(this, 'textAlign');
  set textAlign(CanvasTextAlign newValue) {
    js_util.setProperty(this, 'textAlign', newValue);
  }

  CanvasTextBaseline get textBaseline =>
      js_util.getProperty(this, 'textBaseline');
  set textBaseline(CanvasTextBaseline newValue) {
    js_util.setProperty(this, 'textBaseline', newValue);
  }

  CanvasDirection get direction => js_util.getProperty(this, 'direction');
  set direction(CanvasDirection newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  double get textLetterSpacing =>
      js_util.getProperty(this, 'textLetterSpacing');
  set textLetterSpacing(double newValue) {
    js_util.setProperty(this, 'textLetterSpacing', newValue);
  }

  double get textWordSpacing => js_util.getProperty(this, 'textWordSpacing');
  set textWordSpacing(double newValue) {
    js_util.setProperty(this, 'textWordSpacing', newValue);
  }

  CanvasFontKerning get fontKerning => js_util.getProperty(this, 'fontKerning');
  set fontKerning(CanvasFontKerning newValue) {
    js_util.setProperty(this, 'fontKerning', newValue);
  }

  CanvasFontStretch get fontStretch => js_util.getProperty(this, 'fontStretch');
  set fontStretch(CanvasFontStretch newValue) {
    js_util.setProperty(this, 'fontStretch', newValue);
  }

  CanvasFontVariantCaps get fontVariantCaps =>
      js_util.getProperty(this, 'fontVariantCaps');
  set fontVariantCaps(CanvasFontVariantCaps newValue) {
    js_util.setProperty(this, 'fontVariantCaps', newValue);
  }

  CanvasTextRendering get textRendering =>
      js_util.getProperty(this, 'textRendering');
  set textRendering(CanvasTextRendering newValue) {
    js_util.setProperty(this, 'textRendering', newValue);
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

///  The interface represents an opaque object describing a gradient.
/// It is returned by the methods
/// [CanvasRenderingContext2D.createLinearGradient()],
/// [CanvasRenderingContext2D.createConicGradient()] or
/// [CanvasRenderingContext2D.createRadialGradient()].
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
@staticInterop
class CanvasGradient {
  external CanvasGradient();
}

extension PropsCanvasGradient on CanvasGradient {
  ///  Adds a new stop, defined by an [offset] and a [color], to the
  /// gradient. If the offset is not between [0] and [1], inclusive, an
  /// [INDEX_SIZE_ERR] is raised; if the color can't be parsed as a CSS
  /// [<color>], a [SYNTAX_ERR] is raised.
  ///
  /// void gradient.addColorStop(offset, color);
  ///
  Object addColorStop(

          ///
          ///    A number between [0] and [1], inclusive, representing the
          ///     position of the color stop. [0] represents the start of the
          /// gradient and
          ///    [1] represents the end; an [INDEX_SIZE_ERR] is raised if the
          ///    number is outside that range.
          ///
          ///
          double offset,

          ///
          ///    A CSS [<color>] value
          ///     representing the color of the stop. A [SYNTAX_ERR] is raised
          /// if the value
          ///    cannot be parsed as a CSS [<color>] value.
          ///
          ///
          String color) =>
      js_util.callMethod(this, 'addColorStop', [offset, color]);
}

///  The interface represents an opaque object describing a pattern,
/// based on an image, a canvas, or a video, created by the
/// [CanvasRenderingContext2D.createPattern()] method.
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
@staticInterop
class CanvasPattern {
  external CanvasPattern();
}

extension PropsCanvasPattern on CanvasPattern {
  ///  Applies an [SVGMatrix] or [DOMMatrix] representing a linear
  /// transform to the pattern.
  ///
  /// void pattern.setTransform(matrix);
  ///
  Object setTransform([DOMMatrix2DInit? transform]) =>
      js_util.callMethod(this, 'setTransform', [transform]);
}

///  The interface represents the dimensions of a piece of text in
/// the canvas; a instance can be retrieved using the
/// [CanvasRenderingContext2D.measureText()] method.
@JS()
@staticInterop
class TextMetrics {
  external TextMetrics();
}

extension PropsTextMetrics on TextMetrics {
  ///  Is a [double] giving the calculated width of a segment of inline
  /// text in CSS pixels. It takes into account the current font of the
  /// context.
  ///
  double get width => js_util.getProperty(this, 'width');

  ///  Is a [double] giving the distance parallel to the baseline from
  /// the alignment point given by the
  /// [CanvasRenderingContext2D.textAlign] property to the left side of
  /// the bounding rectangle of the given text, in CSS pixels; positive
  /// numbers indicating a distance going left from the given alignment
  /// point.
  ///
  double get actualBoundingBoxLeft =>
      js_util.getProperty(this, 'actualBoundingBoxLeft');

  ///  Is a [double] giving the distance from the alignment point given
  /// by the [CanvasRenderingContext2D.textAlign] property to the right
  /// side of the bounding rectangle of the given text, in CSS pixels.
  /// The distance is measured parallel to the baseline.
  ///
  double get actualBoundingBoxRight =>
      js_util.getProperty(this, 'actualBoundingBoxRight');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the top of the highest bounding rectangle of all the
  /// fonts used to render the text, in CSS pixels.
  ///
  double get fontBoundingBoxAscent =>
      js_util.getProperty(this, 'fontBoundingBoxAscent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the bottom of the bounding rectangle of all the
  /// fonts used to render the text, in CSS pixels.
  ///
  double get fontBoundingBoxDescent =>
      js_util.getProperty(this, 'fontBoundingBoxDescent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the top of the bounding rectangle used to render the
  /// text, in CSS pixels.
  ///
  double get actualBoundingBoxAscent =>
      js_util.getProperty(this, 'actualBoundingBoxAscent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the bottom of the bounding rectangle used to render
  /// the text, in CSS pixels.
  ///
  double get actualBoundingBoxDescent =>
      js_util.getProperty(this, 'actualBoundingBoxDescent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the top of the em square in the line box, in CSS pixels.
  ///
  double get emHeightAscent => js_util.getProperty(this, 'emHeightAscent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the bottom of the em square in the line box, in CSS pixels.
  ///
  double get emHeightDescent => js_util.getProperty(this, 'emHeightDescent');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the hanging baseline of the line box, in CSS pixels.
  ///
  double get hangingBaseline => js_util.getProperty(this, 'hangingBaseline');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the alphabetic baseline of the line box, in CSS pixels.
  ///
  double get alphabeticBaseline =>
      js_util.getProperty(this, 'alphabeticBaseline');

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the ideographic baseline of the line box, in CSS pixels.
  ///
  double get ideographicBaseline =>
      js_util.getProperty(this, 'ideographicBaseline');
}

@anonymous
@JS()
@staticInterop
class ImageDataSettings {
  external factory ImageDataSettings({PredefinedColorSpace colorSpace});
}

extension PropsImageDataSettings on ImageDataSettings {
  PredefinedColorSpace get colorSpace =>
      js_util.getProperty(this, 'colorSpace');
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue);
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
  external ImageData(Uint8ClampedList data, int sw,
      [int? sh, ImageDataSettings? settings]);
}

extension PropsImageData on ImageData {
  ///  Is an [int] representing the actual width, in pixels, of the
  /// [ImageData].
  ///
  int get width => js_util.getProperty(this, 'width');

  ///  Is an [int] representing the actual height, in pixels, of the
  /// [ImageData].
  ///
  int get height => js_util.getProperty(this, 'height');

  ///  Is a [Uint8ClampedArray] representing a one-dimensional array
  /// containing the data in the RGBA order, with integer values
  /// between [0] and [255] (inclusive).
  ///
  Uint8ClampedList get data => js_util.getProperty(this, 'data');
  PredefinedColorSpace get colorSpace =>
      js_util.getProperty(this, 'colorSpace');
}

///  The interface of the Canvas 2D API is used to declare a path
/// that can then be used on a [CanvasRenderingContext2D] object. The
/// path methods of the [CanvasRenderingContext2D] interface are also
/// present on this interface, which gives you the convenience of
/// being able to retain and replay your path whenever desired.
@JS()
@staticInterop
class Path2D implements CanvasPath {
  external Path2D([dynamic path]);
}

extension PropsPath2D on Path2D {
  /// Adds a path to the current path.
  ///
  /// void path.addPath(path [, transform]);
  ///
  Object addPath(

          /// A [Path2D] path to add.
          ///
          Path2D path,
          [

          ///
          ///     A [DOMMatrix] to be used as the transformation matrix for the
          /// path that
          ///    is added. (Technically a [DOMMatrixInit] object).
          ///
          ///
          DOMMatrix2DInit? transform]) =>
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
  external ImageBitmapRenderingContext();
}

extension PropsImageBitmapRenderingContext on ImageBitmapRenderingContext {
  dynamic get canvas => js_util.getProperty(this, 'canvas');

  ///  Displays the given [ImageBitmap] in the canvas associated with
  /// this rendering context. Ownership of the [ImageBitmap] is
  /// transferred to the canvas. This was previously named
  /// [transferImageBitmap()], but was renamed in a spec change. The
  /// old name is being kept as an alias to avoid code breakage.
  ///
  /// void ImageBitmapRenderingContext.transferFromImageBitmap(bitmap)
  ///
  Object transferFromImageBitmap(

          /// An [ImageBitmap] object to transfer.
          ///
          ImageBitmap? bitmap) =>
      js_util.callMethod(this, 'transferFromImageBitmap', [bitmap]);
}

@anonymous
@JS()
@staticInterop
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings({bool alpha = true});
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
      {String type = 'image/png', /* double | NaN */ dynamic quality});
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

enum OffscreenRenderingContextId { value2d, bitmaprenderer, webgl, webgl2 }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides a canvas that can be rendered off screen.
/// It is available in both the window and worker contexts.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
@staticInterop
class OffscreenCanvas implements EventTarget {
  external OffscreenCanvas(int width, int height);
}

extension PropsOffscreenCanvas on OffscreenCanvas {
  /// The width of the offscreen canvas.
  ///
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  /// The height of the offscreen canvas.
  ///
  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  /// Returns a rendering context for the offscreen canvas.
  ///
  /// offscreen.getContext(contextType, contextAttributes);
  ///
  dynamic getContext(OffscreenRenderingContextId contextId,
          [dynamic options]) =>
      js_util.callMethod(this, 'getContext', [contextId, options]);

  ///  Creates an [ImageBitmap] object from the most recently rendered
  /// image of the [OffscreenCanvas].
  ///
  /// ImageBitmap OffscreenCanvas.transferToImageBitmap()
  ///
  ImageBitmap transferToImageBitmap() =>
      js_util.callMethod(this, 'transferToImageBitmap', []);

  ///  Creates a [Blob] object representing the image contained in the
  /// canvas.
  ///
  /// convertToBlob()
  /// convertToBlob(options)
  ///
  Future<Blob> convertToBlob(
          [

          /// An object with the following properties:
          ///
          ///    [type]
          ///
          ///
          ///      A string indicating the image format.
          ///       The default type is [image/png]; this image format will be
          /// also used if the specified type is not supported.
          ///
          ///
          ///    [quality]
          ///
          ///
          ///       A [Number] between [0] and [1] indicating the image quality
          /// to be used when creating images using file formats that support
          /// lossy compression (such as [image/jpeg] or [image/webp]).
          ///       A user agent will use its default quality value if this
          /// option is not specified, or if the number is outside the allowed
          /// range.
          ///
          ///
          ///
          ///
          ImageEncodeOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'convertToBlob', [options]));
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

///  The interface provides methods for registering custom elements
/// and querying registered elements. To get an instance of it, use
/// the [window.customElements] property.
@experimental
@JS()
@staticInterop
class CustomElementRegistry {
  external CustomElementRegistry();
}

extension PropsCustomElementRegistry on CustomElementRegistry {
  /// Defines a new custom element.
  ///
  /// customElements.define(name, constructor, options);
  ///
  Object define(String name, CustomElementConstructor constructor,
          [ElementDefinitionOptions? options]) =>
      js_util.callMethod(
          this, 'define', [name, allowInterop(constructor), options]);

  ///  Returns the constructor for the named custom element, or
  /// [Object] if the custom element is not defined.
  ///
  /// constructor = customElements.get(name);
  ///
  @JS('get')
  @staticInterop
  dynamic mGet(String name) => js_util.callMethod(this, 'get', [name]);

  ///  Returns an empty [promise] that resolves when a custom element
  /// becomes defined with the given name. If such a custom element is
  /// already defined, the returned promise is immediately fulfilled.
  ///
  /// customElements.whenDefined(name): Promise<CustomElementConstructor>;
  ///
  Future<CustomElementConstructor> whenDefined(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'whenDefined', [name]));

  ///  Upgrades a custom element directly, even before it is connected
  /// to its shadow root.
  ///
  /// customElements.upgrade(root);
  ///
  Object upgrade(

          ///
          ///     A [Node] instance with shadow-containing descendant elements
          /// that are
          ///     to be upgraded. If there are no descendant elements that can
          /// be upgraded, no error is
          ///    thrown.
          ///
          ///
          Node root) =>
      js_util.callMethod(this, 'upgrade', [root]);
}

@anonymous
@JS()
@staticInterop
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions({String mExtends});
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
  external ElementInternals();
}

extension PropsElementInternals on ElementInternals {
  /// Returns the [ShadowRoot] object associated with this element.
  ///
  ShadowRoot? get shadowRoot => js_util.getProperty(this, 'shadowRoot');

  ///  Sets the element's submission value and state, communicating
  /// these to the user agent.
  ///
  /// setFormValue(value)
  /// setFormValue(value, state)
  ///
  Object setFormValue(

          ///  A [File], or a [string], or [FormData] as the value to be
          /// submitted to the server.
          ///
          dynamic value,
          [

          ///
          ///     A [File], or a [string], or [FormData] representing the input
          /// made by the user.
          ///     This allows the application to re-display the information
          /// that the user submitted, in the form that they submitted it, if
          /// required.
          ///
          ///
          dynamic state]) =>
      js_util.callMethod(this, 'setFormValue', [value, state]);

  /// Returns the [HTMLFormElement] associated with this element.
  ///
  HTMLFormElement? get form => js_util.getProperty(this, 'form');

  /// Sets the validity of the element.
  ///
  /// ElementInternals.setValidity(flags);
  /// ElementInternals.setValidity(flags, message);
  /// ElementInternals.setValidity(flags, message, anchor);
  ///
  Object setValidity(
          [

          ///  A dictionary object containing one or more flags indicating the
          /// validity state of the element:
          ///
          ///    [valueMissing]
          ///
          ///      A boolean value that is [true] if the element has a
          /// [required] attribute, but no value, or [false] otherwise. If
          /// [true], the element matches the [:invalid] CSS pseudo-class.
          ///
          ///    [typeMismatch]
          ///
          ///      A boolean value that is [true] if the value is not in the
          /// required syntax (when [type] is [email] or [url]), or [false] if
          /// the syntax is correct. If [true], the element matches the
          /// [:invalid] CSS pseudo-class.
          ///
          ///    [patternMismatch]
          ///
          ///      A boolean value that is [true] if the value does not match
          /// the specified [pattern], and [false] if it does match. If [true],
          /// the element matches the [:invalid] CSS pseudo-class.
          ///
          ///    [tooLong]
          ///
          ///      A boolean value that is [true] if the value exceeds the
          /// specified [maxlength] for [HTMLInputElement] or
          /// [HTMLTextAreaElement] objects, or [false] if its length is less
          /// than or equal to the maximum length. If [true], the element
          /// matches the [:invalid] and [:out-of-range] CSS pseudo-classes.
          ///
          ///    [tooShort]
          ///
          ///      A boolean value that is [true] if the value fails to meet
          /// the specified [minlength] for [HTMLInputElement] or
          /// [HTMLTextAreaElement] objects, or [false] if its length is
          /// greater than or equal to the minimum length. If [true], the
          /// element matches the [:invalid] and [:out-of-range] CSS
          /// pseudo-classes.
          ///
          ///    [rangeUnderflow]
          ///
          ///      A boolean value that is [true] if the value is less than the
          /// minimum specified by the [min] attribute, or [false] if it is
          /// greater than or equal to the minimum. If [true], the element
          /// matches the [:invalid] and [:out-of-range] CSS pseudo-classes.
          ///
          ///    [rangeOverflow]
          ///
          ///      A boolean value that is [true] if the value is greater than
          /// the maximum specified by the [max] attribute, or [false] if it is
          /// less than or equal to the maximum. If [true], the element matches
          /// the [:invalid] and [:out-of-range] and CSS pseudo-classes.
          ///
          ///    [stepMismatch]
          ///
          ///      A boolean value that is [true] if the value does not fit the
          /// rules determined by the [step] attribute (that is, it's not
          /// evenly divisible by the step value), or [false] if it does fit
          /// the step rule. If [true], the element matches the [:invalid] and
          /// [:out-of-range] CSS pseudo-classes.
          ///
          ///    [badInput]
          ///
          ///      A boolean value that is [true] if the user has provided
          /// input that the browser is unable to convert.
          ///
          ///    [customError]
          ///
          ///      A boolean value indicating whether the element's custom
          /// validity message has been set to a non-empty string by calling
          /// the element's [setCustomValidity()] method.
          ///
          ///
          ///
          ///     Note: To set all flags to [false], indicating that this
          /// element passes all constraints validation, pass in an empty
          /// object [{}]. In this case, you do not need to also pass a
          /// [message].
          ///
          ///
          ValidityStateFlags? flags,

          ///  A [string] containing a message, which will be set if any
          /// [flags] are [true]. This parameter is only optional if all
          /// [flags] are [false].
          ///
          String? message,

          ///  An [HTMLElement] which can be used by the user agent to report
          /// problems with this form submission.
          ///
          HTMLElement? anchor]) =>
      js_util.callMethod(this, 'setValidity', [flags, message, anchor]);

  ///
  ///     A boolean value which returns true if the element is a
  /// submittable element that is a candidate for
  ///    constraint validation.
  ///
  ///
  bool get willValidate => js_util.getProperty(this, 'willValidate');

  ///  Returns a [ValidityState] object which represents the different
  /// validity states the element can be in, with respect to constraint
  /// validation.
  ///
  ValidityState get validity => js_util.getProperty(this, 'validity');

  /// A [string] containing the validation message of this element.
  ///
  String get validationMessage =>
      js_util.getProperty(this, 'validationMessage');

  ///  Checks if an element meets any constraint validation rules
  /// applied to it.
  ///
  /// ElementInternals.checkValidity();
  ///
  bool checkValidity() => js_util.callMethod(this, 'checkValidity', []);

  ///  Checks if an element meets any constraint validation rules
  /// applied to it, and also sends a validation message to the user
  /// agent.
  ///
  /// ElementInternals.reportValidity();
  ///
  bool reportValidity() => js_util.callMethod(this, 'reportValidity', []);

  ///  Returns a [NodeList] of all of the label elements associated
  /// with this element.
  ///
  NodeList get labels => js_util.getProperty(this, 'labels');
  CustomStateSet get states => js_util.getProperty(this, 'states');
}

@anonymous
@JS()
@staticInterop
class ValidityStateFlags {
  external factory ValidityStateFlags(
      {bool valueMissing = false,
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
  external factory FocusOptions({bool preventScroll = false});
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

///  The object is a list of [DataTransferItem] objects representing
/// items being dragged. During a drag operation, each [DragEvent]
/// has a [dataTransfer] property and that property is a .
///  The individual items can be accessed using the array operator
/// [[]].
/// This interface has no constructor.
@JS()
@staticInterop
class DataTransferItemList {
  external DataTransferItemList();
}

extension PropsDataTransferItemList on DataTransferItemList {
  /// An [int] that is the number of drag items in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Adds an item (either a [File] object or a [string]) to the drag
  /// item list and returns a [DataTransferItem] object for the new
  /// item.
  ///
  /// DataTransferItem = DataTransferItemList.add(data, type);
  /// DataTransferItem = DataTransferItemList.add(file);
  ///
  /// This example shows the use of the add() method.
  /// <div>
  ///  <p id="source" ondragstart="dragstart_handler(event);" ondragend="dragend_handler(event);" draggable="true">
  ///  Select this element, drag it to the Drop Zone and then release the selection to move the element.</p>
  /// </div>
  /// <div id="target" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">Drop Zone</div>
  ///
  /// ```
  ///
  DataTransferItem? add(
          [

          /// A [string] representing the drag item's data.
          ///
          String? data,

          ///
          ///    A [string] of the drag item's type. Some example types are
          ///    [text/html] and [text/plain].
          ///
          ///
          String? type]) =>
      js_util.callMethod(this, 'add', [data, type]);

  /// Removes the drag item from the list at the given index.
  ///
  /// DataTransferItemList.remove(index);
  ///
  /// This example shows the use of the remove() method.
  /// <h1>Example uses of <code>DataTransferItemList</code> methods and property</h1>
  ///  <div>
  ///   <p id="source" ondragstart="dragstart_handler(event);" ondragend="dragend_handler(event);" draggable="true">
  ///    Select this element, drag it to the Drop Zone and then release the selection to move the element.</p>
  ///  </div>
  ///  <div id="target" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">Drop Zone</div>
  ///
  /// ```
  ///
  /// function dragstart_handler(ev) {
  ///  console.log("dragStart");
  ///  // Add this element's id to the drag payload so the drop handler will
  ///  // know which element to add to its tree
  ///  var dataList = ev.dataTransfer.items;
  ///  dataList.add(ev.target.id, "text/plain");
  ///  // Add some other items to the drag payload
  ///  dataList.add("<p>... paragraph ...</p>", "text/html");
  ///  dataList.add("http://www.example.org","text/uri-list");
  /// }
  ///
  /// function drop_handler(ev) {
  ///  console.log("Drop");
  ///  ev.preventDefault();
  ///  var data = event.dataTransfer.items;
  ///  // Loop through the dropped items and log their data
  ///  for (var i = 0; i < data.length; i++) {
  ///   if ((data[i].kind == 'string') && (data[i].type.match('^text/plain'))) {
  ///    // This item is the target node
  ///    data[i].getAsString(function (s){
  ///     ev.target.appendChild(document.getElementById(s));
  ///    });
  ///   } else if ((data[i].kind == 'string') && (data[i].type.match('^text/html'))) {
  ///    // Drag data item is HTML
  ///    data[i].getAsString(function (s){
  ///     console.log("... Drop: HTML = " + s);
  ///    });
  ///   } else if ((data[i].kind == 'string') && (data[i].type.match('^text/uri-list'))) {
  ///    // Drag data item is URI
  ///    data[i].getAsString(function (s){
  ///     console.log("... Drop: URI = " + s);
  ///    });
  ///   }
  ///  }
  /// }
  ///
  /// function dragover_handler(ev) {
  ///  console.log("dragOver");
  ///  ev.preventDefault();
  ///  // Set the dropEffect to move
  ///  ev.dataTransfer.dropEffect = "move"
  /// }
  ///
  /// function dragend_handler(ev) {
  ///  console.log("dragEnd");
  ///  var dataList = ev.dataTransfer.items;
  ///  // Clear all the files. Iterate in reverse order to safely remove.
  ///  for (var i = dataList.length - 1; i >= 0; i--) {
  ///   if (dataList[i].kind === "file") {
  ///    dataList.remove(i);
  ///   }
  ///  }
  ///  // Clear any remaining drag data
  ///  dataList.clear();
  /// }
  ///
  /// ```
  ///
  Object remove(

          ///
          ///     The zero-based index number of the item in the drag data list
          /// to remove. If the
          ///      doesn't correspond to an existing item in the list, the list
          /// is
          ///    left unchanged.
          ///
          ///
          int index) =>
      js_util.callMethod(this, 'remove', [index]);

  /// Removes all of the drag items from the list.
  ///
  /// DataTransferItemList.clear();
  ///
  /// This example shows the use of the clear() method.
  /// HTML
  ///  <div>
  ///   <p id="source" ondragstart="dragstart_handler(event);" ondragend="dragend_handler(event);" draggable="true">
  ///    Select this element, drag it to the Drop Zone and then release the selection to move the element.</p>
  ///  </div>
  ///  <div id="target" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">Drop Zone</div>
  ///
  /// CSS
  ///  div {
  ///   margin: 0em;
  ///   padding: 2em;
  ///  }
  ///  #source {
  ///   color: blue;
  ///   border: 1px solid black;
  ///  }
  ///  #target {
  ///   border: 1px solid black;
  ///  }
  ///
  /// JavaScript
  /// function dragstart_handler(ev) {
  ///  console.log("dragStart");
  ///  // Add this element's id to the drag payload so the drop handler will
  ///  // know which element to add to its tree
  ///  var dataList = ev.dataTransfer.items;
  ///  dataList.add(ev.target.id, "text/plain");
  ///  // Add some other items to the drag payload
  ///  dataList.add("<p>... paragraph ...</p>", "text/html");
  ///  dataList.add("http://www.example.org","text/uri-list");
  /// }
  ///
  /// function drop_handler(ev) {
  ///  console.log("Drop");
  ///  ev.preventDefault();
  ///  var data = event.dataTransfer.items;
  ///  // Loop through the dropped items and log their data
  ///  for (var i = 0; i < data.length; i++) {
  ///   if ((data[i].kind == 'string') && (data[i].type.match('^text/plain'))) {
  ///    // This item is the target node
  ///    data[i].getAsString(function (s){
  ///     ev.target.appendChild(document.getElementById(s));
  ///    });
  ///   } else if ((data[i].kind == 'string') && (data[i].type.match('^text/html'))) {
  ///    // Drag data item is HTML
  ///    data[i].getAsString(function (s){
  ///     console.log("... Drop: HTML = " + s);
  ///    });
  ///   } else if ((data[i].kind == 'string') && (data[i].type.match('^text/uri-list'))) {
  ///    // Drag data item is URI
  ///    data[i].getAsString(function (s){
  ///     console.log("... Drop: URI = " + s);
  ///    });
  ///   }
  ///  }
  /// }
  ///
  /// function dragover_handler(ev) {
  ///  console.log("dragOver");
  ///  ev.preventDefault();
  ///  // Set the dropEffect to move
  ///  ev.dataTransfer.dropEffect = "move"
  /// }
  ///
  /// function dragend_handler(ev) {
  ///  console.log("dragEnd");
  ///  var dataList = ev.dataTransfer.items;
  ///  for (var i = 0; i < dataList.length; i++) {
  ///   dataList.remove(i);
  ///  }
  ///  // Clear any remaining drag data
  ///  dataList.clear();
  /// }
  ///
  /// Result
  /// Result link
  Object clear() => js_util.callMethod(this, 'clear', []);
}

///  The object represents one drag data item. During a drag
/// operation, each [drag event] has a [dataTransfer] property which
/// contains a [list] of drag data items. Each item in the list is a
/// object.
/// This interface has no constructor.
@JS()
@staticInterop
class DataTransferItem {
  external DataTransferItem();
}

extension PropsDataTransferItem on DataTransferItem {
  /// The kind of drag data item, [string] or [file].
  ///
  String get kind => js_util.getProperty(this, 'kind');

  /// The drag data item's type, typically a MIME type.
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  Invokes the specified callback with the drag data item string as
  /// its argument.
  ///
  /// dataTransferItem.getAsString(callback);
  ///
  /// This example shows the use of the getAsString() method as an inline
  /// function in a drop event handler.
  /// function drop_handler(ev) {
  ///  console.log("Drop");
  ///  ev.preventDefault();
  ///  var data = ev.dataTransfer.items;
  ///  for (var i = 0; i < data.length; i += 1) {
  ///   if ((data[i].kind == 'string') &&
  ///     (data[i].type.match('^text/plain'))) {
  ///    // This item is the target node
  ///    data[i].getAsString(function (s){
  ///     ev.target.appendChild(document.getElementById(s));
  ///    });
  ///   } else if ((data[i].kind == 'string') &&
  ///        (data[i].type.match('^text/html'))) {
  ///    // Drag data item is HTML
  ///    console.log("... Drop: HTML");
  ///   } else if ((data[i].kind == 'string') &&
  ///        (data[i].type.match('^text/uri-list'))) {
  ///    // Drag data item is URI
  ///    console.log("... Drop: URI");
  ///   } else if ((data[i].kind == 'file') &&
  ///        (data[i].type.match('^image/'))) {
  ///    // Drag data item is an image file
  ///    var f = data[i].getAsFile();
  ///    console.log("... Drop: File ");
  ///   }
  ///  }
  /// }
  ///
  Object getAsString(

          /// A callback function that has access to the [data
          ///   transfer item's] string data. See Callback below for details.
          ///
          FunctionStringCallback? callback) =>
      js_util.callMethod(this, 'getAsString',
          [callback == null ? null : allowInterop(callback)]);

  ///  Returns the [File] object associated with the drag data item (or
  /// null if the drag item is not a file).
  ///
  /// File = DataTransferItem.getAsFile();
  ///
  ///
  ///  This example shows the use of the getAsFile() method in a
  ///  drop event handler.
  ///
  /// function drop_handler(ev) {
  ///  console.log("Drop");
  ///  ev.preventDefault();
  ///  var data = event.dataTransfer.items;
  ///  for (var i = 0; i < data.length; i += 1) {
  ///   if ((data[i].kind == 'string') &&
  ///     (data[i].type.match('^text/plain'))) {
  ///    // This item is the target node
  ///    data[i].getAsString(function (s){
  ///     ev.target.appendChild(document.getElementById(s));
  ///    });
  ///   } else if ((data[i].kind == 'string') &&
  ///        (data[i].type.match('^text/html'))) {
  ///    // Drag data item is HTML
  ///    console.log("... Drop: HTML");
  ///   } else if ((data[i].kind == 'string') &&
  ///        (data[i].type.match('^text/uri-list'))) {
  ///    // Drag data item is URI
  ///    console.log("... Drop: URI");
  ///   } else if ((data[i].kind == 'file') &&
  ///        (data[i].type.match('^image/'))) {
  ///    // Drag data item is an image file
  ///    var f = data[i].getAsFile();
  ///    console.log("... Drop: File ");
  ///   }
  ///  }
  /// }
  ///
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
@JS()
@staticInterop
class DragEvent implements MouseEvent {
  external DragEvent(String type, [DragEventInit? eventInitDict]);
}

extension PropsDragEvent on DragEvent {
  /// The data that is transferred during a drag and drop interaction.
  ///
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
  external Window();
}

extension PropsWindow on Window {
  /// Returns a reference to the current window.
  ///
  Window get window => js_util.getProperty(this, 'window');

  /// Returns an object reference to the window object itself.
  ///
  Window get self => js_util.getProperty(this, 'self');

  /// Returns a reference to the document that the window contains.
  ///
  Document get document => js_util.getProperty(this, 'document');

  /// Gets/sets the name of the window.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  /// Gets/sets the location, or current URL, of the window object.
  ///
  Location get location => js_util.getProperty(this, 'location');

  /// Returns a reference to the history object.
  ///
  History get history => js_util.getProperty(this, 'history');

  ///  Returns a reference to the [CustomElementRegistry] object, which
  /// can be used to register new custom elements and get information
  /// about previously registered custom elements.
  ///
  CustomElementRegistry get customElements =>
      js_util.getProperty(this, 'customElements');

  ///  Returns the locationbar object, whose visibility can be toggled
  /// in the window.
  ///
  BarProp get locationbar => js_util.getProperty(this, 'locationbar');

  ///  Returns the menubar object, whose visibility can be toggled in
  /// the window.
  ///
  BarProp get menubar => js_util.getProperty(this, 'menubar');

  ///  Returns the personalbar object, whose visibility can be toggled
  /// in the window.
  ///
  BarProp get personalbar => js_util.getProperty(this, 'personalbar');

  ///  Returns the scrollbars object, whose visibility can be toggled
  /// in the window.
  ///
  BarProp get scrollbars => js_util.getProperty(this, 'scrollbars');

  ///  Returns the statusbar object, whose visibility can be toggled in
  /// the window.
  ///
  BarProp get statusbar => js_util.getProperty(this, 'statusbar');

  ///  Returns the toolbar object, whose visibility can be toggled in
  /// the window.
  ///
  BarProp get toolbar => js_util.getProperty(this, 'toolbar');

  ///  Gets/sets the text in the statusbar at the bottom of the
  /// browser.
  ///
  @deprecated
  String get status => js_util.getProperty(this, 'status');
  set status(String newValue) {
    js_util.setProperty(this, 'status', newValue);
  }

  /// Closes the current window.
  ///
  /// window.close();
  ///
  Object close() => js_util.callMethod(this, 'close', []);

  ///  This property indicates whether the current window is closed or
  /// not.
  ///
  bool get closed => js_util.getProperty(this, 'closed');

  /// This method stops window loading.
  ///
  /// window.stop()
  ///
  /// window.stop();
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);

  /// Sets focus on the current window.
  ///
  /// window.focus()
  ///
  /// if (clicked) { window.focus(); }
  ///
  Object focus() => js_util.callMethod(this, 'focus', []);

  /// Sets focus away from the window.
  ///
  /// window.blur()
  ///
  /// window.blur();
  ///
  Object blur() => js_util.callMethod(this, 'blur', []);

  /// Returns an array of the subframes in the current window.
  ///
  Window get frames => js_util.getProperty(this, 'frames');

  ///  Returns the number of frames in the window. See also
  /// [window.frames].
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Returns a reference to the topmost window in the window
  /// hierarchy. This property is read only.
  ///
  Window? get top => js_util.getProperty(this, 'top');

  ///  Returns a reference to the window that opened this current
  /// window.
  ///
  dynamic get opener => js_util.getProperty(this, 'opener');
  set opener(dynamic newValue) {
    js_util.setProperty(this, 'opener', newValue);
  }

  ///  Returns a reference to the parent of the current window or
  /// subframe.
  ///
  Window? get parent => js_util.getProperty(this, 'parent');

  ///  Returns the element in which the window is embedded, or null if
  /// the window is not embedded.
  ///
  Element? get frameElement => js_util.getProperty(this, 'frameElement');

  /// Opens a new window.
  ///
  /// var window = window.open(url, windowName, [windowFeatures]);
  ///
  Window? open(
          [

          ///
          ///     A [String] indicating the URL of the resource to be loaded.
          /// This can
          ///     be a path or URL to an HTML page, image file, or any other
          /// resource that is supported
          ///    by the browser. If the empty string ("") is specified as ,
          ///    a blank page is opened into the targeted browsing context.
          ///
          ///
          String? url = '',
          String? target = '_blank',
          String? features = '']) =>
      js_util.callMethod(this, 'open', [url, target, features]);

  /// Returns a reference to the navigator object.
  ///
  Navigator get navigator => js_util.getProperty(this, 'navigator');
  bool get originAgentCluster =>
      js_util.getProperty(this, 'originAgentCluster');

  /// Displays an alert dialog.
  ///
  /// window.alert(message);
  ///
  /// window.alert("Hello world!");
  /// alert("Hello world!");
  ///
  /// Both produce:
  ///
  ///
  ///
  Object alert(
          [

          ///
          ///     A string you want to display in the alert dialog, or,
          /// alternatively, an object that
          ///    is converted into a string and displayed.
          ///
          ///
          String? message]) =>
      js_util.callMethod(this, 'alert', [message]);

  ///  Displays a dialog with a message that the user needs to respond
  /// to.
  ///
  /// result = window.confirm(message);
  ///
  /// if (window.confirm("Do you really want to leave?")) {
  ///  window.open("exit.html", "Thanks for Visiting!");
  /// }
  ///
  /// Produces:
  ///
  ///
  ///
  bool confirm(
          [

          /// A string you want to display in the confirmation dialog.
          ///
          String? message = '']) =>
      js_util.callMethod(this, 'confirm', [message]);

  /// Returns the text entered by the user in a prompt dialog.
  ///
  /// result = window.prompt(message, default);
  ///
  /// let sign = prompt("What's your sign?");
  ///
  /// if (sign.toLowerCase() == "scorpio") {
  ///  alert("Wow! I'm a Scorpio too!");
  /// }
  ///
  /// // there are many ways to use the prompt feature
  /// sign = window.prompt(); // open the blank prompt window
  /// sign = prompt();    // open the blank prompt window
  /// sign = window.prompt('Are you feeling lucky'); // open the window with Text "Are you feeling lucky"
  /// sign = window.prompt('Are you feeling lucky', 'sure'); // open the window with Text "Are you feeling lucky" and default value "sure"
  ///  When the user clicks the OK button, text entered in the input field is returned. If the
  ///  user clicks OK without entering any text, an empty string is returned. If the user
  ///  clicks the Cancel button, this function returns null.
  ///
  /// The above prompt appears as follows (in Chrome on OS X):
  ///
  String? prompt(
          [

          ///
          ///     A string of text to display to the user. Can be omitted if
          /// there is nothing to show
          ///    in the prompt window.
          ///
          ///
          String? message = '',

          ///
          ///     A string containing the default value displayed in the text
          /// input field. Note that
          ///     in Internet Explorer 7 and 8, if you do not provide this
          /// parameter, the string
          ///    ["undefined"] is the default value.
          ///
          ///
          String? mDefault = '']) =>
      js_util.callMethod(this, 'prompt', [message, mDefault]);

  /// Opens the Print Dialog to print the current document.
  ///
  /// window.print()
  ///
  Object print() => js_util.callMethod(this, 'print', []);

  ///  Provides a secure means for one window to send a string of data
  /// to another window, which need not be within the same domain as
  /// the first.
  ///
  /// postMessage(message, targetOrigin)
  /// postMessage(message, targetOrigin, [transfer])
  ///  targetWindow
  ///
  ///
  ///    A reference to the window that will receive the message. Methods for obtaining such
  ///    a reference include:
  ///
  ///
  ///    window.open (to spawn a new window and then reference it),
  ///    window.opener (to reference the window that spawned this one),
  ///    HTMLIFrameElement.contentWindow (to reference an embedded <iframe> from its parent window),
  ///    window.parent (to reference the parent window from within an embedded <iframe>), or
  ///    window.frames + an index value (named or numeric).
  ///
  ///
  ///  message
  ///
  ///
  ///    Data to be sent to the other window. The data is serialized using
  ///    the structured clone
  ///   algorithm. This means you can pass a broad variety of data objects safely to the
  ///    destination window without having to serialize them yourself.
  ///
  ///
  ///  targetOrigin
  ///
  ///
  ///    Specifies what the origin of targetWindow must be for the event to be
  ///    dispatched, either as the literal string "*" (indicating no preference)
  ///    or as a URI. If at the time the event is scheduled to be dispatched the scheme,
  ///    hostname, or port of targetWindow's document does not match that provided
  ///    in targetOrigin, the event will not be dispatched; only if all three
  ///    match will the event be dispatched. This mechanism provides control over where
  ///    messages are sent; for example, if postMessage() was used to transmit a
  ///    password, it would be absolutely critical that this argument be a URI whose origin is
  ///    the same as the intended receiver of the message containing the password, to prevent
  ///    interception of the password by a malicious third party. Always provide a
  /// specific targetOrigin, not *, if you know where the other
  /// window's document should be located. Failing to provide a specific target discloses
  /// the data you send to any interested malicious site.
  ///
  ///
  ///  transfer Optional
  ///
  ///
  ///    Is a sequence of transferable objects that are transferred with the message.
  ///    The ownership of these objects is given to the destination side and they are no longer usable on the sending side.
  ///
  ///
  ///
  /// /*
  ///  * In window A's scripts, with A being on <http://example.com:8080>:
  ///  */
  ///
  /// var popup = window.open(/* popup details */);
  ///
  /// // When the popup has fully loaded, if not blocked by a popup blocker:
  ///
  /// // This does nothing, assuming the window hasn't changed its location.
  /// popup.postMessage("The user is 'bob' and the password is 'secret'",
  ///          "https://secure.example.net");
  ///
  /// // This will successfully queue a message to be sent to the popup, assuming
  /// // the window hasn't changed its location.
  /// popup.postMessage("hello there!", "http://example.com");
  ///
  /// window.addEventListener("message", (event) => {
  ///  // Do we trust the sender of this message? (might be
  ///  // different from what we originally opened, for example).
  ///  if (event.origin !== "http://example.com")
  ///   return;
  ///
  ///  // event.source is popup
  ///  // event.data is "hi there yourself! the secret response is: rheeeeet!"
  /// }, false);
  ///
  /// /*
  ///  * In the popup's scripts, running on <http://example.com>:
  ///  */
  ///
  /// // Called sometime after postMessage is called
  /// window.addEventListener("message", (event) => {
  ///  // Do we trust the sender of this message?
  ///  if (event.origin !== "http://example.com:8080")
  ///   return;
  ///
  ///  // event.source is window.opener
  ///  // event.data is "hello there!"
  ///
  ///  // Assuming you've verified the origin of the received message (which
  ///  // you must do in any case), a convenient idiom for replying to a
  ///  // message is to call postMessage on event.source and provide
  ///  // event.origin as the targetOrigin.
  ///  event.source.postMessage("hi there yourself! the secret response " +
  ///               "is: rheeeeet!",
  ///               event.origin);
  /// }, false);
  ///
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

  int get orientation => js_util.getProperty(this, 'orientation');
  EventHandlerNonNull? get onorientationchange =>
      js_util.getProperty(this, 'onorientationchange');
  set onorientationchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onorientationchange', newValue);
  }

  Object navigate(SpatialNavigationDirection dir) =>
      js_util.callMethod(this, 'navigate', [dir]);

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
class WindowPostMessageOptions implements PostMessageOptions {
  external factory WindowPostMessageOptions({String targetOrigin = '/'});
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
  external BarProp();
}

extension PropsBarProp on BarProp {
  ///  A [Boolean], which is true if the bar represented by the used
  /// interface element is visible.
  ///
  bool get visible => js_util.getProperty(this, 'visible');
}

enum ScrollRestoration { auto, manual }

///  The interface allows manipulation of the browser session
/// history, that is the pages visited in the tab or frame that the
/// current page is loaded in.
@JS()
@staticInterop
class History {
  external History();
}

extension PropsHistory on History {
  ///  Returns an [Integer] representing the number of elements in the
  /// session history, including the currently loaded page. For
  /// example, for a page loaded in a new tab this property returns
  /// [1].
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Allows web applications to explicitly set default scroll
  /// restoration behavior on history navigation. This property can be
  /// either [auto] or [manual].
  ///
  ScrollRestoration get scrollRestoration =>
      js_util.getProperty(this, 'scrollRestoration');
  set scrollRestoration(ScrollRestoration newValue) {
    js_util.setProperty(this, 'scrollRestoration', newValue);
  }

  ///  Returns an [dynamic] value representing the state at the top of
  /// the history stack. This is a way to look at the state without
  /// having to wait for a [popstate] event.
  ///
  dynamic get state => js_util.getProperty(this, 'state');

  ///  Asynchronously loads a page from the session history, identified
  /// by its relative location to the current page, for example [-1]
  /// for the previous page or [1] for the next page. If you specify an
  /// out-of-bounds value (for instance, specifying [-1] when there are
  /// no previously-visited pages in the session history), this method
  /// silently has no effect. Calling [go()] without parameters or a
  /// value of [0] reloads the current page. Internet Explorer lets you
  /// specify a string, instead of an integer, to go to a specific URL
  /// in the history list.
  ///
  /// history.go([delta])
  ///
  Object go(
          [

          ///
          ///     The position in the history to which you want to move,
          /// relative to the current page.
          ///     A negative value moves backwards, a positive value moves
          /// forwards. So, for example,
          ///    [history.go(2)] moves forward two pages and [history.go(-2)]
          ///     moves back two pages. If no value is passed or if equals 0,
          /// it has
          ///    the same result as calling [location.reload()].
          ///
          ///
          int? delta = 0]) =>
      js_util.callMethod(this, 'go', [delta]);

  ///  This asynchronous method goes to the previous page in session
  /// history, the same action as when the user clicks the browser's
  /// Back button. Equivalent to [history.go(-1)].
  ///    Calling this method to go back beyond the first page in the
  /// session history has no effect and doesn't raise an exception.
  ///
  /// history.back()
  ///
  Object back() => js_util.callMethod(this, 'back', []);

  ///  This asynchronous method goes to the next page in session
  /// history, the same action as when the user clicks the browser's
  /// Forward button; this is equivalent to [history.go(1)].
  ///    Calling this method to go forward beyond the most recent page
  /// in the session history has no effect and doesn't raise an
  /// exception.
  ///
  /// history.forward()
  ///
  Object forward() => js_util.callMethod(this, 'forward', []);

  ///  Pushes the given data onto the session history stack with the
  /// specified title (and, if provided, URL). The data is treated as
  /// opaque by the DOM; you may specify any JavaScript object that can
  /// be serialized. Note that all browsers but Safari currently ignore
  /// the title parameter. For more information, see Working with the
  /// History API.
  ///
  /// history.pushState(state, title [, url])
  ///
  Object pushState(dynamic data, String unused,
          [

          ///
          ///     The new history entry's URL is given by this parameter. Note
          /// that the browser won't
          ///     attempt to load this URL after a call to [pushState()], but
          /// it might
          ///     attempt to load the URL later, for instance after the user
          /// restarts the browser. The
          ///     new URL does not need to be absolute; if it's relative, it's
          /// resolved relative to the
          ///     current URL. The new URL must be of the same origin as the
          /// current
          ///     URL; otherwise, [pushState()] will throw an exception. If
          /// this parameter
          ///    isn't specified, it's set to the document's current URL.
          ///
          ///
          String? url]) =>
      js_util.callMethod(this, 'pushState', [data, unused, url]);

  ///  Updates the most recent entry on the history stack to have the
  /// specified data, title, and, if provided, URL. The data is treated
  /// as opaque by the DOM; you may specify any JavaScript object that
  /// can be serialized. Note that all browsers but Safari currently
  /// ignore the title parameter. For more information, see Working
  /// with the History API.
  ///
  /// history.replaceState(stateObj, title, [url])
  ///
  Object replaceState(dynamic data, String unused,
          [

          ///
          ///     The URL of the history entry. The new URL must be of the same
          /// origin as the current
          ///    URL; otherwise replaceState throws an exception.
          ///
          ///
          String? url]) =>
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
  external Location();
}

extension PropsLocation on Location {
  ///  Is a stringifier that returns a [String] containing the entire
  /// URL. If changed, the associated document navigates to the new
  /// page. It can be set from a different origin than the associated
  /// document.
  ///
  String get href => js_util.getProperty(this, 'href');
  set href(String newValue) {
    js_util.setProperty(this, 'href', newValue);
  }

  ///  Returns a [String] containing the canonical form of the origin
  /// of the specific location.
  ///
  String get origin => js_util.getProperty(this, 'origin');

  ///  Is a [String] containing the protocol scheme of the URL,
  /// including the final [':'].
  ///
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  ///  Is a [String] containing the host, that is the hostname, a
  /// [':'], and the port of the URL.
  ///
  String get host => js_util.getProperty(this, 'host');
  set host(String newValue) {
    js_util.setProperty(this, 'host', newValue);
  }

  /// Is a [String] containing the domain of the URL.
  ///
  String get hostname => js_util.getProperty(this, 'hostname');
  set hostname(String newValue) {
    js_util.setProperty(this, 'hostname', newValue);
  }

  /// Is a [String] containing the port number of the URL.
  ///
  String get port => js_util.getProperty(this, 'port');
  set port(String newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  ///  Is a [String] containing an initial ['/'] followed by the path
  /// of the URL, not including the query string or fragment.
  ///
  String get pathname => js_util.getProperty(this, 'pathname');
  set pathname(String newValue) {
    js_util.setProperty(this, 'pathname', newValue);
  }

  ///  Is a [String] containing a ['?'] followed by the parameters or
  /// "querystring" of the URL. Modern browsers provide URLSearchParams
  /// and URL.searchParams to make it easy to parse out the parameters
  /// from the querystring.
  ///
  String get search => js_util.getProperty(this, 'search');
  set search(String newValue) {
    js_util.setProperty(this, 'search', newValue);
  }

  ///  Is a [String] containing a ['#'] followed by the fragment
  /// identifier of the URL.
  ///
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
  set mHash(String newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  /// Loads the resource at the URL provided in parameter.
  ///
  /// location.assign(url);
  ///
  /// // Navigate to the Location.reload article
  /// window.location.assign('https://developer.mozilla.org/en-US/docs/Web/API/Location/reload');
  ///
  Object assign(

          /// Is a [String] containing the URL of the page to navigate to.
          ///
          String url) =>
      js_util.callMethod(this, 'assign', [url]);

  ///  Replaces the current resource with the one at the provided URL
  /// (redirects to the provided URL). The difference from the
  /// [assign()] method and setting the [href] property is that after
  /// using [replace()] the current page will not be saved in session
  /// [History], meaning the user won't be able to use the back button
  /// to navigate to it.
  ///
  /// object.replace(url);
  ///
  Object replace(

          /// Is a [String] containing the URL of the page to navigate to.
          ///
          String url) =>
      js_util.callMethod(this, 'replace', [url]);

  /// Reloads the current URL, like the Refresh button.
  ///
  /// location.reload();
  ///
  Object reload() => js_util.callMethod(this, 'reload', []);

  ///  Is a static [DOMStringList] containing, in reverse order, the
  /// origins of all ancestor browsing contexts of the document
  /// associated with the given [Location] object.
  ///
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
  external HashChangeEvent(String type, [HashChangeEventInit? eventInitDict]);
}

extension PropsHashChangeEvent on HashChangeEvent {
  /// The previous URL from which the window was navigated.
  ///
  String get oldURL => js_util.getProperty(this, 'oldURL');

  /// The new URL to which the window is navigating.
  ///
  String get newURL => js_util.getProperty(this, 'newURL');
}

@anonymous
@JS()
@staticInterop
class HashChangeEventInit implements EventInit {
  external factory HashChangeEventInit(
      {String oldURL = '', String? newURL = ''});
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
  external PageTransitionEvent(String type,
      [PageTransitionEventInit? eventInitDict]);
}

extension PropsPageTransitionEvent on PageTransitionEvent {
  /// Indicates if the document is loading from a cache.
  ///
  bool get persisted => js_util.getProperty(this, 'persisted');
}

@anonymous
@JS()
@staticInterop
class PageTransitionEventInit implements EventInit {
  external factory PageTransitionEventInit({bool persisted = false});
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
  external BeforeUnloadEvent();
}

extension PropsBeforeUnloadEvent on BeforeUnloadEvent {
  @override
  String get returnValue => js_util.getProperty(this, 'returnValue');
  @override
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
  external ErrorEvent(String type, [ErrorEventInit? eventInitDict]);
}

extension PropsErrorEvent on ErrorEvent {
  ///  Is a [String] containing a human-readable error message
  /// describing the problem.
  ///
  String get message => js_util.getProperty(this, 'message');

  ///  Is a [String] containing the name of the script file in which
  /// the error occurred.
  ///
  String get filename => js_util.getProperty(this, 'filename');

  ///  Is an [integer] containing the line number of the script file on
  /// which the error occurred.
  ///
  int get lineno => js_util.getProperty(this, 'lineno');

  ///  Is an [integer] containing the column number of the script file
  /// on which the error occurred.
  ///
  int get colno => js_util.getProperty(this, 'colno');

  /// Is a JavaScript [Object] that is concerned by the event.
  ///
  @experimental
  dynamic get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class ErrorEventInit implements EventInit {
  external factory ErrorEventInit(
      {String message = '',
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
  external PromiseRejectionEvent(
      String type, PromiseRejectionEventInit eventInitDict);
}

extension PropsPromiseRejectionEvent on PromiseRejectionEvent {
  /// The JavaScript [Future] that was rejected.
  ///
  Future<dynamic> get promise =>
      js_util.promiseToFuture(js_util.getProperty(this, 'promise'));

  ///  A value or [Object] indicating why the promise was rejected, as
  /// passed to [Promise.reject()].
  ///
  dynamic get reason => js_util.getProperty(this, 'reason');
}

@anonymous
@JS()
@staticInterop
class PromiseRejectionEventInit implements EventInit {
  external factory PromiseRejectionEventInit(
      {Future<dynamic> promise, dynamic reason});
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

  EventHandlerNonNull? get oncontextmenu =>
      js_util.getProperty(this, 'oncontextmenu');
  set oncontextmenu(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontextmenu', newValue);
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
  external WindowEventHandlers();
}

extension PropsWindowEventHandlers on WindowEventHandlers {
  ///  Is an event handler representing the code to be called when the
  /// [afterprint] event is raised.
  ///
  EventHandlerNonNull? get onafterprint =>
      js_util.getProperty(this, 'onafterprint');
  set onafterprint(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onafterprint', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [beforeprint] event is raised.
  ///
  EventHandlerNonNull? get onbeforeprint =>
      js_util.getProperty(this, 'onbeforeprint');
  set onbeforeprint(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeprint', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [beforeunload] event is raised.
  ///
  OnBeforeUnloadEventHandlerNonNull? get onbeforeunload =>
      js_util.getProperty(this, 'onbeforeunload');
  set onbeforeunload(OnBeforeUnloadEventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbeforeunload', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [hashchange] event is raised.
  ///
  EventHandlerNonNull? get onhashchange =>
      js_util.getProperty(this, 'onhashchange');
  set onhashchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onhashchange', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [languagechange] event is raised.
  ///
  @experimental
  EventHandlerNonNull? get onlanguagechange =>
      js_util.getProperty(this, 'onlanguagechange');
  set onlanguagechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onlanguagechange', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [message] event is raised.
  ///
  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [MessageError] event is raised.
  ///
  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [offline] event is raised.
  ///
  EventHandlerNonNull? get onoffline => js_util.getProperty(this, 'onoffline');
  set onoffline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onoffline', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [online] event is raised.
  ///
  EventHandlerNonNull? get ononline => js_util.getProperty(this, 'ononline');
  set ononline(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ononline', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [pagehide] event is raised.
  ///
  EventHandlerNonNull? get onpagehide =>
      js_util.getProperty(this, 'onpagehide');
  set onpagehide(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpagehide', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [pageshow] event is raised.
  ///
  EventHandlerNonNull? get onpageshow =>
      js_util.getProperty(this, 'onpageshow');
  set onpageshow(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpageshow', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [popstate] event is raised.
  ///
  EventHandlerNonNull? get onpopstate =>
      js_util.getProperty(this, 'onpopstate');
  set onpopstate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpopstate', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [rejectionhandled] event is raised, indicating that a [Future]
  /// was rejected and the rejection has been handled.
  ///
  EventHandlerNonNull? get onrejectionhandled =>
      js_util.getProperty(this, 'onrejectionhandled');
  set onrejectionhandled(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrejectionhandled', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [storage] event is raised.
  ///
  EventHandlerNonNull? get onstorage => js_util.getProperty(this, 'onstorage');
  set onstorage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstorage', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [unhandledrejection] event is raised, indicating that a [Future]
  /// was rejected but the rejection was not handled.
  ///
  EventHandlerNonNull? get onunhandledrejection =>
      js_util.getProperty(this, 'onunhandledrejection');
  set onunhandledrejection(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onunhandledrejection', newValue);
  }

  ///  Is an event handler representing the code to be called when the
  /// [unload] event is raised.
  ///
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
  String btoa(String data) => js_util.callMethod(this, 'btoa', [data]);

  String atob(String data) => js_util.callMethod(this, 'atob', [data]);

  int setTimeout(dynamic handler, [int? timeout = 0, dynamic arguments]) =>
      js_util.callMethod(this, 'setTimeout', [handler, timeout, arguments]);

  Object clearTimeout([int? handle = 0]) =>
      js_util.callMethod(this, 'clearTimeout', [handle]);

  int setInterval(dynamic handler, [int? timeout = 0, dynamic arguments]) =>
      js_util.callMethod(this, 'setInterval', [handler, timeout, arguments]);

  Object clearInterval([int? handle = 0]) =>
      js_util.callMethod(this, 'clearInterval', [handle]);

  Object queueMicrotask(VoidFunction callback) =>
      js_util.callMethod(this, 'queueMicrotask', [allowInterop(callback)]);

  Future<ImageBitmap> createImageBitmap(dynamic image,
          [int? sx, int? sy, int? sw, int? sh, ImageBitmapOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'createImageBitmap', [image, sx, sy, sw, sh, options]));

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
  external DOMParser();
}

extension PropsDOMParser on DOMParser {
  ///  Parses a string using either the HTML parser or the XML parser,
  /// returning an [HTMLDocument] or [XMLDocument].
  ///
  /// const doc = domparser.parseFromString(string, mimeType)
  ///
  Document parseFromString(

          ///
          ///    The [String] to be parsed. It must contain either an
          ///    HTML, xml, xhtml+xml, or
          ///    svg document.
          ///
          ///
          String string,
          DOMParserSupportedType type) =>
      js_util.callMethod(this, 'parseFromString', [string, type]);
}

enum DOMParserSupportedType {
  textHtml,
  textXml,
  applicationXml,
  applicationXhtmlxml,
  imageSvgxml
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
        NavigatorFonts,
        NavigatorBadge,
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
  Geolocation get geolocation => js_util.getProperty(this, 'geolocation');
  MediaCapabilities get mediaCapabilities =>
      js_util.getProperty(this, 'mediaCapabilities');
  Permissions get permissions => js_util.getProperty(this, 'permissions');
  MediaSession get mediaSession => js_util.getProperty(this, 'mediaSession');
  Future<Object> share([ShareData? data]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'share', [data]));

  Scheduling get scheduling => js_util.getProperty(this, 'scheduling');
  ContactsManager get contacts => js_util.getProperty(this, 'contacts');
  WakeLock get wakeLock => js_util.getProperty(this, 'wakeLock');
  HID get hid => js_util.getProperty(this, 'hid');
  Clipboard get clipboard => js_util.getProperty(this, 'clipboard');
  Presentation get presentation => js_util.getProperty(this, 'presentation');
  CredentialsContainer get credentials =>
      js_util.getProperty(this, 'credentials');
  Bluetooth get bluetooth => js_util.getProperty(this, 'bluetooth');
  dynamic get keyboard => js_util.getProperty(this, 'keyboard');
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

  USB get usb => js_util.getProperty(this, 'usb');
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

///  The interface represents a bitmap image which can be drawn to a
/// [<canvas>] without undue latency. It can be created from a
/// variety of source objects using the [createImageBitmap()] factory
/// method. provides an asynchronous and resource efficient pathway
/// to prepare textures for rendering in WebGL.
@JS()
@staticInterop
class ImageBitmap {
  external ImageBitmap();
}

extension PropsImageBitmap on ImageBitmap {
  ///  Is an [unsigned] [int] representing the width, in CSS pixels, of
  /// the [ImageData].
  ///
  int get width => js_util.getProperty(this, 'width');

  ///  Is an [unsigned] [int] representing the height, in CSS pixels,
  /// of the [ImageData].
  ///
  int get height => js_util.getProperty(this, 'height');

  ///  Disposes of all graphical resources associated with an
  /// [ImageBitmap].
  ///
  /// void ImageBitmap.close()
  ///
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
  external factory ImageBitmapOptions(
      {ImageOrientation imageOrientation = ImageOrientation.none,
      PremultiplyAlpha? premultiplyAlpha = PremultiplyAlpha.valueDefault,
      ColorSpaceConversion? colorSpaceConversion =
          ColorSpaceConversion.valueDefault,
      int? resizeWidth,
      int? resizeHeight,
      ResizeQuality? resizeQuality = ResizeQuality.low});
}

extension PropsImageBitmapOptions on ImageBitmapOptions {
  ImageOrientation get imageOrientation =>
      js_util.getProperty(this, 'imageOrientation');
  set imageOrientation(ImageOrientation newValue) {
    js_util.setProperty(this, 'imageOrientation', newValue);
  }

  PremultiplyAlpha get premultiplyAlpha =>
      js_util.getProperty(this, 'premultiplyAlpha');
  set premultiplyAlpha(PremultiplyAlpha newValue) {
    js_util.setProperty(this, 'premultiplyAlpha', newValue);
  }

  ColorSpaceConversion get colorSpaceConversion =>
      js_util.getProperty(this, 'colorSpaceConversion');
  set colorSpaceConversion(ColorSpaceConversion newValue) {
    js_util.setProperty(this, 'colorSpaceConversion', newValue);
  }

  int get resizeWidth => js_util.getProperty(this, 'resizeWidth');
  set resizeWidth(int newValue) {
    js_util.setProperty(this, 'resizeWidth', newValue);
  }

  int get resizeHeight => js_util.getProperty(this, 'resizeHeight');
  set resizeHeight(int newValue) {
    js_util.setProperty(this, 'resizeHeight', newValue);
  }

  ResizeQuality get resizeQuality => js_util.getProperty(this, 'resizeQuality');
  set resizeQuality(ResizeQuality newValue) {
    js_util.setProperty(this, 'resizeQuality', newValue);
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
  external MessageEvent(String type, [MessageEventInit? eventInitDict]);
}

extension PropsMessageEvent on MessageEvent {
  /// The data sent by the message emitter.
  ///
  dynamic get data => js_util.getProperty(this, 'data');

  /// A [String] representing the origin of the message emitter.
  ///
  String get origin => js_util.getProperty(this, 'origin');

  /// A [String] representing a unique ID for the event.
  ///
  String get lastEventId => js_util.getProperty(this, 'lastEventId');

  ///  A [MessageEventSource] (which can be a [WindowProxy],
  /// [MessagePort], or [ServiceWorker] object) representing the
  /// message emitter.
  ///
  dynamic get source => js_util.getProperty(this, 'source');

  ///  An array of [MessagePort] objects representing the ports
  /// associated with the channel the message is being sent through
  /// (where appropriate, e.g. in channel messaging or when sending a
  /// message to a shared worker).
  ///
  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');

  ///  Initializes a message event. Do not use this anymore — use the
  /// [MessageEvent()] constructor instead.
  ///
  @deprecated
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
      String origin = '',
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
  external EventSource(String url, [EventSourceInit? eventSourceInitDict]);
  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSED;
}

extension PropsEventSource on EventSource {
  /// A [String] representing the URL of the source.
  ///
  String get url => js_util.getProperty(this, 'url');

  ///  A boolean value indicating whether the [EventSource] object was
  /// instantiated with cross-origin (CORS) credentials set ([true]),
  /// or not ([false], the default).
  ///
  bool get withCredentials => js_util.getProperty(this, 'withCredentials');

  ///  A number representing the state of the connection. Possible
  /// values are [CONNECTING] ([0]), [OPEN] ([1]), or [CLOSED] ([2]).
  ///
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

  ///  Closes the connection, if any, and sets the [readyState]
  /// attribute to [CLOSED]. If the connection is already closed, the
  /// method does nothing.
  ///
  /// eventSource.close();
  ///
  Object close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class EventSourceInit {
  external factory EventSourceInit({bool withCredentials = false});
}

extension PropsEventSourceInit on EventSourceInit {
  bool get withCredentials => js_util.getProperty(this, 'withCredentials');
  set withCredentials(bool newValue) {
    js_util.setProperty(this, 'withCredentials', newValue);
  }
}

enum BinaryType { blob, arraybuffer }

///  The object provides the API for creating and managing a
/// WebSocket connection to a server, as well as for sending and
/// receiving data on the connection.
/// To construct a , use the [WebSocket()] constructor.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class WebSocket implements EventTarget {
  external WebSocket(String url, [dynamic protocols = const []]);
  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSING;
  external static int get CLOSED;
}

extension PropsWebSocket on WebSocket {
  /// The absolute URL of the WebSocket.
  ///
  String get url => js_util.getProperty(this, 'url');

  /// The current state of the connection.
  ///
  int get readyState => js_util.getProperty(this, 'readyState');

  /// The number of bytes of queued data.
  ///
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

  /// The extensions selected by the server.
  ///
  String get extensions => js_util.getProperty(this, 'extensions');

  /// The sub-protocol selected by the server.
  ///
  String get protocol => js_util.getProperty(this, 'protocol');

  /// Closes the connection.
  ///
  /// WebSocket.close();
  ///
  /// WebSocket.close(code);
  ///
  /// WebSocket.close(code, reason);
  ///
  Object close(
          [

          ///
          ///     A numeric value indicating the status code explaining why the
          /// connection is being
          ///     closed. If this parameter is not specified, a default value
          /// of 1005 is assumed. See
          ///    the list of status codes of
          ///    [CloseEvent] for permitted values.
          ///
          ///
          int? code,

          ///
          ///     A human-readable string explaining why the connection is
          /// closing. This string must
          ///    be no longer than 123 bytes of UTF-8 text (not characters).
          ///
          ///
          String? reason]) =>
      js_util.callMethod(this, 'close', [code, reason]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  /// The binary data type used by the connection.
  ///
  BinaryType get binaryType => js_util.getProperty(this, 'binaryType');
  set binaryType(BinaryType newValue) {
    js_util.setProperty(this, 'binaryType', newValue);
  }

  /// Enqueues data to be transmitted.
  ///
  /// WebSocket.send("Hello server!");
  ///
  Object send(

          ///  The data to send to the server. It may be one of the following
          /// types:
          ///
          ///    [String]
          ///
          ///
          ///       A text string. The string is added to the buffer in UTF-8
          /// format, and the value
          ///       of [bufferedAmount] is increased by the number of bytes
          /// required to
          ///      represent the UTF-8 string.
          ///
          ///
          ///    [ArrayBuffer]
          ///
          ///
          ///       You can send the underlying binary data used by a typed
          /// array object; its binary
          ///       data contents are queued in the buffer, increasing the
          /// value of
          ///      [bufferedAmount] by the requisite number of bytes.
          ///
          ///
          ///    [Blob]
          ///
          ///
          ///       Specifying a [Blob] enqueues the blob's raw data to be
          /// transmitted in
          ///       a binary frame. The value of [bufferedAmount] is increased
          /// by the byte
          ///      size of that raw data.
          ///
          ///
          ///    [ArrayBufferView]
          ///
          ///
          ///      You can send any JavaScript
          ///  typed array object as a binary frame; its binary data contents
          /// are queued in
          ///       the buffer, increasing the value of [bufferedAmount] by the
          /// requisite
          ///      number of bytes.
          ///
          ///
          ///
          ///
          String data) =>
      js_util.callMethod(this, 'send', [data]);
}

///  A is sent to clients using WebSockets when the connection is
/// closed. This is delivered to the listener indicated by the
/// [WebSocket] object's [onclose] attribute.
@JS()
@staticInterop
class CloseEvent implements Event {
  external CloseEvent(String type, [CloseEventInit? eventInitDict]);
}

extension PropsCloseEvent on CloseEvent {
  ///  Returns a boolean value that Indicates whether or not the
  /// connection was cleanly closed.
  ///
  bool get wasClean => js_util.getProperty(this, 'wasClean');

  /// Returns an [int] containing the close code sent by the server.
  ///
  int get code => js_util.getProperty(this, 'code');

  ///  Returns a [String] indicating the reason the server closed the
  /// connection. This is specific to the particular server and
  /// sub-protocol.
  ///
  String get reason => js_util.getProperty(this, 'reason');
}

@anonymous
@JS()
@staticInterop
class CloseEventInit implements EventInit {
  external factory CloseEventInit(
      {bool wasClean = false, int? code = 0, String? reason = ''});
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

///  The interface of the Channel Messaging API allows us to create a
/// new message channel and send data through it via its two
/// [MessagePort] properties.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class MessageChannel {
  external MessageChannel();
}

extension PropsMessageChannel on MessageChannel {
  /// Returns port1 of the channel.
  ///
  MessagePort get port1 => js_util.getProperty(this, 'port1');

  /// Returns port2 of the channel.
  ///
  MessagePort get port2 => js_util.getProperty(this, 'port2');
}

///  The interface of the Channel Messaging API represents one of the
/// two ports of a [MessageChannel], allowing messages to be sent
/// from one port and listening out for them arriving at the other.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class MessagePort implements EventTarget {
  external MessagePort();
}

extension PropsMessagePort on MessagePort {
  ///  Sends a message from the port, and optionally, transfers
  /// ownership of objects to other browsing contexts.
  ///
  /// port.postMessage(message, transferList);
  ///
  ///
  ///  In the following code block, you can see a new channel being created using the
  ///  MessageChannel.MessageChannel constructor. When the
  ///  IFrame has loaded, we pass MessageChannel.port2 to the IFrame using
  ///  window.postMessage along with a message. The iframe receives the message,
  ///  and sends a message back on the MessageChannel using MessageChannel.postMessage.
  ///  The handleMessage handler then responds to a message being sent back from the iframe using
  ///  onmessage, putting it into a paragraph —
  ///  MessageChannel.port1 is listened to, to check when the message arrives.
  ///
  /// var channel = new MessageChannel();
  /// var para = document.querySelector('p');
  ///
  /// var ifr = document.querySelector('iframe');
  /// var otherWindow = ifr.contentWindow;
  ///
  /// ifr.addEventListener("load", iframeLoaded, false);
  ///
  /// function iframeLoaded() {
  ///  otherWindow.postMessage('Transferring message port', '*', [channel.port2]);
  /// }
  ///
  /// channel.port1.onmessage = handleMessage;
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  /// }
  ///
  /// // in the iframe...
  ///
  /// window.addEventListener('message', function (event) {
  ///  const messagePort = event.ports?.[0];
  ///  messagePort.postMessage("Hello from the iframe!");
  /// });
  ///
  /// For a full working example, see our channel
  /// messaging basic demo on Github (run it live
  /// too).
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  ///  Starts the sending of messages queued on the port (only needed
  /// when using [EventTarget.addEventListener]; it is implied when
  /// using [MessagePort.onmessage].)
  ///
  /// port.start()
  ///
  ///
  ///  In the following code block, you can see a handleMessage handler function,
  ///  run when a message is sent back to this document using onmessage:
  ///
  /// channel.port1.onmessage = handleMessage;
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  /// }
  ///  Another option would be to do this using EventTarget.addEventListener,
  ///  however, when this method is used, you need to explicitly call start() to
  ///  begin the flow of messages to this document:
  ///
  /// channel.port1.addEventListener('message', handleMessage, false);
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  ///  textInput.value = '';
  /// }
  ///
  /// channel.port1.start();
  ///
  Object start() => js_util.callMethod(this, 'start', []);

  /// Disconnects the port, so it is no longer active.
  ///
  /// port.close()
  ///
  ///
  ///  In the following code block, you can see a handleMessage handler function,
  ///  run when a message is sent back to this document using
  ///  EventTarget.addEventListener.
  ///
  /// channel.port1.addEventListener('message', handleMessage, false);
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  ///  textInput.value = '';
  /// }
  ///
  /// channel.port1.start();
  ///
  /// You could stop messages being sent at any time using
  /// channel.port1.close();
  ///
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
class PostMessageOptions {
  external factory PostMessageOptions({Iterable<dynamic> transfer = const []});
}

extension PropsPostMessageOptions on PostMessageOptions {
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
  external BroadcastChannel(String name);
}

extension PropsBroadcastChannel on BroadcastChannel {
  /// Returns a [String], the name of the channel.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Sends the message, of any type of object, to each
  /// [BroadcastChannel] object listening to the same channel.
  ///
  /// channel.postMessage(message);
  ///
  Object postMessage(

          ///
          ///     Data to be sent to the other window. The data is serialized
          /// using the structured clone algorithm.
          ///     This means you can pass a broad variety of data objects
          /// safely to the destination window without having to serialize them
          /// yourself.
          ///
          ///
          dynamic message) =>
      js_util.callMethod(this, 'postMessage', [message]);

  ///  Closes the channel object, indicating it won't get any new
  /// messages, and allowing it to be, eventually, garbage collected.
  ///
  /// var str = channel.close();
  ///
  /// // Connect to a channel
  /// var bc = new BroadcastChannel('test_channel');
  ///
  /// // More operations (like postMessage, …)
  ///
  /// // When done, disconnect from the channel
  /// bc.close();
  ///
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
  Object importScripts([String? urls]) =>
      js_util.callMethod(this, 'importScripts', [urls]);

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
@JS()
@staticInterop
class DedicatedWorkerGlobalScope
    implements WorkerGlobalScope, AnimationFrameProvider {
  external DedicatedWorkerGlobalScope();
}

extension PropsDedicatedWorkerGlobalScope on DedicatedWorkerGlobalScope {
  ///  The name that the [Worker] was (optionally) given when it was
  /// created using the [Worker()] constructor. This is mainly useful
  /// for debugging purposes.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Sends a message — which can consist of [dynamic] JavaScript
  /// object — to the parent document that first spawned the worker.
  ///
  /// postMessage(aMessage, transferList)
  ///
  ///
  ///  The following code snippet shows worker.js, in which an onmessage handler is used to handle messages from the main script.
  ///  Inside the handler a calculation is done from which a result message is created; this is then sent back to the main thread using postMessage(workerResult);
  ///
  /// onmessage = function(e) {
  ///  console.log('Message received from main script');
  ///  var workerResult = 'Result: ' + (e.data[0] * e.data[1]);
  ///  console.log('Posting message back to main script');
  ///  postMessage(workerResult);
  /// }
  ///
  /// In the main script, onmessage would have to be called on a Worker object, whereas inside the worker script you just need onmessage because the worker is effectively the global scope (DedicatedWorkerGlobalScope).
  /// For a full example, see our Basic dedicated worker example (run dedicated worker).
  ///
  ///  Note: postMessage() can only send a single object at once. As seen above, if you want to pass multiple values you can send an array.
  ///
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  ///  Discards any tasks queued in the [WorkerGlobalScope]'s event
  /// loop, effectively closing this particular scope.
  ///
  /// self.close();
  ///
  /// If you want to close your worker instance from inside the worker itself, you can call the following:
  /// close();
  ///
  /// close() and self.close() are effectively equivalent — both represent close() being called from inside the worker's inner scope.
  ///
  ///  Note: There is also a way to stop the worker from the main thread: the Worker.terminate method.
  ///
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

///  The object (the [SharedWorker] global scope) is accessible
/// through the [self] keyword. Some additional global functions,
/// namespaces objects, and constructors, not typically associated
/// with the worker global scope, but available on it, are listed in
/// the JavaScript Reference. See the complete list of functions
/// available to workers.
@JS()
@staticInterop
class SharedWorkerGlobalScope implements WorkerGlobalScope {
  external SharedWorkerGlobalScope();
}

extension PropsSharedWorkerGlobalScope on SharedWorkerGlobalScope {
  ///  The name that the [SharedWorker] was (optionally) given when it
  /// was created using the [SharedWorker()] constructor. This is
  /// mainly useful for debugging purposes.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Discards any tasks queued in the [SharedWorkerGlobalScope]'s
  /// event loop, effectively closing this particular scope.
  ///
  /// self.close();
  ///
  /// If you want to close your worker instance from inside the worker itself, you can call the following:
  /// close();
  ///
  /// close() and self.close() are effectively equivalent — both represent close() being called from inside the worker's inner scope.
  ///
  ///  Note: There is also a way to stop the worker from the main thread: the Worker.terminate method.
  ///
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
@JS()
@staticInterop
class Worker implements EventTarget, AbstractWorker {
  external Worker(String scriptURL, [WorkerOptions? options]);
}

extension PropsWorker on Worker {
  ///  Immediately terminates the worker. This does not let worker
  /// finish its operations; it is halted at once. [ServiceWorker]
  /// instances do not support this method.
  ///
  /// myWorker.terminate();
  ///
  /// The following code snippet shows creation of a Worker object using the Worker() constructor, which is then immediately terminated.
  /// var myWorker = new Worker('worker.js');
  ///
  /// myWorker.terminate();
  ///
  Object terminate() => js_util.callMethod(this, 'terminate', []);

  ///  Sends a message — consisting of any JavaScript object — to the
  /// worker's inner scope.
  ///
  /// worker.postMessage(message, [transfer]);
  ///
  /// The following code snippet shows the creation of a Worker object using the Worker() constructor. When either of two form inputs (first and second) have their values changed, change events invoke postMessage() to send the value of both inputs to the current worker.
  /// var myWorker = new Worker('worker.js');
  ///
  /// first.onchange = function() {
  ///  myWorker.postMessage([first.value,second.value]);
  ///  console.log('Message posted to worker');
  /// }
  ///
  /// second.onchange = function() {
  ///  myWorker.postMessage([first.value,second.value]);
  ///  console.log('Message posted to worker');
  /// }
  ///
  /// For a full example, see our simple worker example (run example).
  ///
  ///  Note: postMessage() can only send a single object at once. As seen above, if you want to pass multiple values you can send an array.
  ///
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
  external factory WorkerOptions(
      {WorkerType type = WorkerType.classic,
      RequestCredentials? credentials = RequestCredentials.sameOrigin,
      String? name = ''});
}

extension PropsWorkerOptions on WorkerOptions {
  WorkerType get type => js_util.getProperty(this, 'type');
  set type(WorkerType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  RequestCredentials get credentials =>
      js_util.getProperty(this, 'credentials');
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum WorkerType { classic, module }

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
@JS()
@staticInterop
class SharedWorker implements EventTarget, AbstractWorker {
  external SharedWorker(String scriptURL, [dynamic options]);
}

extension PropsSharedWorker on SharedWorker {
  ///  Returns a [MessagePort] object used to communicate with and
  /// control the shared worker.
  ///
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
        NavigatorFonts,
        NavigatorBadge,
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
  USB get usb => js_util.getProperty(this, 'usb');
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
  external WorkerLocation();
}

extension PropsWorkerLocation on WorkerLocation {
  ///  Returns a [String] containing the serialized [URL] for the
  /// worker’s location.
  ///
  String get href => js_util.getProperty(this, 'href');

  /// Returns the worker’s .
  ///
  String get origin => js_util.getProperty(this, 'origin');

  /// Returns the part of the worker’s location.
  ///
  String get protocol => js_util.getProperty(this, 'protocol');

  /// Returns the part of the worker’s location.
  ///
  String get host => js_util.getProperty(this, 'host');

  /// Returns the part of the worker’s location.
  ///
  String get hostname => js_util.getProperty(this, 'hostname');

  /// Returns the part of the worker’s location.
  ///
  String get port => js_util.getProperty(this, 'port');

  /// Returns the part of the worker’s location.
  ///
  String get pathname => js_util.getProperty(this, 'pathname');

  /// Returns the part of the worker’s location.
  ///
  String get search => js_util.getProperty(this, 'search');

  /// Returns the part of the worker’s location.
  ///
  @JS('hash')
  @staticInterop
  String get mHash => js_util.getProperty(this, 'hash');
}

@JS()
@staticInterop
class WorkletGlobalScope {
  external WorkletGlobalScope();
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
  external Worklet();
}

extension PropsWorklet on Worklet {
  /// Adds the script module at the given URL to the current worklet.
  ///
  /// addPromise = worklet.addModule(moduleURL);
  /// addPromise = worklet.addModule(moduleURL, options);
  ///
  @experimental
  Future<Object> addModule(

          ///
          ///     A [String] containing the URL of a JavaScript file with the
          /// module to
          ///    add.
          ///
          ///
          String moduleURL,
          [

          /// An object with any of the following options:
          ///
          ///
          ///     [credentials]: A [RequestCredentials] value that
          ///      indicates whether to send credentials (e.g. cookies and HTTP
          /// authentication)
          ///     when loading the module. Can be one of ["omit"],
          ///     ["same-origin"], or ["include"]. Defaults to
          ///     ["same-origin"]. See also [Request.credentials].
          ///
          ///
          ///
          WorkletOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'addModule', [moduleURL, options]));
}

@anonymous
@JS()
@staticInterop
class WorkletOptions {
  external factory WorkletOptions(
      {RequestCredentials credentials = RequestCredentials.sameOrigin});
}

extension PropsWorkletOptions on WorkletOptions {
  RequestCredentials get credentials =>
      js_util.getProperty(this, 'credentials');
  set credentials(RequestCredentials newValue) {
    js_util.setProperty(this, 'credentials', newValue);
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
  external Storage();
}

extension PropsStorage on Storage {
  ///  Returns an integer representing the number of data items stored
  /// in the [Storage] object.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  When passed a number [n], this method will return the name of
  /// the nth key in the storage.
  ///
  /// var aKeyName = storage.key(index);
  ///
  String? key(

          ///
          ///     An integer representing the number of the key you want to get
          /// the name of. This is a
          ///    zero-based index.
          ///
          ///
          int index) =>
      js_util.callMethod(this, 'key', [index]);

  /// When passed a key name, will return that key's value.
  ///
  /// var aValue = storage.getItem(keyName);
  ///
  ///
  ///  The following function retrieves three data items from local storage, then uses them to
  ///  set custom styles on a page.
  ///
  /// function setStyles() {
  ///  var currentColor = localStorage.getItem('bgcolor');
  ///  var currentFont = localStorage.getItem('font');
  ///  var currentImage = localStorage.getItem('image');
  ///
  ///  document.getElementById('bgcolor').value = currentColor;
  ///  document.getElementById('font').value = currentFont;
  ///  document.getElementById('image').value = currentImage;
  ///
  ///  htmlElem.style.backgroundColor = '#' + currentColor;
  ///  pElem.style.fontFamily = currentFont;
  ///  imgElem.setAttribute('src', currentImage);
  /// }
  ///  Note: To see this used within a real world example, see our Web Storage Demo.
  ///
  String? getItem(String key) => js_util.callMethod(this, 'getItem', [key]);

  ///  When passed a key name and value, will add that key to the
  /// storage, or update that key's value if it already exists.
  ///
  /// storage.setItem(keyName, keyValue);
  ///
  /// The following function creates three data items inside local storage.
  /// function populateStorage() {
  ///  localStorage.setItem('bgcolor', 'red');
  ///  localStorage.setItem('font', 'Helvetica');
  ///  localStorage.setItem('image', 'myCat.png');
  /// }
  ///  Note: To see this used within a real world example, see our Web Storage Demo.
  ///
  Object setItem(String key, String value) =>
      js_util.callMethod(this, 'setItem', [key, value]);

  /// When passed a key name, will remove that key from the storage.
  ///
  /// storage.removeItem(keyName);
  ///
  ///
  ///  The following function creates three data items inside local storage, then removes the
  ///  image data item.
  ///
  /// function populateStorage() {
  ///  localStorage.setItem('bgcolor', 'red');
  ///  localStorage.setItem('font', 'Helvetica');
  ///  localStorage.setItem('image', 'myCat.png');
  ///
  ///  localStorage.removeItem('image');
  /// }
  ///
  /// We can do the same for the session storage.
  /// function populateStorage() {
  ///  sessionStorage.setItem('bgcolor', 'red');
  ///  sessionStorage.setItem('font', 'Helvetica');
  ///  sessionStorage.setItem('image', 'myCat.png');
  ///
  ///  sessionStorage.removeItem('image');
  /// }
  ///  Note: To see this used within a real world example, see our Web Storage Demo.
  ///
  Object removeItem(String key) =>
      js_util.callMethod(this, 'removeItem', [key]);

  /// When invoked, will empty all keys out of the storage.
  ///
  /// storage.clear();
  ///
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
  external StorageEvent(String type, [StorageEventInit? eventInitDict]);
}

extension PropsStorageEvent on StorageEvent {
  ///
  ///    Returns a [String] that represents the key changed.
  ///    The attribute is [null]
  ///    when the change is caused by the storage [clear()] method.
  ///
  ///
  String? get key => js_util.getProperty(this, 'key');

  ///
  ///    Returns a [String] with the original value of the [key].
  ///    This value is [null] when the [key] has been newly added
  ///    and therefore doesn't have any previous value.
  ///
  ///
  String? get oldValue => js_util.getProperty(this, 'oldValue');

  ///
  ///    Returns a [String] with the new value of the [key].
  ///    This value is [null]
  ///    when the change has been invoked by storage [clear()] method,
  ///    or the [key] has been removed from the storage.
  ///
  ///
  String? get newValue => js_util.getProperty(this, 'newValue');

  ///  Returns [String] with the URL of the document whose [key]
  /// changed.
  ///
  String get url => js_util.getProperty(this, 'url');

  ///  Returns a [Storage] object that represents the storage that was
  /// affected.
  ///
  Storage? get storageArea => js_util.getProperty(this, 'storageArea');

  ///
  ///     Initializes the event in a manner analogous to the
  /// similarly-named [initEvent()] } method in the DOM
  ///    Events interfaces. Use the constructor instead.
  ///
  ///
  /// storageEvent.initStorageEvent(type[, canBubble[, cancelable[, key[, oldValue[, newValue[, url[, storageArea]]]]]]])
  ///
  @deprecated
  Object initStorageEvent(String type,
          [bool? bubbles = false,

          /// A boolean indicating whether the event is cancelable.
          ///
          bool? cancelable = false,

          /// The key whose value is changing as a result of this event.
          ///
          String? key,

          /// The key's old value.
          ///
          String? oldValue,

          /// The key's new value.
          ///
          String? newValue,

          /// The URL of the document initiating the change.
          ///
          String? url = '',

          ///
          ///     The [Storage] object representing the storage area on which
          /// this event
          ///    occurred.
          ///
          ///
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
      String url = '',
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
@deprecated
@JS()
@staticInterop
class HTMLMarqueeElement implements HTMLElement {
  external HTMLMarqueeElement();
}

extension PropsHTMLMarqueeElement on HTMLMarqueeElement {
  ///  Sets how the text is scrolled within the marquee. Possible
  /// values are [scroll], [slide] and [alternate]. If no value is
  /// specified, the default value is [scroll].
  ///
  String get behavior => js_util.getProperty(this, 'behavior');
  set behavior(String newValue) {
    js_util.setProperty(this, 'behavior', newValue);
  }

  ///  Sets the background color through color name or hexadecimal
  /// value.
  ///
  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }

  ///  Sets the direction of the scrolling within the marquee. Possible
  /// values are [left], [right], [up] and [down]. If no value is
  /// specified, the default value is [left].
  ///
  String get direction => js_util.getProperty(this, 'direction');
  set direction(String newValue) {
    js_util.setProperty(this, 'direction', newValue);
  }

  /// Sets the height in pixels or percentage value.
  ///
  String get height => js_util.getProperty(this, 'height');
  set height(String newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  /// Sets the horizontal margin.
  ///
  int get hspace => js_util.getProperty(this, 'hspace');
  set hspace(int newValue) {
    js_util.setProperty(this, 'hspace', newValue);
  }

  ///  Sets the number of times the marquee will scroll. If no value is
  /// specified, the default value is −1, which means the marquee will
  /// scroll continuously.
  ///
  int get loop => js_util.getProperty(this, 'loop');
  set loop(int newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  ///  Sets the amount of scrolling at each interval in pixels. The
  /// default value is 6.
  ///
  int get scrollAmount => js_util.getProperty(this, 'scrollAmount');
  set scrollAmount(int newValue) {
    js_util.setProperty(this, 'scrollAmount', newValue);
  }

  ///  Sets the interval between each scroll movement in milliseconds.
  /// The default value is 85. Note that any value smaller than 60 is
  /// ignored and the value 60 is used instead, unless [trueSpeed] is
  /// [true].
  ///
  int get scrollDelay => js_util.getProperty(this, 'scrollDelay');
  set scrollDelay(int newValue) {
    js_util.setProperty(this, 'scrollDelay', newValue);
  }

  ///  By default, [scrollDelay] values lower than 60 are ignored. If
  /// is [true], then those values are not ignored.
  ///
  bool get trueSpeed => js_util.getProperty(this, 'trueSpeed');
  set trueSpeed(bool newValue) {
    js_util.setProperty(this, 'trueSpeed', newValue);
  }

  /// Sets the vertical margin.
  ///
  int get vspace => js_util.getProperty(this, 'vspace');
  set vspace(int newValue) {
    js_util.setProperty(this, 'vspace', newValue);
  }

  /// Sets the width in pixels or percentage value.
  ///
  String get width => js_util.getProperty(this, 'width');
  set width(String newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  /// Starts scrolling of the marquee.
  ///
  Object start() => js_util.callMethod(this, 'start', []);

  /// Stops scrolling of the marquee.
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);
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
@deprecated
@JS()
@staticInterop
class HTMLFrameSetElement implements HTMLElement, WindowEventHandlers {
  external HTMLFrameSetElement();
}

extension PropsHTMLFrameSetElement on HTMLFrameSetElement {
  ///  Is a [String] structured as a comma-separated list specifying
  /// the width of each column inside a frameset.
  ///
  @deprecated
  String get cols => js_util.getProperty(this, 'cols');
  set cols(String newValue) {
    js_util.setProperty(this, 'cols', newValue);
  }

  ///  Is a [String] structured as a comma-separated list specifying
  /// the height of each column inside a frameset.
  ///
  @deprecated
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
@deprecated
@JS()
@staticInterop
class HTMLFontElement implements HTMLElement {
  external HTMLFontElement();
}

extension PropsHTMLFontElement on HTMLFontElement {
  ///  Is a [String] that reflects the HTML attribute, containing
  /// either a named color or a color specified in the hexadecimal
  /// #RRGGBB format.
  ///
  String get color => js_util.getProperty(this, 'color');
  set color(String newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing a
  /// comma-separated list of one or more font names.
  ///
  String get face => js_util.getProperty(this, 'face');
  set face(String newValue) {
    js_util.setProperty(this, 'face', newValue);
  }

  ///  Is a [String] that reflects the HTML attribute, containing
  /// either a font size number ranging from 1 to 7 or a relative size
  /// to the attribute of the [<basefont>] element, for example -2 or
  /// +1.
  ///
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
  Object AddSearchProvider() =>
      js_util.callMethod(this, 'AddSearchProvider', []);

  Object IsSearchProviderInstalled() =>
      js_util.callMethod(this, 'IsSearchProviderInstalled', []);
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
  external PluginArray();
}

extension PropsPluginArray on PluginArray {
  ///  Refreshes all plugins on the current page, optionally reloading
  /// documents.
  ///
  Object refresh() => js_util.callMethod(this, 'refresh', []);

  /// The number of plugins in the array.
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns the [Plugin] at the specified index into the array.
  ///
  dynamic item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Returns the [Plugin] with the specified name.
  ///
  dynamic namedItem(String name) =>
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
  external MimeTypeArray();
}

extension PropsMimeTypeArray on MimeTypeArray {
  /// The number of items in the array.
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns the [MimeType] object with the specified index.
  ///
  dynamic item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Returns the [MimeType] object with the specified name.
  ///
  dynamic namedItem(String name) =>
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
  external Plugin();
}

extension PropsPlugin on Plugin {
  /// The name of the plugin.
  ///
  Object get name => js_util.getProperty(this, 'name');

  /// A human readable description of the plugin.
  ///
  Object get description => js_util.getProperty(this, 'description');

  /// The filename of the plugin file.
  ///
  Object get filename => js_util.getProperty(this, 'filename');
  Object get length => js_util.getProperty(this, 'length');

  ///  Returns the MIME type of a supported content type, given the
  /// index number into a list of supported types.
  ///
  Object item(int index) => js_util.callMethod(this, 'item', [index]);

  /// Returns the MIME type of a supported item.
  ///
  Object namedItem(String name) =>
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
  external MimeType();
}

extension PropsMimeType on MimeType {
  /// Returns the MIME type of the associated plugin.
  ///
  Object get type => js_util.getProperty(this, 'type');

  ///  Returns a description of the associated plugin or an empty
  /// string if there is none.
  ///
  Object get description => js_util.getProperty(this, 'description');

  ///  A string containing valid file extensions for the data displayed
  /// by the plugin, or an empty string if an extension is not valid
  /// for the particular module. For example, a browser's content
  /// decryption module may appear in the plugin list but support more
  /// file extensions than can be anticipated. It might therefore
  /// return an empty string.
  ///
  Object get suffixes => js_util.getProperty(this, 'suffixes');

  ///  Returns an instance of [Plugin] containing information about the
  /// plugin itself.
  ///
  Object get enabledPlugin => js_util.getProperty(this, 'enabledPlugin');
}
