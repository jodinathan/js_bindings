/// DOM Standard
///
/// https://dom.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library dom;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Event {
  external Event(String type, [EventInit? eventInitDict]);
  @JS('NONE')
  external static int get none;

  @JS('CAPTURING_PHASE')
  external static int get capturingPhase;

  @JS('AT_TARGET')
  external static int get atTarget;

  @JS('BUBBLING_PHASE')
  external static int get bubblingPhase;
}

extension PropsEvent on Event {
  String get type => js_util.getProperty(this, 'type');
  EventTarget? get target => js_util.getProperty(this, 'target');
  EventTarget? get srcElement => js_util.getProperty(this, 'srcElement');
  EventTarget? get currentTarget => js_util.getProperty(this, 'currentTarget');
  Iterable<EventTarget> composedPath() =>
      js_util.callMethod(this, 'composedPath', []);

  int get eventPhase => js_util.getProperty(this, 'eventPhase');
  Object stopPropagation() => js_util.callMethod(this, 'stopPropagation', []);

  bool get cancelBubble => js_util.getProperty(this, 'cancelBubble');
  set cancelBubble(bool newValue) {
    js_util.setProperty(this, 'cancelBubble', newValue);
  }

  Object stopImmediatePropagation() =>
      js_util.callMethod(this, 'stopImmediatePropagation', []);

  bool get bubbles => js_util.getProperty(this, 'bubbles');
  bool get cancelable => js_util.getProperty(this, 'cancelable');
  dynamic get returnValue => js_util.getProperty(this, 'returnValue');
  set returnValue(dynamic newValue) {
    js_util.setProperty(this, 'returnValue', newValue);
  }

  Object preventDefault() => js_util.callMethod(this, 'preventDefault', []);

  bool get defaultPrevented => js_util.getProperty(this, 'defaultPrevented');
  bool get composed => js_util.getProperty(this, 'composed');
  bool get isTrusted => js_util.getProperty(this, 'isTrusted');
  double get timeStamp => js_util.getProperty(this, 'timeStamp');
  Object initEvent(String type,
          [bool? bubbles = false, bool? cancelable = false]) =>
      js_util.callMethod(this, 'initEvent', [type, bubbles, cancelable]);
}

@anonymous
@JS()
@staticInterop
class EventInit {
  external factory EventInit(
      {bool? bubbles = false,
      bool? cancelable = false,
      bool? composed = false});
}

extension PropsEventInit on EventInit {
  bool get bubbles => js_util.getProperty(this, 'bubbles');
  set bubbles(bool newValue) {
    js_util.setProperty(this, 'bubbles', newValue);
  }

  bool get cancelable => js_util.getProperty(this, 'cancelable');
  set cancelable(bool newValue) {
    js_util.setProperty(this, 'cancelable', newValue);
  }

  bool get composed => js_util.getProperty(this, 'composed');
  set composed(bool newValue) {
    js_util.setProperty(this, 'composed', newValue);
  }
}

@JS()
@staticInterop
class CustomEvent implements Event {
  external CustomEvent(String type, [CustomEventInit? eventInitDict]);
}

extension PropsCustomEvent on CustomEvent {
  dynamic get detail => js_util.getProperty(this, 'detail');
  Object initCustomEvent(String type,
          [bool? bubbles = false, bool? cancelable = false, dynamic detail]) =>
      js_util.callMethod(
          this, 'initCustomEvent', [type, bubbles, cancelable, detail]);
}

@anonymous
@JS()
@staticInterop
class CustomEventInit implements EventInit {
  external factory CustomEventInit({dynamic detail});
}

extension PropsCustomEventInit on CustomEventInit {
  dynamic get detail => js_util.getProperty(this, 'detail');
  set detail(dynamic newValue) {
    js_util.setProperty(this, 'detail', newValue);
  }
}

@JS()
@staticInterop
class EventTarget {
  external EventTarget();
}

extension PropsEventTarget on EventTarget {
  Object addEventListener(String type, EventListener? callback,
          [dynamic options]) =>
      js_util.callMethod(this, 'addEventListener',
          [type, callback == null ? null : allowInterop(callback), options]);

  Object removeEventListener(String type, EventListener? callback,
          [dynamic options]) =>
      js_util.callMethod(this, 'removeEventListener',
          [type, callback == null ? null : allowInterop(callback), options]);

  bool dispatchEvent(Event event) =>
      js_util.callMethod(this, 'dispatchEvent', [event]);
}

@anonymous
@JS()
@staticInterop
class EventListenerOptions {
  external factory EventListenerOptions({bool? capture = false});
}

extension PropsEventListenerOptions on EventListenerOptions {
  bool get capture => js_util.getProperty(this, 'capture');
  set capture(bool newValue) {
    js_util.setProperty(this, 'capture', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AddEventListenerOptions implements EventListenerOptions {
  external factory AddEventListenerOptions(
      {bool? passive = false, bool? once = false, AbortSignal? signal});
}

extension PropsAddEventListenerOptions on AddEventListenerOptions {
  bool get passive => js_util.getProperty(this, 'passive');
  set passive(bool newValue) {
    js_util.setProperty(this, 'passive', newValue);
  }

  bool get once => js_util.getProperty(this, 'once');
  set once(bool newValue) {
    js_util.setProperty(this, 'once', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@JS()
@staticInterop
class AbortController {
  external AbortController();
}

extension PropsAbortController on AbortController {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  Object abort([dynamic reason]) => js_util.callMethod(this, 'abort', [reason]);
}

@JS()
@staticInterop
class AbortSignal implements EventTarget {
  external AbortSignal();
}

extension PropsAbortSignal on AbortSignal {
  static AbortSignal abort([dynamic reason]) =>
      js_util.callMethod(AbortSignal, 'abort', [reason]);

  static AbortSignal timeout(int milliseconds) =>
      js_util.callMethod(AbortSignal, 'timeout', [milliseconds]);

  bool get aborted => js_util.getProperty(this, 'aborted');
  dynamic get reason => js_util.getProperty(this, 'reason');
  Object throwIfAborted() => js_util.callMethod(this, 'throwIfAborted', []);

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }
}

@JS()
@staticInterop
class NonElementParentNode {
  external NonElementParentNode();
}

extension PropsNonElementParentNode on NonElementParentNode {
  Element? getElementById(String elementId) =>
      js_util.callMethod(this, 'getElementById', [elementId]);
}

@JS()
@staticInterop
class DocumentOrShadowRoot {
  external DocumentOrShadowRoot();
}

extension PropsDocumentOrShadowRoot on DocumentOrShadowRoot {
  Iterable<Animation> getAnimations() =>
      js_util.callMethod(this, 'getAnimations', []);

  Element? get pointerLockElement =>
      js_util.getProperty(this, 'pointerLockElement');
  Element? get fullscreenElement =>
      js_util.getProperty(this, 'fullscreenElement');
  Element? get pictureInPictureElement =>
      js_util.getProperty(this, 'pictureInPictureElement');
  Element? get activeElement => js_util.getProperty(this, 'activeElement');
  StyleSheetList get styleSheets => js_util.getProperty(this, 'styleSheets');
  Iterable<CSSStyleSheet> get adoptedStyleSheets =>
      js_util.getProperty(this, 'adoptedStyleSheets');
  set adoptedStyleSheets(Iterable<CSSStyleSheet> newValue) {
    js_util.setProperty(this, 'adoptedStyleSheets', newValue);
  }
}

@JS()
@staticInterop
class ParentNode {
  external ParentNode();
}

extension PropsParentNode on ParentNode {
  HTMLCollection get children => js_util.getProperty(this, 'children');
  Element? get firstElementChild =>
      js_util.getProperty(this, 'firstElementChild');
  Element? get lastElementChild =>
      js_util.getProperty(this, 'lastElementChild');
  int get childElementCount => js_util.getProperty(this, 'childElementCount');
  Object prepend([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'prepend', [nodes1, nodes2, nodes3]);

  Object append([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'append', [nodes1, nodes2, nodes3]);

  Object replaceChildren([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'replaceChildren', [nodes1, nodes2, nodes3]);

  Element? querySelector(String selectors) =>
      js_util.callMethod(this, 'querySelector', [selectors]);

  NodeList querySelectorAll(String selectors) =>
      js_util.callMethod(this, 'querySelectorAll', [selectors]);
}

@JS()
@staticInterop
class NonDocumentTypeChildNode {
  external NonDocumentTypeChildNode();
}

extension PropsNonDocumentTypeChildNode on NonDocumentTypeChildNode {
  Element? get previousElementSibling =>
      js_util.getProperty(this, 'previousElementSibling');
  Element? get nextElementSibling =>
      js_util.getProperty(this, 'nextElementSibling');
}

@JS()
@staticInterop
class ChildNode {
  external ChildNode();
}

extension PropsChildNode on ChildNode {
  Object before([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'before', [nodes1, nodes2, nodes3]);

  Object after([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'after', [nodes1, nodes2, nodes3]);

  Object replaceWith([dynamic nodes1, dynamic nodes2, dynamic nodes3]) =>
      js_util.callMethod(this, 'replaceWith', [nodes1, nodes2, nodes3]);

  Object remove() => js_util.callMethod(this, 'remove', []);
}

@JS()
@staticInterop
class Slottable {
  external Slottable();
}

extension PropsSlottable on Slottable {
  HTMLSlotElement? get assignedSlot =>
      js_util.getProperty(this, 'assignedSlot');
}

@JS()
@staticInterop
class NodeList extends JsArray<Node> {
  external NodeList();
}

extension PropsNodeList on NodeList {
  Node? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class HTMLCollection {
  external HTMLCollection();
}

extension PropsHTMLCollection on HTMLCollection {
  int get length => js_util.getProperty(this, 'length');
  Element? item(int index) => js_util.callMethod(this, 'item', [index]);

  dynamic namedItem(String name) =>
      js_util.callMethod(this, 'namedItem', [name]);
}

@JS()
@staticInterop
class MutationObserver {
  external MutationObserver(MutationCallback callback);
}

extension PropsMutationObserver on MutationObserver {
  Object observe(Node target, [MutationObserverInit? options]) =>
      js_util.callMethod(this, 'observe', [target, options]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<MutationRecord> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);
}

@anonymous
@JS()
@staticInterop
class MutationObserverInit {
  external factory MutationObserverInit(
      {bool? childList = false,
      bool? attributes,
      bool? characterData,
      bool? subtree = false,
      bool? attributeOldValue,
      bool? characterDataOldValue,
      Iterable<String>? attributeFilter});
}

extension PropsMutationObserverInit on MutationObserverInit {
  bool get childList => js_util.getProperty(this, 'childList');
  set childList(bool newValue) {
    js_util.setProperty(this, 'childList', newValue);
  }

  bool get attributes => js_util.getProperty(this, 'attributes');
  set attributes(bool newValue) {
    js_util.setProperty(this, 'attributes', newValue);
  }

  bool get characterData => js_util.getProperty(this, 'characterData');
  set characterData(bool newValue) {
    js_util.setProperty(this, 'characterData', newValue);
  }

  bool get subtree => js_util.getProperty(this, 'subtree');
  set subtree(bool newValue) {
    js_util.setProperty(this, 'subtree', newValue);
  }

  bool get attributeOldValue => js_util.getProperty(this, 'attributeOldValue');
  set attributeOldValue(bool newValue) {
    js_util.setProperty(this, 'attributeOldValue', newValue);
  }

  bool get characterDataOldValue =>
      js_util.getProperty(this, 'characterDataOldValue');
  set characterDataOldValue(bool newValue) {
    js_util.setProperty(this, 'characterDataOldValue', newValue);
  }

  Iterable<String> get attributeFilter =>
      js_util.getProperty(this, 'attributeFilter');
  set attributeFilter(Iterable<String> newValue) {
    js_util.setProperty(this, 'attributeFilter', newValue);
  }
}

@JS()
@staticInterop
class MutationRecord {
  external MutationRecord();
}

extension PropsMutationRecord on MutationRecord {
  String get type => js_util.getProperty(this, 'type');
  Node get target => js_util.getProperty(this, 'target');
  NodeList get addedNodes => js_util.getProperty(this, 'addedNodes');
  NodeList get removedNodes => js_util.getProperty(this, 'removedNodes');
  Node? get previousSibling => js_util.getProperty(this, 'previousSibling');
  Node? get nextSibling => js_util.getProperty(this, 'nextSibling');
  String? get attributeName => js_util.getProperty(this, 'attributeName');
  String? get attributeNamespace =>
      js_util.getProperty(this, 'attributeNamespace');
  String? get oldValue => js_util.getProperty(this, 'oldValue');
}

@JS()
@staticInterop
class Node implements EventTarget {
  @JS('ELEMENT_NODE')
  external static int get elementNode;

  @JS('ATTRIBUTE_NODE')
  external static int get attributeNode;

  @JS('TEXT_NODE')
  external static int get textNode;

  @JS('CDATA_SECTION_NODE')
  external static int get cdataSectionNode;

  @JS('ENTITY_REFERENCE_NODE')
  external static int get entityReferenceNode;

  @JS('ENTITY_NODE')
  external static int get entityNode;

  @JS('PROCESSING_INSTRUCTION_NODE')
  external static int get processingInstructionNode;

  @JS('COMMENT_NODE')
  external static int get commentNode;

  @JS('DOCUMENT_NODE')
  external static int get documentNode;

  @JS('DOCUMENT_TYPE_NODE')
  external static int get documentTypeNode;

  @JS('DOCUMENT_FRAGMENT_NODE')
  external static int get documentFragmentNode;

  @JS('NOTATION_NODE')
  external static int get notationNode;

  @JS('DOCUMENT_POSITION_DISCONNECTED')
  external static int get documentPositionDisconnected;

  @JS('DOCUMENT_POSITION_PRECEDING')
  external static int get documentPositionPreceding;

  @JS('DOCUMENT_POSITION_FOLLOWING')
  external static int get documentPositionFollowing;

  @JS('DOCUMENT_POSITION_CONTAINS')
  external static int get documentPositionContains;

  @JS('DOCUMENT_POSITION_CONTAINED_BY')
  external static int get documentPositionContainedBy;

  @JS('DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC')
  external static int get documentPositionImplementationSpecific;

  external Node();
}

extension PropsNode on Node {
  int get nodeType => js_util.getProperty(this, 'nodeType');
  String get nodeName => js_util.getProperty(this, 'nodeName');
  String get baseURI => js_util.getProperty(this, 'baseURI');
  bool get isConnected => js_util.getProperty(this, 'isConnected');
  Document? get ownerDocument => js_util.getProperty(this, 'ownerDocument');
  Node getRootNode([GetRootNodeOptions? options]) =>
      js_util.callMethod(this, 'getRootNode', [options]);

  Node? get parentNode => js_util.getProperty(this, 'parentNode');
  Element? get parentElement => js_util.getProperty(this, 'parentElement');
  bool hasChildNodes() => js_util.callMethod(this, 'hasChildNodes', []);

  NodeList get childNodes => js_util.getProperty(this, 'childNodes');
  Node? get firstChild => js_util.getProperty(this, 'firstChild');
  Node? get lastChild => js_util.getProperty(this, 'lastChild');
  Node? get previousSibling => js_util.getProperty(this, 'previousSibling');
  Node? get nextSibling => js_util.getProperty(this, 'nextSibling');
  String? get nodeValue => js_util.getProperty(this, 'nodeValue');
  set nodeValue(String? newValue) {
    js_util.setProperty(this, 'nodeValue', newValue);
  }

  String? get textContent => js_util.getProperty(this, 'textContent');
  set textContent(String? newValue) {
    js_util.setProperty(this, 'textContent', newValue);
  }

  Object normalize() => js_util.callMethod(this, 'normalize', []);

  Node cloneNode([bool? deep = false]) =>
      js_util.callMethod(this, 'cloneNode', [deep]);

  bool isEqualNode(Node? otherNode) =>
      js_util.callMethod(this, 'isEqualNode', [otherNode]);

  bool isSameNode(Node? otherNode) =>
      js_util.callMethod(this, 'isSameNode', [otherNode]);

  int compareDocumentPosition(Node other) =>
      js_util.callMethod(this, 'compareDocumentPosition', [other]);

  bool contains(Node? other) => js_util.callMethod(this, 'contains', [other]);

  String? lookupPrefix(String? namespace) =>
      js_util.callMethod(this, 'lookupPrefix', [namespace]);

  String? lookupNamespaceURI(String? prefix) =>
      js_util.callMethod(this, 'lookupNamespaceURI', [prefix]);

  bool isDefaultNamespace(String? namespace) =>
      js_util.callMethod(this, 'isDefaultNamespace', [namespace]);

  Node insertBefore(Node node, Node? child) =>
      js_util.callMethod(this, 'insertBefore', [node, child]);

  Node appendChild(Node node) =>
      js_util.callMethod(this, 'appendChild', [node]);

  Node replaceChild(Node node, Node child) =>
      js_util.callMethod(this, 'replaceChild', [node, child]);

  Node removeChild(Node child) =>
      js_util.callMethod(this, 'removeChild', [child]);
}

@anonymous
@JS()
@staticInterop
class GetRootNodeOptions {
  external factory GetRootNodeOptions({bool? composed = false});
}

extension PropsGetRootNodeOptions on GetRootNodeOptions {
  bool get composed => js_util.getProperty(this, 'composed');
  set composed(bool newValue) {
    js_util.setProperty(this, 'composed', newValue);
  }
}

@JS()
@staticInterop
class Document
    implements
        Node,
        GeometryUtils,
        FontFaceSource,
        NonElementParentNode,
        DocumentOrShadowRoot,
        ParentNode,
        XPathEvaluatorBase,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers {
  external Document();
}

extension PropsDocument on Document {
  DOMImplementation get implementation =>
      js_util.getProperty(this, 'implementation');
  String get url => js_util.getProperty(this, 'URL');
  String get documentURI => js_util.getProperty(this, 'documentURI');
  String get compatMode => js_util.getProperty(this, 'compatMode');
  String get characterSet => js_util.getProperty(this, 'characterSet');
  String get charset => js_util.getProperty(this, 'charset');
  String get inputEncoding => js_util.getProperty(this, 'inputEncoding');
  String get contentType => js_util.getProperty(this, 'contentType');
  DocumentType? get doctype => js_util.getProperty(this, 'doctype');
  Element? get documentElement => js_util.getProperty(this, 'documentElement');
  HTMLCollection getElementsByTagName(String qualifiedName) =>
      js_util.callMethod(this, 'getElementsByTagName', [qualifiedName]);

  HTMLCollection getElementsByTagNameNS(String? namespace, String localName) =>
      js_util
          .callMethod(this, 'getElementsByTagNameNS', [namespace, localName]);

  HTMLCollection getElementsByClassName(String classNames) =>
      js_util.callMethod(this, 'getElementsByClassName', [classNames]);

  Element createElement(String localName, [dynamic options]) =>
      js_util.callMethod(this, 'createElement', [localName, options]);

  Element createElementNS(String? namespace, String qualifiedName,
          [dynamic options]) =>
      js_util.callMethod(
          this, 'createElementNS', [namespace, qualifiedName, options]);

  DocumentFragment createDocumentFragment() =>
      js_util.callMethod(this, 'createDocumentFragment', []);

  Text createTextNode(String data) =>
      js_util.callMethod(this, 'createTextNode', [data]);

  CDATASection createCDATASection(String data) =>
      js_util.callMethod(this, 'createCDATASection', [data]);

  Comment createComment(String data) =>
      js_util.callMethod(this, 'createComment', [data]);

  ProcessingInstruction createProcessingInstruction(
          String target, String data) =>
      js_util.callMethod(this, 'createProcessingInstruction', [target, data]);

  Node importNode(Node node, [bool? deep = false]) =>
      js_util.callMethod(this, 'importNode', [node, deep]);

  Node adoptNode(Node node) => js_util.callMethod(this, 'adoptNode', [node]);

  Attr createAttribute(String localName) =>
      js_util.callMethod(this, 'createAttribute', [localName]);

  Attr createAttributeNS(String? namespace, String qualifiedName) =>
      js_util.callMethod(this, 'createAttributeNS', [namespace, qualifiedName]);

  Event createEvent(String mInterface) =>
      js_util.callMethod(this, 'createEvent', [mInterface]);

  Range createRange() => js_util.callMethod(this, 'createRange', []);

  NodeIterator createNodeIterator(Node root,
          [int? whatToShow = 0xFFFFFFFF, NodeFilter? filter]) =>
      js_util
          .callMethod(this, 'createNodeIterator', [root, whatToShow, filter]);

  TreeWalker createTreeWalker(Node root,
          [int? whatToShow = 0xFFFFFFFF, NodeFilter? filter]) =>
      js_util.callMethod(this, 'createTreeWalker', [root, whatToShow, filter]);

  SVGSVGElement? get rootElement => js_util.getProperty(this, 'rootElement');
  Future<bool> hasStorageAccess() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'hasStorageAccess', []));

  Future<Object> requestStorageAccess() => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestStorageAccess', []));

  Selection? getSelection() => js_util.callMethod(this, 'getSelection', []);

  DocumentTimeline get timeline => js_util.getProperty(this, 'timeline');
  Element? elementFromPoint(double x, double y) =>
      js_util.callMethod(this, 'elementFromPoint', [x, y]);

  Iterable<Element> elementsFromPoint(double x, double y) =>
      js_util.callMethod(this, 'elementsFromPoint', [x, y]);

  CaretPosition? caretPositionFromPoint(double x, double y) =>
      js_util.callMethod(this, 'caretPositionFromPoint', [x, y]);

  Element? get scrollingElement =>
      js_util.getProperty(this, 'scrollingElement');
  EventHandlerNonNull? get onpointerlockchange =>
      js_util.getProperty(this, 'onpointerlockchange');
  set onpointerlockchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerlockchange', newValue);
  }

  EventHandlerNonNull? get onpointerlockerror =>
      js_util.getProperty(this, 'onpointerlockerror');
  set onpointerlockerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpointerlockerror', newValue);
  }

  Object exitPointerLock() => js_util.callMethod(this, 'exitPointerLock', []);

  bool get fullscreenEnabled => js_util.getProperty(this, 'fullscreenEnabled');
  bool get fullscreen => js_util.getProperty(this, 'fullscreen');
  Future<Object> exitFullscreen() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'exitFullscreen', []));

  EventHandlerNonNull? get onfullscreenchange =>
      js_util.getProperty(this, 'onfullscreenchange');
  set onfullscreenchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfullscreenchange', newValue);
  }

  EventHandlerNonNull? get onfullscreenerror =>
      js_util.getProperty(this, 'onfullscreenerror');
  set onfullscreenerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfullscreenerror', newValue);
  }

  bool get pictureInPictureEnabled =>
      js_util.getProperty(this, 'pictureInPictureEnabled');
  Future<Object> exitPictureInPicture() => js_util
      .promiseToFuture(js_util.callMethod(this, 'exitPictureInPicture', []));

  EventHandlerNonNull? get onfreeze => js_util.getProperty(this, 'onfreeze');
  set onfreeze(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfreeze', newValue);
  }

  EventHandlerNonNull? get onresume => js_util.getProperty(this, 'onresume');
  set onresume(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresume', newValue);
  }

  bool get wasDiscarded => js_util.getProperty(this, 'wasDiscarded');
  NamedFlowMap get namedFlows => js_util.getProperty(this, 'namedFlows');
  FragmentDirective get fragmentDirective =>
      js_util.getProperty(this, 'fragmentDirective');
  Future<InterestCohort> interestCohort() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'interestCohort', []));

  PermissionsPolicy get permissionsPolicy =>
      js_util.getProperty(this, 'permissionsPolicy');
  Location? get location => js_util.getProperty(this, 'location');
  String get domain => js_util.getProperty(this, 'domain');
  set domain(String newValue) {
    js_util.setProperty(this, 'domain', newValue);
  }

  String get referrer => js_util.getProperty(this, 'referrer');
  String get cookie => js_util.getProperty(this, 'cookie');
  set cookie(String newValue) {
    js_util.setProperty(this, 'cookie', newValue);
  }

  String get lastModified => js_util.getProperty(this, 'lastModified');
  DocumentReadyState get readyState =>
      DocumentReadyState.values.byName(js_util.getProperty(this, 'readyState'));
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get dir => js_util.getProperty(this, 'dir');
  set dir(String newValue) {
    js_util.setProperty(this, 'dir', newValue);
  }

  HTMLElement? get body => js_util.getProperty(this, 'body');
  set body(HTMLElement? newValue) {
    js_util.setProperty(this, 'body', newValue);
  }

  HTMLHeadElement? get head => js_util.getProperty(this, 'head');
  HTMLCollection get images => js_util.getProperty(this, 'images');
  HTMLCollection get embeds => js_util.getProperty(this, 'embeds');
  HTMLCollection get plugins => js_util.getProperty(this, 'plugins');
  HTMLCollection get links => js_util.getProperty(this, 'links');
  HTMLCollection get forms => js_util.getProperty(this, 'forms');
  HTMLCollection get scripts => js_util.getProperty(this, 'scripts');
  NodeList getElementsByName(String elementName) =>
      js_util.callMethod(this, 'getElementsByName', [elementName]);

  dynamic get currentScript => js_util.getProperty(this, 'currentScript');
  Window? open(String url, [String? name, String? features]) =>
      js_util.callMethod(this, 'open', [url, name, features]);

  Object close() => js_util.callMethod(this, 'close', []);

  Object write([String? text1, String? text2, String? text3]) =>
      js_util.callMethod(this, 'write', [text1, text2, text3]);

  Object writeln([String? text1, String? text2, String? text3]) =>
      js_util.callMethod(this, 'writeln', [text1, text2, text3]);

  Window? get defaultView => js_util.getProperty(this, 'defaultView');
  bool hasFocus() => js_util.callMethod(this, 'hasFocus', []);

  String get designMode => js_util.getProperty(this, 'designMode');
  set designMode(String newValue) {
    js_util.setProperty(this, 'designMode', newValue);
  }

  bool execCommand(String commandId,
          [bool? showUI = false, String? value = '']) =>
      js_util.callMethod(this, 'execCommand', [commandId, showUI, value]);

  bool queryCommandEnabled(String commandId) =>
      js_util.callMethod(this, 'queryCommandEnabled', [commandId]);

  bool queryCommandIndeterm(String commandId) =>
      js_util.callMethod(this, 'queryCommandIndeterm', [commandId]);

  bool queryCommandState(String commandId) =>
      js_util.callMethod(this, 'queryCommandState', [commandId]);

  bool queryCommandSupported(String commandId) =>
      js_util.callMethod(this, 'queryCommandSupported', [commandId]);

  String queryCommandValue(String commandId) =>
      js_util.callMethod(this, 'queryCommandValue', [commandId]);

  bool get hidden => js_util.getProperty(this, 'hidden');
  DocumentVisibilityState get visibilityState => DocumentVisibilityState.values
      .byName(js_util.getProperty(this, 'visibilityState'));
  EventHandlerNonNull? get onreadystatechange =>
      js_util.getProperty(this, 'onreadystatechange');
  set onreadystatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreadystatechange', newValue);
  }

  EventHandlerNonNull? get onvisibilitychange =>
      js_util.getProperty(this, 'onvisibilitychange');
  set onvisibilitychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onvisibilitychange', newValue);
  }

  String get fgColor => js_util.getProperty(this, 'fgColor');
  set fgColor(String newValue) {
    js_util.setProperty(this, 'fgColor', newValue);
  }

  String get linkColor => js_util.getProperty(this, 'linkColor');
  set linkColor(String newValue) {
    js_util.setProperty(this, 'linkColor', newValue);
  }

  String get vlinkColor => js_util.getProperty(this, 'vlinkColor');
  set vlinkColor(String newValue) {
    js_util.setProperty(this, 'vlinkColor', newValue);
  }

  String get alinkColor => js_util.getProperty(this, 'alinkColor');
  set alinkColor(String newValue) {
    js_util.setProperty(this, 'alinkColor', newValue);
  }

  String get bgColor => js_util.getProperty(this, 'bgColor');
  set bgColor(String newValue) {
    js_util.setProperty(this, 'bgColor', newValue);
  }

  HTMLCollection get anchors => js_util.getProperty(this, 'anchors');
  HTMLCollection get applets => js_util.getProperty(this, 'applets');
  Object clear() => js_util.callMethod(this, 'clear', []);

  Object captureEvents() => js_util.callMethod(this, 'captureEvents', []);

  Object releaseEvents() => js_util.callMethod(this, 'releaseEvents', []);

  HTMLAllCollection get all => js_util.getProperty(this, 'all');
  FontMetrics measureElement(Element element) =>
      js_util.callMethod(this, 'measureElement', [element]);

  FontMetrics measureText(String text, StylePropertyMapReadOnly styleMap) =>
      js_util.callMethod(this, 'measureText', [text, styleMap]);
}

@JS()
@staticInterop
class XMLDocument implements Document {
  external XMLDocument();
}

@anonymous
@JS()
@staticInterop
class ElementCreationOptions {
  external factory ElementCreationOptions({required String mIs});
}

extension PropsElementCreationOptions on ElementCreationOptions {
  @JS('is')
  @staticInterop
  String get mIs => js_util.getProperty(this, 'is');
  set mIs(String newValue) {
    js_util.setProperty(this, 'is', newValue);
  }
}

@JS()
@staticInterop
class DOMImplementation {
  external DOMImplementation();
}

extension PropsDOMImplementation on DOMImplementation {
  DocumentType createDocumentType(
          String qualifiedName, String publicId, String systemId) =>
      js_util.callMethod(
          this, 'createDocumentType', [qualifiedName, publicId, systemId]);

  XMLDocument createDocument(String? namespace, String qualifiedName,
          [DocumentType? doctype]) =>
      js_util.callMethod(
          this, 'createDocument', [namespace, qualifiedName, doctype]);

  Document createHTMLDocument([String? title]) =>
      js_util.callMethod(this, 'createHTMLDocument', [title]);

  bool hasFeature() => js_util.callMethod(this, 'hasFeature', []);
}

@JS()
@staticInterop
class DocumentType implements Node, ChildNode {
  external DocumentType();
}

extension PropsDocumentType on DocumentType {
  String get name => js_util.getProperty(this, 'name');
  String get publicId => js_util.getProperty(this, 'publicId');
  String get systemId => js_util.getProperty(this, 'systemId');
}

@JS()
@staticInterop
class DocumentFragment implements Node, NonElementParentNode, ParentNode {
  external DocumentFragment();
}

@JS()
@staticInterop
class ShadowRoot implements DocumentFragment, DocumentOrShadowRoot, InnerHTML {
  external ShadowRoot();
}

extension PropsShadowRoot on ShadowRoot {
  ShadowRootMode get mode =>
      ShadowRootMode.values.byName(js_util.getProperty(this, 'mode'));
  bool get delegatesFocus => js_util.getProperty(this, 'delegatesFocus');
  SlotAssignmentMode get slotAssignment => SlotAssignmentMode.values
      .byName(js_util.getProperty(this, 'slotAssignment'));
  Element get host => js_util.getProperty(this, 'host');
  EventHandlerNonNull? get onslotchange =>
      js_util.getProperty(this, 'onslotchange');
  set onslotchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onslotchange', newValue);
  }
}

enum ShadowRootMode { open, closed }

enum SlotAssignmentMode { manual, named }

@JS()
@staticInterop
class Element
    implements
        Node,
        Animatable,
        ARIAMixin,
        GeometryUtils,
        Region,
        ParentNode,
        NonDocumentTypeChildNode,
        ChildNode,
        Slottable,
        InnerHTML {
  external Element();
}

extension PropsElement on Element {
  String? get namespaceURI => js_util.getProperty(this, 'namespaceURI');
  String? get prefix => js_util.getProperty(this, 'prefix');
  String get localName => js_util.getProperty(this, 'localName');
  String get tagName => js_util.getProperty(this, 'tagName');
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  dynamic get className => js_util.getProperty(this, 'className');
  set className(dynamic newValue) {
    js_util.setProperty(this, 'className', newValue);
  }

  DOMTokenList get classList => js_util.getProperty(this, 'classList');
  String get slot => js_util.getProperty(this, 'slot');
  set slot(String newValue) {
    js_util.setProperty(this, 'slot', newValue);
  }

  bool hasAttributes() => js_util.callMethod(this, 'hasAttributes', []);

  NamedNodeMap get attributes => js_util.getProperty(this, 'attributes');
  Iterable<String> getAttributeNames() =>
      js_util.callMethod(this, 'getAttributeNames', []);

  String? getAttribute(String qualifiedName) =>
      js_util.callMethod(this, 'getAttribute', [qualifiedName]);

  String? getAttributeNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'getAttributeNS', [namespace, localName]);

  Object setAttribute(String qualifiedName, String value) =>
      js_util.callMethod(this, 'setAttribute', [qualifiedName, value]);

  Object setAttributeNS(
          String? namespace, String qualifiedName, String value) =>
      js_util.callMethod(
          this, 'setAttributeNS', [namespace, qualifiedName, value]);

  Object removeAttribute(String qualifiedName) =>
      js_util.callMethod(this, 'removeAttribute', [qualifiedName]);

  Object removeAttributeNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'removeAttributeNS', [namespace, localName]);

  bool toggleAttribute(String qualifiedName, [bool? force]) =>
      js_util.callMethod(this, 'toggleAttribute', [qualifiedName, force]);

  bool hasAttribute(String qualifiedName) =>
      js_util.callMethod(this, 'hasAttribute', [qualifiedName]);

  bool hasAttributeNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'hasAttributeNS', [namespace, localName]);

  Attr? getAttributeNode(String qualifiedName) =>
      js_util.callMethod(this, 'getAttributeNode', [qualifiedName]);

  Attr? getAttributeNodeNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'getAttributeNodeNS', [namespace, localName]);

  Attr? setAttributeNode(Attr attr) =>
      js_util.callMethod(this, 'setAttributeNode', [attr]);

  Attr? setAttributeNodeNS(Attr attr) =>
      js_util.callMethod(this, 'setAttributeNodeNS', [attr]);

  Attr removeAttributeNode(Attr attr) =>
      js_util.callMethod(this, 'removeAttributeNode', [attr]);

  ShadowRoot attachShadow(ShadowRootInit init) =>
      js_util.callMethod(this, 'attachShadow', [init]);

  ShadowRoot? get shadowRoot => js_util.getProperty(this, 'shadowRoot');
  Element? closest(String selectors) =>
      js_util.callMethod(this, 'closest', [selectors]);

  bool matches(String selectors) =>
      js_util.callMethod(this, 'matches', [selectors]);

  bool webkitMatchesSelector(String selectors) =>
      js_util.callMethod(this, 'webkitMatchesSelector', [selectors]);

  HTMLCollection getElementsByTagName(String qualifiedName) =>
      js_util.callMethod(this, 'getElementsByTagName', [qualifiedName]);

  HTMLCollection getElementsByTagNameNS(String? namespace, String localName) =>
      js_util
          .callMethod(this, 'getElementsByTagNameNS', [namespace, localName]);

  HTMLCollection getElementsByClassName(String classNames) =>
      js_util.callMethod(this, 'getElementsByClassName', [classNames]);

  Element? insertAdjacentElement(String where, Element element) =>
      js_util.callMethod(this, 'insertAdjacentElement', [where, element]);

  Object insertAdjacentText(String where, String data) =>
      js_util.callMethod(this, 'insertAdjacentText', [where, data]);

  StylePropertyMapReadOnly computedStyleMap() =>
      js_util.callMethod(this, 'computedStyleMap', []);

  DOMRectList getClientRects() =>
      js_util.callMethod(this, 'getClientRects', []);

  DOMRect getBoundingClientRect() =>
      js_util.callMethod(this, 'getBoundingClientRect', []);

  Object scrollIntoView([dynamic arg]) =>
      js_util.callMethod(this, 'scrollIntoView', [arg]);

  Object scroll([/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scroll', [x, y]);

  Object scrollTo(
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scrollTo', [x, y]);

  Object scrollBy(
          [/* double | NaN */ dynamic x, /* double | NaN */ dynamic y]) =>
      js_util.callMethod(this, 'scrollBy', [x, y]);

  /* double | NaN */ dynamic get scrollTop =>
      js_util.getProperty(this, 'scrollTop');
  set scrollTop(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'scrollTop', newValue);
  }

  /* double | NaN */ dynamic get scrollLeft =>
      js_util.getProperty(this, 'scrollLeft');
  set scrollLeft(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'scrollLeft', newValue);
  }

  int get scrollWidth => js_util.getProperty(this, 'scrollWidth');
  int get scrollHeight => js_util.getProperty(this, 'scrollHeight');
  int get clientTop => js_util.getProperty(this, 'clientTop');
  int get clientLeft => js_util.getProperty(this, 'clientLeft');
  int get clientWidth => js_util.getProperty(this, 'clientWidth');
  int get clientHeight => js_util.getProperty(this, 'clientHeight');
  Object requestPointerLock() =>
      js_util.callMethod(this, 'requestPointerLock', []);

  Future<Object> requestFullscreen([FullscreenOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestFullscreen', [options]));

  EventHandlerNonNull? get onfullscreenchange =>
      js_util.getProperty(this, 'onfullscreenchange');
  set onfullscreenchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfullscreenchange', newValue);
  }

  EventHandlerNonNull? get onfullscreenerror =>
      js_util.getProperty(this, 'onfullscreenerror');
  set onfullscreenerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfullscreenerror', newValue);
  }

  Object setPointerCapture(int pointerId) =>
      js_util.callMethod(this, 'setPointerCapture', [pointerId]);

  Object releasePointerCapture(int pointerId) =>
      js_util.callMethod(this, 'releasePointerCapture', [pointerId]);

  bool hasPointerCapture(int pointerId) =>
      js_util.callMethod(this, 'hasPointerCapture', [pointerId]);

  CSSPseudoElement? pseudo(String type) =>
      js_util.callMethod(this, 'pseudo', [type]);

  String get outerHTML => js_util.getProperty(this, 'outerHTML');
  set outerHTML(String newValue) {
    js_util.setProperty(this, 'outerHTML', newValue);
  }

  Object insertAdjacentHTML(String position, String text) =>
      js_util.callMethod(this, 'insertAdjacentHTML', [position, text]);

  String get elementTiming => js_util.getProperty(this, 'elementTiming');
  set elementTiming(String newValue) {
    js_util.setProperty(this, 'elementTiming', newValue);
  }

  Node getSpatialNavigationContainer() =>
      js_util.callMethod(this, 'getSpatialNavigationContainer', []);

  Iterable<Node> focusableAreas([FocusableAreasOption? option]) =>
      js_util.callMethod(this, 'focusableAreas', [option]);

  Node? spatialNavigationSearch(SpatialNavigationDirection dir,
          [SpatialNavigationSearchOptions? options]) =>
      js_util.callMethod(this, 'spatialNavigationSearch', [dir.name, options]);

  Object setHTML(String input, [SetHTMLOptions? options]) =>
      js_util.callMethod(this, 'setHTML', [input, options]);

  @JS('part')
  @staticInterop
  DOMTokenList get mPart => js_util.getProperty(this, 'part');
  EditContext? get editContext => js_util.getProperty(this, 'editContext');
  set editContext(EditContext? newValue) {
    js_util.setProperty(this, 'editContext', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ShadowRootInit {
  external factory ShadowRootInit._(
      {required String mode,
      bool? delegatesFocus = false,
      String? slotAssignment});

  factory ShadowRootInit(
          {required ShadowRootMode mode,
          bool? delegatesFocus = false,
          SlotAssignmentMode? slotAssignment = SlotAssignmentMode.named}) =>
      ShadowRootInit._(
          mode: mode.name,
          delegatesFocus: delegatesFocus,
          slotAssignment: slotAssignment?.name);
}

extension PropsShadowRootInit on ShadowRootInit {
  ShadowRootMode get mode =>
      ShadowRootMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(ShadowRootMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }

  bool get delegatesFocus => js_util.getProperty(this, 'delegatesFocus');
  set delegatesFocus(bool newValue) {
    js_util.setProperty(this, 'delegatesFocus', newValue);
  }

  SlotAssignmentMode get slotAssignment => SlotAssignmentMode.values
      .byName(js_util.getProperty(this, 'slotAssignment'));
  set slotAssignment(SlotAssignmentMode newValue) {
    js_util.setProperty(this, 'slotAssignment', newValue.name);
  }
}

@JS()
@staticInterop
class NamedNodeMap {
  external NamedNodeMap();
}

extension PropsNamedNodeMap on NamedNodeMap {
  int get length => js_util.getProperty(this, 'length');
  Attr? item(int index) => js_util.callMethod(this, 'item', [index]);

  Attr? getNamedItem(String qualifiedName) =>
      js_util.callMethod(this, 'getNamedItem', [qualifiedName]);

  Attr? getNamedItemNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'getNamedItemNS', [namespace, localName]);

  Attr? setNamedItem(Attr attr) =>
      js_util.callMethod(this, 'setNamedItem', [attr]);

  Attr? setNamedItemNS(Attr attr) =>
      js_util.callMethod(this, 'setNamedItemNS', [attr]);

  Attr removeNamedItem(String qualifiedName) =>
      js_util.callMethod(this, 'removeNamedItem', [qualifiedName]);

  Attr removeNamedItemNS(String? namespace, String localName) =>
      js_util.callMethod(this, 'removeNamedItemNS', [namespace, localName]);
}

@JS()
@staticInterop
class Attr implements Node {
  external Attr();
}

extension PropsAttr on Attr {
  String? get namespaceURI => js_util.getProperty(this, 'namespaceURI');
  String? get prefix => js_util.getProperty(this, 'prefix');
  String get localName => js_util.getProperty(this, 'localName');
  String get name => js_util.getProperty(this, 'name');
  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  Element? get ownerElement => js_util.getProperty(this, 'ownerElement');
  bool get specified => js_util.getProperty(this, 'specified');
}

@JS()
@staticInterop
class CharacterData implements Node, NonDocumentTypeChildNode, ChildNode {
  external CharacterData();
}

extension PropsCharacterData on CharacterData {
  String get data => js_util.getProperty(this, 'data');
  set data(String newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  String substringData(int offset, int count) =>
      js_util.callMethod(this, 'substringData', [offset, count]);

  Object appendData(String data) =>
      js_util.callMethod(this, 'appendData', [data]);

  Object insertData(int offset, String data) =>
      js_util.callMethod(this, 'insertData', [offset, data]);

  Object deleteData(int offset, int count) =>
      js_util.callMethod(this, 'deleteData', [offset, count]);

  Object replaceData(int offset, int count, String data) =>
      js_util.callMethod(this, 'replaceData', [offset, count, data]);
}

@JS()
@staticInterop
class Text implements CharacterData, GeometryUtils, Slottable {
  external Text([String? data = '']);
}

extension PropsText on Text {
  Text splitText(int offset) => js_util.callMethod(this, 'splitText', [offset]);

  String get wholeText => js_util.getProperty(this, 'wholeText');
}

@JS()
@staticInterop
class CDATASection implements Text {
  external CDATASection();
}

@JS()
@staticInterop
class ProcessingInstruction implements CharacterData, LinkStyle {
  external ProcessingInstruction();
}

extension PropsProcessingInstruction on ProcessingInstruction {
  String get target => js_util.getProperty(this, 'target');
}

@JS()
@staticInterop
class Comment implements CharacterData {
  external Comment([String? data = '']);
}

@JS()
@staticInterop
class AbstractRange {
  external AbstractRange();
}

extension PropsAbstractRange on AbstractRange {
  Node get startContainer => js_util.getProperty(this, 'startContainer');
  int get startOffset => js_util.getProperty(this, 'startOffset');
  Node get endContainer => js_util.getProperty(this, 'endContainer');
  int get endOffset => js_util.getProperty(this, 'endOffset');
  bool get collapsed => js_util.getProperty(this, 'collapsed');
}

@anonymous
@JS()
@staticInterop
class StaticRangeInit {
  external factory StaticRangeInit(
      {required Node startContainer,
      required int startOffset,
      required Node endContainer,
      required int endOffset});
}

extension PropsStaticRangeInit on StaticRangeInit {
  Node get startContainer => js_util.getProperty(this, 'startContainer');
  set startContainer(Node newValue) {
    js_util.setProperty(this, 'startContainer', newValue);
  }

  int get startOffset => js_util.getProperty(this, 'startOffset');
  set startOffset(int newValue) {
    js_util.setProperty(this, 'startOffset', newValue);
  }

  Node get endContainer => js_util.getProperty(this, 'endContainer');
  set endContainer(Node newValue) {
    js_util.setProperty(this, 'endContainer', newValue);
  }

  int get endOffset => js_util.getProperty(this, 'endOffset');
  set endOffset(int newValue) {
    js_util.setProperty(this, 'endOffset', newValue);
  }
}

@JS()
@staticInterop
class StaticRange implements AbstractRange {
  external StaticRange(StaticRangeInit init);
}

@JS()
@staticInterop
class Range implements AbstractRange {
  @JS('START_TO_START')
  external static int get startToStart;

  @JS('START_TO_END')
  external static int get startToEnd;

  @JS('END_TO_END')
  external static int get endToEnd;

  @JS('END_TO_START')
  external static int get endToStart;

  external Range();
}

extension PropsRange on Range {
  Node get commonAncestorContainer =>
      js_util.getProperty(this, 'commonAncestorContainer');
  Object setStart(Node node, int offset) =>
      js_util.callMethod(this, 'setStart', [node, offset]);

  Object setEnd(Node node, int offset) =>
      js_util.callMethod(this, 'setEnd', [node, offset]);

  Object setStartBefore(Node node) =>
      js_util.callMethod(this, 'setStartBefore', [node]);

  Object setStartAfter(Node node) =>
      js_util.callMethod(this, 'setStartAfter', [node]);

  Object setEndBefore(Node node) =>
      js_util.callMethod(this, 'setEndBefore', [node]);

  Object setEndAfter(Node node) =>
      js_util.callMethod(this, 'setEndAfter', [node]);

  Object collapse([bool? toStart = false]) =>
      js_util.callMethod(this, 'collapse', [toStart]);

  Object selectNode(Node node) =>
      js_util.callMethod(this, 'selectNode', [node]);

  Object selectNodeContents(Node node) =>
      js_util.callMethod(this, 'selectNodeContents', [node]);

  int compareBoundaryPoints(int how, Range sourceRange) =>
      js_util.callMethod(this, 'compareBoundaryPoints', [how, sourceRange]);

  Object deleteContents() => js_util.callMethod(this, 'deleteContents', []);

  DocumentFragment extractContents() =>
      js_util.callMethod(this, 'extractContents', []);

  DocumentFragment cloneContents() =>
      js_util.callMethod(this, 'cloneContents', []);

  Object insertNode(Node node) =>
      js_util.callMethod(this, 'insertNode', [node]);

  Object surroundContents(Node newParent) =>
      js_util.callMethod(this, 'surroundContents', [newParent]);

  Range cloneRange() => js_util.callMethod(this, 'cloneRange', []);

  Object detach() => js_util.callMethod(this, 'detach', []);

  bool isPointInRange(Node node, int offset) =>
      js_util.callMethod(this, 'isPointInRange', [node, offset]);

  int comparePoint(Node node, int offset) =>
      js_util.callMethod(this, 'comparePoint', [node, offset]);

  bool intersectsNode(Node node) =>
      js_util.callMethod(this, 'intersectsNode', [node]);

  String mToString() => js_util.callMethod(this, 'toString', []);

  DOMRectList getClientRects() =>
      js_util.callMethod(this, 'getClientRects', []);

  DOMRect getBoundingClientRect() =>
      js_util.callMethod(this, 'getBoundingClientRect', []);

  DocumentFragment createContextualFragment(String fragment) =>
      js_util.callMethod(this, 'createContextualFragment', [fragment]);
}

@JS()
@staticInterop
class NodeIterator {
  external NodeIterator();
}

extension PropsNodeIterator on NodeIterator {
  Node get root => js_util.getProperty(this, 'root');
  Node get referenceNode => js_util.getProperty(this, 'referenceNode');
  bool get pointerBeforeReferenceNode =>
      js_util.getProperty(this, 'pointerBeforeReferenceNode');
  int get whatToShow => js_util.getProperty(this, 'whatToShow');
  NodeFilter? get filter => js_util.getProperty(this, 'filter');
  Node? nextNode() => js_util.callMethod(this, 'nextNode', []);

  Node? previousNode() => js_util.callMethod(this, 'previousNode', []);

  Object detach() => js_util.callMethod(this, 'detach', []);
}

@JS()
@staticInterop
class TreeWalker {
  external TreeWalker();
}

extension PropsTreeWalker on TreeWalker {
  Node get root => js_util.getProperty(this, 'root');
  int get whatToShow => js_util.getProperty(this, 'whatToShow');
  NodeFilter? get filter => js_util.getProperty(this, 'filter');
  Node get currentNode => js_util.getProperty(this, 'currentNode');
  set currentNode(Node newValue) {
    js_util.setProperty(this, 'currentNode', newValue);
  }

  Node? parentNode() => js_util.callMethod(this, 'parentNode', []);

  Node? firstChild() => js_util.callMethod(this, 'firstChild', []);

  Node? lastChild() => js_util.callMethod(this, 'lastChild', []);

  Node? previousSibling() => js_util.callMethod(this, 'previousSibling', []);

  Node? nextSibling() => js_util.callMethod(this, 'nextSibling', []);

  Node? previousNode() => js_util.callMethod(this, 'previousNode', []);

  Node? nextNode() => js_util.callMethod(this, 'nextNode', []);
}

@JS()
@staticInterop
class NodeFilter {
  @JS('FILTER_ACCEPT')
  external static int get filterAccept;

  @JS('FILTER_REJECT')
  external static int get filterReject;

  @JS('FILTER_SKIP')
  external static int get filterSkip;

  @JS('SHOW_ALL')
  external static int get showAll;

  @JS('SHOW_ELEMENT')
  external static int get showElement;

  @JS('SHOW_ATTRIBUTE')
  external static int get showAttribute;

  @JS('SHOW_TEXT')
  external static int get showText;

  @JS('SHOW_CDATA_SECTION')
  external static int get showCdataSection;

  @JS('SHOW_ENTITY_REFERENCE')
  external static int get showEntityReference;

  @JS('SHOW_ENTITY')
  external static int get showEntity;

  @JS('SHOW_PROCESSING_INSTRUCTION')
  external static int get showProcessingInstruction;

  @JS('SHOW_COMMENT')
  external static int get showComment;

  @JS('SHOW_DOCUMENT')
  external static int get showDocument;

  @JS('SHOW_DOCUMENT_TYPE')
  external static int get showDocumentType;

  @JS('SHOW_DOCUMENT_FRAGMENT')
  external static int get showDocumentFragment;

  @JS('SHOW_NOTATION')
  external static int get showNotation;

  external NodeFilter();
}

extension PropsNodeFilter on NodeFilter {
  int acceptNode(Node node) => js_util.callMethod(this, 'acceptNode', [node]);
}

@JS()
@staticInterop
class DOMTokenList extends JsArray<String> {
  external DOMTokenList();
}

extension PropsDOMTokenList on DOMTokenList {
  int get length => js_util.getProperty(this, 'length');
  String? item(int index) => js_util.callMethod(this, 'item', [index]);

  bool contains(String token) => js_util.callMethod(this, 'contains', [token]);

  Object add([String? tokens1, String? tokens2, String? tokens3]) =>
      js_util.callMethod(this, 'add', [tokens1, tokens2, tokens3]);

  Object remove([String? tokens1, String? tokens2, String? tokens3]) =>
      js_util.callMethod(this, 'remove', [tokens1, tokens2, tokens3]);

  bool toggle(String token, [bool? force]) =>
      js_util.callMethod(this, 'toggle', [token, force]);

  bool replace(String token, String newToken) =>
      js_util.callMethod(this, 'replace', [token, newToken]);

  bool supports(String token) => js_util.callMethod(this, 'supports', [token]);

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class XPathResult {
  @JS('ANY_TYPE')
  external static int get anyType;

  @JS('NUMBER_TYPE')
  external static int get numberType;

  @JS('STRING_TYPE')
  external static int get stringType;

  @JS('BOOLEAN_TYPE')
  external static int get booleanType;

  @JS('UNORDERED_NODE_ITERATOR_TYPE')
  external static int get unorderedNodeIteratorType;

  @JS('ORDERED_NODE_ITERATOR_TYPE')
  external static int get orderedNodeIteratorType;

  @JS('UNORDERED_NODE_SNAPSHOT_TYPE')
  external static int get unorderedNodeSnapshotType;

  @JS('ORDERED_NODE_SNAPSHOT_TYPE')
  external static int get orderedNodeSnapshotType;

  @JS('ANY_UNORDERED_NODE_TYPE')
  external static int get anyUnorderedNodeType;

  @JS('FIRST_ORDERED_NODE_TYPE')
  external static int get firstOrderedNodeType;

  external XPathResult();
}

extension PropsXPathResult on XPathResult {
  int get resultType => js_util.getProperty(this, 'resultType');
  /* double | NaN */ dynamic get numberValue =>
      js_util.getProperty(this, 'numberValue');
  String get stringValue => js_util.getProperty(this, 'stringValue');
  bool get booleanValue => js_util.getProperty(this, 'booleanValue');
  Node? get singleNodeValue => js_util.getProperty(this, 'singleNodeValue');
  bool get invalidIteratorState =>
      js_util.getProperty(this, 'invalidIteratorState');
  int get snapshotLength => js_util.getProperty(this, 'snapshotLength');
  Node? iterateNext() => js_util.callMethod(this, 'iterateNext', []);

  Node? snapshotItem(int index) =>
      js_util.callMethod(this, 'snapshotItem', [index]);
}

@JS()
@staticInterop
class XPathExpression {
  external XPathExpression();
}

extension PropsXPathExpression on XPathExpression {
  XPathResult evaluate(Node contextNode,
          [int? type = 0, XPathResult? result]) =>
      js_util.callMethod(this, 'evaluate', [contextNode, type, result]);
}

@JS()
@staticInterop
class XPathNSResolver {
  external XPathNSResolver();
}

extension PropsXPathNSResolver on XPathNSResolver {
  String? lookupNamespaceURI(String? prefix) =>
      js_util.callMethod(this, 'lookupNamespaceURI', [prefix]);
}

@JS()
@staticInterop
class XPathEvaluatorBase {
  external XPathEvaluatorBase();
}

extension PropsXPathEvaluatorBase on XPathEvaluatorBase {
  XPathExpression createExpression(String expression,
          [XPathNSResolver? resolver]) =>
      js_util.callMethod(this, 'createExpression', [expression, resolver]);

  XPathNSResolver createNSResolver(Node nodeResolver) =>
      js_util.callMethod(this, 'createNSResolver', [nodeResolver]);

  XPathResult evaluate(String expression, Node contextNode,
          [XPathNSResolver? resolver, int? type = 0, XPathResult? result]) =>
      js_util.callMethod(
          this, 'evaluate', [expression, contextNode, resolver, type, result]);
}

@JS()
@staticInterop
class XPathEvaluator implements XPathEvaluatorBase {
  external XPathEvaluator();
}

@JS()
@staticInterop
class XSLTProcessor {
  external XSLTProcessor();
}

extension PropsXSLTProcessor on XSLTProcessor {
  Object importStylesheet(Node style) =>
      js_util.callMethod(this, 'importStylesheet', [style]);

  DocumentFragment transformToFragment(Node source, Document output) =>
      js_util.callMethod(this, 'transformToFragment', [source, output]);

  Document transformToDocument(Node source) =>
      js_util.callMethod(this, 'transformToDocument', [source]);

  Object setParameter(String namespaceURI, String localName, dynamic value) =>
      js_util
          .callMethod(this, 'setParameter', [namespaceURI, localName, value]);

  dynamic getParameter(String namespaceURI, String localName) =>
      js_util.callMethod(this, 'getParameter', [namespaceURI, localName]);

  Object removeParameter(String namespaceURI, String localName) =>
      js_util.callMethod(this, 'removeParameter', [namespaceURI, localName]);

  Object clearParameters() => js_util.callMethod(this, 'clearParameters', []);

  Object reset() => js_util.callMethod(this, 'reset', []);
}
