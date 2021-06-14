/// HTML Standard
///
/// https://html.spec.whatwg.org/multipage/
@JS('window')
library html;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'cssom_1.dart';
import 'wai_aria_1_2.dart';
import 'webgpu.dart';
import 'webdriver2.dart';
import 'ua_client_hints.dart';
import 'web_locks.dart';
import 'device_memory_1.dart';
import 'netinfo.dart';
import 'local_font_access.dart';
import 'badging.dart';
import 'storage.dart';
import 'css_font_loading_3.dart';
import 'dom.dart';
import 'svg2.dart';
import 'mediacapture_streams.dart';
import 'media_source.dart';
import 'file_a_p_i.dart';
import 'xhr.dart';
import 'webgl1.dart';
import 'webgl2.dart';
import 'geometry_1.dart';
import 'uievents.dart';
import 'hr_time_3.dart';
import 'service_workers_1.dart';
import 'fetch.dart';
import 'geolocation_a_p_i.dart';
import 'media_capabilities.dart';
import 'permissions.dart';
import 'mediasession.dart';
import 'web_share.dart';
import 'media_playback_quality.dart';
import 'cookie_store.dart';
import 'is_input_pending.dart';
import 'contact_api.dart';
import 'scheduling_apis.dart';
import 'trusted_types.dart';
import 'screen_wake_lock.dart';
import 'requestidlecallback.dart';
import 'selection_api.dart';
import 'entries_api.dart';
import 'webhid.dart';
import 'clipboard_apis.dart';
import 'cssom_view_1.dart';
import 'presentation_api.dart';
import 'credential_management_1.dart';
import 'web_bluetooth.dart';
import 'keyboard_lock.dart';
import 'visual_viewport.dart';
import 'picture_in_picture.dart';
import 'portals.dart';
import 'custom_state_pseudo_class.dart';
import 'video_rvfc.dart';
import 'speech_api.dart';
import 'file_system_access.dart';
import 'webxr.dart';
import 'get_installed_related_apps.dart';
import 'serial.dart';
import 'web_crypto_a_p_i.dart';
import 'vibration.dart';
import 'gamepad.dart';
import 'device_posture.dart';
import 'webusb.dart';
import 'remote_playback.dart';
import 'permissions_policy_1.dart';
import 'css_nav_1.dart';
import 'battery_status.dart';
import 'webmidi.dart';
import 'indexed_d_b_3.dart';
import 'encrypted_media.dart';

@JS()
class HTMLAllCollection {
  external int get length;
  external dynamic namedItem(String name);
  external dynamic item([String? nameOrIndex]);

  external factory HTMLAllCollection();
}

///
///
///  The interface represents a collection of HTML form control
/// elements. It represents the lists returned by the
/// [HTMLFormElement] interface's [elements] property and the
/// [HTMLFieldSetElement] interface's [elements] property.
///
///  This interface replaces one method from [HTMLCollection], on
/// which it is based.
///
///
@JS()
class HTMLFormControlsCollection extends HTMLCollection {
  ///  Returns the [RadioNodeList] or the [Element] in the collection
  /// whose [name] or [id] matches the specified name, or [null] if no
  /// nodes match. Note that this version of [namedItem()] hide the one
  /// inherited from [HTMLCollection]. Like that one, in JavaScript,
  /// using the array bracket syntax with a [String], like
  /// [collection["value"]] is equivalent to
  /// [collection.namedItem("value")].
  /// var item = collection.namedItem(str);
  /// var item = collection[str];
  ///
  @override
  external dynamic namedItem(String name);

  external factory HTMLFormControlsCollection();
}

///
///
///  The interface represents a collection of radio elements in a
/// [<form>] or a [<fieldset>] element.
///
///
@JS()
class RadioNodeList extends NodeList {
  ///  If the underlying element collection contains radio buttons, the
  /// property represents the checked radio button. On retrieving the
  /// property, the of the currently [checked] radio button is returned
  /// as a string. If the collection does not contain any radio buttons
  /// or none of the radio buttons in the collection is in [checked]
  /// state, the empty string is returned. On setting the property, the
  /// first radio button input element whose property is equal to the
  /// new value will be set to [checked].
  external String get value;
  external set value(String newValue);

  external factory RadioNodeList();
}

///
///  The interface represents a collection of [<option>] HTML
/// elements (in document order) and offers methods and properties
/// for selecting from the list as well as optionally altering its
/// items. This object is returned only by the [options] property of
/// select.
///
///
///
@JS()
class HTMLOptionsCollection extends HTMLCollection {
  @override
  external int get length;
  @override
  external set length(int newValue);
  external Object add(dynamic element, [dynamic before]);
  external Object remove(int index);
  external int get selectedIndex;
  external set selectedIndex(int newValue);

  external factory HTMLOptionsCollection();
}

///
///
///  A type returned by some APIs which contains a list of DOMString
/// (strings).
@JS()
class DOMStringList {
  /// Returns the length of the list.
  external int get length;

  /// Returns a [DOMString].
  external String? item(int index);

  /// Returns [Boolean] indicating if the given string is in the list
  external bool contains(String string);

  external factory DOMStringList();
}

@JS()
enum DocumentReadyState { loading, interactive, complete }

///
///
///  The interface represents any HTML element. Some elements
/// directly implement this interface, while others implement it via
/// an interface that inherits it.
///
///
@JS()
class HTMLElement extends Element
    with
        GlobalEventHandlers,
        DocumentAndElementEventHandlers,
        ElementContentEditable,
        HTMLOrSVGElement,
        ElementCSSInlineStyle {
  external factory HTMLElement();

  ///  Is a [DOMString] containing the text that appears in a popup box
  /// when mouse is over the element.
  external String get title;
  external set title(String newValue);

  ///  Is a [DOMString] representing the language of an element's
  /// attributes, text, and element contents.
  external String get lang;
  external set lang(String newValue);

  /// Is a [Boolean] representing the translation.
  @experimental
  external bool get translate;
  external set translate(bool newValue);

  ///  Is a [DOMString], reflecting the global attribute, representing
  /// the directionality of the element. Possible values are ["ltr"],
  /// ["rtl"], and ["auto"].
  external String get dir;
  external set dir(String newValue);

  /// Is a [Boolean] indicating if the element is hidden or not.
  external bool get hidden;
  external set hidden(bool newValue);

  /// Sends a mouse click event to the element.
  /// element.click()
  /// Simulate a mouse-click when moving the mouse pointer over a checkbox:
  /// <form>
  ///  <input type="checkbox" id="myCheck" onmouseover="myFunction()" onclick="alert('click event occurred')">
  /// </form>
  /// ```
  ///
  /// // On mouse-over, execute myFunction
  /// function myFunction() {
  ///  document.getElementById("myCheck").click();
  /// }
  ///
  /// ```
  ///
  external Object click();

  ///  Is a [DOMString] representing the access key assigned to the
  /// element.
  external String get accessKey;
  external set accessKey(String newValue);

  ///  Returns a [DOMString] containing the element's assigned access
  /// key.
  external String get accessKeyLabel;

  /// Is a [Boolean] indicating if the element can be dragged.
  external bool get draggable;
  external set draggable(bool newValue);

  ///  Is a [Boolean] that controls spell-checking. It is present on
  /// all HTML elements, though it doesn't have an effect on all of
  /// them.
  external bool get spellcheck;
  external set spellcheck(bool newValue);
  external String get autocapitalize;
  external set autocapitalize(String newValue);

  ///  Represents the "rendered" text content of a node and its
  /// descendants. As a getter, it approximates the text the user would
  /// get if they highlighted the contents of the element with the
  /// cursor and then copied it to the clipboard.
  external String get innerText;
  external set innerText(String newValue);
  external String get outerText;
  external set outerText(String newValue);

  /// Attaches an [ElementInternals] instance to the custom element.
  @experimental
  external ElementInternals attachInternals();
  external Element? get offsetParent;
  external int get offsetTop;
  external int get offsetLeft;
  external int get offsetWidth;
  external int get offsetHeight;
}

///
///
///  The interface represents an invalid HTML element and derives
/// from the [HTMLElement] interface, but without implementing any
/// additional properties or methods.
///
///
@JS()
class HTMLUnknownElement extends HTMLElement {
  external factory HTMLUnknownElement();
}

@JS()
mixin HTMLOrSVGElement {
  external DOMStringMap get dataset;
  external String get nonce;
  external set nonce(String newValue);
  external bool get autofocus;
  external set autofocus(bool newValue);
  external int get tabIndex;
  external set tabIndex(int newValue);
  external Object focus([FocusOptions? options]);
  external Object blur();
}

///
///
///  The interface is used for the [HTMLOrForeignElement.dataset]
/// attribute, to represent data for custom attributes added to
/// elements.
@JS()
class DOMStringMap {
  external factory DOMStringMap();
}

///
///
///  The interface serves as the root node for a given HTML document.
/// This object inherits the properties and methods described in the
/// [HTMLElement] interface.
///
///  You can retrieve the object for a given document by reading the
/// value of the [document.documentElement] property.
///
///
@JS()
class HTMLHtmlElement extends HTMLElement {
  external factory HTMLHtmlElement();
  external String get version;
  external set version(String newValue);
}

///
///
///  The interface contains the descriptive information, or metadata,
/// for a document. This object inherits all of the properties and
/// methods described in the [HTMLElement] interface.
///
///
@JS()
class HTMLHeadElement extends HTMLElement {
  external factory HTMLHeadElement();
}

///
///
///  The interface contains the title for a document. This element
/// inherits all of the properties and methods of the [HTMLElement]
/// interface.
///
///
@JS()
class HTMLTitleElement extends HTMLElement {
  external factory HTMLTitleElement();

  /// Is a [DOMString] representing the text of the document's title.
  external String get text;
  external set text(String newValue);
}

///
///
///  The interface contains the base URI for a document. This object
/// inherits all of the properties and methods as described in the
/// [HTMLElement] interface.
///
///
@JS()
class HTMLBaseElement extends HTMLElement {
  external factory HTMLBaseElement();

  ///  Is a [DOMString] that reflects the HTML attribute, containing a
  /// base URL for relative URLs in the document.
  external String get href;
  external set href(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing a
  /// default target browsing context or frame for elements that do not
  /// have a target reference specified.
  external String get target;
  external set target(String newValue);
}

///
///
///  The interface represents reference information for external
/// resources and the relationship of those resources to a document
/// and vice-versa (corresponds to [<link>] element; not to be
/// confused with [<a>], which is represented by
/// [HTMLAnchorElement]). This object inherits all of the properties
/// and methods of the [HTMLElement] interface.
///
///
@JS()
class HTMLLinkElement extends HTMLElement with LinkStyle {
  external factory HTMLLinkElement();

  /// Is a [DOMString] representing the URI for the target resource.
  external String get href;
  external set href(String newValue);

  ///  Is a [DOMString] that corresponds to the CORS setting for this
  /// link element. See CORS settings attributes for details.
  @experimental
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);

  ///  Is a [DOMString] representing the forward relationship of the
  /// linked resource from the document to the resource.
  external String get rel;
  external set rel(String newValue);

  ///  Is a [DOMString] representing the type of content being loaded
  /// by the HTML link.
  @JS('as')
  external String get mAs;
  external set mAs(String newValue);

  ///  Is a [DOMTokenList] that reflects the [rel] HTML attribute, as a
  /// list of tokens.
  external DOMTokenList get relList;

  ///  Is a [DOMString] representing a list of one or more media
  /// formats to which the resource applies.
  external String get media;
  external set media(String newValue);
  external String get integrity;
  external set integrity(String newValue);

  ///  Is a [DOMString] representing the language code for the linked
  /// resource.
  external String get hreflang;
  external set hreflang(String newValue);

  ///  Is a [DOMString] representing the MIME type of the linked
  /// resource.
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMSettableTokenList] that reflects the HTML attribute, as
  /// a list of tokens.
  external DOMTokenList get sizes;
  external String get imageSrcset;
  external set imageSrcset(String newValue);
  external String get imageSizes;
  external set imageSizes(String newValue);

  ///  Is a [DOMString] that reflects the [referrerpolicy] HTML
  /// attribute indicating which referrer to use.
  @experimental
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);

  ///  Is a [Boolean] which represents whether the link is disabled;
  /// currently only used with style sheet links.
  external bool get disabled;
  external set disabled(bool newValue);
  external String get charset;
  external set charset(String newValue);
  external String get rev;
  external set rev(String newValue);
  external String get target;
  external set target(String newValue);
}

///
///
///  The interface contains descriptive metadata about a document. It
/// inherits all of the properties and methods described in the
/// [HTMLElement] interface.
///
///
@JS()
class HTMLMetaElement extends HTMLElement {
  external factory HTMLMetaElement();
  external String get name;
  external set name(String newValue);
  external String get httpEquiv;
  external set httpEquiv(String newValue);
  external String get content;
  external set content(String newValue);
  external String get scheme;
  external set scheme(String newValue);
}

///
///
///  The interface represents a [<style>] element. It inherits
/// properties and methods from its parent, [HTMLElement], and from
/// [LinkStyle].
///
///  This interface doesn't allow to manipulate the CSS it contains
/// (in most case). To manipulate CSS, see Using dynamic styling
/// information for an overview of the objects used to manipulate
/// specified CSS properties using the DOM.
///
///
@JS()
class HTMLStyleElement extends HTMLElement with LinkStyle {
  external factory HTMLStyleElement();

  ///  Is a [DOMString] representing the intended destination medium
  /// for style information.
  external String get media;
  external set media(String newValue);
  external String get type;
  external set type(String newValue);
}

///
///
///  The interface provides special properties (beyond those
/// inherited from the regular [HTMLElement] interface) for
/// manipulating [<body>] elements.
///
///
@JS()
class HTMLBodyElement extends HTMLElement with WindowEventHandlers {
  external factory HTMLBodyElement();
  external EventHandlerNonNull? get onorientationchange;
  external set onorientationchange(EventHandlerNonNull? newValue);
  external String get text;
  external set text(String newValue);
  external String get link;
  external set link(String newValue);
  external String get vLink;
  external set vLink(String newValue);
  external String get aLink;
  external set aLink(String newValue);
  external String get bgColor;
  external set bgColor(String newValue);
  external String get background;
  external set background(String newValue);
}

///
///
///  The interface represents the different heading elements, [<h1>]
/// through [<h6>]. It inherits methods and properties from the
/// [HTMLElement] interface.
///
///
@JS()
class HTMLHeadingElement extends HTMLElement {
  external factory HTMLHeadingElement();
  external String get align;
  external set align(String newValue);
}

///
///
///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] object interface it inherits) for
/// manipulating [<p>] elements.
///
///
@JS()
class HTMLParagraphElement extends HTMLElement {
  external factory HTMLParagraphElement();
  external String get align;
  external set align(String newValue);
}

///
///
///  The interface provides special properties (beyond those of the
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<hr>] elements.
///
///
@JS()
class HTMLHRElement extends HTMLElement {
  external factory HTMLHRElement();
  external String get align;
  external set align(String newValue);
  external String get color;
  external set color(String newValue);
  external bool get noShade;
  external set noShade(bool newValue);
  external String get size;
  external set size(String newValue);
  external String get width;
  external set width(String newValue);
}

///
///
///  The interface exposes specific properties and methods (beyond
/// those of the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating a block of preformatted text
/// ([<pre>]).
///
///
@JS()
class HTMLPreElement extends HTMLElement {
  external factory HTMLPreElement();
  external int get width;
  external set width(int newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating quoting elements, like
/// [<blockquote>] and [<q>], but not the [<cite>] element.
///
///
@JS()
class HTMLQuoteElement extends HTMLElement {
  external factory HTMLQuoteElement();

  ///  Is a [DOMString] reflecting the HTML attribute, containing a URL
  /// for the source of the quotation.
  external String get cite;
  external set cite(String newValue);
}

///
///
///  The interface provides special properties (beyond those defined
/// on the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating ordered list elements.
///
///
@JS()
class HTMLOListElement extends HTMLElement {
  external factory HTMLOListElement();

  ///  Is a [Boolean] value reflecting the and defining if the
  /// numbering is descending, that is its value is [true], or
  /// ascending ([false]).
  external bool get reversed;
  external set reversed(bool newValue);

  ///  Is a [long] value reflecting the and defining the value of the
  /// first number of the first element of the list.
  external int get start;
  external set start(int newValue);

  ///  Is a [DOMString] value reflecting the and defining the kind of
  /// marker to be used to display. It can have the following values:
  ///
  ///   ['1'] meaning that decimal numbers are used: [1], [2], [3],
  /// [4], [5], …
  ///   ['a'] meaning that the lowercase latin alphabet is used: [a],
  /// [b], [c], [d], [e], …
  ///   ['A'] meaning that the uppercase latin alphabet is used: [A],
  /// [B], [C], [D], [E], …
  ///   ['i'] meaning that the lowercase latin numerals are used: [i],
  /// [ii], [iii], [iv], [v], …
  ///   ['I'] meaning that the uppercase latin numerals are used: [I],
  /// [II], [III], [IV], [V], …
  ///
  ///
  external String get type;
  external set type(String newValue);
  external bool get compact;
  external set compact(bool newValue);
}

///
///
///  The interface provides special properties (beyond those defined
/// on the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating unordered list elements.
///
///
@JS()
class HTMLUListElement extends HTMLElement {
  external factory HTMLUListElement();
  external bool get compact;
  external set compact(bool newValue);
  external String get type;
  external set type(String newValue);
}

///
@experimental
@JS()
class HTMLMenuElement extends HTMLElement {
  external factory HTMLMenuElement();
  external bool get compact;
  external set compact(bool newValue);
}

///
///
///  The interface exposes specific properties and methods (beyond
/// those defined by regular [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating list elements.
///
///
@JS()
class HTMLLIElement extends HTMLElement {
  external factory HTMLLIElement();

  ///  Is a [long] indicating the ordinal position of the list element
  /// inside a given [<ol>]. It reflects the attribute of the HTML
  /// [<li>] element, and can be smaller than [0]. If the [<li>]
  /// element is not a child of an [<ol>] element, the property has no
  /// meaning.
  external int get value;
  external set value(int newValue);
  external String get type;
  external set type(String newValue);
}

///
///
///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating definition list ([<dl>]) elements.
///
///
@JS()
class HTMLDListElement extends HTMLElement {
  external factory HTMLDListElement();
  external bool get compact;
  external set compact(bool newValue);
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<div>] elements.
///
///
@JS()
class HTMLDivElement extends HTMLElement {
  external factory HTMLDivElement();
  external String get align;
  external set align(String newValue);
}

///
///
///  The interface represents hyperlink elements and provides special
/// properties and methods (beyond those of the regular [HTMLElement]
/// object interface that they inherit from) for manipulating the
/// layout and presentation of such elements. This interface
/// corresponds to [<a>] element; not to be confused with [<link>],
/// which is represented by [HTMLLinkElement])
///
///
@JS()
class HTMLAnchorElement extends HTMLElement with HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement();

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// where to display the linked resource.
  external String get target;
  external set target(String newValue);

  ///  Is a [DOMString] indicating that the linked resource is intended
  /// to be downloaded rather than displayed in the browser. The value
  /// represent the proposed name of the file. If the name is not a
  /// valid filename of the underlying OS, browser will adapt it.
  @experimental
  external String get download;
  external set download(String newValue);
  external String get ping;
  external set ping(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, specifying
  /// the relationship of the target object to the linked object.
  external String get rel;
  external set rel(String newValue);

  ///  Returns a [DOMTokenList] that reflects the [rel] HTML attribute,
  /// as a list of tokens.
  external DOMTokenList get relList;

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the language of the linked resource.
  external String get hreflang;
  external set hreflang(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the MIME type of the linked resource.
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] being a synonym for the [Node.textContent]
  /// property.
  external String get text;
  external set text(String newValue);

  ///  Is a [DOMString] that reflects the [referrerpolicy] HTML
  /// attribute indicating which referrer to use.
  @experimental
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
  external int get attributionSourceId;
  external set attributionSourceId(int newValue);
  external String get attributionDestination;
  external set attributionDestination(String newValue);
  external String get coords;
  external set coords(String newValue);
  external String get charset;
  external set charset(String newValue);
  external String get name;
  external set name(String newValue);
  external String get rev;
  external set rev(String newValue);
  external String get shape;
  external set shape(String newValue);
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<data>] elements.
///
///
@JS()
class HTMLDataElement extends HTMLElement {
  external factory HTMLDataElement();

  ///  Is a [DOMString] reflecting the HTML attribute, containing a
  /// machine-readable form of the element's value.
  external String get value;
  external set value(String newValue);
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<time>] elements.
///
///
@JS()
class HTMLTimeElement extends HTMLElement {
  external factory HTMLTimeElement();

  ///  Is a [DOMString] that reflects the [datetime] HTML attribute,
  /// containing a machine-readable form of the element's date and time
  /// value.
  external String get dateTime;
  external set dateTime(String newValue);
}

///
///
///  The interface represents a [<span>] element and derives from the
/// [HTMLElement] interface, but without implementing any additional
/// properties or methods.
///
///
@JS()
class HTMLSpanElement extends HTMLElement {
  external factory HTMLSpanElement();
}

///
///
///  The interface represents a HTML line break element ([<br>]). It
/// inherits from [HTMLElement].
///
///
@JS()
class HTMLBRElement extends HTMLElement {
  external factory HTMLBRElement();
  external String get clear;
  external set clear(String newValue);
}

@JS()
mixin HTMLHyperlinkElementUtils {
  external dynamic get href;
  external set href(dynamic newValue);
  external String get origin;
  external String get protocol;
  external set protocol(String newValue);
  external String get username;
  external set username(String newValue);
  external String get password;
  external set password(String newValue);
  external String get host;
  external set host(String newValue);
  external String get hostname;
  external set hostname(String newValue);
  external String get port;
  external set port(String newValue);
  external String get pathname;
  external set pathname(String newValue);
  external String get search;
  external set search(String newValue);
  external String get hash;
  external set hash(String newValue);
}

///
///
///  The interface provides special properties (beyond the regular
/// methods and properties available through the [HTMLElement]
/// interface they also have available to them by inheritance) for
/// manipulating modification elements, that is [<del>] and [<ins>].
///
///
@JS()
class HTMLModElement extends HTMLElement {
  external factory HTMLModElement();

  ///  Is a [DOMString] reflecting the HTML attribute, containing a URI
  /// of a resource explaining the change.
  external String get cite;
  external set cite(String newValue);

  ///  Is a [DOMString] reflecting the [datetime] HTML attribute,
  /// containing a date-and-time string representing a timestamp for
  /// the change.
  external String get dateTime;
  external set dateTime(String newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [HTMLPictureElement] interface represents a [<picture>] HTML
/// element. It doesn't implement specific properties or methods.
///
///
@experimental
@JS()
class HTMLPictureElement extends HTMLElement {
  external factory HTMLPictureElement();
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] object interface it also has available to it by
/// inheritance) for manipulating [<source>] elements.
///
///
@JS()
class HTMLSourceElement extends HTMLElement {
  external factory HTMLSourceElement();

  ///  Is a [DOMString] reflecting the HTML attribute, containing the
  /// URL for the media resource. The [HTMLSourceElement.src] property
  /// has a meaning only when the associated [<source>] element is
  /// nested in a media element that is a [<video>] or an [<audio>]
  /// element. It has no meaning and is ignored when it is nested in a
  /// [<picture>] element.
  ///   Note: If the property is updated (along with any siblings), the
  /// parent [HTMLMediaElement]'s [load] method should be called when
  /// done, since [<source>] elements are not re-scanned automatically.
  ///
  external String get src;
  external set src(String newValue);

  ///  Is a [DOMString] reflecting the HTML attribute, containing the
  /// type of the media resource.
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] reflecting the HTML attribute, containing a
  /// list of candidate images, separated by a comma ([',', U+002C
  /// COMMA]). A candidate image is a URL followed by a ['w'] with the
  /// width of the images, or an ['x'] followed by the pixel density.
  @experimental
  external String get srcset;
  external set srcset(String newValue);

  /// Is a [DOMString] representing image sizes between breakpoints
  @experimental
  external String get sizes;
  external set sizes(String newValue);

  ///  Is a [DOMString] reflecting the HTML attribute, containing the
  /// intended type of the media resource.
  external String get media;
  external set media(String newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
}

///
///
///  The interface represents an HTML [<img>] element, providing the
/// properties and methods used to manipulate image elements.
///
///
@JS()
class HTMLImageElement extends HTMLElement {
  external factory HTMLImageElement();

  ///  A [DOMString] that reflects the HTML attribute, thus indicating
  /// the alternate fallback content to be displayed if the image has
  /// not been loaded.
  external String get alt;
  external set alt(String newValue);

  ///  A [USVString] that reflects the HTML attribute, which contains
  /// the full URL of the image including base URI. You can load a
  /// different image into the element by changing the URL in the
  /// attribute.
  external String get src;
  external set src(String newValue);

  ///  A [USVString] reflecting the HTML attribute. This specifies a
  /// list of candidate images, separated by commas ([',', U+002C
  /// COMMA]). Each candidate image is a URL followed by a space,
  /// followed by a specially-formatted string indicating the size of
  /// the image. The size may be specified either the width or a size
  /// multiple. Read the page for specifics on the format of the size
  /// substring.
  external String get srcset;
  external set srcset(String newValue);

  ///  A [DOMString] reflecting the HTML attribute. This string
  /// specifies a list of comma-separated conditional sizes for the
  /// image; that is, for a given viewport size, a particular image
  /// size is to be used. Read the documentation on the page for
  /// details on the format of this string.
  external String get sizes;
  external set sizes(String newValue);

  ///  A [DOMString] specifying the CORS setting for this image
  /// element. See CORS settings attributes for further details. This
  /// may be [null] if CORS is not used.
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);

  ///  A [DOMString] reflecting the [usemap] HTML attribute, containing
  /// the page-local URL of the [<map>] element describing the image
  /// map to use. The page-local URL is a pound (hash) symbol ([#])
  /// followed by the ID of the [<map>] element, such as
  /// [#my-map-element]. The [<map>] in turn contains [<area>] elements
  /// indicating the clickable areas in the image.
  external String get useMap;
  external set useMap(String newValue);

  ///  A [Boolean] that reflects the [ismap] HTML attribute, indicating
  /// that the image is part of a server-side image map. This is
  /// different from a client-side image map, specified using an
  /// [<img>] element and a corresponding [<map>] which contains
  /// [<area>] elements indicating the clickable areas in the image.
  /// The image must be contained within an [<a>] element; see the
  /// [ismap] page for details.
  external bool get isMap;
  external set isMap(bool newValue);

  ///  An integer value that reflects the HTML attribute, indicating
  /// the rendered width of the image in CSS pixels.
  external int get width;
  external set width(int newValue);

  ///  An integer value that reflects the HTML attribute, indicating
  /// the rendered height of the image in CSS pixels.
  external int get height;
  external set height(int newValue);

  ///  An integer value representing the intrinsic width of the image
  /// in CSS pixels, if it is available; otherwise, it will show [0].
  /// This is the width the image would be if it were rendered at its
  /// natural full size.
  external int get naturalWidth;

  ///  Returns an integer value representing the intrinsic height of
  /// the image in CSS pixels, if it is available; else, it shows [0].
  /// This is the height the image would be if it were rendered at its
  /// natural full size.
  external int get naturalHeight;

  ///  Returns a [Boolean] that is [true] if the browser has finished
  /// fetching the image, whether successful or not. That means this
  /// value is also [true] if the image has no [src] value indicating
  /// an image to load.
  external bool get complete;

  ///  Returns a [USVString] representing the URL from which the
  /// currently displayed image was loaded. This may change as the
  /// image is adjusted due to changing conditions, as directed by any
  /// media queries which are in place.
  external String get currentSrc;

  ///  A [DOMString] that reflects the [referrerpolicy] HTML attribute,
  /// which tells the user agent how to decide which referrer to use in
  /// order to fetch the image. Read this article for details on the
  /// possible values of this string.
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);

  ///  An optional [DOMString] representing a hint given to the browser
  /// on how it should decode the image. If this value is provided, it
  /// must be one of the possible permitted values: [sync] to decode
  /// the image synchronously, [async] to decode it asynchronously, or
  /// [auto] to indicate no preference (which is the default). Read the
  /// page for details on the implications of this property's values.
  external String get decoding;
  external set decoding(String newValue);

  ///  A [DOMString] providing a hint to the browser used to optimize
  /// loading the document by determining whether to load the image
  /// immediately ([eager]) or on an as-needed basis ([lazy]).
  external String get loading;
  external set loading(String newValue);

  ///  Returns a [Promise] that resolves when the image is decoded and
  /// it's safe to append the image to the DOM. This prevents rendering
  /// of the next frame from having to pause to decode the image, as
  /// would happen if an undecoded image were added to the DOM.
  /// var promise = HTMLImageElement.decode();
  external Promise<Object> decode();
  external int get x;
  external int get y;
  external String get name;
  external set name(String newValue);
  external String get lowsrc;
  external set lowsrc(String newValue);
  external String get align;
  external set align(String newValue);
  external int get hspace;
  external set hspace(int newValue);
  external int get vspace;
  external set vspace(int newValue);
  external String get longDesc;
  external set longDesc(String newValue);
  external String get border;
  external set border(String newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// those of the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// inline frame elements.
///
///
@JS()
class HTMLIFrameElement extends HTMLElement {
  external factory HTMLIFrameElement();

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// the address of the content to be embedded. Note that
  /// programmatically removing an [<iframe>]'s src attribute (e.g. via
  /// [Element.removeAttribute()]) causes [about:blank] to be loaded in
  /// the frame in Firefox (from version 65), Chromium-based browsers,
  /// and Safari/iOS.
  external String get src;
  external set src(String newValue);

  ///  Is a [DOMString] that represents the content to display in the
  /// frame.
  external String get srcdoc;
  external set srcdoc(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing a
  /// name by which to refer to the frame.
  external String get name;
  external set name(String newValue);

  ///  Is a [DOMSettableTokenList] that reflects the HTML attribute,
  /// indicating extra restrictions on the behavior of the nested
  /// content.
  external DOMTokenList get sandbox;

  ///  Is a list of origins the frame is allowed to display content
  /// from. This attribute also accepts the values [self] and [src]
  /// which represent the origin in the iframe's src attribute. The
  /// default value is [src].
  @experimental
  external String get allow;
  external set allow(String newValue);
  external bool get allowFullscreen;
  external set allowFullscreen(bool newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the width of the frame.
  external String get width;
  external set width(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the height of the frame.
  external String get height;
  external set height(String newValue);

  ///  Is a [DOMString] that reflects the [referrerpolicy] HTML
  /// attribute indicating which referrer to use when fetching the
  /// linked resource.
  @experimental
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
  external String get loading;
  external set loading(String newValue);

  ///  Returns a [Document], the active document in the inline frame's
  /// nested browsing context.
  external Document? get contentDocument;

  ///  Returns a [WindowProxy], the window proxy for the nested
  /// browsing context.
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external String get csp;
  external set csp(String newValue);
  external PermissionsPolicy get permissionsPolicy;
  external String get align;
  external set align(String newValue);
  external String get scrolling;
  external set scrolling(String newValue);
  external String get frameBorder;
  external set frameBorder(String newValue);
  external String get longDesc;
  external set longDesc(String newValue);
  external String get marginHeight;
  external set marginHeight(String newValue);
  external String get marginWidth;
  external set marginWidth(String newValue);
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<embed>] elements.
///  This topic describes the interface as defined in the standard.
/// It does not address earlier, non-standardized version of the
/// interface.
///
///
///
@JS()
class HTMLEmbedElement extends HTMLElement {
  external factory HTMLEmbedElement();

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// the address of the resource.
  external String get src;
  external set src(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// the type of the resource.
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// the displayed width of the resource.
  external String get width;
  external set width(String newValue);

  ///  Is a [DOMString] reflecting the HTML attribute, containing the
  /// displayed height of the resource.
  external String get height;
  external set height(String newValue);
  external Document? getSVGDocument();
  external String get align;
  external set align(String newValue);
  external String get name;
  external set name(String newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// those on the [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<object>] element, representing external resources.
///
///
@JS()
class HTMLObjectElement extends HTMLElement {
  external factory HTMLObjectElement();

  ///  Returns a [DOMString] that reflects the HTML attribute,
  /// specifying the address of a resource's data.
  external String get data;
  external set data(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, specifying
  /// the MIME type of the resource.
  external String get type;
  external set type(String newValue);

  ///  Returns a [DOMString] that reflects the HTML attribute,
  /// specifying the name of the browsing context.
  external String get name;
  external set name(String newValue);

  ///  Returns a [HTMLFormElement] representing the object element's
  /// form owner, or null if there isn't one.
  external HTMLFormElement? get form;

  ///  Is a [DOMString] that reflects the HTML attribute, specifying
  /// the displayed width of the resource in CSS pixels.
  external String get width;
  external set width(String newValue);

  ///  Returns a [DOMString] that reflects the HTML attribute,
  /// specifying the displayed height of the resource in CSS pixels.
  external String get height;
  external set height(String newValue);

  ///  Returns a [Document] representing the active document of the
  /// object element's nested browsing context, if any; otherwise
  /// [null].
  external Document? get contentDocument;

  ///  Returns a [WindowProxy] representing the window proxy of the
  /// object element's nested browsing context, if any; otherwise
  /// [null].
  external Window? get contentWindow;
  external Document? getSVGDocument();

  ///  Returns a [Boolean] that indicates whether the element is a
  /// candidate for constraint validation. Always [false] for
  /// [HTMLObjectElement] objects.
  external bool get willValidate;

  ///  Returns a [ValidityState] with the validity states that this
  /// element is in.
  external ValidityState get validity;

  ///  Returns a [DOMString] representing a localized message that
  /// describes the validation constraints that the control does not
  /// satisfy (if any). This is the empty string if the control is not
  /// a candidate for constraint validation ([willValidate] is
  /// [false]), or it satisfies its constraints.
  external String get validationMessage;

  ///  Returns a [Boolean] that always is [true], because [object]
  /// objects are never candidates for constraint validation.
  /// const valid = HTMLObjectElement.checkValidity();
  external bool checkValidity();
  external bool reportValidity();

  ///  Sets a custom validity message for the element. If this message
  /// is not the empty string, then the element is suffering from a
  /// custom validity error, and does not validate.
  /// HTMLObjectElement.setCustomValidity(message);
  external Object setCustomValidity(String error);
  external String get align;
  external set align(String newValue);
  external String get archive;
  external set archive(String newValue);
  external String get code;
  external set code(String newValue);
  external bool get declare;
  external set declare(bool newValue);
  external int get hspace;
  external set hspace(int newValue);
  external String get standby;
  external set standby(String newValue);
  external int get vspace;
  external set vspace(int newValue);
  external String get codeBase;
  external set codeBase(String newValue);
  external String get codeType;
  external set codeType(String newValue);
  external String get useMap;
  external set useMap(String newValue);
  external String get border;
  external set border(String newValue);
}

///
///
///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] object interface it inherits) for
/// manipulating [<param>] elements, representing a pair of a key and
/// a value that acts as a parameter for an [<object>] element.
///
///
@JS()
class HTMLParamElement extends HTMLElement {
  external factory HTMLParamElement();

  ///  Is a [DOMString] representing the name of the parameter. It
  /// reflects the attribute.
  external String get name;
  external set name(String newValue);

  ///  Is a [DOMString] representing the value associated to the
  /// parameter. It reflects the attribute.
  external String get value;
  external set value(String newValue);
  external String get type;
  external set type(String newValue);
  external String get valueType;
  external set valueType(String newValue);
}

///
///
///  The interface provides special properties and methods for
/// manipulating video objects. It also inherits properties and
/// methods of [HTMLMediaElement] and [HTMLElement].
///
///  The list of supported media formats varies from one browser to
/// the other. You should either provide your video in a single
/// format that all the relevant browsers supports, or provide
/// multiple video sources in enough different formats that all the
/// browsers you need to support are covered.
///
///
@JS()
class HTMLVideoElement extends HTMLMediaElement {
  external factory HTMLVideoElement();

  ///  Is a [DOMString] that reflects the HTML attribute, which
  /// specifies the width of the display area, in CSS pixels.
  external int get width;
  external set width(int newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, which
  /// specifies the height of the display area, in CSS pixels.
  external int get height;
  external set height(int newValue);

  ///  Returns an unsigned integer value indicating the intrinsic width
  /// of the resource in CSS pixels, or 0 if no media is available yet.
  external int get videoWidth;

  ///  Returns an unsigned integer value indicating the intrinsic
  /// height of the resource in CSS pixels, or 0 if no media is
  /// available yet.
  external int get videoHeight;

  ///  Is a [DOMString] that reflects the HTML attribute, which
  /// specifies an image to show while no video data is available.
  external String get poster;
  external set poster(String newValue);
  external bool get playsInline;
  external set playsInline(bool newValue);
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external Promise<PictureInPictureWindow> requestPictureInPicture();
  external EventHandlerNonNull? get onenterpictureinpicture;
  external set onenterpictureinpicture(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onleavepictureinpicture;
  external set onleavepictureinpicture(EventHandlerNonNull? newValue);
  external bool get autoPictureInPicture;
  external set autoPictureInPicture(bool newValue);
  external bool get disablePictureInPicture;
  external set disablePictureInPicture(bool newValue);
  external int requestVideoFrameCallback(VideoFrameRequestCallback callback);
  external Object cancelVideoFrameCallback(int handle);
}

///
///
///  The interface provides access to the properties of [<audio>]
/// elements, as well as methods to manipulate them. It's based on,
/// and inherits properties and methods from, the [HTMLMediaElement]
/// interface.
///
///
@JS()
class HTMLAudioElement extends HTMLMediaElement {
  external factory HTMLAudioElement();
}

///
///
///  The interface represents an HTML [<track>] element within the
/// DOM. This element can be used as a child of either [<audio>] or
/// [<video>] to specify a text track containing information such as
/// closed captions or subtitles.
///
///
@JS()
class HTMLTrackElement extends HTMLElement {
  external factory HTMLTrackElement();

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// how the text track is meant to be used. Possible values are:
  /// [subtitles], [captions], [descriptions], [chapters], or
  /// [metadata].
  external String get kind;
  external set kind(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the address of the text track data.
  external String get src;
  external set src(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the language of the text track data.
  external String get srclang;
  external set srclang(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating a
  /// user-readable title for the track.
  external String get label;
  external set label(String newValue);

  ///  A [Boolean] reflecting the  attribute, indicating that the track
  /// is to be enabled if the user's preferences do not indicate that
  /// another track would be more appropriate.
  @JS('default')
  external bool get mDefault;
  external set mDefault(bool newValue);
  external static int get NONE;
  external static int get LOADING;
  external static int get LOADED;
  external static int get ERROR;

  ///  Returns an [unsigned short] that show the readiness state of the
  /// track:
  ///
  ///
  ///
  ///   Constant
  ///   Value
  ///   Description
  ///
  ///
  ///   [NONE]
  ///   0
  ///   Indicates that the text track's cues have not been obtained.
  ///
  ///
  ///   [LOADING]
  ///   1
  ///    Indicates that the text track is loading and there have been
  /// no fatal errors encountered so far. Further cues might still be
  /// added to the track by the parser.
  ///
  ///
  ///   [LOADED]
  ///   2
  ///    Indicates that the text track has been loaded with no fatal
  /// errors.
  ///
  ///
  ///   [ERROR]
  ///   3
  ///    Indicates that the text track was enabled, but when the user
  /// agent attempted to obtain it, this failed in some way. Some or
  /// all of the cues are likely missing and will not be obtained.
  ///
  ///
  ///
  ///
  external int get readyState;

  /// Returns [TextTrack] is the track element's text track data.
  external TextTrack get track;
}

@JS()
enum CanPlayTypeResult {
  @JS('')
  empty,
  maybe,
  probably
}

///
///
///  The interface adds to [HTMLElement] the properties and methods
/// needed to support basic media-related capabilities that are
/// common to audio and video. The [HTMLVideoElement] and
/// [HTMLAudioElement] elements both inherit this interface.
///
///
@JS()
class HTMLMediaElement extends HTMLElement {
  ///  Returns a [MediaError] object for the most recent error, or
  /// [null] if there has not been an error.
  external MediaError? get error;

  ///  Is a [DOMString] that reflects the HTML attribute, which
  /// contains the URL of a media resource to use.
  external String get src;
  external set src(String newValue);

  ///  Is a [MediaStream] representing the media to play or that has
  /// played in the current [HTMLMediaElement], or [null] if not
  /// assigned.
  external dynamic get srcObject;
  external set srcObject(dynamic newValue);

  ///  Returns a [DOMString] with the absolute URL of the chosen media
  /// resource.
  external String get currentSrc;

  ///  A [DOMString] indicating the CORS setting for this media
  /// element.
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);
  external static int get NETWORK_EMPTY;
  external static int get NETWORK_IDLE;
  external static int get NETWORK_LOADING;
  external static int get NETWORK_NO_SOURCE;

  ///  Returns a [unsigned short] (enumeration) indicating the current
  /// state of fetching the media over the network.
  external int get networkState;

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// what data should be preloaded, if any. Possible values are:
  /// [none], [metadata], [auto].
  external String get preload;
  external set preload(String newValue);

  ///  Returns a [TimeRanges] object that indicates the ranges of the
  /// media source that the browser has buffered (if any) at the moment
  /// the property is accessed.
  external TimeRanges get buffered;

  ///  Resets the media to the beginning and selects the best available
  /// source from the sources provided using the [src] attribute or the
  /// [<source>] element.
  /// mediaElement.load();
  /// This example finds a <video> element in the document and resets it by
  ///  calling load().
  ///
  /// var mediaElem = document.querySelector("video");
  /// mediaElem.load();
  ///
  external Object load();

  ///  Given a string specifying a MIME media type (potentially with
  /// the [codecs] parameter included), [canPlayType()] returns the
  /// string [probably] if the media should be playable, [maybe] if
  /// there's not enough information to determine whether the media
  /// will play or not, or an empty string if the media cannot be
  /// played.
  /// canPlayResponse = audioOrVideo.canPlayType(mediaType);
  ///
  /// var obj = document.createElement('video');
  /// console.log(obj.canPlayType('video/mp4')); // "maybe"
  ///
  external CanPlayTypeResult canPlayType(String type);
  external static int get HAVE_NOTHING;
  external static int get HAVE_METADATA;
  external static int get HAVE_CURRENT_DATA;
  external static int get HAVE_FUTURE_DATA;
  external static int get HAVE_ENOUGH_DATA;

  ///  Returns a [unsigned short] (enumeration) indicating the
  /// readiness state of the media.
  external int get readyState;

  ///  Returns a [Boolean] that indicates whether the media is in the
  /// process of seeking to a new position.
  external bool get seeking;

  ///  A double-precision floating-point value indicating the current
  /// playback time in seconds; if the media has not started to play
  /// and has not been seeked, this value is the media's initial
  /// playback time. Setting this value seeks the media to the new
  /// time. The time is specified relative to the media's timeline.
  external double get currentTime;
  external set currentTime(double newValue);

  /// Quickly seeks to the given time with low precision.
  /// HTMLMediaElement.fastSeek(time);
  /// This example quickly seeks to 20-second position of the video element.
  ///
  /// let myVideo = document.getElementById("myVideoElement");
  ///
  /// myVideo.fastSeek(20);
  ///
  @experimental
  external Object fastSeek(double time);

  ///  A read-only double-precision floating-point value indicating the
  /// total duration of the media in seconds. If no media data is
  /// available, the returned value is [NaN]. If the media is of
  /// indefinite length (such as streamed live media, a WebRTC call's
  /// media, or similar), the value is [+Infinity].
  external /* double | NaN */ dynamic get duration;
  external dynamic getStartDate();

  ///  Returns a [Boolean] that indicates whether the media element is
  /// paused.
  external bool get paused;

  /// A [double] indicating the default playback rate for the media.
  external double get defaultPlaybackRate;
  external set defaultPlaybackRate(double newValue);

  ///  Is a [double] that indicates the rate at which the media is
  /// being played back.
  external double get playbackRate;
  external set playbackRate(double newValue);

  ///  Is a [Boolean] that determines if the pitch of the sound will be
  /// preserved. If set to [false], the pitch will adjust to the speed
  /// of the audio. This is implemented with prefixes in Firefox
  /// ([mozPreservesPitch]) and WebKit ([webkitPreservesPitch]).
  external bool get preservesPitch;
  external set preservesPitch(bool newValue);

  ///  Returns a [TimeRanges] object that contains the ranges of the
  /// media source that the browser has played, if any.
  external TimeRanges get played;

  ///  Returns a [TimeRanges] object that contains the time ranges that
  /// the user is able to seek to, if any.
  external TimeRanges get seekable;

  ///  Returns a [Boolean] that indicates whether the media element has
  /// finished playing.
  external bool get ended;

  ///  A [Boolean] that reflects the HTML attribute, indicating whether
  /// playback should automatically begin as soon as enough media is
  /// available to do so without interruption.
  ///
  ///   Note: Automatically playing audio when the user doesn't expect
  /// or desire it is a poor user experience and should be avoided in
  /// most cases, though there are exceptions. See the Autoplay guide
  /// for media and Web Audio APIs for more information. Keep in mind
  /// that browsers may ignore autoplay requests, so you should ensure
  /// that your code isn't dependent on autoplay working.
  ///
  external bool get autoplay;
  external set autoplay(bool newValue);

  ///  A [Boolean] that reflects the HTML attribute, which indicates
  /// whether the media element should start over when it reaches the
  /// end.
  external bool get loop;
  external set loop(bool newValue);

  /// Begins playback of the media.
  /// var promise = HTMLMediaElement.play();
  /// This example demonstrates how to confirm that playback has begun and how to gracefully
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
  ///
  /// In this example, playback of video is toggled off and on by the
  ///  async
  ///  playVideo() function. It tries to play the video, and if successful sets
  ///  the class name of the playButton element to "playing". If
  ///  playback fails to start, the playButton element's class is cleared,
  ///  restoring its default appearance. This ensures that the play button matches the actual
  ///  state of playback by watching for the resolution or rejection of the
  ///  Promise returned by play().
  ///
  /// When this example is executed, it begins by collecting references to the
  ///  <video> element as well as the <button> used to toggle
  ///  playback on and off. It then sets up an event handler for the click event
  ///  on the play toggle button and attempts to automatically begin playback by calling
  ///  playVideo().
  ///
  /// You can try out or remix this example
  ///   in real time on Glitch.
  external Promise<Object> play();

  /// Pauses the media playback.
  /// HTMLMediaElement.pause()
  external Object pause();

  ///  Is a [Boolean] that reflects the HTML attribute, indicating
  /// whether user interface items for controlling the resource should
  /// be displayed.
  external bool get controls;
  external set controls(bool newValue);

  ///  Is a [double] indicating the audio volume, from 0.0 (silent) to
  /// 1.0 (loudest).
  external double get volume;
  external set volume(double newValue);

  ///  Is a [Boolean] that determines whether audio is muted. [true] if
  /// the audio is muted and [false] otherwise.
  external bool get muted;
  external set muted(bool newValue);

  ///  A [Boolean] that reflects the [muted] HTML attribute, which
  /// indicates whether the media element's audio output should be
  /// muted by default.
  external bool get defaultMuted;
  external set defaultMuted(bool newValue);

  ///  A [AudioTrackList] that lists the [AudioTrack] objects contained
  /// in the element.
  external AudioTrackList get audioTracks;

  ///  Returns the list of [VideoTrack] objects contained in the
  /// element.
  external VideoTrackList get videoTracks;

  ///  Returns the list of [TextTrack] objects contained in the
  /// element.
  external TextTrackList get textTracks;

  ///  Adds a text track (such as a track for subtitles) to a media
  /// element.
  external TextTrack addTextTrack(TextTrackKind kind,
      [String? label = '', String? language = '']);
  external MediaStream captureStream();
  external String get sinkId;
  external Promise<Object> setSinkId(String sinkId);
  external RemotePlayback get remote;
  external bool get disableRemotePlayback;
  external set disableRemotePlayback(bool newValue);
  external MediaKeys? get mediaKeys;
  external EventHandlerNonNull? get onencrypted;
  external set onencrypted(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwaitingforkey;
  external set onwaitingforkey(EventHandlerNonNull? newValue);
  external Promise<Object> setMediaKeys(MediaKeys? mediaKeys);

  external factory HTMLMediaElement();
}

///
///
///  The [MediaError] interface represents an error which occurred
/// while handling media in an HTML media element based on
/// [HTMLMediaElement], such as [<audio>] or [<video>].
///
///  A object describes the error in general terms using a numeric
/// [code] categorizing the kind of error, and a [message], which
/// provides specific diagnostics about what went wrong.
@JS()
class MediaError {
  external static int get MEDIA_ERR_ABORTED;
  external static int get MEDIA_ERR_NETWORK;
  external static int get MEDIA_ERR_DECODE;
  external static int get MEDIA_ERR_SRC_NOT_SUPPORTED;

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
  ///     The fetching of the associated resource was aborted by the
  /// user's request.
  ///
  ///
  ///    [MEDIA_ERR_NETWORK]
  ///    [2]
  ///     Some kind of network error occurred which prevented the media
  /// from being
  ///      successfully fetched, despite having previously been
  /// available.
  ///
  ///
  ///    [MEDIA_ERR_DECODE]
  ///    [3]
  ///     Despite having previously been determined to be usable, an
  /// error occurred while
  ///     trying to decode the media resource, resulting in an error.
  ///
  ///
  ///    [MEDIA_ERR_SRC_NOT_SUPPORTED]
  ///    [4]
  ///    The associated resource or media provider object (such as a
  ///     [MediaStream]) has been found to be unsuitable.
  ///
  ///
  ///
  external int get code;

  ///  A [DOMString] object containing a human-readable string which
  /// provides specific diagnostic information to help the reader
  /// understand the error condition which occurred; specifically, it
  /// isn't a summary of what the error code means, but actual
  /// diagnostic information to help in understanding what exactly went
  /// wrong. This text and its format is not defined by the
  /// specification and will vary from one user agent to another. If no
  /// diagnostics are available, or no explanation can be provided,
  /// this value is an empty string ([""]).
  external String get message;

  external factory MediaError();
}

///
///
///  The interface is used to represent a list of the audio tracks
/// contained within a given HTML media element, with each track
/// represented by a separate [AudioTrack] object in the list.
///
///  Retrieve an instance of this object with
/// [HTMLMediaElement.audioTracks]. The individual tracks can be
/// accessed using array syntax.
@JS()
class AudioTrackList extends EventTarget {
  /// The number of tracks in the list.
  external int get length;

  ///  Returns the [AudioTrack] found within the [AudioTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  /// var theTrack = AudioTrackList.getTrackById(id);
  /// This example suggests a hypothetical game in which movies are used as cut-scenes or
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
  /// This short function gets the AudioTrackList containing the video's audio
  ///  tracks using HTMLMediaElement.audioTracks, then calls
  ///  getTrackById() on it, specifying the character's name. The resulting
  ///  track's audio is then disabled by setting its enabled flag to false.
  external AudioTrack? getTrackById(String id);
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onaddtrack;
  external set onaddtrack(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremovetrack;
  external set onremovetrack(EventHandlerNonNull? newValue);

  external factory AudioTrackList();
}

///
///
///  The interface represents a single audio track from one of the
/// HTML media elements, [<audio>] or [<video>]. The most common use
/// for accessing an object is to toggle its [enabled] property in
/// order to mute and unmute the track.
@JS()
class AudioTrack {
  ///  A [DOMString] which uniquely identifies the track within the
  /// media. This ID can be used to locate a specific track within an
  /// audio track list by calling [AudioTrackList.getTrackById()]. The
  /// ID can also be used as the fragment part of the URL if the media
  /// supports seeking by media fragment per the Media Fragments URI
  /// specification.
  external String get id;

  ///  A [DOMString] specifying the category into which the track
  /// falls. For example, the main audio track would have a of
  /// ["main"].
  external String get kind;

  ///  A [DOMString] providing a human-readable label for the track.
  /// For example, an audio commentary track for a movie might have a
  /// of ["Commentary with director John Q. Public and actors John Doe
  /// and Jane Eod."] This string is empty if no label is provided.
  external String get label;

  ///  A [DOMString] specifying the audio track's primary language, or
  /// an empty string if unknown. The language is specified as a BCP 47
  /// (RFC 5646) language code, such as ["en-US"] or ["pt-BR"].
  external String get language;

  ///  A Boolean value which controls whether or not the audio track's
  /// sound is enabled. Setting this value to [false] mutes the track's
  /// audio.
  external bool get enabled;
  external set enabled(bool newValue);
  external SourceBuffer? get sourceBuffer;

  external factory AudioTrack();
}

///
///
///  The interface is used to represent a list of the video tracks
/// contained within a [<video>] element, with each track represented
/// by a separate [VideoTrack] object in the list.
///
///  Retrieve an instance of this object with
/// [HTMLMediaElement.videoTracks]. The individual tracks can be
/// accessed using array syntax or functions such as [forEach()] for
/// example.
@JS()
class VideoTrackList extends EventTarget {
  /// The number of tracks in the list.
  external int get length;

  ///  Returns the [VideoTrack] found within the [VideoTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  /// var theTrack = VideoTrackList.getTrackById(id);
  external VideoTrack? getTrackById(String id);

  ///  The index of the currently selected track, if any, or [−1]
  /// otherwise.
  external int get selectedIndex;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onaddtrack;
  external set onaddtrack(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremovetrack;
  external set onremovetrack(EventHandlerNonNull? newValue);

  external factory VideoTrackList();
}

///
///
///  The interface represents a single video track from a [<video>]
/// element. The most common use for accessing a object is to toggle
/// its [selected] property in order to make it the active video
/// track for its [<video>] element.
@JS()
class VideoTrack {
  ///  A [DOMString] which uniquely identifies the track within the
  /// media. This ID can be used to locate a specific track within a
  /// video track list by calling [VideoTrackList.getTrackById()]. The
  /// ID can also be used as the fragment part of the URL if the media
  /// supports seeking by media fragment per the Media Fragments URI
  /// specification.
  external String get id;

  ///  A [DOMString] specifying the category into which the track
  /// falls. For example, the main video track would have a of
  /// ["main"].
  external String get kind;

  ///  A [DOMString] providing a human-readable label for the track.
  /// For example, a track whose [kind] is ["sign"] might have a of ["A
  /// sign-language interpretation"]. This string is empty if no label
  /// is provided.
  external String get label;

  ///  A [DOMString] specifying the video track's primary language, or
  /// an empty string if unknown. The language is specified as a BCP 47
  /// (RFC 5646) language code, such as ["en-US"] or ["pt-BR"].
  external String get language;

  ///  A Boolean value which controls whether or not the video track is
  /// active. Only a single video track can be active at any given
  /// time, so setting this property to [true] for one track while
  /// another track is active will make that other track inactive.
  external bool get selected;
  external set selected(bool newValue);
  external SourceBuffer? get sourceBuffer;

  external factory VideoTrack();
}

///
///
///  The interface is used to represent a list of the text tracks
/// defined by the [<track>] element, with each track represented by
/// a separate [textTrack] object in the list.
///
///  Retrieve an instance of this object with
/// [HTMLMediaElement.textTracks]. The individual tracks can be
/// accessed using array syntax or functions such as [forEach()] for
/// example.
@JS()
class TextTrackList extends EventTarget {
  /// The number of tracks in the list.
  external int get length;

  ///  Returns the [TextTrack] found within the [TextTrackList] whose
  /// [id] matches the specified string. If no match is found, [null]
  /// is returned.
  /// var theTrack = TextTrackList.getTrackById(id);
  external TextTrack? getTrackById(String id);
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onaddtrack;
  external set onaddtrack(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremovetrack;
  external set onremovetrack(EventHandlerNonNull? newValue);

  external factory TextTrackList();
}

@JS()
enum TextTrackMode { disabled, hidden, showing }

@JS()
enum TextTrackKind { subtitles, captions, descriptions, chapters, metadata }

///
///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track
/// associated with a particular [<track>] element.
///
@JS()
class TextTrack extends EventTarget {
  ///  Returns a [DOMString] indicating what kind of text track the
  /// [TextTrack] describes. The value must be one of those in the
  /// TextTrackKind enum.
  external TextTrackKind get kind;

  ///  A human-readable [DOMString] which contains the text track's
  /// label, if one is present; otherwise, this is an empty string
  /// ([""]), in which case a custom label may need to be generated by
  /// your code using other attributes of the track, if the track's
  /// label needs to be exposed to the user.
  external String get label;

  ///  A [DOMString] which specifies the text language in which the
  /// text track's contents is written. The value must adhere to the
  /// format specified in the Tags for Identifying Languages (BCP 47)
  /// document from the IETF, just like the HTML [lang] attribute. For
  /// example, this can be ["en-US"] for United States English or
  /// ["pt-BR"] for Brazilian Portuguese.
  external String get language;

  ///  A [DOMString] which identifies the track, if it has one. If it
  /// doesn't have an ID, then this value is an empty string ([""]). If
  /// the [TextTrack] is associated with a [<track>] element, then the
  /// track's ID matches the element's ID.
  external String get id;

  ///  Returns a [DOMString] which indicates the track's in-band
  /// metadata track dispatch type. needs details
  external String get inBandMetadataTrackDispatchType;

  ///  A [DOMString] specifying the track's current mode. Changing this
  /// property's value changes the track's current mode to match.
  /// Permitted values are listed under Text track mode constants. The
  /// default is [disabled], unless the [<track>] element's [default]
  /// Boolean attribute is specified, in which case the default mode is
  /// [started].
  external TextTrackMode get mode;
  external set mode(TextTrackMode newValue);

  /// A [TextTrackCueList] which contains all of the track's cues.
  external TextTrackCueList? get cues;

  ///  A [TextTrackCueList] object listing the currently active set of
  /// text track cues. Track cues are active if the current playback
  /// position of the media is between the cues' start and end times.
  /// Thus, for displayed cues such as captions or subtitles, the
  /// active cues are currently being displayed.
  external TextTrackCueList? get activeCues;
  external Object addCue(TextTrackCue cue);
  external Object removeCue(TextTrackCue cue);
  external EventHandlerNonNull? get oncuechange;
  external set oncuechange(EventHandlerNonNull? newValue);
  external SourceBuffer? get sourceBuffer;

  external factory TextTrack();
}

///
///
///  The array-like object represents a dynamically updating list of
/// [TextTrackCue] objects.
///
///  This interface has no constructor. Retrieve an instance of this
/// object with [TextTrack.cues] which returns all of the cues in a
/// [TextTrack] object.
@JS()
class TextTrackCueList {
  /// An [unsigned long] that is the number of cues in the list.
  external int get length;

  ///  Returns the first [TextTrackCue] object with the identifier
  /// passed to it.
  /// var cue = TextTrackCueList.getCueById(id);
  external TextTrackCue? getCueById(String id);

  external factory TextTrackCueList();
}

///
///
///  [TextTrackCue] is an abstract class which is used as the basis
/// for the various derived cue types, such as [VTTCue]; you will
/// instead work with those derived types. These cues represent a
/// string of text that is presented for some duration of time during
/// the performance of a [TextTrack]. The cue includes the start time
/// (the time at which the text will be displayed) and the end time
/// (the time at which it will be removed from the display), as well
/// as other information.
@JS()
class TextTrackCue extends EventTarget {
  ///  The [TextTrack] that this cue belongs to, or [null] if it
  /// doesn't belong to any.
  external TextTrack? get track;

  /// A [DOMString] that identifies the cue.
  external String get id;
  external set id(String newValue);

  ///  A [double] that represents the video time that the cue will
  /// start being displayed, in seconds.
  external double get startTime;
  external set startTime(double newValue);

  ///  A [double] that represents the video time that the cue will stop
  /// being displayed, in seconds.
  external /* double | NaN */ dynamic get endTime;
  external set endTime(/* double | NaN */ dynamic newValue);

  ///  A [boolean] for whether the video will pause when this cue stops
  /// being displayed.
  external bool get pauseOnExit;
  external set pauseOnExit(bool newValue);
  external EventHandlerNonNull? get onenter;
  external set onenter(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onexit;
  external set onexit(EventHandlerNonNull? newValue);

  external factory TextTrackCue();
}

///
///
///  When loading a media resource for use by an [<audio>] or
/// [<video>] element, the interface is used for representing the
/// time ranges of the media resource that have been buffered, the
/// time ranges that have been played, and the time ranges that are
/// seekable.
///
///  A object includes one or more ranges of time, each specified by
/// a starting time offset and an ending time offset. You reference
/// each time range by using the [start()] and [end()] methods,
/// passing the index number of the time range you want to retrieve.
@JS()
class TimeRanges {
  ///  Returns an [unsigned long] representing the number of time
  /// ranges represented by the time range object.
  external int get length;

  ///  Returns the time for the start of the range with the specified
  /// index.
  /// startTime = TimeRanges.start(index)
  ///
  /// Given a video element with the ID "myVideo":
  ///
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
  /// This example looks at the time ranges and looks to see if the entire video has been
  ///  loaded.
  external double start(int index);

  /// Returns the time for the end of the specified range.
  /// endTime = TimeRanges.end(index)
  ///
  /// Given a video element with the ID "myVideo":
  ///
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
  /// This example looks at the time ranges and looks to see if the entire video has been
  ///  loaded.
  external double end(int index);

  external factory TimeRanges();
}

///
///
///  The interface, which is part of the HTML DOM specification, is
/// used for events which represent changes to a set of available
/// tracks on an HTML media element; these events are [addtrack] and
/// [removetrack]. It's important not to confuse with the
/// [RTCTrackEvent] interface, which is used for tracks which are
/// part of an [RTCPeerConnection].
///
///  Events based on are always sent to one of the media track list
/// types:
///   Events involving video tracks are always sent to the
/// [VideoTrackList] found in [HTMLMediaElement.videoTracks]
///   Events involving audio tracks are always sent to the
/// [AudioTrackList] specified in [HTMLMediaElement.audioTracks]
///   Events affecting text tracks are sent to the [TextTrackList]
/// object indicated by [HTMLMediaElement.textTracks].
///
@JS()
class TrackEvent extends Event {
  external factory TrackEvent({String type, TrackEventInit? eventInitDict});

  ///  The DOM track object the event is in reference to. If not
  /// [null], this is always an object of one of the media track types:
  /// [AudioTrack], [VideoTrack], or [TextTrack]).
  external dynamic get track;
}

@anonymous
@JS()
class TrackEventInit extends EventInit {
  external dynamic get track;
  external set track(dynamic newValue);

  external factory TrackEventInit({dynamic track});
}

///
///
///  The interface provides special properties and methods (beyond
/// those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and
/// presentation of map elements.
///
///
@JS()
class HTMLMapElement extends HTMLElement {
  external factory HTMLMapElement();

  ///  Is a [DOMString] representing the [<map>] element for
  /// referencing it other context. If the [id] attribute is set, this
  /// must have the same value; and it cannot be [null] or empty.
  external String get name;
  external set name(String newValue);

  ///  Is a live [HTMLCollection] representing the [<area>] elements
  /// associated to this [<map>].
  external HTMLCollection get areas;
}

///
///
///  The interface provides special properties and methods (beyond
/// those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and
/// presentation of [<area>] elements.
///
///
@JS()
class HTMLAreaElement extends HTMLElement with HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// alternative text for the element.
  external String get alt;
  external set alt(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// coordinates to define the hot-spot region.
  external String get coords;
  external set coords(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the shape of the hot-spot, limited to known values.
  external String get shape;
  external set shape(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// the browsing context in which to open the linked resource.
  external String get target;
  external set target(String newValue);

  ///  Is a [DOMString] indicating that the linked resource is intended
  /// to be downloaded rather than displayed in the browser. The value
  /// represent the proposed name of the file. If the name is not a
  /// valid filename of the underlying OS, browser will adapt it.
  @experimental
  external String get download;
  external set download(String newValue);
  external String get ping;
  external set ping(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, indicating
  /// relationships of the current document to the linked resource.
  external String get rel;
  external set rel(String newValue);

  ///  Returns a [DOMTokenList] that reflects the [rel] HTML attribute,
  /// indicating relationships of the current document to the linked
  /// resource, as a list of tokens.
  external DOMTokenList get relList;

  ///  Is a [DOMString] that reflects the [referrerpolicy] HTML
  /// attribute indicating which referrer to use when fetching the
  /// linked resource.
  @experimental
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
  external bool get noHref;
  external set noHref(bool newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] object interface it also has available
/// to it by inheritance) for manipulating the layout and
/// presentation of tables in an HTML document.
///
///
@JS()
class HTMLTableElement extends HTMLElement {
  external factory HTMLTableElement();

  ///  Is a [HTMLTableCaptionElement] representing the first
  /// [<caption>] that is a child of the element, or [null] if none is
  /// found. When set, if the object doesn't represent a [<caption>], a
  /// [DOMException] with the [HierarchyRequestError] name is thrown.
  /// If a correct object is given, it is inserted in the tree as the
  /// first child of this element and the first [<caption>] that is a
  /// child of this element is removed from the tree, if any.
  external HTMLTableCaptionElement? get caption;
  external set caption(HTMLTableCaptionElement? newValue);

  ///  Returns an [HTMLElement] representing the first [<caption>] that
  /// is a child of the element. If none is found, a new one is created
  /// and inserted in the tree as the first child of the [<table>]
  /// element.
  /// HTMLTableElement = table.createCaption();
  /// This example uses JavaScript to add a caption to a table that initially lacks one.
  /// <table>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td><td>Cell 1.3</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td><td>Cell 2.3</td></tr>
  /// </table>
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// let caption = table.createCaption();
  /// caption.textContent = 'This caption was created by JavaScript!';
  /// ```
  ///
  external HTMLTableCaptionElement createCaption();

  /// Removes the first [<caption>] that is a child of the element.
  /// HTMLTableElement.deleteCaption()
  /// This example uses JavaScript to delete a table's caption.
  /// <table>
  ///  <caption>This caption will be deleted!</caption>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td></tr>
  /// </table>
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteCaption();
  /// ```
  ///
  external Object deleteCaption();

  ///  Is a [HTMLTableSectionElement] representing the first [<thead>]
  /// that is a child of the element, or [null] if none is found. When
  /// set, if the object doesn't represent a [<thead>], a
  /// [DOMException] with the [HierarchyRequestError] name is thrown.
  /// If a correct object is given, it is inserted in the tree
  /// immediately before the first element that is neither a
  /// [<caption>], nor a [<colgroup>], or as the last child if there is
  /// no such element, and the first [<thead>] that is a child of this
  /// element is removed from the tree, if any.
  external HTMLTableSectionElement? get tHead;
  external set tHead(HTMLTableSectionElement? newValue);

  ///  Returns an [HTMLTableSectionElement] representing the first
  /// [<thead>] that is a child of the element. If none is found, a new
  /// one is created and inserted in the tree immediately before the
  /// first element that is neither a [<caption>], nor a [<colgroup>],
  /// or as the last child if there is no such element.
  /// table.createTHead();
  /// let myhead = mytable.createTHead();
  /// // Now this should be true: myhead == mytable.tHead
  external HTMLTableSectionElement createTHead();

  /// Removes the first [<thead>] that is a child of the element.
  /// HTMLTableElement.deleteTHead();
  /// This example uses JavaScript to delete a table's header.
  /// <table>
  ///  <thead><th>Name</th><th>Occupation</th></thead>
  ///  <tr><td>Bob</td><td>Plumber</td></tr>
  ///  <tr><td>Jim</td><td>Roofer</td></tr>
  /// </table>
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteTHead();
  /// ```
  ///
  external Object deleteTHead();

  ///  Is a [HTMLTableSectionElement] representing the first [<tfoot>]
  /// that is a child of the element, or [null] if none is found. When
  /// set, if the object doesn't represent a [<tfoot>], a
  /// [DOMException] with the [HierarchyRequestError] name is thrown.
  /// If a correct object is given, it is inserted in the tree
  /// immediately before the first element that is neither a
  /// [<caption>], a [<colgroup>], nor a [<thead>], or as the last
  /// child if there is no such element, and the first [<tfoot>] that
  /// is a child of this element is removed from the tree, if any.
  external HTMLTableSectionElement? get tFoot;
  external set tFoot(HTMLTableSectionElement? newValue);

  ///  Returns an [HTMLTableSectionElement] representing the first
  /// [<tfoot>] that is a child of the element. If none is found, a new
  /// one is created and inserted in the tree as the last child.
  /// table.createTFoot();
  /// let myfoot = mytable.createTFoot();
  /// // Now this should be true: myfoot == mytable.tFoot
  external HTMLTableSectionElement createTFoot();

  /// Removes the first [<tfoot>] that is a child of the element.
  /// HTMLTableElement.deleteTFoot();
  /// This example uses JavaScript to delete a table's footer.
  /// <table>
  ///  <thead><th>Name</th><th>Score</th></thead>
  ///  <tr><td>Bob</td><td>541</td></tr>
  ///  <tr><td>Jim</td><td>225</td></tr>
  ///  <tfoot><th>Average</th><td>383</td></tfoot>
  /// </table>
  /// ```
  ///
  /// let table = document.querySelector('table');
  /// table.deleteTFoot();
  /// ```
  ///
  external Object deleteTFoot();

  ///  Returns a live [HTMLCollection] containing all the [<tbody>] of
  /// the element. The [HTMLCollection] is live and is automatically
  /// updated when the [HTMLTableElement] changes.
  external HTMLCollection get tBodies;

  ///  Returns a [HTMLTableSectionElement] representing a new [<tbody>]
  /// that is a child of the element. It is inserted in the tree after
  /// the last element that is a [<tbody>], or as the last child if
  /// there is no such element.
  /// table.createTBody();
  /// let mybody = mytable.createTBody();
  /// // Now this should be true: mybody == mytable.tBodies.item(mytable.tBodies.length - 1)
  external HTMLTableSectionElement createTBody();

  ///  Returns a live [HTMLCollection] containing all the rows of the
  /// element, that is all [<tr>] that are a child of the element, or a
  /// child of one of its [<thead>], [<tbody>] and [<tfoot>] children.
  /// The rows members of a [<thead>] appear first, in tree order, and
  /// those members of a [<tbody>] last, also in tree order. The
  /// [HTMLCollection] is live and is automatically updated when the
  /// [HTMLTableElement] changes.
  external HTMLCollection get rows;

  ///  Returns an [HTMLTableRowElement] representing a new row of the
  /// table. It inserts it in the rows collection immediately before
  /// the [<tr>] element at the given [index] position. If necessary a
  /// [<tbody>] is created. If the [index] is [-1], the new row is
  /// appended to the collection. If the [index] is smaller than [-1]
  /// or greater than the number of rows in the collection, a
  /// [DOMException] with the value [IndexSizeError] is raised.
  /// var newRow = HTMLTableElement.insertRow(index);
  ///
  /// HTMLTableElement is a reference to an HTML <table>
  ///  element.
  /// This example uses insertRow(-1) to append a new row to a table.
  ///
  /// We then use HTMLTableRowElement.insertCell() to insert a new cell in the
  ///  new row. (To be valid HTML, a <tr> must have at least one
  ///  <td> element.) Finally, we add some text to the cell using
  ///  Document.createTextNode() and Node.appendChild().
  /// <table id="my-table">
  ///  <tr><td>Row 1</td></tr>
  ///  <tr><td>Row 2</td></tr>
  ///  <tr><td>Row 3</td></tr>
  /// </table>
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
  /// ```
  ///
  external HTMLTableRowElement insertRow([int? index = -1]);

  ///  Removes the row corresponding to the [index] given in parameter.
  /// If the [index] value is [-1] the last row is removed; if it
  /// smaller than [-1] or greater than the amount of rows in the
  /// collection, a [DOMException] with the value [IndexSizeError] is
  /// raised.
  /// HTMLTableElement.deleteRow(index)
  /// This example uses JavaScript to delete a table's second row.
  /// <table>
  ///  <tr><td>Cell 1.1</td><td>Cell 1.2</td><td>Cell 1.3</td></tr>
  ///  <tr><td>Cell 2.1</td><td>Cell 2.2</td><td>Cell 2.3</td></tr>
  ///  <tr><td>Cell 3.1</td><td>Cell 3.2</td><td>Cell 3.3</td></tr>
  /// </table>
  /// ```
  ///
  /// let table = document.querySelector('table');
  ///
  /// // Delete second row
  /// table.deleteRow(1);
  /// ```
  ///
  external Object deleteRow(int index);
  external String get align;
  external set align(String newValue);
  external String get border;
  external set border(String newValue);
  external String get frame;
  external set frame(String newValue);
  external String get rules;
  external set rules(String newValue);
  external String get summary;
  external set summary(String newValue);
  external String get width;
  external set width(String newValue);
  external String get bgColor;
  external set bgColor(String newValue);
  external String get cellPadding;
  external set cellPadding(String newValue);
  external String get cellSpacing;
  external set cellSpacing(String newValue);
}

///
///
///  The interface special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating table caption elements.
///
///
@JS()
class HTMLTableCaptionElement extends HTMLElement {
  external factory HTMLTableCaptionElement();
  external String get align;
  external set align(String newValue);
}

///
///
///  The interface provides special properties (beyond the
/// [HTMLElement] interface it also has available to it inheritance)
/// for manipulating single or grouped table column elements.
///
///
@JS()
class HTMLTableColElement extends HTMLElement {
  external factory HTMLTableColElement();

  ///  Is an [unsigned long] that reflects the HTML attribute,
  /// indicating the number of columns to apply this object's
  /// attributes to. Must be a positive integer.
  external int get span;
  external set span(int newValue);
  external String get align;
  external set align(String newValue);
  external String get ch;
  external set ch(String newValue);
  external String get chOff;
  external set chOff(String newValue);
  external String get vAlign;
  external set vAlign(String newValue);
  external String get width;
  external set width(String newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of
/// sections, that is headers, footers and bodies, in an HTML table.
///
///
@JS()
class HTMLTableSectionElement extends HTMLElement {
  external factory HTMLTableSectionElement();

  ///  Returns a live [HTMLCollection] containing the rows in the
  /// section. The [HTMLCollection] is live and is automatically
  /// updated when rows are added or removed.
  external HTMLCollection get rows;

  ///  Inserts a new row just before the given position in the section.
  /// If the given position is not given or is [-1], it appends the row
  /// to the end of section. If the given position is greater (or equal
  /// as it starts at zero) than the amount of rows in the section, or
  /// is smaller than [-1], it raises a [DOMException] with the
  /// [IndexSizeError] value.
  external HTMLTableRowElement insertRow([int? index = -1]);

  ///  Removes the row at the given position in the section. If the
  /// given position is greater (or equal as it starts at zero) than
  /// the amount of rows in the section, or is smaller than [0], it
  /// raises a [DOMException] with the [IndexSizeError] value.
  external Object deleteRow(int index);
  external String get align;
  external set align(String newValue);
  external String get ch;
  external set ch(String newValue);
  external String get chOff;
  external set chOff(String newValue);
  external String get vAlign;
  external set vAlign(String newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of rows
/// in an HTML table.
///
///
@JS()
class HTMLTableRowElement extends HTMLElement {
  external factory HTMLTableRowElement();

  ///  Returns a [long] value which gives the logical position of the
  /// row within the entire table. If the row is not part of a table,
  /// returns [-1].
  external int get rowIndex;

  ///  Returns a [long] value which gives the logical position of the
  /// row within the table section it belongs to. If the row is not
  /// part of a section, returns [-1].
  external int get sectionRowIndex;

  ///  Returns a live [HTMLCollection] containing the cells in the row.
  /// The [HTMLCollection] is live and is automatically updated when
  /// cells are added or removed.
  external HTMLCollection get cells;

  ///  Inserts a new cell just before the given position in the row. If
  /// the given position is not given or is [-1], it appends the cell
  /// to the row. If the given position is greater (or equal as it
  /// starts at zero) than the amount of cells in the row, or is
  /// smaller than [-1], it raises a [DOMException] with the
  /// [IndexSizeError] value. Returns a reference to a
  /// [HTMLTableCellElement].
  /// var newCell = HTMLTableRowElement.insertCell(index);
  /// HTMLTableRowElement is a reference to an HTML <tr>
  ///  element.
  /// This example uses HTMLTableElement.insertRow() to append a new row to a
  ///  table.
  ///
  /// We then use insertCell(0) to insert a new cell in the new row. (To be
  ///  valid HTML, a <tr> must have at least one <td>
  ///  element.) Finally, we add some text to the cell using
  ///  Document.createTextNode() and Node.appendChild().
  /// <table id="my-table">
  ///  <tr><td>Row 1</td></tr>
  ///  <tr><td>Row 2</td></tr>
  ///  <tr><td>Row 3</td></tr>
  /// </table>
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
  /// ```
  ///
  external HTMLTableCellElement insertCell([int? index = -1]);

  ///  Removes the cell at the given position in the row. If the given
  /// position is greater (or equal as it starts at zero) than the
  /// amount of cells in the row, or is smaller than [0], it raises a
  /// [DOMException] with the [IndexSizeError] value.
  external Object deleteCell(int index);
  external String get align;
  external set align(String newValue);
  external String get ch;
  external set ch(String newValue);
  external String get chOff;
  external set chOff(String newValue);
  external String get vAlign;
  external set vAlign(String newValue);
  external String get bgColor;
  external set bgColor(String newValue);
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// table cells, either header or data cells, in an HTML document.
///
///
@JS()
class HTMLTableCellElement extends HTMLElement {
  external factory HTMLTableCellElement();

  ///  An unsigned long integer indicating the number of columns this
  /// cell must span; this lets the cell occupy space across multiple
  /// columns of the table. It reflects the [colspan] attribute.
  external int get colSpan;
  external set colSpan(int newValue);

  ///  An unsigned long integer indicating the number of rows this cell
  /// must span; this lets a cell occupy space across multiple rows of
  /// the table. It reflects the [rowspan] attribute.
  external int get rowSpan;
  external set rowSpan(int newValue);

  ///  Is a [DOMSettableTokenList] describing a list of [id] of [<th>]
  /// elements that represents headers associated with the cell. It
  /// reflects the attribute.
  external String get headers;
  external set headers(String newValue);

  ///  A long integer representing the cell's position in the [cells]
  /// collection of the [<tr>] the cell is contained within. If the
  /// cell doesn't belong to a [<tr>], it returns [-1].
  external int get cellIndex;

  ///  A [DOMString] indicating the scope of a [<th>] cell. Header
  /// cells can be configured, using the property, the apply to a
  /// specified row or column, or to the not-yet-scoped cells within
  /// the current row group (that is, the same ancestor [<thead>],
  /// [<tbody>], or [<tfoot>] element). If no value is specified for ,
  /// the header is not associated directly with cells in this way.
  /// Permitted values for are:
  ///
  ///  [col]
  ///   The header cell applies to the following cells in the same
  /// column (or columns, if [colspan] is used as well), until either
  /// the end of the column or another [<th>] in the column establishes
  /// a new scope.
  ///  [colgroup]
  ///   The header cell applies to all cells in the current column
  /// group that do not already have a scope applied to them. This
  /// value is only allowed if the cell is in a column group.
  ///  [row]
  ///   The header cell applies to the following cells in the same row
  /// (or rows, if [rowspan] is used as well), until either the end of
  /// the row or another [<th>] in the same row establishes a new
  /// scope.
  ///  [rowgroup]
  ///   The header cell applies to all cells in the current row group
  /// that do not already have a scope applied to them. This value is
  /// only allowed if the cell is in a row group.
  ///  The empty string ([""])
  ///   The header cell has no predefined scope; the user agent will
  /// establish the scope based on contextual clues.
  ///
  ///
  external String get scope;
  external set scope(String newValue);

  ///  A [DOMString] which can be used on [<th>] elements (not on
  /// [<td>]), specifying an alternative label for the header cell.
  /// This alternate label can be used in other contexts, such as when
  /// describing the headers that apply to a data cell. This is used to
  /// offer a shorter term for use by screen readers in particular, and
  /// is a valuable accessibility tool. Usually the value of is an
  /// abbreviation or acronym, but can be any text that's appropriate
  /// contextually.
  external String get abbr;
  external set abbr(String newValue);
  external String get align;
  external set align(String newValue);
  external String get axis;
  external set axis(String newValue);
  external String get height;
  external set height(String newValue);
  external String get width;
  external set width(String newValue);
  external String get ch;
  external set ch(String newValue);
  external String get chOff;
  external set chOff(String newValue);
  external bool get noWrap;
  external set noWrap(bool newValue);
  external String get vAlign;
  external set vAlign(String newValue);
  external String get bgColor;
  external set bgColor(String newValue);
}

///
///
///  The [HTMLFormElement] interface represents a [<form>] element in
/// the DOM. It allows access to—and, in some cases, modification
/// of—aspects of the form, as well as access to its component
/// elements.
///
///
@JS()
class HTMLFormElement extends HTMLElement {
  external factory HTMLFormElement();

  ///  A [DOMString] reflecting the value of the form's
  /// [accept-charset] HTML attribute, representing the character
  /// encoding that the server accepts.
  external String get acceptCharset;
  external set acceptCharset(String newValue);

  ///  A [DOMString] reflecting the value of the form's HTML attribute,
  /// containing the URI of a program that processes the information
  /// submitted by the form.
  external String get action;
  external set action(String newValue);

  ///  A [DOMString] reflecting the value of the form's HTML attribute,
  /// indicating whether the controls in this form can have their
  /// values automatically populated by the browser.
  external String get autocomplete;
  external set autocomplete(String newValue);
  external String get enctype;
  external set enctype(String newValue);

  ///  A [DOMString] reflecting the value of the form's [enctype] HTML
  /// attribute, indicating the type of content that is used to
  /// transmit the form to the server. Only specified values can be
  /// set. The two properties are synonyms.
  external String get encoding;
  external set encoding(String newValue);

  ///  A [DOMString] reflecting the value of the form's HTML attribute,
  /// indicating the HTTP method used to submit the form. Only
  /// specified values can be set.
  external String get method;
  external set method(String newValue);

  ///  A [DOMString] reflecting the value of the form's HTML attribute,
  /// containing the name of the form.
  external String get name;
  external set name(String newValue);

  ///  A [Boolean] reflecting the value of the form's [novalidate] HTML
  /// attribute, indicating whether the form should not be validated.
  external bool get noValidate;
  external set noValidate(bool newValue);

  ///  A [DOMString] reflecting the value of the form's HTML attribute,
  /// indicating where to display the results received from submitting
  /// the form.
  external String get target;
  external set target(String newValue);
  external String get rel;
  external set rel(String newValue);
  external DOMTokenList get relList;

  ///  A [HTMLFormControlsCollection] holding all form controls
  /// belonging to this form element.
  external HTMLFormControlsCollection get elements;

  /// A [long] reflecting the number of controls in the form.
  external int get length;

  /// Submits the form to the server.
  /// HTMLFormElement.submit()
  ///
  /// document.forms["myform"].submit();
  ///
  external Object submit();

  ///  Requests that the form be submitted using the specified submit
  /// button and its corresponding configuration.
  /// htmlFormElement.requestSubmit(submitter);
  external Object requestSubmit([HTMLElement? submitter]);

  /// Resets the form to its initial state.
  /// HTMLFormElement.reset()
  ///
  /// document.getElementById('myform').reset();
  ///
  external Object reset();

  ///  Returns [true] if the element's child controls are subject to
  /// constraint validation and satisfy those constraints; returns
  /// [false] if some controls do not satisfy their constraints. Fires
  /// an event named [invalid] at any control that does not satisfy its
  /// constraints; such controls are considered invalid if the event is
  /// not canceled. It is up to the programmer to decide how to respond
  /// to [false].
  external bool checkValidity();

  ///  Returns [true] if the element's child controls satisfy their
  /// validation constraints. When [false] is returned, cancelable
  /// [invalid] events are fired for each invalid child and validation
  /// problems are reported to the user.
  /// HTMLFormElement.reportValidity()
  ///
  /// document.forms['myform'].addEventListener('submit', function() {
  ///  document.forms['myform'].reportValidity();
  /// }, false);
  external bool reportValidity();
}

///
///
///  The interface gives access to properties specific to [<label>]
/// elements. It inherits methods and properties from the base
/// [HTMLElement] interface.
///
///
@JS()
class HTMLLabelElement extends HTMLElement {
  external factory HTMLLabelElement();

  ///  Is a [HTMLFormElement] object representing the form with which
  /// the labeled control is associated, or [null] if there is no
  /// associated control, or if that control isn't associated with a
  /// form. In other words, this is just a shortcut for
  /// [HTMLLabelElement.control.form].
  external HTMLFormElement? get form;

  ///  Is a string containing the ID of the labeled control. This
  /// reflects the [for] attribute.
  external String get htmlFor;
  external set htmlFor(String newValue);

  ///  Is a [HTMLElement] representing the control with which the label
  /// is associated.
  external HTMLElement? get control;
}

///
///
///  The interface provides special properties and methods for
/// manipulating the options, layout, and presentation of [<input>]
/// elements.
///
///
@JS()
class HTMLInputElement extends HTMLElement {
  external factory HTMLInputElement();
  external String get accept;
  external set accept(String newValue);
  external String get alt;
  external set alt(String newValue);
  external String get autocomplete;
  external set autocomplete(String newValue);
  external bool get defaultChecked;
  external set defaultChecked(bool newValue);
  external bool get checked;
  external set checked(bool newValue);
  external String get dirName;
  external set dirName(String newValue);
  external bool get disabled;
  external set disabled(bool newValue);
  external HTMLFormElement? get form;
  external FileList? get files;
  external set files(FileList? newValue);
  external String get formAction;
  external set formAction(String newValue);
  external String get formEnctype;
  external set formEnctype(String newValue);
  external String get formMethod;
  external set formMethod(String newValue);
  external bool get formNoValidate;
  external set formNoValidate(bool newValue);
  external String get formTarget;
  external set formTarget(String newValue);
  external int get height;
  external set height(int newValue);
  external bool get indeterminate;
  external set indeterminate(bool newValue);
  external HTMLElement? get list;
  external String get max;
  external set max(String newValue);
  external int get maxLength;
  external set maxLength(int newValue);
  external String get min;
  external set min(String newValue);
  external int get minLength;
  external set minLength(int newValue);
  external bool get multiple;
  external set multiple(bool newValue);
  external String get name;
  external set name(String newValue);
  external String get pattern;
  external set pattern(String newValue);
  external String get placeholder;
  external set placeholder(String newValue);
  external bool get readOnly;
  external set readOnly(bool newValue);
  @JS('required')
  external bool get mRequired;
  external set mRequired(bool newValue);
  external int get size;
  external set size(int newValue);
  external String get src;
  external set src(String newValue);
  external String get step;
  external set step(String newValue);
  external String get type;
  external set type(String newValue);
  external String get defaultValue;
  external set defaultValue(String newValue);
  external String get value;
  external set value(String newValue);
  external dynamic get valueAsDate;
  external set valueAsDate(dynamic newValue);
  external /* double | NaN */ dynamic get valueAsNumber;
  external set valueAsNumber(/* double | NaN */ dynamic newValue);
  external int get width;
  external set width(int newValue);

  ///  Increments the [value] by ([step] * n), where n defaults to 1 if
  /// not specified. Throws an INVALID_STATE_ERR exception:
  ///
  ///   if the method is not applicable to for the current [type]
  /// value.,
  ///  if the element has no [step] value,
  ///  if the [value] cannot be converted to a number,
  ///  if the resulting value is above the [max] or below the [min].
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
  /// ```
  ///
  external Object stepUp([int? n = 1]);

  ///  Decrements the [value] by ([step] * n), where n defaults to 1 if
  /// not specified. Throws an INVALID_STATE_ERR exception:
  ///
  ///   if the method is not applicable to for the current [type]
  /// value,
  ///  if the element has no [step] value,
  ///  if the [value] cannot be converted to a number,
  ///  if the resulting value is above the [max] or below the [min].
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
  /// ```
  ///
  external Object stepDown([int? n = 1]);
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external bool checkValidity();
  external bool reportValidity();
  external Object setCustomValidity(String error);
  external NodeList? get labels;
  external Object select();
  external int? get selectionStart;
  external set selectionStart(int? newValue);
  external int? get selectionEnd;
  external set selectionEnd(int? newValue);
  external String? get selectionDirection;
  external set selectionDirection(String? newValue);
  external Object setRangeText(
      [String? replacement,
      int start,
      int end,
      SelectionMode? selectionMode = SelectionMode.preserve]);
  external Object setSelectionRange(int start, int end, [String? direction]);
  external bool get webkitdirectory;
  external set webkitdirectory(bool newValue);
  external Iterable<FileSystemEntry> get webkitEntries;
  external String get capture;
  external set capture(String newValue);
  external String get align;
  external set align(String newValue);
  external String get useMap;
  external set useMap(String newValue);
}

///
///
///  The interface provides properties and methods (beyond the
/// regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<button>] elements.
///
///
@JS()
class HTMLButtonElement extends HTMLElement {
  external factory HTMLButtonElement();

  ///  Is a [Boolean] indicating whether or not the control is
  /// disabled, meaning that it does not accept any clicks.
  external bool get disabled;
  external set disabled(bool newValue);

  ///  Is a [HTMLFormElement] reflecting the form that this button is
  /// associated with. If the button is a descendant of a form element,
  /// then this attribute is the ID of that form element.
  ///   If the button is not a descendant of a form element, then the
  /// attribute can be the ID of any form element in the same document
  /// it is related to, or the [null] value if none matches.
  external HTMLFormElement? get form;

  ///  Is a [DOMString] reflecting the URI of a resource that processes
  /// information submitted by the button. If specified, this attribute
  /// overrides the [action] attribute of the [<form>] element that
  /// owns this element.
  external String get formAction;
  external set formAction(String newValue);

  ///  Is a [DOMString] reflecting the type of content that is used to
  /// submit the form to the server. If specified, this attribute
  /// overrides the [enctype] attribute of the [<form>] element that
  /// owns this element.
  external String get formEnctype;
  external set formEnctype(String newValue);

  ///  Is a [DOMString] reflecting the HTTP method that the browser
  /// uses to submit the form. If specified, this attribute overrides
  /// the [method] attribute of the [<form>] element that owns this
  /// element.
  external String get formMethod;
  external set formMethod(String newValue);

  ///  Is a [Boolean] indicating that the form is not to be validated
  /// when it is submitted. If specified, this attribute overrides the
  /// [novalidate] attribute of the [<form>] element that owns this
  /// element.
  external bool get formNoValidate;
  external set formNoValidate(bool newValue);

  ///  Is a [DOMString] reflecting a name or keyword indicating where
  /// to display the response that is received after submitting the
  /// form. If specified, this attribute overrides the [target]
  /// attribute of the [<form>] element that owns this element.
  external String get formTarget;
  external set formTarget(String newValue);

  ///  Is a [DOMString] representing the name of the object when
  /// submitted with a form. If specified, it must not be the empty
  /// string.
  external String get name;
  external set name(String newValue);

  ///  Is a [DOMString] indicating the behavior of the button. This is
  /// an enumerated attribute with the following possible values:
  ///
  ///   [submit]: The button submits the form. This is the default
  /// value if the attribute is not specified, or if it is dynamically
  /// changed to an empty or invalid value.
  ///  [reset]: The button resets the form.
  ///  [button]: The button does nothing.
  ///  [menu]: The button displays a menu.
  ///
  ///
  ///
  ///
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] representing the current form control value of
  /// the button.
  external String get value;
  external set value(String newValue);

  ///  Is a [Boolean] indicating whether the button is a candidate for
  /// constraint validation. It is [false] if any conditions bar it
  /// from constraint validation, including: its [type] property is
  /// [reset] or [button]; it has a [<datalist>] ancestor; or the
  /// [disabled] property is set to [true].
  external bool get willValidate;

  ///  Is a [ValidityState] representing the validity states that this
  /// button is in.
  external ValidityState get validity;

  ///  Is a [DOMString] representing the localized message that
  /// describes the validation constraints that the control does not
  /// satisfy (if any). This attribute is the empty string if the
  /// control is not a candidate for constraint validation
  /// ([willValidate] is [false]), or it satisfies its constraints.
  external String get validationMessage;
  external bool checkValidity();
  external bool reportValidity();
  external Object setCustomValidity(String error);

  ///  Is a [NodeList] that represents a list of [<label>] elements
  /// that are labels for this button.
  external NodeList get labels;
}

///
///
///  The [HTMLSelectElement] interface represents a [<select>] HTML
/// Element. These elements also share all of the properties and
/// methods of other HTML elements via the [HTMLElement] interface.
///
///
@JS()
class HTMLSelectElement extends HTMLElement {
  external factory HTMLSelectElement();
  external String get autocomplete;
  external set autocomplete(String newValue);

  ///  A [Boolean] reflecting the HTML attribute, which indicates
  /// whether the control is disabled. If it is disabled, it does not
  /// accept clicks.
  external bool get disabled;
  external set disabled(bool newValue);

  ///  An [HTMLFormElement] referencing the form that this element is
  /// associated with. If the element is not associated with of a
  /// [<form>] element, then it returns [null].
  external HTMLFormElement? get form;

  ///  A [Boolean] reflecting the HTML attribute, which indicates
  /// whether multiple items can be selected.
  external bool get multiple;
  external set multiple(bool newValue);

  ///  A [DOMString] reflecting the HTML attribute, containing the name
  /// of this control used by servers and DOM search functions.
  external String get name;
  external set name(String newValue);

  ///  A [Boolean] reflecting the HTML attribute, which indicates
  /// whether the user is required to select a value before submitting
  /// the form.
  @JS('required')
  external bool get mRequired;
  external set mRequired(bool newValue);

  ///  A [long] reflecting the HTML attribute, which contains the
  /// number of visible items in the control. The default is 1, unless
  /// [multiple] is [true], in which case it is 4.
  external int get size;
  external set size(int newValue);

  ///  A [DOMString] represeting the form control's type. When
  /// [multiple] is [true], it returns ["select-multiple"]; otherwise,
  /// it returns ["select-one"].
  external String get type;

  ///  An [HTMLOptionsCollection] representing the set of [<option>]
  /// ([HTMLOptionElement]) elements contained by this element.
  external HTMLOptionsCollection get options;

  ///  An [unsigned long] The number of [<option>] elements in this
  /// [select] element.
  external int get length;
  external set length(int newValue);

  ///  Gets an item from the options collection for this [<select>]
  /// element. You can also access an item by specifying the index in
  /// array-style brackets or parentheses, without calling this method
  /// explicitly.
  /// var item = collection.item(index);
  /// var item = collection[index];
  ///
  external Element? item(int index);

  ///  Gets the item in the options collection with the specified name.
  /// The name string can match either the [id] or the [name] attribute
  /// of an option node. You can also access an item by specifying the
  /// name in array-style brackets or parentheses, without calling this
  /// method explicitly.
  /// var item = collection.namedItem(str);
  /// var item = collection[str];
  ///
  external HTMLOptionElement? namedItem(String name);

  ///  Adds an element to the collection of [option] elements for this
  /// [select] element.
  /// collection.add(item[, before]);
  ///
  external Object add(dynamic element, [dynamic before]);

  ///  Removes the element at the specified index from the options
  /// collection for this [select] element.
  /// collection.remove(index);
  ///
  /// var sel = document.getElementById("existingList");
  /// sel.remove(1);
  ///
  /// /*
  ///  Takes the existing following select object:
  ///
  ///  <select id="existingList" name="existingList">
  ///   <option value="1">Option: Value 1</option>
  ///   <option value="2">Option: Value 2</option>
  ///   <option value="3">Option: Value 3</option>
  ///  </select>
  ///
  ///  And changes it to:
  ///
  ///  <select id="existingList" name="existingList">
  ///   <option value="1">Option: Value 1</option>
  ///   <option value="3">Option: Value 3</option>
  ///  </select>
  /// */
  ///
  external Object remove([int? index]);

  ///  An [HTMLCollection] representing the set of [<option>] elements
  /// that are selected.
  external HTMLCollection get selectedOptions;

  ///  A [long] reflecting the index of the first selected [<option>]
  /// element. The value [-1] indicates no element is selected.
  external int get selectedIndex;
  external set selectedIndex(int newValue);

  ///  A [DOMString] reflecting the value of the form control. Returns
  /// the property of the first selected option element if there is
  /// one, otherwise the empty string.
  external String get value;
  external set value(String newValue);

  ///  A [Boolean] that indicates whether the button is a candidate for
  /// constraint validation. It is [false] if any conditions bar it
  /// from constraint validation.
  external bool get willValidate;

  ///  A [ValidityState] reflecting the validity state that this
  /// control is in.
  external ValidityState get validity;

  ///  A [DOMString] representing a localized message that describes
  /// the validation constraints that the control does not satisfy (if
  /// any). This attribute is the empty string if the control is not a
  /// candidate for constraint validation ([willValidate] is false), or
  /// it satisfies its constraints.
  external String get validationMessage;

  ///  Checks whether the element has any constraints and whether it
  /// satisfies them. If the element fails its constraints, the browser
  /// fires a cancelable [invalid] event at the element (and returns
  /// [false]).
  /// var result = selectElt.checkValidity();
  external bool checkValidity();

  ///  This method reports the problems with the constraints on the
  /// element, if any, to the user. If there are problems, it fires a
  /// cancelable [invalid] event at the element, and returns [false];
  /// if there are no problems, it returns [true].
  external bool reportValidity();

  ///  Sets the custom validity message for the selection element to
  /// the specified message. Use the empty string to indicate that the
  /// element does not have a custom validity error.
  /// selectElt.setCustomValidity(string);
  external Object setCustomValidity(String error);

  /// A [NodeList] of [<label>] elements associated with the element.
  external NodeList get labels;
}

///
///
///  The interface provides special properties (beyond the
/// [HTMLElement] object interface it also has available to it by
/// inheritance) to manipulate [<datalist>] elements and their
/// content.
///
///
@JS()
class HTMLDataListElement extends HTMLElement {
  external factory HTMLDataListElement();

  ///  Is a [HTMLCollection] representing a collection of the contained
  /// option elements.
  external HTMLCollection get options;
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] object interface they also have
/// available to them by inheritance) for manipulating the layout and
/// presentation of [<optgroup>] elements.
///
///
@JS()
class HTMLOptGroupElement extends HTMLElement {
  external factory HTMLOptGroupElement();

  ///  Is a [boolean] representing whether or not the whole list of
  /// children [<option>] is disabled (true) or not (false).
  external bool get disabled;
  external set disabled(bool newValue);

  /// Is a [DOMString] representing the label for the group.
  external String get label;
  external set label(String newValue);
}

///
///
///  The interface represents [<option>] elements and inherits all
/// properties and methods of the [HTMLElement] interface.
///
///
@JS()
class HTMLOptionElement extends HTMLElement {
  external factory HTMLOptionElement();

  ///  Has a value of either [true] or [false] representing the value
  /// of the HTML attribute, which indicates that the option is
  /// unavailable to be selected. An option can also be disabled if it
  /// is a child of an [<optgroup>] element that is disabled.
  external bool get disabled;
  external set disabled(bool newValue);

  ///  Is a [HTMLFormElement] representing the same value as the of the
  /// corresponding [<select>] element, if the option is a descendant
  /// of a [<select>] element, or null if none is found.
  external HTMLFormElement? get form;

  ///  Is a [DOMString] that reflects the value of the HTML attribute,
  /// which provides a label for the option. If this attribute isn't
  /// specifically set, reading it returns the element's text content.
  external String get label;
  external set label(String newValue);

  ///  Has a value of either [true] or [false] that shows the initial
  /// value of the [selected] HTML attribute, indicating whether the
  /// option is selected by default or not.
  external bool get defaultSelected;
  external set defaultSelected(bool newValue);

  ///  Has a value of either [true] or [false] that indicates whether
  /// the option is currently selected.
  external bool get selected;
  external set selected(bool newValue);

  ///  Is a [DOMString] that reflects the value of the HTML attribute,
  /// if it exists; otherwise reflects value of the [Node.textContent]
  /// property.
  external String get value;
  external set value(String newValue);

  /// Is a [DOMString] that contains the text content of the element.
  external String get text;
  external set text(String newValue);

  ///  Is a [long] representing the position of the option within the
  /// list of options it belongs to, in tree-order. If the option is
  /// not part of a list of options, like when it is part of the
  /// [<datalist>] element, the value is [0].
  external int get index;
}

///
///
///  The interface provides special properties and methods for
/// manipulating the layout and presentation of [<textarea>]
/// elements.
///
///
@JS()
class HTMLTextAreaElement extends HTMLElement {
  external factory HTMLTextAreaElement();
  external String get autocomplete;
  external set autocomplete(String newValue);
  external int get cols;
  external set cols(int newValue);
  external String get dirName;
  external set dirName(String newValue);
  external bool get disabled;
  external set disabled(bool newValue);
  external HTMLFormElement? get form;
  external int get maxLength;
  external set maxLength(int newValue);
  external int get minLength;
  external set minLength(int newValue);
  external String get name;
  external set name(String newValue);
  external String get placeholder;
  external set placeholder(String newValue);
  external bool get readOnly;
  external set readOnly(bool newValue);
  @JS('required')
  external bool get mRequired;
  external set mRequired(bool newValue);
  external int get rows;
  external set rows(int newValue);
  external String get wrap;
  external set wrap(String newValue);
  external String get type;
  external String get defaultValue;
  external set defaultValue(String newValue);
  external String get value;
  external set value(String newValue);
  external int get textLength;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external bool checkValidity();
  external bool reportValidity();
  external Object setCustomValidity(String error);
  external NodeList get labels;
  external Object select();
  external int get selectionStart;
  external set selectionStart(int newValue);
  external int get selectionEnd;
  external set selectionEnd(int newValue);
  external String get selectionDirection;
  external set selectionDirection(String newValue);
  external Object setRangeText(
      [String? replacement,
      int start,
      int end,
      SelectionMode? selectionMode = SelectionMode.preserve]);
  external Object setSelectionRange(int start, int end, [String? direction]);
}

///
///
///  The interface provides properties and methods (beyond those
/// inherited from [HTMLElement]) for manipulating the layout and
/// presentation of [<output>] elements.
///
///
@JS()
class HTMLOutputElement extends HTMLElement {
  external factory HTMLOutputElement();

  ///  A [DOMTokenList] reflecting the [for] HTML attribute, containing
  /// a list of IDs of other elements in the same document that
  /// contribute to (or otherwise affect) the calculated [value].
  external DOMTokenList get htmlFor;

  ///  An [HTMLFormElement] indicating the form associated with the
  /// control, reflecting the HTML attribute if it is defined.
  external HTMLFormElement? get form;

  ///  A [DOMString] reflecting the HTML attribute, containing the name
  /// for the control that is submitted with form data.
  external String get name;
  external set name(String newValue);

  /// The [DOMString] "[output]".
  external String get type;

  ///  A [DOMString] representing the default value of the element,
  /// initially the empty string.
  external String get defaultValue;
  external set defaultValue(String newValue);

  ///  A [DOMString] representing the value of the contents of the
  /// elements. Behaves like the [Node.textContent] property.
  external String get value;
  external set value(String newValue);

  ///  A [Boolean] indicating whether the element is a candidate for
  /// constraint validation.
  external bool get willValidate;

  ///  A [ValidityState] representing the validity states that this
  /// element is in.
  external ValidityState get validity;

  ///  A [DOMString] representing a localized message that describes
  /// the validation constraints that the control does not satisfy (if
  /// any). This is the empty string if the control is not a candidate
  /// for constraint validation ([willValidate] is [false]), or it
  /// satisfies its constraints.
  external String get validationMessage;

  ///  Checks the validity of the element and returns a [Boolean]
  /// holding the check result.
  external bool checkValidity();

  ///  This method reports the problems with the constraints on the
  /// element, if any, to the user. If there are problems, fires an
  /// [invalid] event at the element, and returns [false]; if there are
  /// no problems, it returns [true].
  external bool reportValidity();

  ///  Sets a custom validity message for the element. If this message
  /// is not the empty string, then the element is suffering from a
  /// custom validity error, and does not validate.
  external Object setCustomValidity(String error);

  /// A [NodeList] of [<label>] elements associated with the element.
  external NodeList get labels;
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<progress>] elements.
///
///
@JS()
class HTMLProgressElement extends HTMLElement {
  external factory HTMLProgressElement();

  ///  Is a [double] value that reflects the current value; if the
  /// progress bar is an indeterminate progress bar, it returns [0].
  external double get value;
  external set value(double newValue);

  ///  Is a [double] value reflecting the content attribute of the same
  /// name, limited to numbers greater than zero. Its default value is
  /// [1.0].
  external double get max;
  external set max(double newValue);

  ///  Returns a [double] value returning the result of dividing the
  /// current value ([value]) by the maximum value ([max]); if the
  /// progress bar is an indeterminate progress bar, it returns [-1].
  external double get position;

  ///  Returns [NodeList] containing the list of [<label>] elements
  /// that are labels for this element.
  external NodeList get labels;
}

///
///
///  The HTML [<meter>] elements expose the [HTMLMeterElement]
/// interface, which provides special properties and methods (beyond
/// the [HTMLElement] object interface they also have available to
/// them by inheritance) for manipulating the layout and presentation
/// of [<meter>] elements.
///
///
@JS()
class HTMLMeterElement extends HTMLElement {
  external factory HTMLMeterElement();

  ///  A [double] representing the currrent value, reflecting the
  /// attribute.
  external double get value;
  external set value(double newValue);

  ///  A [double] representing the minimum value, reflecting the
  /// attribute.
  external double get min;
  external set min(double newValue);

  ///  A [double] representing the maximum value, reflecting the
  /// attribute.
  external double get max;
  external set max(double newValue);

  ///  A [double] representing the value of the low boundary,
  /// reflecting the attribute.
  external double get low;
  external set low(double newValue);

  ///  A [double] representing the value of the high boundary,
  /// reflecting the attribute.
  external double get high;
  external set high(double newValue);

  /// A [double] representing the optimum, reflecting the attribute.
  external double get optimum;
  external set optimum(double newValue);

  ///  A [NodeList] of [<label>] elements that are associated with the
  /// element.
  external NodeList get labels;
}

///
///
///  The interface provides special properties and methods (beyond
/// the regular [HTMLElement] interface it also has available to it
/// by inheritance) for manipulating the layout and presentation of
/// [<fieldset>] elements.
///
///
@JS()
class HTMLFieldSetElement extends HTMLElement {
  external factory HTMLFieldSetElement();

  ///  A [Boolean] reflecting the HTML attribute, indicating whether
  /// the user can interact with the control.
  external bool get disabled;
  external set disabled(bool newValue);

  ///  An [HTMLFormControlsCollection] or [HTMLCollection] referencing
  /// the containing form element, if this element is in a form.
  ///   If the field set is not a descendant of a form element, then
  /// the attribute can be the ID of any form element in the same
  /// document it is related to, or the [null] value if none matches.
  external HTMLFormElement? get form;

  ///  A [DOMString] reflecting the HTML attribute, containing the name
  /// of the field set. This can be used when accessing the field set
  /// in JavaScript. It is not part of the data which is sent to the
  /// server.
  external String get name;
  external set name(String newValue);

  /// The [DOMString] "[fieldset]".
  external String get type;

  ///  The elements belonging to this field set. The type of this
  /// property depends on the version of the spec that is implemented
  /// by the browser.
  external HTMLCollection get elements;

  ///  A [Boolean] [false], because [<fieldset>] objects are never
  /// candidates for constraint validation.
  external bool get willValidate;

  ///  A [ValidityState] representing the validity states that this
  /// element is in.
  external ValidityState get validity;

  ///  A [DOMString] representing a localized message that describes
  /// the validation constraints that the element does not satisfy (if
  /// any). This is the empty string if the element is not a candidate
  /// for constraint validation ([willValidate] is [false]), or it
  /// satisfies its constraints.
  external String get validationMessage;

  ///  Always returns [true] because [<fieldset>] objects are never
  /// candidates for constraint validation.
  external bool checkValidity();

  ///  Always returns [true] because [<fieldset>] objects are never
  /// candidates for constraint validation.
  external bool reportValidity();

  ///  Sets a custom validity message for the field set. If this
  /// message is not the empty string, then the field set is suffering
  /// from a custom validity error, and does not validate.
  external Object setCustomValidity(String error);
}

///
///
///  The is an interface allowing to access properties of the
/// [<legend>] elements. It inherits properties and methods from the
/// [HTMLElement] interface.
///
///
@JS()
class HTMLLegendElement extends HTMLElement {
  external factory HTMLLegendElement();

  ///  Is a [HTMLFormElement] representing the form that this legend
  /// belongs to. If the legend has a fieldset element as its parent,
  /// then this attribute returns the same value as the form attribute
  /// on the parent fieldset element. Otherwise, it returns null.
  external HTMLFormElement? get form;
  external String get align;
  external set align(String newValue);
}

@JS()
enum SelectionMode { select, start, end, preserve }

///
///
///  The interface represents the validity states that an element can
/// be in, with respect to constraint validation. Together, they help
/// explain why an element's value fails to validate, if it's not
/// valid.
@JS()
class ValidityState {
  ///  A [Boolean] that is [true] if the element has a [required]
  /// attribute, but no value, or [false] otherwise. If [true], the
  /// element matches the [:invalid] CSS pseudo-class.
  external bool get valueMissing;

  ///  A [Boolean] that is [true] if the value is not in the required
  /// syntax (when [type] is [email] or [url]), or [false] if the
  /// syntax is correct. If [true], the element matches the [:invalid]
  /// CSS pseudo-class.
  external bool get typeMismatch;

  ///  A [Boolean] that is [true] if the value does not match the
  /// specified [pattern], and [false] if it does match. If [true], the
  /// element matches the [:invalid] CSS pseudo-class.
  external bool get patternMismatch;

  ///  A [Boolean] that is [true] if the value exceeds the specified
  /// [maxlength] for [HTMLInputElement] or [HTMLTextAreaElement]
  /// objects, or [false] if its length is less than or equal to the
  /// maximum length. Note: This property is never [true] in Gecko,
  /// because elements' values are prevented from being longer than
  /// [maxlength]. If [true], the element matches the [:invalid] and
  /// [:out-of-range] CSS pseudo-classes.
  external bool get tooLong;

  ///  A [Boolean] that is [true] if the value fails to meet the
  /// specified [minlength] for [HTMLInputElement] or
  /// [HTMLTextAreaElement] objects, or [false] if its length is
  /// greater than or equal to the minimum length. If [true], the
  /// element matches the [:invalid] and [:out-of-range] CSS
  /// pseudo-classes.
  external bool get tooShort;

  ///  A [Boolean] that is [true] if the value is less than the minimum
  /// specified by the [min] attribute, or [false] if it is greater
  /// than or equal to the minimum. If [true], the element matches the
  /// [:invalid] and [:out-of-range] CSS pseudo-classes.
  external bool get rangeUnderflow;

  ///  A [Boolean] that is [true] if the value is greater than the
  /// maximum specified by the [max] attribute, or [false] if it is
  /// less than or equal to the maximum. If [true], the element matches
  /// the [:invalid] and [:out-of-range] and CSS pseudo-classes.
  external bool get rangeOverflow;

  ///  A [Boolean] that is [true] if the value does not fit the rules
  /// determined by the [step] attribute (that is, it's not evenly
  /// divisible by the step value), or [false] if it does fit the step
  /// rule. If [true], the element matches the [:invalid] and
  /// [:out-of-range] CSS pseudo-classes.
  external bool get stepMismatch;

  ///  A [Boolean] that is [true] if the user has provided input that
  /// the browser is unable to convert.
  external bool get badInput;

  ///  A [Boolean] indicating whether the element's custom validity
  /// message has been set to a non-empty string by calling the
  /// element's [setCustomValidity()] method.
  external bool get customError;

  ///  A [Boolean] that is [true] if the element meets all its
  /// validation constraints, and is therefore considered to be valid,
  /// or [false] if it fails any constraint. If [true], the element
  /// matches the [:valid] CSS pseudo-class; the [:invalid] CSS
  /// pseudo-class otherwise.
  external bool get valid;

  external factory ValidityState();
}

///
///
///  The [SubmitEvent] interface defines the object used to represent
/// an HTML form's [submit] event. This event is fired at the
/// [<form>] when the form's submit action is invoked.
@JS()
class SubmitEvent extends Event {
  external factory SubmitEvent({String type, SubmitEventInit? eventInitDict});

  ///  An [HTMLElement] object which identifies the button or other
  /// element which was invoked to trigger the form being submitted.
  external HTMLElement? get submitter;
}

@anonymous
@JS()
class SubmitEventInit extends EventInit {
  external HTMLElement? get submitter;
  external set submitter(HTMLElement? newValue);

  external factory SubmitEventInit({HTMLElement? submitter});
}

///
///
///  The interface represents a [formdata] event — such an event is
/// fired on an [HTMLFormElement] object after the entry list
/// representing the form's data is constructed. This happens when
/// the form is submitted, but can also be triggered by the
/// invocation of a [FormData()] constructor.
///
///  This allows a [FormData] object to be quickly obtained in
/// response to a [formdata] event firing, rather than needing to put
/// it together yourself when you wish to submit form data via a
/// method like [XMLHttpRequest] (see Using FormData objects).
@experimental
@JS()
class FormDataEvent extends Event {
  external factory FormDataEvent(
      {String type, FormDataEventInit eventInitDict});

  ///  Contains the [FormData] object representing the data contained
  /// in the form when the event was fired.
  external FormData get formData;
}

@anonymous
@JS()
class FormDataEventInit extends EventInit {
  external FormData get formData;
  external set formData(FormData newValue);

  external factory FormDataEventInit({FormData formData});
}

///
///
///  The interface provides special properties (beyond the regular
/// [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating [<details>] elements.
///
///
@JS()
class HTMLDetailsElement extends HTMLElement {
  external factory HTMLDetailsElement();

  ///  Is a [boolean] reflecting the HTML attribute, indicating whether
  /// or not the element’s contents (not counting the [<summary>]) is
  /// to be shown to the user.
  external bool get open;
  external set open(bool newValue);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface provides methods to manipulate [<dialog>]
/// elements. It inherits properties and methods from the
/// [HTMLElement] interface.
///
///
@experimental
@JS()
class HTMLDialogElement extends HTMLElement {
  external factory HTMLDialogElement();

  ///  A [Boolean] reflecting the HTML attribute, indicating whether
  /// the dialog is available for interaction.
  external bool get open;
  external set open(bool newValue);

  ///  A [DOMString] that sets or returns the return value for the
  /// dialog.
  external String get returnValue;
  external set returnValue(String newValue);

  ///  Displays the dialog modelessly, i.e. still allowing interaction
  /// with content outside of the dialog.
  /// dialogInstance.show();
  @JS('show')
  external Object mShow();

  ///  Displays the dialog as a modal, over the top of any other
  /// dialogs that might be present. Interaction outside the dialog is
  /// blocked.
  /// dialogInstance.showModal();
  external Object showModal();

  ///  Closes the dialog. An optional [DOMString] may be passed as an
  /// argument, updating the [returnValue] of the dialog.
  /// dialogInstance.close(returnValue);
  external Object close([String? returnValue]);
}

///
///
///  HTML [<script>] elements expose the interface, which provides
/// special properties and methods for manipulating the behavior and
/// execution of [<script>] elements (beyond the inherited
/// [HTMLElement] interface).
///
///  JavaScript files should be served with the
/// [application/javascript] MIME type, but browsers are lenient and
/// block them only if the script is served with an image type
/// ([image/*]), video type ([video/*]), audio type ([audio/*]), or
/// [text/csv]. If the script is blocked, its element receives an
/// [error] event; otherwise, it receives a [load] event.
///
///
@JS()
class HTMLScriptElement extends HTMLElement {
  external factory HTMLScriptElement();

  ///  Is a [DOMString] representing the URL of an external script. It
  /// reflects the attribute.
  external String get src;
  external set src(String newValue);

  ///  Is a [DOMString] representing the MIME type of the script. It
  /// reflects the attribute.
  external String get type;
  external set type(String newValue);

  ///  Is a [Boolean] that if true, stops the script's execution in
  /// browsers that support ES2015 modules — used to run fallback
  /// scripts in older browsers that do not support JavaScript modules.
  external bool get noModule;
  external set noModule(bool newValue);

  ///  The and [defer] attributes are [Boolean] attributes that control
  /// how the script should be executed. The [defer] and attributes
  /// must not be specified if the [src] attribute is absent.
  ///
  ///  There are three possible execution modes:
  ///
  ///
  ///    If the attribute is present, then the script will be executed
  /// asynchronously as soon as it downloads.
  ///    If the attribute is absent but the [defer] attribute is
  /// present, then the script is executed when the page has finished
  /// parsing.
  ///    If neither attribute is present, then the script is fetched
  /// and executed immediately, blocking further parsing of the page.
  ///
  ///
  ///   The [defer] attribute may be specified with the attribute, so
  /// legacy browsers that only support [defer] (and not ) fall back to
  /// the [defer] behavior instead of the default blocking behavior.
  ///
  ///   Note: The exact processing details for these attributes are
  /// complex, involving many different aspects of HTML, and therefore
  /// are scattered throughout the specification. These algorithms
  /// describe the core ideas, but they rely on the parsing rules for
  /// [<script>] start and end tags in HTML, in foreign content, and in
  /// XML; the rules for the [document.write()] method; the handling of
  /// scripting; and so on.
  @JS('async')
  external bool get mAsync;
  external set mAsync(bool newValue);
  external bool get defer;
  external set defer(bool newValue);

  ///  Is a [DOMString] reflecting the CORS setting for the script
  /// element. For scripts from other origins, this controls if error
  /// information will be exposed.
  @experimental
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);

  ///  Is a [DOMString] that joins and returns the contents of all
  /// [Text] nodes inside the [<script>] element (ignoring other nodes
  /// like comments) in tree order. On setting, it acts the same way as
  /// the [textContent] IDL attribute.
  ///
  ///   Note: When inserted using the [document.write()] method,
  /// [<script>] elements execute (typically synchronously), but when
  /// inserted using [innerHTML] or [outerHTML], they do not execute at
  /// all.
  ///
  external String get text;
  external set text(String newValue);
  external String get integrity;
  external set integrity(String newValue);

  ///  Is a [DOMString] that reflects the [referrerpolicy] HTML
  /// attribute indicating which referrer to use when fetching the
  /// script, and fetches done by that script.
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
  external String get charset;
  external set charset(String newValue);
  external String get event;
  external set event(String newValue);
  external String get htmlFor;
  external set htmlFor(String newValue);
}

///
///
///  The [HTMLTemplateElement] interface enables access to the
/// contents of an HTML [<template>] element.
///
///
@JS()
class HTMLTemplateElement extends HTMLElement {
  external factory HTMLTemplateElement();

  ///  A read-only [DocumentFragment] which contains the DOM subtree
  /// representing the [<template>] element's template contents.
  external DocumentFragment get content;
}

///
///
///  The interface of the Shadow DOM API enables access to the name
/// and assigned nodes of an HTML [<slot>] element.
@JS()
class HTMLSlotElement extends HTMLElement {
  external factory HTMLSlotElement();

  /// [DOMString]: Can be used to get and set the slot's name.
  external String get name;
  external set name(String newValue);

  ///  Returns a sequence of the nodes assigned to this slot, and if
  /// the [flatten] option is set to [true], the assigned nodes of any
  /// other slots that are descendants of this slot. If no assigned
  /// nodes are found, it returns the slot's fallback content.
  /// var assignedNodes = HTMLSlotElement.assignedNodes(options)
  external Iterable<Node> assignedNodes([AssignedNodesOptions? options]);

  ///  Returns a sequence of the elements assigned to this slot (and no
  /// other nodes). If the [flatten] option is set to [true], it also
  /// returns the assigned elements of any other slots that are
  /// descendants of this slot. If no assigned nodes are found, it
  /// returns the slot's fallback content.
  /// var assignedElements = HTMLSlotElement.assignedElements(options)
  external Iterable<Element> assignedElements([AssignedNodesOptions? options]);
  external Object assign([dynamic nodes]);
}

@anonymous
@JS()
class AssignedNodesOptions {
  external bool get flatten;
  external set flatten(bool newValue);

  external factory AssignedNodesOptions({bool flatten = false});
}

///
///
///  The interface provides properties and methods for manipulating
/// the layout and presentation of [<canvas>] elements. The interface
/// also inherits the properties and methods of the [HTMLElement]
/// interface.
///
///
@JS()
class HTMLCanvasElement extends HTMLElement {
  external factory HTMLCanvasElement();

  ///  The HTML attribute of the [<canvas>] element is a positive
  /// [integer] reflecting the number of logical pixels (or RGBA
  /// values) going across one row of the canvas. When the attribute is
  /// not specified, or if it is set to an invalid value, like a
  /// negative, the default value of [300] is used. If no [separate]
  /// CSS width is assigned to the [<canvas>], then this value will
  /// also be used as the width of the canvas in the length-unit CSS
  /// Pixel.
  external int get width;
  external set width(int newValue);

  ///  The HTML attribute of the [<canvas>] element is a positive
  /// [integer] reflecting the number of logical pixels (or RGBA
  /// values) going down one column of the canvas. When the attribute
  /// is not specified, or if it is set to an invalid value, like a
  /// negative, the default value of [150] is used. If no [separate]
  /// CSS height is assigned to the [<canvas>], then this value will
  /// also be used as the height of the canvas in the length-unit CSS
  /// Pixel.
  external int get height;
  external set height(int newValue);

  ///  Returns a drawing context on the canvas, or null if the context
  /// ID is not supported. A drawing context lets you draw on the
  /// canvas. Calling getContext with ["2d"] returns a
  /// [CanvasRenderingContext2D] object, whereas calling it with
  /// ["webgl"] (or ["experimental-webgl"]) returns a
  /// [WebGLRenderingContext] object. This context is only available on
  /// browsers that implement WebGL.
  /// var ctx = canvas.getContext(contextType);
  /// var ctx = canvas.getContext(contextType, contextAttributes);
  ///
  external dynamic getContext(String contextId, [dynamic options]);

  ///  Returns a data-URL containing a representation of the image in
  /// the format specified by the [type] parameter (defaults to [png]).
  /// The returned image is in a resolution of 96dpi.
  /// canvas.toDataURL(type, encoderOptions);
  ///
  external String toDataURL([String? type = 'image/png', dynamic quality]);

  ///  Creates a [Blob] object representing the image contained in the
  /// canvas; this file may be cached on the disk or stored in memory
  /// at the discretion of the user agent.
  /// canvas.toBlob(callback, mimeType, qualityArgument);
  ///
  external Object toBlob(BlobCallback callback,
      [String? type = 'image/png', dynamic quality]);

  ///  Transfers control to an [OffscreenCanvas] object, either on the
  /// main thread or on a worker.
  /// OffscreenCanvas HTMLCanvasElement.transferControlToOffscreen()
  @experimental
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream([double? frameRequestRate]);
}

@JS()
enum PredefinedColorSpace {
  srgb,
  @JS('display-p3')
  displayP3
}

@JS()
enum CanvasFillRule { nonzero, evenodd }

@anonymous
@JS()
class CanvasRenderingContext2DSettings {
  external bool get alpha;
  external set alpha(bool newValue);
  external bool get desynchronized;
  external set desynchronized(bool newValue);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace newValue);

  external factory CanvasRenderingContext2DSettings(
      {bool alpha = true,
      bool desynchronized = false,
      PredefinedColorSpace colorSpace = PredefinedColorSpace.srgb});
}

@JS()
enum ImageSmoothingQuality { low, medium, high }

///
///
///  The [CanvasRenderingContext2D] interface, part of the Canvas
/// API, provides the 2D rendering context for the drawing surface of
/// a [<canvas>] element. It is used for drawing shapes, text,
/// images, and other objects.
///
///  See the interface's properties and methods in the sidebar and
/// below. The Canvas tutorial has more explanation, examples, and
/// resources, as well.
@JS()
class CanvasRenderingContext2D
    with
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
  external HTMLCanvasElement get canvas;
  external CanvasRenderingContext2DSettings getContextAttributes();

  external factory CanvasRenderingContext2D();
}

@JS()
mixin CanvasState {
  external Object save();
  external Object restore();
  external Object reset();
}

@JS()
mixin CanvasTransform {
  external Object scale(
      /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object rotate(/* double | NaN */ dynamic angle);
  external Object translate(
      /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object transform(
      /* double | NaN */ dynamic a,
      /* double | NaN */ dynamic b,
      /* double | NaN */ dynamic c,
      /* double | NaN */ dynamic d,
      /* double | NaN */ dynamic e,
      /* double | NaN */ dynamic f);
  external DOMMatrix getTransform();
  external Object setTransform(
      [/* double | NaN */ dynamic a,
      /* double | NaN */ dynamic b,
      /* double | NaN */ dynamic c,
      /* double | NaN */ dynamic d,
      /* double | NaN */ dynamic e,
      /* double | NaN */ dynamic f]);
  external Object resetTransform();
}

@JS()
mixin CanvasCompositing {
  external /* double | NaN */ dynamic get globalAlpha;
  external set globalAlpha(/* double | NaN */ dynamic newValue);
  external String get globalCompositeOperation;
  external set globalCompositeOperation(String newValue);
}

@JS()
mixin CanvasImageSmoothing {
  external bool get imageSmoothingEnabled;
  external set imageSmoothingEnabled(bool newValue);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality newValue);
}

@JS()
mixin CanvasFillStrokeStyles {
  external dynamic get strokeStyle;
  external set strokeStyle(dynamic newValue);
  external dynamic get fillStyle;
  external set fillStyle(dynamic newValue);
  external CanvasGradient createLinearGradient(
      double x0, double y0, double x1, double y1);
  external CanvasGradient createRadialGradient(
      double x0, double y0, double r0, double x1, double y1, double r1);
  external CanvasGradient createConicGradient(
      double startAngle, double x, double y);
  external CanvasPattern? createPattern(dynamic image, String repetition);
}

@JS()
mixin CanvasShadowStyles {
  external /* double | NaN */ dynamic get shadowOffsetX;
  external set shadowOffsetX(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get shadowOffsetY;
  external set shadowOffsetY(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get shadowBlur;
  external set shadowBlur(/* double | NaN */ dynamic newValue);
  external String get shadowColor;
  external set shadowColor(String newValue);
}

@JS()
mixin CanvasFilters {
  external String get filter;
  external set filter(String newValue);
}

@JS()
mixin CanvasRect {
  external Object clearRect(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic w,
      /* double | NaN */ dynamic h);
  external Object fillRect(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic w,
      /* double | NaN */ dynamic h);
  external Object strokeRect(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic w,
      /* double | NaN */ dynamic h);
}

@JS()
mixin CanvasDrawPath {
  external Object beginPath();
  external Object fill(
      [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]);
  external Object stroke([Path2D? path]);
  external Object clip(
      [Path2D? path, CanvasFillRule? fillRule = CanvasFillRule.nonzero]);
  external bool isPointInPath(Path2D path, /* double | NaN */ dynamic x,
      [/* double | NaN */ dynamic y,
      CanvasFillRule? fillRule = CanvasFillRule.nonzero]);
  external bool isPointInStroke(Path2D path,
      [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]);
}

@JS()
mixin CanvasUserInterface {
  external Object drawFocusIfNeeded([Path2D? path, Element element]);
  external Object scrollPathIntoView([Path2D? path]);
}

@JS()
mixin CanvasText {
  external Object fillText(
      String text, /* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
      [/* double | NaN */ dynamic maxWidth]);
  external Object strokeText(
      String text, /* double | NaN */ dynamic x, /* double | NaN */ dynamic y,
      [/* double | NaN */ dynamic maxWidth]);
  external TextMetrics measureText(String text);
}

@JS()
mixin CanvasDrawImage {
  external Object drawImage(dynamic image, /* double | NaN */ dynamic sx,
      [/* double | NaN */ dynamic sy,
      /* double | NaN */ dynamic sw,
      /* double | NaN */ dynamic sh,
      /* double | NaN */ dynamic dx,
      /* double | NaN */ dynamic dy,
      /* double | NaN */ dynamic dw,
      /* double | NaN */ dynamic dh]);
}

@JS()
mixin CanvasImageData {
  external ImageData createImageData(
      [int? sw, int sh, ImageDataSettings? settings]);
  external ImageData getImageData(int sx, int sy, int sw, int sh,
      [ImageDataSettings? settings]);
  external Object putImageData(ImageData imagedata, int dx,
      [int? dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight]);
}

@JS()
enum CanvasLineCap { butt, round, square }

@JS()
enum CanvasLineJoin { round, bevel, miter }

@JS()
enum CanvasTextAlign { start, end, left, right, center }

@JS()
enum CanvasTextBaseline {
  top,
  hanging,
  middle,
  alphabetic,
  ideographic,
  bottom
}

@JS()
enum CanvasDirection { ltr, rtl, inherit }

@JS()
enum CanvasFontKerning { auto, normal, none }

@JS()
enum CanvasFontStretch {
  @JS('ultra-condensed')
  ultraCondensed,
  @JS('extra-condensed')
  extraCondensed,
  condensed,
  @JS('semi-condensed')
  semiCondensed,
  normal,
  @JS('semi-expanded')
  semiExpanded,
  expanded,
  @JS('extra-expanded')
  extraExpanded,
  @JS('ultra-expanded')
  ultraExpanded
}

@JS()
enum CanvasFontVariantCaps {
  normal,
  @JS('small-caps')
  smallCaps,
  @JS('all-small-caps')
  allSmallCaps,
  @JS('petite-caps')
  petiteCaps,
  @JS('all-petite-caps')
  allPetiteCaps,
  unicase,
  @JS('titling-caps')
  titlingCaps
}

@JS()
enum CanvasTextRendering {
  auto,
  optimizeSpeed,
  optimizeLegibility,
  geometricPrecision
}

@JS()
mixin CanvasPathDrawingStyles {
  external /* double | NaN */ dynamic get lineWidth;
  external set lineWidth(/* double | NaN */ dynamic newValue);
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap newValue);
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin newValue);
  external /* double | NaN */ dynamic get miterLimit;
  external set miterLimit(/* double | NaN */ dynamic newValue);
  external Object setLineDash(Iterable< /* double | NaN */ dynamic> segments);
  external Iterable< /* double | NaN */ dynamic> getLineDash();
  external /* double | NaN */ dynamic get lineDashOffset;
  external set lineDashOffset(/* double | NaN */ dynamic newValue);
}

@JS()
mixin CanvasTextDrawingStyles {
  external String get font;
  external set font(String newValue);
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign newValue);
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline newValue);
  external CanvasDirection get direction;
  external set direction(CanvasDirection newValue);
  external double get textLetterSpacing;
  external set textLetterSpacing(double newValue);
  external double get textWordSpacing;
  external set textWordSpacing(double newValue);
  external CanvasFontKerning get fontKerning;
  external set fontKerning(CanvasFontKerning newValue);
  external CanvasFontStretch get fontStretch;
  external set fontStretch(CanvasFontStretch newValue);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set fontVariantCaps(CanvasFontVariantCaps newValue);
  external CanvasTextRendering get textRendering;
  external set textRendering(CanvasTextRendering newValue);
}

@JS()
mixin CanvasPath {
  external Object closePath();
  external Object moveTo(
      /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object lineTo(
      /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object quadraticCurveTo(
      /* double | NaN */ dynamic cpx,
      /* double | NaN */ dynamic cpy,
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y);
  external Object bezierCurveTo(
      /* double | NaN */ dynamic cp1x,
      /* double | NaN */ dynamic cp1y,
      /* double | NaN */ dynamic cp2x,
      /* double | NaN */ dynamic cp2y,
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y);
  external Object arcTo(
      /* double | NaN */ dynamic x1,
      /* double | NaN */ dynamic y1,
      /* double | NaN */ dynamic x2,
      /* double | NaN */ dynamic y2,
      /* double | NaN */ dynamic radius);
  external Object rect(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic w,
      /* double | NaN */ dynamic h);
  external Object arc(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic radius,
      /* double | NaN */ dynamic startAngle,
      /* double | NaN */ dynamic endAngle,
      [bool? counterclockwise = false]);
  external Object ellipse(
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic radiusX,
      /* double | NaN */ dynamic radiusY,
      /* double | NaN */ dynamic rotation,
      /* double | NaN */ dynamic startAngle,
      /* double | NaN */ dynamic endAngle,
      [bool? counterclockwise = false]);
}

///  The [CanvasGradient] interface represents an opaque object
/// describing a gradient. It is returned by the methods
/// [CanvasRenderingContext2D.createLinearGradient()],
/// [CanvasRenderingContext2D.createConicGradient()] or
/// [CanvasRenderingContext2D.createRadialGradient()].
///
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
class CanvasGradient {
  ///  Adds a new stop, defined by an [offset] and a [color], to the
  /// gradient. If the offset is not between [0] and [1], inclusive, an
  /// [INDEX_SIZE_ERR] is raised; if the color can't be parsed as a CSS
  /// [<color>], a [SYNTAX_ERR] is raised.
  /// void gradient.addColorStop(offset, color);
  ///
  external Object addColorStop(double offset, String color);

  external factory CanvasGradient();
}

///
///
///  The [CanvasPattern] interface represents an opaque object
/// describing a pattern, based on an image, a canvas, or a video,
/// created by the [CanvasRenderingContext2D.createPattern()] method.
///
/// It can be used as a [fillStyle] or [strokeStyle].
@JS()
class CanvasPattern {
  ///  Applies an [SVGMatrix] or [DOMMatrix] representing a linear
  /// transform to the pattern.
  /// void pattern.setTransform(matrix);
  ///
  external Object setTransform([DOMMatrix2DInit? transform]);

  external factory CanvasPattern();
}

///
///
///  The interface represents the dimensions of a piece of text in
/// the canvas; a instance can be retrieved using the
/// [CanvasRenderingContext2D.measureText()] method.
@JS()
class TextMetrics {
  ///  Is a [double] giving the calculated width of a segment of inline
  /// text in CSS pixels. It takes into account the current font of the
  /// context.
  external double get width;

  ///  Is a [double] giving the distance from the alignment point given
  /// by the [CanvasRenderingContext2D.textAlign] property to the left
  /// side of the bounding rectangle of the given text, in CSS pixels.
  /// The distance is measured parallel to the baseline.
  external double get actualBoundingBoxLeft;

  ///  Is a [double] giving the distance from the alignment point given
  /// by the [CanvasRenderingContext2D.textAlign] property to the right
  /// side of the bounding rectangle of the given text, in CSS pixels.
  /// The distance is measured parallel to the baseline.
  external double get actualBoundingBoxRight;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the top of the highest bounding rectangle of all the
  /// fonts used to render the text, in CSS pixels.
  external double get fontBoundingBoxAscent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the bottom of the bounding rectangle of all the
  /// fonts used to render the text, in CSS pixels.
  external double get fontBoundingBoxDescent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the top of the bounding rectangle used to render the
  /// text, in CSS pixels.
  external double get actualBoundingBoxAscent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline]
  /// attribute to the bottom of the bounding rectangle used to render
  /// the text, in CSS pixels.
  external double get actualBoundingBoxDescent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the top of the em square in the line box, in CSS pixels.
  external double get emHeightAscent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the bottom of the em square in the line box, in CSS pixels.
  external double get emHeightDescent;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the hanging baseline of the line box, in CSS pixels.
  external double get hangingBaseline;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the alphabetic baseline of the line box, in CSS pixels.
  external double get alphabeticBaseline;

  ///  Is a [double] giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property
  /// to the ideographic baseline of the line box, in CSS pixels.
  external double get ideographicBaseline;

  external factory TextMetrics();
}

@anonymous
@JS()
class ImageDataSettings {
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace newValue);

  external factory ImageDataSettings({PredefinedColorSpace colorSpace});
}

///
///
///  The [ImageData] interface represents the underlying pixel data
/// of an area of a [<canvas>] element. It is created using the
/// [ImageData()] constructor or creator methods on the
/// [CanvasRenderingContext2D] object associated with a canvas:
/// [createImageData()] and [getImageData()]. It can also be used to
/// set a part of the canvas by using [putImageData()].
///  Note: This feature is available in Web Workers
///
@JS()
class ImageData {
  external factory ImageData(
      {Uint8ClampedList data, int sw, int? sh, ImageDataSettings? settings});

  ///  Is an [unsigned long] representing the actual width, in pixels,
  /// of the [ImageData].
  external int get width;

  ///  Is an [unsigned long] representing the actual height, in pixels,
  /// of the [ImageData].
  external int get height;

  ///  Is a [Uint8ClampedArray] representing a one-dimensional array
  /// containing the data in the RGBA order, with integer values
  /// between [0] and [255] (inclusive).
  external Uint8ClampedList get data;
  external PredefinedColorSpace get colorSpace;
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Canvas 2D API is used to declare a path
/// that can then be used on a [CanvasRenderingContext2D] object. The
/// path methods of the [CanvasRenderingContext2D] interface are also
/// present on this interface, which gives you the convenience of
/// being able to retain and replay your path whenever desired.
@JS()
class Path2D with CanvasPath {
  external factory Path2D({dynamic path});

  /// Adds a path to the current path.
  /// void path.addPath(path [, transform]);
  ///
  external Object addPath(Path2D path, [DOMMatrix2DInit? transform]);
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface is a canvas rendering context that provides the
/// functionality to replace the canvas's contents with the given
/// [ImageBitmap]. Its context id (the first argument to
/// [HTMLCanvasElement.getContext()] or
/// [OffscreenCanvas.getContext()]) is ["bitmaprenderer"].
///
///  This interface is available in both the window and the worker
/// context.
@experimental
@JS()
class ImageBitmapRenderingContext {
  external dynamic get canvas;

  ///  Displays the given [ImageBitmap] in the canvas associated with
  /// this rendering context. Ownership of the [ImageBitmap] is
  /// transferred to the canvas. This was previously named
  /// [transferImageBitmap()], but was renamed in a spec change. The
  /// old name is being kept as an alias to avoid code breakage.
  ///
  /// void ImageBitmapRenderingContext.transferFromImageBitmap(bitmap)
  external Object transferFromImageBitmap(ImageBitmap? bitmap);

  external factory ImageBitmapRenderingContext();
}

@anonymous
@JS()
class ImageBitmapRenderingContextSettings {
  external bool get alpha;
  external set alpha(bool newValue);

  external factory ImageBitmapRenderingContextSettings({bool alpha = true});
}

@anonymous
@JS()
class ImageEncodeOptions {
  external String get type;
  external set type(String newValue);
  external /* double | NaN */ dynamic get quality;
  external set quality(/* double | NaN */ dynamic newValue);

  external factory ImageEncodeOptions(
      {String type = 'image/png', /* double | NaN */ dynamic quality});
}

@JS()
enum OffscreenRenderingContextId {
  @JS('2d')
  value2d,
  bitmaprenderer,
  webgl,
  webgl2
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface provides a canvas that can be rendered off screen.
/// It is available in both the window and worker contexts.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
class OffscreenCanvas extends EventTarget {
  external factory OffscreenCanvas({int width, int height});

  /// The width of the offscreen canvas.
  external int get width;
  external set width(int newValue);

  /// The height of the offscreen canvas.
  external int get height;
  external set height(int newValue);

  /// Returns a rendering context for the offscreen canvas.
  /// offscreen.getContext(contextType, contextAttributes);
  ///
  external dynamic getContext(OffscreenRenderingContextId contextId,
      [dynamic options]);

  ///  Creates an [ImageBitmap] object from the most recently rendered
  /// image of the [OffscreenCanvas].
  /// ImageBitmap OffscreenCanvas.transferToImageBitmap()
  external ImageBitmap transferToImageBitmap();

  ///  Creates a [Blob] object representing the image contained in the
  /// canvas.
  /// Promise<Blob> OffscreenCanvas.convertToBlob(options);
  external Promise<Blob> convertToBlob([ImageEncodeOptions? options]);
}

@JS()
class OffscreenCanvasRenderingContext2D
    with
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
  external Object commit();
  external OffscreenCanvas get canvas;

  external factory OffscreenCanvasRenderingContext2D();
}

///
///
///  The interface provides methods for registering custom elements
/// and querying registered elements. To get an instance of it, use
/// the [window.customElements] property.
@experimental
@JS()
class CustomElementRegistry {
  /// Defines a new custom element.
  /// customElements.define(name, constructor, options);
  ///
  external Object define(String name, CustomElementConstructor constructor,
      [ElementDefinitionOptions? options]);

  ///  Returns the constructor for the named custom element, or
  /// [undefined] if the custom element is not defined.
  /// constructor = customElements.get(name);
  ///
  @JS('get')
  external dynamic mGet(String name);

  ///  Returns an empty [promise] that resolves when a custom element
  /// becomes defined with the given name. If such a custom element is
  /// already defined, the returned promise is immediately fulfilled.
  /// customElements.whenDefined(name): Promise<CustomElementConstructor>;
  external Promise<CustomElementConstructor> whenDefined(String name);

  ///  Upgrades a custom element directly, even before it is connected
  /// to its shadow root.
  /// customElements.upgrade(root);
  ///
  external Object upgrade(Node root);

  external factory CustomElementRegistry();
}

@anonymous
@JS()
class ElementDefinitionOptions {
  @JS('extends')
  external String get mExtends;
  external set mExtends(String newValue);

  external factory ElementDefinitionOptions({String mExtends});
}

@JS()
class ElementInternals with ARIAMixin {
  external ShadowRoot? get shadowRoot;
  external Object setFormValue(dynamic value, [dynamic state]);
  external HTMLFormElement? get form;
  external Object setValidity(
      [ValidityStateFlags? flags, String? message, HTMLElement? anchor]);
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external bool checkValidity();
  external bool reportValidity();
  external NodeList get labels;
  external CustomStateSet get states;

  external factory ElementInternals();
}

@anonymous
@JS()
class ValidityStateFlags {
  external bool get valueMissing;
  external set valueMissing(bool newValue);
  external bool get typeMismatch;
  external set typeMismatch(bool newValue);
  external bool get patternMismatch;
  external set patternMismatch(bool newValue);
  external bool get tooLong;
  external set tooLong(bool newValue);
  external bool get tooShort;
  external set tooShort(bool newValue);
  external bool get rangeUnderflow;
  external set rangeUnderflow(bool newValue);
  external bool get rangeOverflow;
  external set rangeOverflow(bool newValue);
  external bool get stepMismatch;
  external set stepMismatch(bool newValue);
  external bool get badInput;
  external set badInput(bool newValue);
  external bool get customError;
  external set customError(bool newValue);

  external factory ValidityStateFlags(
      {bool valueMissing = false,
      bool typeMismatch = false,
      bool patternMismatch = false,
      bool tooLong = false,
      bool tooShort = false,
      bool rangeUnderflow = false,
      bool rangeOverflow = false,
      bool stepMismatch = false,
      bool badInput = false,
      bool customError = false});
}

@anonymous
@JS()
class FocusOptions {
  external bool get preventScroll;
  external set preventScroll(bool newValue);

  external factory FocusOptions({bool preventScroll = false});
}

@JS()
mixin ElementContentEditable {
  external String get contentEditable;
  external set contentEditable(String newValue);
  external String get enterKeyHint;
  external set enterKeyHint(String newValue);
  external bool get isContentEditable;
  external String get inputMode;
  external set inputMode(String newValue);
}

///
///
///  The [DataTransfer] object is used to hold the data that is being
/// dragged during a drag and drop operation. It may hold one or more
/// data items, each of one or more data types. For more information
/// about drag and drop, see HTML Drag and Drop API.
///
///  This object is available from the [dataTransfer] property of all
/// [drag events].
@JS()
class DataTransfer {
  external factory DataTransfer();
  external String get dropEffect;
  external set dropEffect(String newValue);
  external String get effectAllowed;
  external set effectAllowed(String newValue);
  external DataTransferItemList get items;
  external Object setDragImage(Element image, int x, int y);
  external Iterable<String> get types;
  external String getData(String format);
  external Object setData(String format, String data);
  external Object clearData([String? format]);
  external FileList get files;
}

///
///
///  The [DataTransferItemList] object is a list of
/// [DataTransferItem] objects representing items being dragged.
/// During a drag operation, each [DragEvent] has a [dataTransfer]
/// property and that property is a .
///
/// This interface has no constructor.
@JS()
class DataTransferItemList {
  /// An [unsigned long] that is the number of drag items in the list.
  external int get length;

  ///  Adds an item (either a [File] object or a [string]) to the drag
  /// item list and returns a [DataTransferItem] object for the new
  /// item.
  /// DataTransferItem = DataTransferItemList.add(data, type);
  /// DataTransferItem = DataTransferItemList.add(file);
  ///
  /// This example shows the use of the add() method.
  ///
  /// HTML
  ///
  /// <div>
  ///  <p id="source" ondragstart="dragstart_handler(event);" ondragend="dragend_handler(event);" draggable="true">
  ///  Select this element, drag it to the Drop Zone and then release the selection to move the element.</p>
  /// </div>
  /// <div id="target" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">Drop Zone</div>
  ///
  /// CSS
  ///
  /// div {
  ///  margin: 0em;
  ///  padding: 2em;
  /// }
  /// #source {
  ///  color: blue;
  ///  border: 1px solid black;
  /// }
  /// #target {
  ///  border: 1px solid black;
  /// }
  ///
  /// Javascript
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
  ///  for (var i = 0; i < dataList.length; i++) {
  ///   dataList.remove(i);
  ///  }
  ///  // Clear any remaining drag data
  ///  dataList.clear();
  /// }
  /// Result
  ///
  /// Result link
  external DataTransferItem? add([String? data, String type]);

  /// Removes the drag item from the list at the given index.
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
  ///  for (var i = 0; i < dataList.length; i++) {
  ///   dataList.remove(i);
  ///  }
  ///  // Clear any remaining drag data
  ///  dataList.clear();
  /// }
  /// ```
  ///
  external Object remove(int index);

  /// Removes all of the drag items from the list.
  /// DataTransferItemList.clear();
  ///
  /// This example shows the use of the clear() method.
  ///
  /// HTML
  ///
  ///  <div>
  ///   <p id="source" ondragstart="dragstart_handler(event);" ondragend="dragend_handler(event);" draggable="true">
  ///    Select this element, drag it to the Drop Zone and then release the selection to move the element.</p>
  ///  </div>
  ///  <div id="target" ondrop="drop_handler(event);" ondragover="dragover_handler(event);">Drop Zone</div>
  ///
  /// CSS
  ///
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
  ///  for (var i = 0; i < dataList.length; i++) {
  ///   dataList.remove(i);
  ///  }
  ///  // Clear any remaining drag data
  ///  dataList.clear();
  /// }
  ///
  /// Result
  ///
  /// Result link
  external Object clear();

  external factory DataTransferItemList();
}

///
///
///  The [DataTransferItem] object represents one drag data item.
/// During a drag operation, each [drag event] has a [dataTransfer]
/// property which contains a [list] of drag data items. Each item in
/// the list is a object.
///
/// This interface has no constructor.
@JS()
class DataTransferItem {
  /// The kind of drag data item, [string] or [file].
  external String get kind;

  /// The drag data item's type, typically a MIME type.
  external String get type;

  ///  Invokes the specified callback with the drag data item string as
  /// its argument.
  /// dataTransferItem.getAsString(callback);
  ///
  /// This example shows the use of the getAsString() method as an inline
  ///   function in a drop event handler.
  ///
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
  external Object getAsString(FunctionStringCallback? callback);

  ///  Returns the [File] object associated with the drag data item (or
  /// null if the drag item is not a file).
  /// File = DataTransferItem.getAsFile();
  ///
  /// This example shows the use of the getAsFile() method in a
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
  external File? getAsFile();
  external FileSystemEntry? webkitGetAsEntry();
  external Promise<FileSystemHandle> getAsFileSystemHandle();

  external factory DataTransferItem();
}

///
///
///  The interface is a [DOM event] that represents a drag and drop
/// interaction. The user initiates a drag by placing a pointer
/// device (such as a mouse) on the touch surface and then dragging
/// the pointer to a new location (such as another DOM element).
/// Applications are free to interpret a drag and drop interaction in
/// an application-specific way.
///
///  This interface inherits properties from [MouseEvent] and
/// [Event].
@JS()
class DragEvent extends MouseEvent {
  external factory DragEvent({String type, DragEventInit? eventInitDict});

  /// The data that is transferred during a drag and drop interaction.
  external DataTransfer? get dataTransfer;
}

@anonymous
@JS()
class DragEventInit extends MouseEventInit {
  external DataTransfer? get dataTransfer;
  external set dataTransfer(DataTransfer? newValue);

  external factory DragEventInit({DataTransfer? dataTransfer});
}

///
///
///  The interface represents a window containing a DOM document; the
/// [document] property points to the DOM document loaded in that
/// window. A window for a given document can be obtained using the
/// [document.defaultView] property.
///
///  A global variable, [window], representing the window in which
/// the script is running, is exposed to JavaScript code.
///
///  The interface is home to a variety of functions, namespaces,
/// objects, and constructors which are not necessarily directly
/// associated with the concept of a user interface window. However,
/// the interface is a suitable place to include these items that
/// need to be globally available. Many of these are documented in
/// the JavaScript Reference and the DOM Reference.
///
///  In a tabbed browser, each tab is represented by its own object;
/// the global [window] seen by JavaScript code running within a
/// given tab always represents the tab in which the code is running.
/// That said, even in a tabbed browser, some properties and methods
/// still apply to the overall window that contains the tab, such as
/// [resizeTo()] and [innerHeight]. Generally, anything that can't
/// reasonably pertain to a tab pertains to the window instead.
///
///
@JS()
class Window extends EventTarget
    with
        GlobalEventHandlers,
        WindowEventHandlers,
        WindowOrWorkerGlobalScope,
        AnimationFrameProvider,
        WindowSessionStorage,
        WindowLocalStorage {
  /// Returns a reference to the current window.
  external Window get window;

  /// Returns an object reference to the window object itself.
  external Window get self;

  /// Returns a reference to the document that the window contains.
  external Document get document;

  /// Gets/sets the name of the window.
  external String get name;
  external set name(String newValue);

  /// Gets/sets the location, or current URL, of the window object.
  external Location get location;

  /// Returns a reference to the history object.
  external History get history;

  ///  Returns a reference to the [CustomElementRegistry] object, which
  /// can be used to register new custom elements and get information
  /// about previously registered custom elements.
  external CustomElementRegistry get customElements;

  ///  Returns the locationbar object, whose visibility can be toggled
  /// in the window.
  external BarProp get locationbar;

  ///  Returns the menubar object, whose visibility can be toggled in
  /// the window.
  external BarProp get menubar;

  ///  Returns the personalbar object, whose visibility can be toggled
  /// in the window.
  external BarProp get personalbar;

  ///  Returns the scrollbars object, whose visibility can be toggled
  /// in the window.
  external BarProp get scrollbars;

  ///  Returns the statusbar object, whose visibility can be toggled in
  /// the window.
  external BarProp get statusbar;

  ///  Returns the toolbar object, whose visibility can be toggled in
  /// the window.
  external BarProp get toolbar;

  ///  Gets/sets the text in the statusbar at the bottom of the
  /// browser.
  @deprecated
  external String get status;
  external set status(String newValue);

  /// Closes the current window.
  /// window.close();
  external Object close();

  ///  This property indicates whether the current window is closed or
  /// not.
  external bool get closed;

  /// This method stops window loading.
  /// window.stop()
  ///
  /// window.stop();
  ///
  external Object stop();

  /// Sets focus on the current window.
  /// window.focus()
  ///
  /// if (clicked) { window.focus(); }
  ///
  external Object focus();

  /// Sets focus away from the window.
  /// window.blur()
  /// window.blur();
  external Object blur();

  /// Returns an array of the subframes in the current window.
  external Window get frames;

  ///  Returns the number of frames in the window. See also
  /// [window.frames].
  external int get length;

  ///  Returns a reference to the topmost window in the window
  /// hierarchy. This property is read only.
  external Window? get top;

  ///  Returns a reference to the window that opened this current
  /// window.
  external dynamic get opener;
  external set opener(dynamic newValue);

  ///  Returns a reference to the parent of the current window or
  /// subframe.
  external Window? get parent;

  ///  Returns the element in which the window is embedded, or null if
  /// the window is not embedded.
  external Element? get frameElement;

  /// Opens a new window.
  /// var window = window.open(url, windowName, [windowFeatures]);
  external Window? open(
      [String? url = '', String? target = '_blank', String? features = '']);

  /// Returns a reference to the navigator object.
  external Navigator get navigator;
  external bool get originAgentCluster;

  /// Displays an alert dialog.
  /// window.alert(message);
  /// window.alert("Hello world!");
  /// alert("Hello world!");
  ///
  /// Both produce:
  ///
  ///
  external Object alert([String? message]);

  ///  Displays a dialog with a message that the user needs to respond
  /// to.
  /// result = window.confirm(message);
  /// if (window.confirm("Do you really want to leave?")) {
  ///  window.open("exit.html", "Thanks for Visiting!");
  /// }
  /// Produces:
  ///
  external bool confirm([String? message = '']);

  /// Returns the text entered by the user in a prompt dialog.
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
  ///
  /// When the user clicks the OK button, text entered in the input field is returned. If the
  ///  user clicks OK without entering any text, an empty string is returned. If the user
  ///  clicks the Cancel button, this function returns null.
  ///
  /// The above prompt appears as follows (in Chrome on OS X):
  ///
  ///
  external String? prompt([String? message = '', String? mDefault = '']);

  /// Opens the Print Dialog to print the current document.
  /// window.print()
  ///
  external Object print();

  ///  Provides a secure means for one window to send a string of data
  /// to another window, which need not be within the same domain as
  /// the first.
  /// targetWindow.postMessage(message, targetOrigin, [transfer]);
  ///  targetWindow
  ///  A reference to the window that will receive the message. Methods for obtaining such
  ///   a reference include:
  ///
  ///    window.open (to spawn a new window and then reference it),
  ///    window.opener (to reference the window that spawned this one),
  ///
  ///    HTMLIFrameElement.contentWindow (to reference an embedded
  ///     <iframe> from its parent window),
  ///    window.parent (to reference the parent window from within an
  ///     embedded <iframe>), or
  ///    window.frames + an index value (named or numeric).
  ///
  ///
  ///  message
  ///  Data to be sent to the other window. The data is serialized using
  ///   the structured clone
  ///   algorithm. This means you can pass a broad variety of data objects safely to the
  ///   destination window without having to serialize them yourself.
  ///  targetOrigin
  ///  Specifies what the origin of targetWindow must be for the event to be
  ///   dispatched, either as the literal string "*" (indicating no preference)
  ///   or as a URI. If at the time the event is scheduled to be dispatched the scheme,
  ///   hostname, or port of targetWindow's document does not match that provided
  ///   in targetOrigin, the event will not be dispatched; only if all three
  ///   match will the event be dispatched. This mechanism provides control over where
  ///   messages are sent; for example, if postMessage() was used to transmit a
  ///   password, it would be absolutely critical that this argument be a URI whose origin is
  ///   the same as the intended receiver of the message containing the password, to prevent
  ///   interception of the password by a malicious third party. Always provide a
  ///    specific targetOrigin, not *, if you know where the other
  ///    window's document should be located. Failing to provide a specific target discloses
  ///    the data you send to any interested malicious site.
  ///  transfer Optional
  ///  Is a sequence of Transferable objects that are transferred with the
  ///   message. The ownership of these objects is given to the destination side and they are
  ///   no longer usable on the sending side.
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
  external Object postMessage(dynamic message,
      [String? targetOrigin, Iterable<dynamic>? transfer = const []]);
  external CookieStore get cookieStore;
  external int requestIdleCallback(IdleRequestCallback callback,
      [IdleRequestOptions? options]);
  external Object cancelIdleCallback(int handle);
  external Selection? getSelection();
  external MediaQueryList matchMedia(String query);
  external Screen get screen;
  external Object moveTo(int x, int y);
  external Object moveBy(int x, int y);
  external Object resizeTo(int width, int height);
  external Object resizeBy(int x, int y);
  external int get innerWidth;
  external int get innerHeight;
  external double get scrollX;
  external double get pageXOffset;
  external double get scrollY;
  external double get pageYOffset;
  external Object scroll(
      [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]);
  external Object scrollTo(
      [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]);
  external Object scrollBy(
      [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]);
  external int get screenX;
  external int get screenLeft;
  external int get screenY;
  external int get screenTop;
  external int get outerWidth;
  external int get outerHeight;
  external double get devicePixelRatio;
  external EventHandlerNonNull? get ondeviceorientation;
  external set ondeviceorientation(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondeviceorientationabsolute;
  external set ondeviceorientationabsolute(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncompassneedscalibration;
  external set oncompassneedscalibration(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondevicemotion;
  external set ondevicemotion(EventHandlerNonNull? newValue);
  external VisualViewport get visualViewport;
  external dynamic get event;
  external PortalHost? get portalHost;
  external SpeechSynthesis get speechSynthesis;
  external Iterable<Promise<FileSystemFileHandle>> showOpenFilePicker(
      [OpenFilePickerOptions? options]);
  external Promise<FileSystemFileHandle> showSaveFilePicker(
      [SaveFilePickerOptions? options]);
  external Promise<FileSystemDirectoryHandle> showDirectoryPicker(
      [DirectoryPickerOptions? options]);
  external int get orientation;
  external EventHandlerNonNull? get onorientationchange;
  external set onorientationchange(EventHandlerNonNull? newValue);
  external Object navigate(SpatialNavigationDirection dir);
  external Object captureEvents();
  external Object releaseEvents();
  @JS('external')
  external External get mExternal;
  external CSSStyleDeclaration getComputedStyle(Element elt,
      [String? pseudoElt]);

  external factory Window();
}

@anonymous
@JS()
class WindowPostMessageOptions extends PostMessageOptions {
  external String get targetOrigin;
  external set targetOrigin(String newValue);

  external factory WindowPostMessageOptions({String targetOrigin = '/'});
}

@JS()
class BarProp {
  external bool get visible;

  external factory BarProp();
}

@JS()
enum ScrollRestoration { auto, manual }

///
///
///  The interface allows manipulation of the browser session
/// history, that is the pages visited in the tab or frame that the
/// current page is loaded in.
@JS()
class History {
  ///  Returns an [Integer] representing the number of elements in the
  /// session history, including the currently loaded page. For
  /// example, for a page loaded in a new tab this property returns
  /// [1].
  external int get length;

  ///  Allows web applications to explicitly set default scroll
  /// restoration behavior on history navigation. This property can be
  /// either [auto] or [manual].
  external ScrollRestoration get scrollRestoration;
  external set scrollRestoration(ScrollRestoration newValue);

  ///  Returns an [any] value representing the state at the top of the
  /// history stack. This is a way to look at the state without having
  /// to wait for a [popstate] event.
  external dynamic get state;

  ///  Asynchronously loads a page from the session history, identified
  /// by its relative location to the current page, for example [-1]
  /// for the previous page or [1] for the next page. If you specify an
  /// out-of-bounds value (for instance, specifying [-1] when there are
  /// no previously-visited pages in the session history), this method
  /// silently has no effect. Calling [go()] without parameters or a
  /// value of [0] reloads the current page. Internet Explorer lets you
  /// specify a string, instead of an integer, to go to a specific URL
  /// in the history list.
  /// history.go([delta])
  external Object go([int? delta = 0]);

  ///  This asynchronous method goes to the previous page in session
  /// history, the same action as when the user clicks the browser's
  /// Back button. Equivalent to [history.go(-1)].
  ///   Calling this method to go back beyond the first page in the
  /// session history has no effect and doesn't raise an exception.
  ///
  /// history.back()
  external Object back();

  ///  This asynchronous method goes to the next page in session
  /// history, the same action as when the user clicks the browser's
  /// Forward button; this is equivalent to [history.go(1)].
  ///   Calling this method to go forward beyond the most recent page
  /// in the session history has no effect and doesn't raise an
  /// exception.
  ///
  /// history.forward()
  external Object forward();

  ///  Pushes the given data onto the session history stack with the
  /// specified title (and, if provided, URL). The data is treated as
  /// opaque by the DOM; you may specify any JavaScript object that can
  /// be serialized. Note that all browsers but Safari currently ignore
  /// the title parameter. For more information, see Working with the
  /// History API.
  /// history.pushState(state, title [, url])
  external Object pushState(dynamic data, String unused, [String? url]);

  ///  Updates the most recent entry on the history stack to have the
  /// specified data, title, and, if provided, URL. The data is treated
  /// as opaque by the DOM; you may specify any JavaScript object that
  /// can be serialized. Note that all browsers but Safari currently
  /// ignore the title parameter. For more information, see Working
  /// with the History API.
  /// history.replaceState(stateObj, title, [url])
  external Object replaceState(dynamic data, String unused, [String? url]);

  external factory History();
}

///
///
///  The interface represents the location (URL) of the object it is
/// linked to. Changes done on it are reflected on the object it
/// relates to. Both the [Document] and [Window] interface have such
/// a linked , accessible via [Document.location] and
/// [Window.location] respectively.
@JS()
class Location {
  ///  Is a stringifier that returns a [USVString] containing the
  /// entire URL. If changed, the associated document navigates to the
  /// new page. It can be set from a different origin than the
  /// associated document.
  external String get href;
  external set href(String newValue);

  ///  Returns a [USVString] containing the canonical form of the
  /// origin of the specific location.
  external String get origin;

  ///  Is a [USVString] containing the protocol scheme of the URL,
  /// including the final [':'].
  external String get protocol;
  external set protocol(String newValue);

  ///  Is a [USVString] containing the host, that is the hostname, a
  /// [':'], and the port of the URL.
  external String get host;
  external set host(String newValue);

  /// Is a [USVString] containing the domain of the URL.
  external String get hostname;
  external set hostname(String newValue);

  /// Is a [USVString] containing the port number of the URL.
  external String get port;
  external set port(String newValue);

  ///  Is a [USVString] containing an initial ['/'] followed by the
  /// path of the URL, not including the query string or fragment.
  external String get pathname;
  external set pathname(String newValue);

  ///  Is a [USVString] containing a ['?'] followed by the parameters
  /// or "querystring" of the URL. Modern browsers provide
  /// URLSearchParams and URL.searchParams to make it easy to parse out
  /// the parameters from the querystring.
  external String get search;
  external set search(String newValue);

  ///  Is a [USVString] containing a ['#'] followed by the fragment
  /// identifier of the URL.
  external String get hash;
  external set hash(String newValue);

  /// Loads the resource at the URL provided in parameter.
  /// location.assign(url);
  ///
  /// // Navigate to the Location.reload article
  /// window.location.assign('https://developer.mozilla.org/en-US/docs/Web/API/Location/reload');
  external Object assign(String url);

  ///  Replaces the current resource with the one at the provided URL
  /// (redirects to the provided URL). The difference from the
  /// [assign()] method and setting the [href] property is that after
  /// using [replace()] the current page will not be saved in session
  /// [History], meaning the user won't be able to use the back button
  /// to navigate to it.
  /// object.replace(url);
  ///
  external Object replace(String url);

  /// Reloads the current URL, like the Refresh button.
  /// location.reload();
  ///
  external Object reload();

  ///  Is a static [DOMStringList] containing, in reverse order, the
  /// origins of all ancestor browsing contexts of the document
  /// associated with the given [Location] object.
  external DOMStringList get ancestorOrigins;

  external factory Location();
}

///
///
/// [PopStateEvent] is an event handler for the
///  [popstate] event on the window.
///
///  A [popstate] event is dispatched to the window every time the
/// active history
///   entry changes between two history entries for the same
/// document. If the history entry
///   being activated was created by a call to [history.pushState()]
/// or was
///  affected by a call to [history.replaceState()], the [popstate]
///   event's [state] property contains a copy of the history entry's
/// state object.
///
///  Note: Just calling [history.pushState()] or
///   [history.replaceState()] won't trigger a [popstate] event. The
///    [popstate] event is only triggered by doing a browser action
/// such as a
///    clicking on the back button (or calling [history.back()] in
/// JavaScript).
///    And the event is only triggered when the user navigates
/// between two history entries
///   for the same document.
///
///  Note: Browsers used to handle the [popstate] event
///    differently on page load, but now they behave the same.
/// Firefox never emitted a
///    popstate event on page load. Chrome did until version 34,
/// while Safari did until
///   version 10.0.
///
@JS()
class PopStateEvent extends Event {
  external factory PopStateEvent(
      {String type, PopStateEventInit? eventInitDict});
  external dynamic get state;
}

@anonymous
@JS()
class PopStateEventInit extends EventInit {
  external dynamic get state;
  external set state(dynamic newValue);

  external factory PopStateEventInit({dynamic state});
}

///
///
///  The [HashChangeEvent] interface represents events that fire when
/// the fragment identifier of the URL has changed.
///
///  The fragment identifier is the part of the URL that follows (and
/// includes) the [#] symbol.
///
///
@JS()
class HashChangeEvent extends Event {
  external factory HashChangeEvent(
      {String type, HashChangeEventInit? eventInitDict});

  /// The previous URL from which the window was navigated.
  external String get oldURL;

  /// The new URL to which the window is navigating.
  external String get newURL;
}

@anonymous
@JS()
class HashChangeEventInit extends EventInit {
  external String get oldURL;
  external set oldURL(String newValue);
  external String get newURL;
  external set newURL(String newValue);

  external factory HashChangeEventInit(
      {String oldURL = '', String newURL = ''});
}

///
///
///  The event object is available inside handler functions for the
/// [pageshow] and [pagehide] events, fired when a document is being
/// loaded or unloaded.
///
///
@JS()
class PageTransitionEvent extends Event {
  external factory PageTransitionEvent(
      {String type, PageTransitionEventInit? eventInitDict});

  /// Indicates if the document is loading from a cache.
  external bool get persisted;
}

@anonymous
@JS()
class PageTransitionEventInit extends EventInit {
  external bool get persisted;
  external set persisted(bool newValue);

  external factory PageTransitionEventInit({bool persisted = false});
}

///
///
///  The [beforeunload] event is fired when the window, the document
/// and its resources are about to be unloaded.
///
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
///
///   Bubbles
///   No
///
///
///   Cancelable
///   Yes
///
///
///   Target objects
///   defaultView
///
///
///   Interface
///   [Event]
///
///
///
@JS()
class BeforeUnloadEvent extends Event {
  @override
  external String get returnValue;
  @override
  external set returnValue(String newValue);

  external factory BeforeUnloadEvent();
}

///
///
///  The interface represents events providing information related to
/// errors in scripts or in files.
///
///
@JS()
class ErrorEvent extends Event {
  external factory ErrorEvent({String type, ErrorEventInit? eventInitDict});

  ///  Is a [DOMString] containing a human-readable error message
  /// describing the problem.
  external String get message;

  ///  Is a [DOMString] containing the name of the script file in which
  /// the error occurred.
  external String get filename;

  ///  Is an [integer] containing the line number of the script file on
  /// which the error occurred.
  external int get lineno;

  ///  Is an [integer] containing the column number of the script file
  /// on which the error occurred.
  external int get colno;

  /// Is a JavaScript [Object] that is concerned by the event.
  @experimental
  external dynamic get error;
}

@anonymous
@JS()
class ErrorEventInit extends EventInit {
  external String get message;
  external set message(String newValue);
  external String get filename;
  external set filename(String newValue);
  external int get lineno;
  external set lineno(int newValue);
  external int get colno;
  external set colno(int newValue);
  external dynamic get error;
  external set error(dynamic newValue);

  external factory ErrorEventInit(
      {String message = '',
      String filename = '',
      int lineno = 0,
      int colno = 0,
      dynamic error});
}

///
///
///  The interface represents events which are sent to the global
/// script context when JavaScript [Promise]s are rejected. These
/// events are particularly useful for telemetry and debugging
/// purposes.
///
///  For details on promise rejection events, see Promise rejection
/// events in Using Promises.
///
///
@JS()
class PromiseRejectionEvent extends Event {
  external factory PromiseRejectionEvent(
      {String type, PromiseRejectionEventInit eventInitDict});

  /// The JavaScript [Promise] that was rejected.
  external Promise<dynamic> get promise;

  ///  A value or [Object] indicating why the promise was rejected, as
  /// passed to [Promise.reject()].
  external dynamic get reason;
}

@anonymous
@JS()
class PromiseRejectionEventInit extends EventInit {
  external Promise<dynamic> get promise;
  external set promise(Promise<dynamic> newValue);
  external dynamic get reason;
  external set reason(dynamic newValue);

  external factory PromiseRejectionEventInit(
      {Promise<dynamic> promise, dynamic reason});
}

///
///
///  The mixin describes the event handlers common to several
/// interfaces like [HTMLElement], [Document], or [Window]. Each of
/// these interfaces can, of course, add more event handlers in
/// addition to the ones listed below.
///  Note: is a mixin and not an interface; you can't actually create
/// an object of type .
///
@JS()
mixin GlobalEventHandlers {
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onauxclick;
  external set onauxclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onblur;
  external set onblur(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncancel;
  external set oncancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncanplay;
  external set oncanplay(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncanplaythrough;
  external set oncanplaythrough(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclick;
  external set onclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncontextmenu;
  external set oncontextmenu(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncuechange;
  external set oncuechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondblclick;
  external set ondblclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondrag;
  external set ondrag(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondragend;
  external set ondragend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondragenter;
  external set ondragenter(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondragleave;
  external set ondragleave(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondragover;
  external set ondragover(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondragstart;
  external set ondragstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondrop;
  external set ondrop(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondurationchange;
  external set ondurationchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onemptied;
  external set onemptied(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onended;
  external set onended(EventHandlerNonNull? newValue);
  external OnErrorEventHandlerNonNull? get onerror;
  external set onerror(OnErrorEventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onfocus;
  external set onfocus(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onformdata;
  external set onformdata(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oninput;
  external set oninput(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oninvalid;
  external set oninvalid(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onkeydown;
  external set onkeydown(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onkeypress;
  external set onkeypress(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onkeyup;
  external set onkeyup(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onload;
  external set onload(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadeddata;
  external set onloadeddata(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadedmetadata;
  external set onloadedmetadata(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadstart;
  external set onloadstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmousedown;
  external set onmousedown(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmouseenter;
  external set onmouseenter(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmouseleave;
  external set onmouseleave(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmousemove;
  external set onmousemove(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmouseout;
  external set onmouseout(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmouseover;
  external set onmouseover(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmouseup;
  external set onmouseup(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpause;
  external set onpause(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onplay;
  external set onplay(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onplaying;
  external set onplaying(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onprogress;
  external set onprogress(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onratechange;
  external set onratechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onreset;
  external set onreset(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onresize;
  external set onresize(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onscroll;
  external set onscroll(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onseeked;
  external set onseeked(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onseeking;
  external set onseeking(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselect;
  external set onselect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onslotchange;
  external set onslotchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onstalled;
  external set onstalled(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsubmit;
  external set onsubmit(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsuspend;
  external set onsuspend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontimeupdate;
  external set ontimeupdate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontoggle;
  external set ontoggle(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onvolumechange;
  external set onvolumechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwaiting;
  external set onwaiting(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwebkitanimationend;
  external set onwebkitanimationend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwebkitanimationiteration;
  external set onwebkitanimationiteration(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwebkitanimationstart;
  external set onwebkitanimationstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwebkittransitionend;
  external set onwebkittransitionend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onwheel;
  external set onwheel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectstart;
  external set onselectstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectionchange;
  external set onselectionchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontransitionrun;
  external set ontransitionrun(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontransitionstart;
  external set ontransitionstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontransitionend;
  external set ontransitionend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontransitioncancel;
  external set ontransitioncancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontouchstart;
  external set ontouchstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontouchend;
  external set ontouchend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontouchmove;
  external set ontouchmove(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ontouchcancel;
  external set ontouchcancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onanimationstart;
  external set onanimationstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onanimationiteration;
  external set onanimationiteration(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onanimationend;
  external set onanimationend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onanimationcancel;
  external set onanimationcancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongotpointercapture;
  external set ongotpointercapture(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onlostpointercapture;
  external set onlostpointercapture(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerdown;
  external set onpointerdown(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointermove;
  external set onpointermove(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerrawupdate;
  external set onpointerrawupdate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerup;
  external set onpointerup(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointercancel;
  external set onpointercancel(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerover;
  external set onpointerover(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerout;
  external set onpointerout(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerenter;
  external set onpointerenter(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpointerleave;
  external set onpointerleave(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbeforexrselect;
  external set onbeforexrselect(EventHandlerNonNull? newValue);
}

///
///
///  The mixin describes the event handlers common to several
/// interfaces like [Window], or [HTMLBodyElement] and
/// [HTMLFrameSetElement]. Each of these interfaces can implement
/// additional specific event handlers.
///  Note: is a mixin and not an interface; you can't actually create
/// an object of type .
///
@JS()
mixin WindowEventHandlers {
  ///  Is an [event handler] representing the code to be called when
  /// the [afterprint] event is raised.
  external EventHandlerNonNull? get onafterprint;
  external set onafterprint(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [beforeprint] event is raised.
  external EventHandlerNonNull? get onbeforeprint;
  external set onbeforeprint(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [beforeunload] event is raised.
  external OnBeforeUnloadEventHandlerNonNull? get onbeforeunload;
  external set onbeforeunload(OnBeforeUnloadEventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [hashchange] event is raised.
  external EventHandlerNonNull? get onhashchange;
  external set onhashchange(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [languagechange] event is raised.
  @experimental
  external EventHandlerNonNull? get onlanguagechange;
  external set onlanguagechange(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [message] event is raised.
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [MessageError] event is raised.
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [offline] event is raised.
  external EventHandlerNonNull? get onoffline;
  external set onoffline(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [online] event is raised.
  external EventHandlerNonNull? get ononline;
  external set ononline(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [pagehide] event is raised.
  external EventHandlerNonNull? get onpagehide;
  external set onpagehide(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [pageshow] event is raised.
  external EventHandlerNonNull? get onpageshow;
  external set onpageshow(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [popstate] event is raised.
  external EventHandlerNonNull? get onpopstate;
  external set onpopstate(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [rejectionhandled] event is raised, indicating that a
  /// [Promise] was rejected and the rejection has been handled.
  external EventHandlerNonNull? get onrejectionhandled;
  external set onrejectionhandled(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [storage] event is raised.
  external EventHandlerNonNull? get onstorage;
  external set onstorage(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [unhandledrejection] event is raised, indicating that a
  /// [Promise] was rejected but the rejection was not handled.
  external EventHandlerNonNull? get onunhandledrejection;
  external set onunhandledrejection(EventHandlerNonNull? newValue);

  ///  Is an [event handler] representing the code to be called when
  /// the [unload] event is raised.
  external EventHandlerNonNull? get onunload;
  external set onunload(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onportalactivate;
  external set onportalactivate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongamepadconnected;
  external set ongamepadconnected(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongamepaddisconnected;
  external set ongamepaddisconnected(EventHandlerNonNull? newValue);
}

@JS()
mixin DocumentAndElementEventHandlers {
  external EventHandlerNonNull? get oncopy;
  external set oncopy(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncut;
  external set oncut(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpaste;
  external set onpaste(EventHandlerNonNull? newValue);
}

///
///
///  The mixin describes several features common to the [Window] and
/// [WorkerGlobalScope] interfaces. Each of these interfaces can, of
/// course, add more features in addition to the ones listed below.
///  Note: is a mixin and not an interface; you can't actually create
/// an object of type .
///
@JS()
mixin WindowOrWorkerGlobalScope {
  external String get origin;
  external bool get isSecureContext;
  external bool get crossOriginIsolated;

  ///  Creates a base-64 encoded ASCII string from a string of binary
  /// data.
  /// var encodedData = scope.btoa(stringToEncode);
  /// const encodedData = window.btoa('Hello, world'); // encode a string
  /// const decodedData = window.atob(encodedData); // decode the string
  ///
  external String btoa(String data);

  ///  Decodes a string of data which has been encoded using base-64
  /// encoding.
  /// var decodedData = scope.atob(encodedData);
  /// const encodedData = window.btoa('Hello, world'); // encode a string
  /// const decodedData = window.atob(encodedData); // decode the string
  external String atob(String data);

  /// Schedules a function to execute in a given amount of time.
  /// var timeoutID = scope.setTimeout(function[, delay, arg1, arg2, ...]);
  /// var timeoutID = scope.setTimeout(function[, delay]);
  /// var timeoutID = scope.setTimeout(code[, delay]);
  ///
  external int setTimeout(dynamic handler,
      [int? timeout = 0, dynamic arguments]);

  ///  Cancels the delayed execution set using
  /// [WindowOrWorkerGlobalScope.setTimeout()].
  /// scope.clearTimeout(timeoutID)
  ///
  /// Run the script below in the context of a web page and click on the page once. You'll
  ///  see a message popping up in a second. If you click the page multiple times in
  ///  one second, the alert only appears once.
  ///
  /// var alarm = {
  ///  remind: function(aMessage) {
  ///   alert(aMessage);
  ///   this.timeoutID = undefined;
  ///  },
  ///
  ///  setup: function() {
  ///   if (typeof this.timeoutID === 'number') {
  ///    this.cancel();
  ///   }
  ///
  ///   this.timeoutID = window.setTimeout(function(msg) {
  ///    this.remind(msg);
  ///   }.bind(this), 1000, 'Wake up!');
  ///  },
  ///
  ///  cancel: function() {
  ///   window.clearTimeout(this.timeoutID);
  ///  }
  /// };
  /// window.onclick = function() { alarm.setup(); };
  ///
  external Object clearTimeout([int? handle = 0]);

  ///  Schedules a function to execute every time a given number of
  /// milliseconds elapses.
  /// var intervalID = scope.setInterval(func, [delay, arg1, arg2, ...]);
  /// var intervalID = scope.setInterval(function[, delay]);
  /// var intervalID = scope.setInterval(code, [delay]);
  ///
  external int setInterval(dynamic handler,
      [int? timeout = 0, dynamic arguments]);

  ///  Cancels the repeated execution set using
  /// [WindowOrWorkerGlobalScope.setInterval()].
  /// scope.clearInterval(intervalID)
  ///
  /// See the setInterval()
  ///   examples.
  external Object clearInterval([int? handle = 0]);

  ///  Enqueues a microtask—a short function to be executed after
  /// execution of the JavaScript code completes and control isn't
  /// being returned to a JavaScript caller, but before handling
  /// callbacks and other tasks. This lets your code run without
  /// interfering with other, possibly higher priority, code, but
  /// before the browser runtime regains control, potentially depending
  /// upon the work you need to complete.
  /// scope.queueMicrotask(function);
  ///
  external Object queueMicrotask(VoidFunction callback);

  ///  Accepts a variety of different image sources, and returns a
  /// [Promise] which resolves to an [ImageBitmap]. Optionally the
  /// source is cropped to the rectangle of pixels originating at
  /// ([sx], [sy]) with width [sw], and height [sh].
  /// const imageBitmapPromise = createImageBitmap(image[, options]);
  /// const imageBitmapPromise = createImageBitmap(image, sx, sy, sw, sh[, options]);
  external Promise<ImageBitmap> createImageBitmap(dynamic image,
      [int? sx, int sy, int sw, int sh, ImageBitmapOptions? options]);
  external Scheduler get scheduler;
  external TrustedTypePolicyFactory get trustedTypes;
  external Performance get performance;
  external CacheStorage get caches;
  external Promise<Response> fetch(dynamic input, [RequestInit? init]);
  external Crypto get crypto;
  external IDBFactory get indexedDB;
  external Iterable<String> get originPolicyIds;
}

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
  external factory DOMParser();

  ///  Parses a string using either the HTML parser or the XML parser,
  /// returning an [HTMLDocument] or [XMLDocument].
  /// const doc = domparser.parseFromString(string, mimeType)
  external Document parseFromString(String string, DOMParserSupportedType type);
}

@JS()
enum DOMParserSupportedType {
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

///
///
///  The [Navigator] interface represents the state and the identity
/// of the user agent. It allows scripts to query it and to register
/// themselves to carry on some activities.
///
///  A object can be retrieved using the read-only [window.navigator]
/// property.
@JS()
class Navigator
    with
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
  external Geolocation get geolocation;
  external MediaCapabilities get mediaCapabilities;
  external Permissions get permissions;
  external MediaSession get mediaSession;
  external Promise<Object> share([ShareData? data]);
  external Scheduling get scheduling;
  external ContactsManager get contacts;
  external WakeLock get wakeLock;
  external HID get hid;
  external Clipboard get clipboard;
  external Presentation get presentation;
  external CredentialsContainer get credentials;
  external Bluetooth get bluetooth;
  external dynamic get keyboard;
  external ServiceWorkerContainer get serviceWorker;
  external int get maxTouchPoints;
  external Promise<Object> setClientBadge([int? contents]);
  external Promise<Object> clearClientBadge();
  external MediaDevices get mediaDevices;
  external Object getUserMedia(
      MediaStreamConstraints constraints,
      NavigatorUserMediaSuccessCallback successCallback,
      NavigatorUserMediaErrorCallback errorCallback);
  external XRSystem get xr;
  external Iterable<Promise<RelatedApplication>> getInstalledRelatedApps();
  external Serial get serial;
  external bool vibrate(dynamic pattern);
  external Iterable<Gamepad> getGamepads();
  external DevicePosture get devicePosture;
  external bool sendBeacon(String url, [dynamic data]);
  external USB get usb;
  external Promise<BatteryManager> getBattery();
  external Promise<MIDIAccess> requestMIDIAccess([MIDIOptions? options]);
  external Promise<MediaKeySystemAccess> requestMediaKeySystemAccess(
      String keySystem,
      Iterable<MediaKeySystemConfiguration> supportedConfigurations);

  external factory Navigator();
}

///
///
///  The [NavigatorID] interface contains methods and properties
/// related to the identity of the browser.
///
///  There is no object of type , but other interfaces, like
/// [Navigator] or [WorkerNavigator], implement it.
@JS()
mixin NavigatorID {
  ///  Always returns "[Mozilla]", in any browser. This property is
  /// kept only for compatibility purposes.
  @deprecated
  external String get appCodeName;

  ///  Always returns "[Netscape]", in any browser. This property is
  /// kept only for compatibility purposes.
  @deprecated
  external String get appName;

  ///  Returns either "[4.0]" or a string representing version
  /// information about the browser. Do not rely on this property to
  /// return a useful value.
  @deprecated
  external String get appVersion;

  ///  Returns either the empty string or a string representing the
  /// platform the browser is running on. Do not rely on this property
  /// to return a useful value.
  @deprecated
  external String get platform;

  ///  Always returns "[Gecko]", in any browser. This property is kept
  /// only for compatibility purposes.
  @deprecated
  external String get product;
  external String get productSub;

  /// Returns the user-agent string for the current browser.
  external String get userAgent;
  external String get vendor;
  external String get vendorSub;
  external bool taintEnabled();
  external String get oscpu;
}

///
///
///  [NavigatorLanguage] contains methods and properties related to
/// the language of the navigator.
///
///  There is no object of type , but other interfaces, like
/// [Navigator] or [WorkerNavigator], implement it.
@JS()
mixin NavigatorLanguage {
  ///  Returns a [DOMString] representing the preferred language of the
  /// user, usually the language of the browser UI. The [null] value is
  /// returned when this is unknown.
  external String get language;

  ///  Returns an array of [DOMString] representing the languages known
  /// to the user, by order of preference.
  external Iterable<String> get languages;
}

///
///
///  The [NavigatorOnLine] interface contains methods and properties
/// related to the connectivity status of the browser.
///
///  There is no object of type , but other interfaces, like
/// [Navigator] or [WorkerNavigator], implement it.
@JS()
mixin NavigatorOnLine {
  ///  Returns a [Boolean] indicating whether the browser is working
  /// online.
  external bool get onLine;
}

@JS()
mixin NavigatorContentUtils {
  external Object registerProtocolHandler(String scheme, String url);
  external Object unregisterProtocolHandler(String scheme, String url);
}

@JS()
mixin NavigatorCookies {
  external bool get cookieEnabled;
}

///
///
///  The [ImageBitmap] interface represents a bitmap image which can
/// be drawn to a [<canvas>] without undue latency. It can be created
/// from a variety of source objects using the [createImageBitmap()]
/// factory method. provides an asynchronous and resource efficient
/// pathway to prepare textures for rendering in WebGL.
@JS()
class ImageBitmap {
  ///  Is an [unsigned] [long] representing the width, in CSS pixels,
  /// of the [ImageData].
  external int get width;

  ///  Is an [unsigned] [long] representing the height, in CSS pixels,
  /// of the [ImageData].
  external int get height;

  ///  Disposes of all graphical resources associated with an
  /// [ImageBitmap].
  ///
  /// void ImageBitmap.close()
  external Object close();

  external factory ImageBitmap();
}

@JS()
enum ImageOrientation { none, flipY }

@JS()
enum PremultiplyAlpha {
  none,
  premultiply,
  @JS('default')
  valueDefault
}

@JS()
enum ColorSpaceConversion {
  none,
  @JS('default')
  valueDefault
}

@JS()
enum ResizeQuality { pixelated, low, medium, high }

@anonymous
@JS()
class ImageBitmapOptions {
  external ImageOrientation get imageOrientation;
  external set imageOrientation(ImageOrientation newValue);
  external PremultiplyAlpha get premultiplyAlpha;
  external set premultiplyAlpha(PremultiplyAlpha newValue);
  external ColorSpaceConversion get colorSpaceConversion;
  external set colorSpaceConversion(ColorSpaceConversion newValue);
  external int get resizeWidth;
  external set resizeWidth(int newValue);
  external int get resizeHeight;
  external set resizeHeight(int newValue);
  external ResizeQuality get resizeQuality;
  external set resizeQuality(ResizeQuality newValue);

  external factory ImageBitmapOptions(
      {ImageOrientation imageOrientation = ImageOrientation.none,
      PremultiplyAlpha premultiplyAlpha = PremultiplyAlpha.valueDefault,
      ColorSpaceConversion colorSpaceConversion =
          ColorSpaceConversion.valueDefault,
      int resizeWidth,
      int resizeHeight,
      ResizeQuality resizeQuality = ResizeQuality.low});
}

@JS()
mixin AnimationFrameProvider {
  external int requestAnimationFrame(FrameRequestCallback callback);
  external Object cancelAnimationFrame(int handle);
}

///
///
///  The [MessageEvent] interface represents a message received by a
/// target object.
///
/// This is used to represent messages in:
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
///  The action triggered by this event is defined in a function set
/// as the event handler for the relevant [message] event (e.g. using
/// an [onmessage] handler as listed above).
///  Note: This feature is available in Web Workers
///
///
///
///
@JS()
class MessageEvent extends Event {
  external factory MessageEvent({String type, MessageEventInit? eventInitDict});

  /// The data sent by the message emitter.
  external dynamic get data;

  /// A [USVString] representing the origin of the message emitter.
  external String get origin;

  /// A [DOMString] representing a unique ID for the event.
  external String get lastEventId;

  ///  A [MessageEventSource] (which can be a [WindowProxy],
  /// [MessagePort], or [ServiceWorker] object) representing the
  /// message emitter.
  external dynamic get source;

  ///  An array of [MessagePort] objects representing the ports
  /// associated with the channel the message is being sent through
  /// (where appropriate, e.g. in channel messaging or when sending a
  /// message to a shared worker).
  external Iterable<MessagePort> get ports;

  ///  Initializes a message event. Do not use this anymore — use the
  /// [MessageEvent()] constructor instead.
  @deprecated
  external Object initMessageEvent(String type,
      [bool? bubbles = false,
      bool? cancelable = false,
      dynamic data,
      String? origin = '',
      String? lastEventId = '',
      dynamic source,
      Iterable<MessagePort>? ports = const []]);
}

@anonymous
@JS()
class MessageEventInit extends EventInit {
  external dynamic get data;
  external set data(dynamic newValue);
  external String get origin;
  external set origin(String newValue);
  external String get lastEventId;
  external set lastEventId(String newValue);
  external dynamic get source;
  external set source(dynamic newValue);
  external Iterable<MessagePort> get ports;
  external set ports(Iterable<MessagePort> newValue);

  external factory MessageEventInit(
      {dynamic data,
      String origin = '',
      String lastEventId = '',
      dynamic source,
      Iterable<MessagePort> ports = const []});
}

///
///
///  The interface is web content's interface to server-sent events.
/// An instance opens a persistent connection to an HTTP server,
/// which sends events in [text/event-stream] format. The connection
/// remains open until closed by calling [EventSource.close()].
///
///  Once the connection is opened, incoming messages from the server
/// are delivered to your code in the form of events. If there is an
/// event field in the incoming message, the triggered event is the
/// same as the event field value. If no event field is present, then
/// a generic [message] event is fired.
///
///  Unlike WebSockets, server-sent events are unidirectional; that
/// is, data messages are delivered in one direction, from the server
/// to the client (such as a user's web browser). That makes them an
/// excellent choice when there's no need to send data from the
/// client to the server in message form. For example, is a useful
/// approach for handling things like social media status updates,
/// news feeds, or delivering data into a client-side storage
/// mechanism like IndexedDB or web storage.
///  When not used over HTTP/2, SSE suffers from a limitation to the
/// maximum number of open connections, which can be specially
/// painful when opening various tabs as the limit is per browser and
/// set to a very low number (6). The issue has been marked as "Won't
/// fix" in Chrome and Firefox. This limit is per browser + domain,
/// so that means that you can open 6 SSE connections across all of
/// the tabs to [www.example1.com] and another 6 SSE connections to
/// [www.example2.com.] (from Stackoverflow). When using HTTP/2, the
/// maximum number of simultaneous HTTP streams is negotiated between
/// the server and the client (defaults to 100).
///
@JS()
class EventSource extends EventTarget {
  external factory EventSource(
      {String url, EventSourceInit? eventSourceInitDict});

  /// A [DOMString] representing the URL of the source.
  external String get url;

  ///  A [Boolean] indicating whether the [EventSource] object was
  /// instantiated with cross-origin (CORS) credentials set ([true]),
  /// or not ([false], the default).
  external bool get withCredentials;
  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSED;

  ///  A number representing the state of the connection. Possible
  /// values are [CONNECTING] ([0]), [OPEN] ([1]), or [CLOSED] ([2]).
  external int get readyState;
  external EventHandlerNonNull? get onopen;
  external set onopen(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  ///  Closes the connection, if any, and sets the [readyState]
  /// attribute to [CLOSED]. If the connection is already closed, the
  /// method does nothing.
  /// eventSource.close();
  external Object close();
}

@anonymous
@JS()
class EventSourceInit {
  external bool get withCredentials;
  external set withCredentials(bool newValue);

  external factory EventSourceInit({bool withCredentials = false});
}

@JS()
enum BinaryType { blob, arraybuffer }

///
///
///  The object provides the API for creating and managing a
/// WebSocket connection to a server, as well as for sending and
/// receiving data on the connection.
///
/// To construct a , use the [WebSocket()] constructor.
///  Note: This feature is available in Web Workers
///
@JS()
class WebSocket extends EventTarget {
  external factory WebSocket({String url, dynamic protocols = const []});

  /// The absolute URL of the WebSocket.
  external String get url;
  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSING;
  external static int get CLOSED;

  /// The current state of the connection.
  external int get readyState;

  /// The number of bytes of queued data.
  external int get bufferedAmount;

  /// An event listener to be called when the connection is opened.
  external EventHandlerNonNull? get onopen;
  external set onopen(EventHandlerNonNull? newValue);

  /// An event listener to be called when an error occurs.
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  /// An event listener to be called when the connection is closed.
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);

  /// The extensions selected by the server.
  external String get extensions;

  /// The sub-protocol selected by the server.
  external String get protocol;
  external Object close([int? code, String? reason]);

  ///  An event listener to be called when a message is received from
  /// the server.
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  /// The binary data type used by the connection.
  external BinaryType get binaryType;
  external set binaryType(BinaryType newValue);
  external Object send(String data);
}

///
///
///  A is sent to clients using WebSockets when the connection is
/// closed. This is delivered to the listener indicated by the
/// [WebSocket] object's [onclose] attribute.
@JS()
class CloseEvent extends Event {
  external factory CloseEvent({String type, CloseEventInit? eventInitDict});

  ///  Returns a [Boolean] that Indicates whether or not the connection
  /// was cleanly closed.
  external bool get wasClean;

  ///  Returns an [unsigned short] containing the close code sent by
  /// the server. The following values are permitted status codes. The
  /// following definitions are sourced from the IANA website [Ref].
  /// Note that the 1xxx codes are only WebSocket-internal and not for
  /// the same meaning by the transported data (like when the
  /// application-layer protocol is invalid). The only permitted codes
  /// to be specified in Firefox are 1000 and 3000 to 4999 [Source,
  /// Bug].
  ///
  ///
  ///
  ///   Status code
  ///   Name
  ///   Description
  ///
  ///
  ///   [0]–[999]
  ///
  ///   Reserved and not used.
  ///
  ///
  ///   [1000]
  ///   Normal Closure
  ///    Normal closure; the connection successfully completed whatever
  /// purpose for which it was created.
  ///
  ///
  ///   [1001]
  ///   Going Away
  ///    The endpoint is going away, either because of a server failure
  /// or because the browser is navigating away from the page that
  /// opened the connection.
  ///
  ///
  ///   [1002]
  ///   Protocol Error
  ///    The endpoint is terminating the connection due to a protocol
  /// error.
  ///
  ///
  ///   [1003]
  ///   Unsupported Data
  ///    The connection is being terminated because the endpoint
  /// received data of a type it cannot accept (for example, a
  /// text-only endpoint received binary data).
  ///
  ///
  ///   [1004]
  ///
  ///   Reserved. A meaning might be defined in the future.
  ///
  ///
  ///   [1005]
  ///   No Status Received
  ///    Reserved. Indicates that no status code was provided even
  /// though one was expected.
  ///
  ///
  ///   [1006]
  ///   Abnormal Closure
  ///    Reserved. Used to indicate that a connection was closed
  /// abnormally (that is, with no close frame being sent) when a
  /// status code is expected.
  ///
  ///
  ///   [1007]
  ///   Invalid frame payload data
  ///    The endpoint is terminating the connection because a message
  /// was received that contained inconsistent data (e.g., non-UTF-8
  /// data within a text message).
  ///
  ///
  ///   [1008]
  ///   Policy Violation
  ///    The endpoint is terminating the connection because it received
  /// a message that violates its policy. This is a generic status
  /// code, used when codes 1003 and 1009 are not suitable.
  ///
  ///
  ///   [1009]
  ///   Message too big
  ///    The endpoint is terminating the connection because a data
  /// frame was received that is too large.
  ///
  ///
  ///   [1010]
  ///   Missing Extension
  ///    The client is terminating the connection because it expected
  /// the server to negotiate one or more extension, but the server
  /// didn't.
  ///
  ///
  ///   [1011]
  ///   Internal Error
  ///    The server is terminating the connection because it
  /// encountered an unexpected condition that prevented it from
  /// fulfilling the request.
  ///
  ///
  ///   [1012]
  ///   Service Restart
  ///    The server is terminating the connection because it is
  /// restarting. [Ref]
  ///
  ///
  ///   [1013]
  ///   Try Again Later
  ///    The server is terminating the connection due to a temporary
  /// condition, e.g. it is overloaded and is casting off some of its
  /// clients. [Ref]
  ///
  ///
  ///   [1014]
  ///   Bad Gateway
  ///    The server was acting as a gateway or proxy and received an
  /// invalid response from the upstream server. This is similar to 502
  /// HTTP Status Code.
  ///
  ///
  ///   [1015]
  ///   TLS Handshake
  ///    Reserved. Indicates that the connection was closed due to a
  /// failure to perform a TLS handshake (e.g., the server certificate
  /// can't be verified).
  ///
  ///
  ///   [1016]–[1999]
  ///
  ///   Reserved for future use by the WebSocket standard.
  ///
  ///
  ///   [2000]–[2999]
  ///
  ///   Reserved for use by WebSocket extensions.
  ///
  ///
  ///   [3000]–[3999]
  ///
  ///    Available for use by libraries and frameworks. May not be used
  /// by applications. Available for registration at the IANA via
  /// first-come, first-serve.
  ///
  ///
  ///   [4000]–[4999]
  ///
  ///   Available for use by applications.
  ///
  ///
  ///
  ///
  external int get code;

  ///  Returns a [DOMString] indicating the reason the server closed
  /// the connection. This is specific to the particular server and
  /// sub-protocol.
  external String get reason;
}

@anonymous
@JS()
class CloseEventInit extends EventInit {
  external bool get wasClean;
  external set wasClean(bool newValue);
  external int get code;
  external set code(int newValue);
  external String get reason;
  external set reason(String newValue);

  external factory CloseEventInit(
      {bool wasClean = false, int code = 0, String reason = ''});
}

///
///
///  The interface of the Channel Messaging API allows us to create a
/// new message channel and send data through it via its two
/// [MessagePort] properties.
///  Note: This feature is available in Web Workers
///
@JS()
class MessageChannel {
  external factory MessageChannel();

  /// Returns port1 of the channel.
  external MessagePort get port1;

  /// Returns port2 of the channel.
  external MessagePort get port2;
}

///
///
///  The interface of the Channel Messaging API represents one of the
/// two ports of a [MessageChannel], allowing messages to be sent
/// from one port and listening out for them arriving at the other.
///  Note: This feature is available in Web Workers
///
@JS()
class MessagePort extends EventTarget {
  ///  Sends a message from the port, and optionally, transfers
  /// ownership of objects to other browsing contexts.
  /// port.postMessage(message, transferList);
  /// In the following code block, you can see a new channel being created using the
  ///  MessageChannel.MessageChannel constructor. When the
  ///  IFrame has loaded, we pass MessageChannel.port2 to the IFrame using
  ///  window.postMessage along with a message. The handleMessage
  ///  handler then responds to a message being sent back from the IFrame using
  ///  onmessage, putting it into a paragraph —
  ///  MessageChannel.port1 is listened to, to check when the message arrives.
  /// var channel = new MessageChannel();
  /// var para = document.querySelector('p');
  ///
  /// var ifr = document.querySelector('iframe');
  /// var otherWindow = ifr.contentWindow;
  ///
  /// ifr.addEventListener("load", iframeLoaded, false);
  ///
  /// function iframeLoaded() {
  ///  otherWindow.postMessage('Hello from the main page!', '*', [channel.port2]);
  /// }
  ///
  /// channel.port1.onmessage = handleMessage;
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  /// }
  ///
  /// For a full working example, see our channel
  ///   messaging basic demo on Github (run it live
  ///   too).
  external Object postMessage(dynamic message, Iterable<dynamic> transfer);

  ///  Starts the sending of messages queued on the port (only needed
  /// when using [EventTarget.addEventListener]; it is implied when
  /// using [MessagePort.onmessage].)
  /// port.start()
  /// In the following code block, you can see a handleMessage handler function,
  ///  run when a message is sent back to this document using onmessage:
  ///
  /// channel.port1.onmessage = handleMessage;
  /// function handleMessage(e) {
  ///  para.innerHTML = e.data;
  /// }
  ///
  /// Another option would be to do this using EventTarget.addEventListener,
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
  external Object start();

  /// Disconnects the port, so it is no longer active.
  /// port.close()
  /// In the following code block, you can see a handleMessage handler function,
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
  /// You could stop messages being sent at any time using
  ///
  /// channel.port1.close();
  external Object close();
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);

  external factory MessagePort();
}

@anonymous
@JS()
class PostMessageOptions {
  external Iterable<dynamic> get transfer;
  external set transfer(Iterable<dynamic> newValue);

  external factory PostMessageOptions({Iterable<dynamic> transfer = const []});
}

///
///
///  The [BroadcastChannel] interface represents a named channel that
/// any browsing context of a given origin can subscribe to. It
/// allows communication between different documents (in different
/// windows, tabs, frames or iframes) of the same origin. Messages
/// are broadcasted via a [message] event fired at all objects
/// listening to the channel.
///  Note: This feature is available in Web Workers
///
///
///
@experimental
@JS()
class BroadcastChannel extends EventTarget {
  external factory BroadcastChannel({String name});

  /// Returns a [DOMString], the name of the channel.
  external String get name;

  ///  Sends the message, of any type of object, to each
  /// [BroadcastChannel] object listening to the same channel.
  /// var str = channel.postMessage(object);
  ///
  external Object postMessage(dynamic message);

  ///  Closes the channel object, indicating it won't get any new
  /// messages, and allowing it to be, eventually, garbage collected.
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
  external Object close();
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
}

///
///
///  The [WorkerGlobalScope] interface of the Web Workers API is an
/// interface representing the scope of any worker. Workers have no
/// browsing context; this scope contains the information usually
/// conveyed by [Window] objects — in this case event handlers, the
/// console or the associated [WorkerNavigator] object. Each has its
/// own event loop.
///
///  This interface is usually specialized by each worker type:
/// [DedicatedWorkerGlobalScope] for dedicated workers,
/// [SharedWorkerGlobalScope] for shared workers, and
/// [ServiceWorkerGlobalScope] for ServiceWorker. The [self] property
/// returns the specialized scope for each context.
@JS()
class WorkerGlobalScope extends EventTarget
    with FontFaceSource, WindowOrWorkerGlobalScope {
  external WorkerGlobalScope get self;
  external WorkerLocation get location;
  external WorkerNavigator get navigator;
  external Object importScripts([String urls]);
  external OnErrorEventHandlerNonNull? get onerror;
  external set onerror(OnErrorEventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onlanguagechange;
  external set onlanguagechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onoffline;
  external set onoffline(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ononline;
  external set ononline(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onrejectionhandled;
  external set onrejectionhandled(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onunhandledrejection;
  external set onunhandledrejection(EventHandlerNonNull? newValue);

  external factory WorkerGlobalScope();
}

///
///
///  The object (the [Worker] global scope) is accessible through the
/// [self] keyword. Some additional global functions, namespaces
/// objects, and constructors, not typically associated with the
/// worker global scope, but available on it, are listed in the
/// JavaScript Reference. See also: Functions available to workers.
@JS()
class DedicatedWorkerGlobalScope extends WorkerGlobalScope
    with AnimationFrameProvider {
  ///  The name that the [Worker] was (optionally) given when it was
  /// created using the [Worker()] constructor. This is mainly useful
  /// for debugging purposes.
  external String get name;

  ///  Sends a message — which can consist of [any] JavaScript object —
  /// to the parent document that first spawned the worker.
  /// postMessage(aMessage, transferList);
  /// The following code snippet shows worker.js, in which an onmessage handler is used to handle messages from the main script. Inside the handler a calculation is done from which a result message is created; this is then sent back to the main thread using postMessage(workerResult);
  ///
  /// onmessage = function(e) {
  ///  console.log('Message received from main script');
  ///  var workerResult = 'Result: ' + (e.data[0] * e.data[1]);
  ///  console.log('Posting message back to main script');
  ///  postMessage(workerResult);
  /// }
  ///
  /// In the main script, onmessage would have to be called on a Worker object, whereas inside the worker script you just need onmessage because the worker is effectively the global scope (DedicatedWorkerGlobalScope).
  ///
  /// For a full example, see ourBasic dedicated worker example (run dedicated worker).
  /// Note: postMessage() can only send a single object at once. As seen above, if you want to pass multiple values you can send an array.
  ///
  external Object postMessage(dynamic message, Iterable<dynamic> transfer);

  ///  Discards any tasks queued in the [WorkerGlobalScope]'s event
  /// loop, effectively closing this particular scope.
  /// self.close();
  /// If you want to close your worker instance from inside the worker itself, you can call the following:
  ///
  /// close();
  ///
  /// close() and self.close() are effectively equivalent — both represent close() being called from inside the worker's inner scope.
  /// Note: There is also a way to stop the worker from the main thread: the Worker.terminate method.
  ///
  external Object close();
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onrtctransform;
  external set onrtctransform(EventHandlerNonNull? newValue);

  external factory DedicatedWorkerGlobalScope();
}

///
///
///  The object (the [SharedWorker] global scope) is accessible
/// through the [self] keyword. Some additional global functions,
/// namespaces objects, and constructors, not typically associated
/// with the worker global scope, but available on it, are listed in
/// the JavaScript Reference. See the complete list of functions
/// available to workers.
@JS()
class SharedWorkerGlobalScope extends WorkerGlobalScope {
  ///  The name that the [SharedWorker] was (optionally) given when it
  /// was created using the [SharedWorker()] constructor. This is
  /// mainly useful for debugging purposes.
  external String get name;

  ///  Discards any tasks queued in the [SharedWorkerGlobalScope]'s
  /// event loop, effectively closing this particular scope.
  /// self.close();
  /// If you want to close your worker instance from inside the worker itself, you can call the following:
  ///
  /// close();
  ///
  /// close() and self.close() are effectively equivalent — both represent close() being called from inside the worker's inner scope.
  /// Note: There is also a way to stop the worker from the main thread: the Worker.terminate method.
  ///
  external Object close();
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);

  external factory SharedWorkerGlobalScope();
}

@JS()
mixin AbstractWorker {
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
}

///
///
///  The interface of the Web Workers API represents a background
/// task that can be created via script, which can send messages back
/// to its creator. Creating a worker is done by calling the
/// [Worker("path/to/worker/script")] constructor.
///
///  Workers may themselves spawn new workers, as long as those
/// workers are hosted at the same origin as the parent page. (Note:
/// nested workers are not yet implemented in WebKit).
///
///  Not all interfaces and functions are available to scripts inside
/// a . Workers may use [XMLHttpRequest] for network communication,
/// but its [responseXML] and [channel] attributes are always [null].
/// ([fetch] is also available, with no such restrictions.)
@JS()
class Worker extends EventTarget with AbstractWorker {
  external factory Worker({String scriptURL, WorkerOptions? options});

  ///  Immediately terminates the worker. This does not let worker
  /// finish its operations; it is halted at once. [ServiceWorker]
  /// instances do not support this method.
  /// myWorker.terminate();
  /// The following code snippet shows creation of a Worker object using the Worker() constructor, which is then immediately terminated.
  ///
  /// var myWorker = new Worker('worker.js');
  ///
  /// myWorker.terminate();
  ///
  external Object terminate();

  ///  Sends a message — consisting of any JavaScript object — to the
  /// worker's inner scope.
  /// worker.postMessage(message, [transfer]);
  /// The following code snippet shows the creation of a Worker object using the Worker() constructor. When either of two form inputs (first and second) have their values changed, change events invoke postMessage() to send the value of both inputs to the current worker.
  ///
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
  /// For a full example, see our simple worker example (run example).
  /// Note: postMessage() can only send a single object at once. As seen above, if you want to pass multiple values you can send an array.
  ///
  external Object postMessage(dynamic message, Iterable<dynamic> transfer);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
class WorkerOptions {
  external WorkerType get type;
  external set type(WorkerType newValue);
  external RequestCredentials get credentials;
  external set credentials(RequestCredentials newValue);
  external String get name;
  external set name(String newValue);

  external factory WorkerOptions(
      {WorkerType type = WorkerType.classic,
      RequestCredentials credentials = RequestCredentials.sameOrigin,
      String name = ''});
}

@JS()
enum WorkerType { classic, module }

///
///
///  The [SharedWorker] interface represents a specific kind of
/// worker that can be accessed from several browsing contexts, such
/// as several windows, iframes or even workers. They implement an
/// interface different than dedicated workers and have a different
/// global scope, [SharedWorkerGlobalScope].
///  Note: If SharedWorker can be accessed from several browsing
/// contexts, all those browsing contexts must share the exact same
/// origin (same protocol, host and port).
///
@JS()
class SharedWorker extends EventTarget with AbstractWorker {
  external factory SharedWorker({String scriptURL, dynamic options});

  ///  Returns a [MessagePort] object used to communicate with and
  /// control the shared worker.
  external MessagePort get port;
}

///
///
///  The mixin adds to the [Navigator] interface features which allow
/// Web content to determine how many logical processors the user has
/// available, in order to let content and Web apps optimize their
/// operations to best take advantage of the user's CPU.
///  Note: This feature is available in Web Workers
///  The number of logical processor cores is a way to measure the
/// number of threads which can effectively be run at once without
/// them having to share CPUs. Modern computers have multiple
/// physical cores in their CPU (two or four cores is typical), but
/// each physical core is also usually able to run more than one
/// thread at a time using advanced scheduling techniques. So a
/// four-core CPU may return 8. The browser may, however, choose to
/// reduce the number in order to represent more accurately the
/// number of [Worker]s that can run at once
@JS()
mixin NavigatorConcurrentHardware {
  ///  Returns the number of logical processors which may be available
  /// to the user agent. This value is always at least 1, and will be 1
  /// if the actual number of logical processors can't be determined.
  external int get hardwareConcurrency;
}

///
///
///  The [WorkerNavigator] interface represents a subset of the
/// [Navigator] interface allowed to be accessed from a [Worker].
/// Such an object is initialized for each worker and is available
/// via the [WorkerGlobalScope.navigator] property obtained by
/// calling [self.navigator].
@JS()
class WorkerNavigator
    with
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
  external MediaCapabilities get mediaCapabilities;
  external Permissions get permissions;
  external ServiceWorkerContainer get serviceWorker;
  external Serial get serial;
  external USB get usb;

  external factory WorkerNavigator();
}

///
///
///  The interface defines the absolute location of the script
/// executed by the [Worker]. Such an object is initialized for each
/// worker and is available via the [WorkerGlobalScope.location]
/// property obtained by calling [self.location].
///
///  This interface is only visible from inside a JavaScript script
/// executed in the context of a Web worker.
@JS()
class WorkerLocation {
  ///  Returns a [USVString] containing the serialized [URL] for the
  /// worker’s location.
  external String get href;

  /// Returns the worker’s .
  external String get origin;

  /// Returns the part of the worker’s location.
  external String get protocol;

  /// Returns the part of the worker’s location.
  external String get host;

  /// Returns the part of the worker’s location.
  external String get hostname;

  /// Returns the part of the worker’s location.
  external String get port;

  /// Returns the part of the worker’s location.
  external String get pathname;

  /// Returns the part of the worker’s location.
  external String get search;

  /// Returns the part of the worker’s location.
  external String get hash;

  external factory WorkerLocation();
}

@JS()
class WorkletGlobalScope {
  external factory WorkletGlobalScope();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface is a lightweight version of [Web Workers] and
/// gives developers access to low-level parts of the rendering
/// pipeline. With Worklets, you can run JavaScript and WebAssembly
/// code to do graphics rendering or audio processing where high
/// performance is required.
@JS()
class Worklet {
  /// Adds the script module at the given URL to the current worklet.
  /// addPromise = worklet.addModule(moduleURL);
  /// addPromise = worklet.addModule(moduleURL, options);
  ///
  @experimental
  external Promise<Object> addModule(String moduleURL,
      [WorkletOptions? options]);

  external factory Worklet();
}

@anonymous
@JS()
class WorkletOptions {
  external RequestCredentials get credentials;
  external set credentials(RequestCredentials newValue);

  external factory WorkletOptions(
      {RequestCredentials credentials = RequestCredentials.sameOrigin});
}

///
///
///  The interface of the Web Storage API provides access to a
/// particular domain's session or local storage. It allows, for
/// example, the addition, modification, or deletion of stored data
/// items.
///
///  To manipulate, for instance, the session storage for a domain, a
/// call to [Window.sessionStorage] is made; whereas for local
/// storage the call is made to [Window.localStorage].
@JS()
class Storage {
  ///  Returns an integer representing the number of data items stored
  /// in the [Storage] object.
  external int get length;

  ///  When passed a number [n], this method will return the name of
  /// the nth key in the storage.
  /// var aKeyName = storage.key(index);
  external String? key(int index);

  /// When passed a key name, will return that key's value.
  /// var aValue = storage.getItem(keyName);
  ///
  /// The following function retrieves three data items from local storage, then uses them to
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
  external String? getItem(String key);

  ///  When passed a key name and value, will add that key to the
  /// storage, or update that key's value if it already exists.
  /// storage.setItem(keyName, keyValue);
  /// The following function creates three data items inside local storage.
  ///
  /// function populateStorage() {
  ///  localStorage.setItem('bgcolor', 'red');
  ///  localStorage.setItem('font', 'Helvetica');
  ///  localStorage.setItem('image', 'myCat.png');
  /// }
  ///  Note: To see this used within a real world example, see our Web Storage Demo.
  ///
  external Object setItem(String key, String value);

  /// When passed a key name, will remove that key from the storage.
  /// storage.removeItem(keyName);
  /// The following function creates three data items inside local storage, then removes the
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
  ///
  /// function populateStorage() {
  ///  sessionStorage.setItem('bgcolor', 'red');
  ///  sessionStorage.setItem('font', 'Helvetica');
  ///  sessionStorage.setItem('image', 'myCat.png');
  ///
  ///  sessionStorage.removeItem('image');
  /// }
  ///  Note: To see this used within a real world example, see our Web Storage Demo.
  ///
  external Object removeItem(String key);

  /// When invoked, will empty all keys out of the storage.
  /// storage.clear();
  external Object clear();

  external factory Storage();
}

@JS()
mixin WindowSessionStorage {
  external Storage get sessionStorage;
}

@JS()
mixin WindowLocalStorage {
  external Storage get localStorage;
}

///
///
/// A is sent to a window when a storage area it
///   has access to is changed within the context of another
/// document.
///
///
@JS()
class StorageEvent extends Event {
  external factory StorageEvent({String type, StorageEventInit? eventInitDict});
  external String? get key;
  external String? get oldValue;
  external String? get newValue;
  external String get url;
  external Storage? get storageArea;
  external Object initStorageEvent(String type,
      [bool? bubbles = false,
      bool? cancelable = false,
      String? key,
      String? oldValue,
      String? newValue,
      String? url = '',
      Storage? storageArea]);
}

@anonymous
@JS()
class StorageEventInit extends EventInit {
  external String? get key;
  external set key(String? newValue);
  external String? get oldValue;
  external set oldValue(String? newValue);
  external String? get newValue;
  external set newValue(String? newValue);
  external String get url;
  external set url(String newValue);
  external Storage? get storageArea;
  external set storageArea(Storage? newValue);

  external factory StorageEventInit(
      {String? key,
      String? oldValue,
      String? newValue,
      String url = '',
      Storage? storageArea});
}

///
///   Draft
///   This page is not complete.
///
///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface provides methods to manipulate [<marquee>]
/// elements. It inherits properties and methods from the
/// [HTMLElement] interface.
///
///
@deprecated
@JS()
class HTMLMarqueeElement extends HTMLElement {
  external factory HTMLMarqueeElement();

  ///  Sets how the text is scrolled within the marquee. Possible
  /// values are [scroll], [slide] and [alternate]. If no value is
  /// specified, the default value is [scroll].
  external String get behavior;
  external set behavior(String newValue);

  ///  Sets the background color through color name or hexadecimal
  /// value.
  external String get bgColor;
  external set bgColor(String newValue);

  ///  Sets the direction of the scrolling within the marquee. Possible
  /// values are [left], [right], [up] and [down]. If no value is
  /// specified, the default value is [left].
  external String get direction;
  external set direction(String newValue);

  /// Sets the height in pixels or percentage value.
  external String get height;
  external set height(String newValue);

  /// Sets the horizontal margin.
  external int get hspace;
  external set hspace(int newValue);

  ///  Sets the number of times the marquee will scroll. If no value is
  /// specified, the default value is −1, which means the marquee will
  /// scroll continuously.
  external int get loop;
  external set loop(int newValue);

  ///  Sets the amount of scrolling at each interval in pixels. The
  /// default value is 6.
  external int get scrollAmount;
  external set scrollAmount(int newValue);

  ///  Sets the interval between each scroll movement in milliseconds.
  /// The default value is 85. Note that any value smaller than 60 is
  /// ignored and the value 60 is used instead, unless [trueSpeed] is
  /// [true].
  external int get scrollDelay;
  external set scrollDelay(int newValue);

  ///  By default, [scrollDelay] values lower than 60 are ignored. If
  /// is [true], then those values are not ignored.
  external bool get trueSpeed;
  external set trueSpeed(bool newValue);

  /// Sets the vertical margin.
  external int get vspace;
  external set vspace(int newValue);

  /// Sets the width in pixels or percentage value.
  external String get width;
  external set width(String newValue);

  /// Starts scrolling of the marquee.
  external Object start();

  /// Stops scrolling of the marquee.
  external Object stop();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface provides special properties (beyond those of the
/// regular [HTMLElement] interface they also inherit) for
/// manipulating [<frameset>] elements.
@deprecated
@JS()
class HTMLFrameSetElement extends HTMLElement with WindowEventHandlers {
  external factory HTMLFrameSetElement();

  ///  Is a [DOMString] structured as a comma-separated list specifying
  /// the width of each column inside a frameset.
  @deprecated
  external String get cols;
  external set cols(String newValue);

  ///  Is a [DOMString] structured as a comma-separated list specifying
  /// the height of each column inside a frameset.
  @deprecated
  external String get rows;
  external set rows(String newValue);
}

@JS()
class HTMLFrameElement extends HTMLElement {
  external factory HTMLFrameElement();
  external String get name;
  external set name(String newValue);
  external String get scrolling;
  external set scrolling(String newValue);
  external String get src;
  external set src(String newValue);
  external String get frameBorder;
  external set frameBorder(String newValue);
  external String get longDesc;
  external set longDesc(String newValue);
  external bool get noResize;
  external set noResize(bool newValue);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external String get marginHeight;
  external set marginHeight(String newValue);
  external String get marginWidth;
  external set marginWidth(String newValue);
}

@JS()
class HTMLDirectoryElement extends HTMLElement {
  external factory HTMLDirectoryElement();
  external bool get compact;
  external set compact(bool newValue);
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  Implements the document object model (DOM) representation of the
/// font element. The HTML Font Element [<font>] defines the font
/// size, font face and color of text.
@deprecated
@JS()
class HTMLFontElement extends HTMLElement {
  external factory HTMLFontElement();

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// either a named color or a color specified in the hexadecimal
  /// #RRGGBB format.
  external String get color;
  external set color(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing a
  /// comma-separated list of one or more font names.
  external String get face;
  external set face(String newValue);

  ///  Is a [DOMString] that reflects the HTML attribute, containing
  /// either a font size number ranging from 1 to 7 or a relative size
  /// to the attribute of the [<basefont>] element, for example -2 or
  /// +1.
  external String get size;
  external set size(String newValue);
}

@JS()
class External {
  external Object AddSearchProvider();
  external Object IsSearchProviderInstalled();

  external factory External();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The [NavigatorPlugins] mixin adds to the [Navigator] interface
/// methods and properties for discovering and interacting with
/// plugins installed into the browser.
@experimental
@JS()
mixin NavigatorPlugins {
  ///  Returns a [PluginArray] listing the plugins installed in the
  /// browser.
  @deprecated
  external PluginArray get plugins;

  ///  Returns an [MimeTypeArray] listing the MIME types supported by
  /// the browser.
  @deprecated
  external MimeTypeArray get mimeTypes;

  /// Returns false.
  /// result = window.navigator.javaEnabled()
  ///
  /// if (window.navigator.javaEnabled()) {
  ///   // code will never be executed; the condition is always false
  /// }
  ///
  @deprecated
  external bool javaEnabled();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface is used to store a list of [Plugin] objects
/// describing the available plugins; it's returned by the
/// [navigator.plugins] property. The is not a JavaScript array, but
/// has the [length] property and supports accessing individual items
/// using bracket notation ([plugins[2]]), as well as via
/// [item(index)] and [namedItem("name")] methods.
///  Note: Own properties of objects are no longer enumerable in the
/// latest browser versions.
///
@experimental
@JS()
class PluginArray {
  ///  Refreshes all plugins on the current page, optionally reloading
  /// documents.
  external Object refresh();

  /// The number of plugins in the array.
  external int get length;

  /// Returns the [Plugin] at the specified index into the array.
  external dynamic item(int index);

  /// Returns the [Plugin] with the specified name.
  external dynamic namedItem(String name);

  external factory PluginArray();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface returns an array of [MimeType] instances, each of
/// which contains information about a supported browser plugins.
/// This object is returned by [NavigatorPlugins.mimeTypes].
@JS()
class MimeTypeArray {
  /// The number of items in the array.
  external int get length;

  /// Returns the [MimeType] object with the specified index.
  external dynamic item(int index);

  /// Returns the [MimeType] object with the specified name.
  external dynamic namedItem(String name);

  external factory MimeTypeArray();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
/// The interface provides information about a browser plugin.
///  Note: Own properties of objects are no longer enumerable in the
/// latest browser versions.
///
@JS()
class Plugin {
  /// The name of the plugin.
  external Object get name;

  /// A human readable description of the plugin.
  external Object get description;

  /// The filename of the plugin file.
  external Object get filename;
  external Object get length;

  ///  Returns the MIME type of a supported content type, given the
  /// index number into a list of supported types.
  external Object item(int index);

  /// Returns the MIME type of a supported item.
  external Object namedItem(String name);

  external factory Plugin();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface provides contains information about a MIME type
/// associated with a particular plugin. [NavigatorPlugins.mimeTypes]
/// returns an array of this object.
@JS()
class MimeType {
  /// Returns the MIME type of the associated plugin.
  external Object get type;

  ///  Returns a description of the associated plugin or an empty
  /// string if there is none.
  external Object get description;

  ///  A string containing valid file extensions for the data displayed
  /// by the plugin, or an empty string if an extension is not valid
  /// for the particular module. For example, a browser's content
  /// decryption module may appear in the plugin list but support more
  /// file extensions than can be anticipated. It might therefore
  /// return an empty string.
  external Object get suffixes;

  ///  Returns an instance of [Plugin] containing information about the
  /// plugin itself.
  external Object get enabledPlugin;

  external factory MimeType();
}
