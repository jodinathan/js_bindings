/// Scalable Vector Graphics (SVG) 2
///
/// https://svgwg.org/svg2-draft/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library svg2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  All of the SVG DOM interfaces that correspond directly to
/// elements in the SVG language derive from the interface.
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
///    SVGElement
///
///
@JS()
@staticInterop
class SVGElement
    implements
        Element,
        GlobalEventHandlers,
        DocumentAndElementEventHandlers,
        HTMLOrSVGElement,
        SVGElementInstance,
        ElementCSSInlineStyle {
  external factory SVGElement();
}

extension PropsSVGElement on SVGElement {
  SVGAnimatedString get className => js_util.getProperty(this, 'className');
  SVGSVGElement? get ownerSVGElement =>
      js_util.getProperty(this, 'ownerSVGElement');
  SVGElement? get viewportElement =>
      js_util.getProperty(this, 'viewportElement');
}

@anonymous
@JS()
@staticInterop
class SVGBoundingBoxOptions {
  external factory SVGBoundingBoxOptions(
      {bool? fill = true,
      bool? stroke = false,
      bool? markers = false,
      bool? clipped = false});
}

extension PropsSVGBoundingBoxOptions on SVGBoundingBoxOptions {
  bool get fill => js_util.getProperty(this, 'fill');
  set fill(bool newValue) {
    js_util.setProperty(this, 'fill', newValue);
  }

  bool get stroke => js_util.getProperty(this, 'stroke');
  set stroke(bool newValue) {
    js_util.setProperty(this, 'stroke', newValue);
  }

  bool get markers => js_util.getProperty(this, 'markers');
  set markers(bool newValue) {
    js_util.setProperty(this, 'markers', newValue);
  }

  bool get clipped => js_util.getProperty(this, 'clipped');
  set clipped(bool newValue) {
    js_util.setProperty(this, 'clipped', newValue);
  }
}

///  The interface represents SVG elements whose primary purpose is
/// to directly render graphics into a group.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
@JS()
@staticInterop
class SVGGraphicsElement implements SVGElement, SVGTests {
  external factory SVGGraphicsElement();
}

extension PropsSVGGraphicsElement on SVGGraphicsElement {
  SVGAnimatedTransformList get transform =>
      js_util.getProperty(this, 'transform');
  DOMRect getBBox([SVGBoundingBoxOptions? options]) =>
      js_util.callMethod(this, 'getBBox', [options]);

  DOMMatrix? getCTM() => js_util.callMethod(this, 'getCTM', []);

  DOMMatrix? getScreenCTM() => js_util.callMethod(this, 'getScreenCTM', []);
}

///  The interface represents SVG elements whose rendering is defined
/// by geometry with an equivalent path, and which can be filled and
/// stroked. This includes paths and the basic shapes.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
@JS()
@staticInterop
class SVGGeometryElement implements SVGGraphicsElement {
  external factory SVGGeometryElement();
}

extension PropsSVGGeometryElement on SVGGeometryElement {
  SVGAnimatedNumber get pathLength => js_util.getProperty(this, 'pathLength');
  bool isPointInFill([DOMPointInit? point]) =>
      js_util.callMethod(this, 'isPointInFill', [point]);

  bool isPointInStroke([DOMPointInit? point]) =>
      js_util.callMethod(this, 'isPointInStroke', [point]);

  double getTotalLength() => js_util.callMethod(this, 'getTotalLength', []);

  DOMPoint getPointAtLength(double distance) =>
      js_util.callMethod(this, 'getPointAtLength', [distance]);
}

/// The interface corresponds to the [<number>] basic data type.
///  An object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being
/// thrown.
@JS()
@staticInterop
class SVGNumber {
  external factory SVGNumber();
}

extension PropsSVGNumber on SVGNumber {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class SVGLength {
  @JS('SVG_LENGTHTYPE_UNKNOWN')
  external static int get svgLengthtypeUnknown;

  @JS('SVG_LENGTHTYPE_NUMBER')
  external static int get svgLengthtypeNumber;

  @JS('SVG_LENGTHTYPE_PERCENTAGE')
  external static int get svgLengthtypePercentage;

  @JS('SVG_LENGTHTYPE_EMS')
  external static int get svgLengthtypeEms;

  @JS('SVG_LENGTHTYPE_EXS')
  external static int get svgLengthtypeExs;

  @JS('SVG_LENGTHTYPE_PX')
  external static int get svgLengthtypePx;

  @JS('SVG_LENGTHTYPE_CM')
  external static int get svgLengthtypeCm;

  @JS('SVG_LENGTHTYPE_MM')
  external static int get svgLengthtypeMm;

  @JS('SVG_LENGTHTYPE_IN')
  external static int get svgLengthtypeIn;

  @JS('SVG_LENGTHTYPE_PT')
  external static int get svgLengthtypePt;

  @JS('SVG_LENGTHTYPE_PC')
  external static int get svgLengthtypePc;

  external factory SVGLength();
}

extension PropsSVGLength on SVGLength {
  int get unitType => js_util.getProperty(this, 'unitType');
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  double get valueInSpecifiedUnits =>
      js_util.getProperty(this, 'valueInSpecifiedUnits');
  set valueInSpecifiedUnits(double newValue) {
    js_util.setProperty(this, 'valueInSpecifiedUnits', newValue);
  }

  String get valueAsString => js_util.getProperty(this, 'valueAsString');
  set valueAsString(String newValue) {
    js_util.setProperty(this, 'valueAsString', newValue);
  }

  void newValueSpecifiedUnits(int unitType, double valueInSpecifiedUnits) =>
      js_util.callMethod(
          this, 'newValueSpecifiedUnits', [unitType, valueInSpecifiedUnits]);

  void convertToSpecifiedUnits(int unitType) =>
      js_util.callMethod(this, 'convertToSpecifiedUnits', [unitType]);
}

///  The interface is used to represent a value that can be an
/// [<angle>] or [<number>] value. An reflected through the [animVal]
/// attribute is always read only.
///  An object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being
/// thrown.
///  An object can be associated with a particular element. The
/// associated element is used to determine which element's content
/// attribute to update if the object reflects an attribute. Unless
/// otherwise described, an object is not associated with any
/// element.
/// Every object operates in one of two modes:
///
///   Reflect the base value of a reflected animatable attribute
/// (being exposed through the [baseVal] member of an
/// [SVGAnimatedAngle]),
///   Be detached, which is the case for objects created with
/// [SVGSVGElement.createSVGAngle()].
///
@JS()
@staticInterop
class SVGAngle {
  @JS('SVG_ANGLETYPE_UNKNOWN')
  external static int get svgAngletypeUnknown;

  @JS('SVG_ANGLETYPE_UNSPECIFIED')
  external static int get svgAngletypeUnspecified;

  @JS('SVG_ANGLETYPE_DEG')
  external static int get svgAngletypeDeg;

  @JS('SVG_ANGLETYPE_RAD')
  external static int get svgAngletypeRad;

  @JS('SVG_ANGLETYPE_GRAD')
  external static int get svgAngletypeGrad;

  external factory SVGAngle();
}

extension PropsSVGAngle on SVGAngle {
  int get unitType => js_util.getProperty(this, 'unitType');
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  double get valueInSpecifiedUnits =>
      js_util.getProperty(this, 'valueInSpecifiedUnits');
  set valueInSpecifiedUnits(double newValue) {
    js_util.setProperty(this, 'valueInSpecifiedUnits', newValue);
  }

  String get valueAsString => js_util.getProperty(this, 'valueAsString');
  set valueAsString(String newValue) {
    js_util.setProperty(this, 'valueAsString', newValue);
  }

  void newValueSpecifiedUnits(int unitType, double valueInSpecifiedUnits) =>
      js_util.callMethod(
          this, 'newValueSpecifiedUnits', [unitType, valueInSpecifiedUnits]);

  void convertToSpecifiedUnits(int unitType) =>
      js_util.callMethod(this, 'convertToSpecifiedUnits', [unitType]);
}

@JS()
@staticInterop
class SVGNumberList {
  external factory SVGNumberList();
}

extension PropsSVGNumberList on SVGNumberList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  void clear() => js_util.callMethod(this, 'clear', []);

  SVGNumber initialize(SVGNumber newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  SVGNumber getItem(int index) => js_util.callMethod(this, 'getItem', [index]);

  SVGNumber insertItemBefore(SVGNumber newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  SVGNumber replaceItem(SVGNumber newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  SVGNumber removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  SVGNumber appendItem(SVGNumber newItem) =>
      js_util.callMethod(this, 'appendItem', [newItem]);
}

@JS()
@staticInterop
class SVGLengthList {
  external factory SVGLengthList();
}

extension PropsSVGLengthList on SVGLengthList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  void clear() => js_util.callMethod(this, 'clear', []);

  SVGLength initialize(SVGLength newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  SVGLength getItem(int index) => js_util.callMethod(this, 'getItem', [index]);

  SVGLength insertItemBefore(SVGLength newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  SVGLength replaceItem(SVGLength newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  SVGLength removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  SVGLength appendItem(SVGLength newItem) =>
      js_util.callMethod(this, 'appendItem', [newItem]);
}

@JS()
@staticInterop
class SVGStringList {
  external factory SVGStringList();
}

extension PropsSVGStringList on SVGStringList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  void clear() => js_util.callMethod(this, 'clear', []);

  String initialize(String newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  String getItem(int index) => js_util.callMethod(this, 'getItem', [index]);

  String insertItemBefore(String newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  String replaceItem(String newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  String removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  String appendItem(String newItem) =>
      js_util.callMethod(this, 'appendItem', [newItem]);
}

@JS()
@staticInterop
class SVGAnimatedBoolean {
  external factory SVGAnimatedBoolean();
}

extension PropsSVGAnimatedBoolean on SVGAnimatedBoolean {
  bool get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(bool newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  bool get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedEnumeration {
  external factory SVGAnimatedEnumeration();
}

extension PropsSVGAnimatedEnumeration on SVGAnimatedEnumeration {
  int get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(int newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  int get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedInteger {
  external factory SVGAnimatedInteger();
}

extension PropsSVGAnimatedInteger on SVGAnimatedInteger {
  int get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(int newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  int get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedNumber {
  external factory SVGAnimatedNumber();
}

extension PropsSVGAnimatedNumber on SVGAnimatedNumber {
  double get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(double newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  double get animVal => js_util.getProperty(this, 'animVal');
}

///  The interface represents attributes of type <length> which can
/// be animated.
@JS()
@staticInterop
class SVGAnimatedLength {
  external factory SVGAnimatedLength();
}

extension PropsSVGAnimatedLength on SVGAnimatedLength {
  SVGLength get baseVal => js_util.getProperty(this, 'baseVal');
  SVGLength get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedAngle {
  external factory SVGAnimatedAngle();
}

extension PropsSVGAnimatedAngle on SVGAnimatedAngle {
  SVGAngle get baseVal => js_util.getProperty(this, 'baseVal');
  SVGAngle get animVal => js_util.getProperty(this, 'animVal');
}

///  The interface represents string attributes which can be animated
/// from each SVG declaration. You need to create SVG attribute
/// before doing anything else, everything should be declared inside
/// this.
@JS()
@staticInterop
class SVGAnimatedString {
  external factory SVGAnimatedString();
}

extension PropsSVGAnimatedString on SVGAnimatedString {
  String get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(String newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  String get animVal => js_util.getProperty(this, 'animVal');
}

///  The interface is used for attributes of basic [SVGRect] which
/// can be animated.
@JS()
@staticInterop
class SVGAnimatedRect {
  external factory SVGAnimatedRect();
}

extension PropsSVGAnimatedRect on SVGAnimatedRect {
  DOMRect get baseVal => js_util.getProperty(this, 'baseVal');
  DOMRectReadOnly get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedNumberList {
  external factory SVGAnimatedNumberList();
}

extension PropsSVGAnimatedNumberList on SVGAnimatedNumberList {
  SVGNumberList get baseVal => js_util.getProperty(this, 'baseVal');
  SVGNumberList get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedLengthList {
  external factory SVGAnimatedLengthList();
}

extension PropsSVGAnimatedLengthList on SVGAnimatedLengthList {
  SVGLengthList get baseVal => js_util.getProperty(this, 'baseVal');
  SVGLengthList get animVal => js_util.getProperty(this, 'animVal');
}

///  The interface defines a commonly used set of constants used for
/// reflecting [gradientUnits], [patternContentUnits] and other
/// similar attributes.
@JS()
@staticInterop
class SVGUnitTypes {
  @JS('SVG_UNIT_TYPE_UNKNOWN')
  external static int get svgUnitTypeUnknown;

  @JS('SVG_UNIT_TYPE_USERSPACEONUSE')
  external static int get svgUnitTypeUserspaceonuse;

  @JS('SVG_UNIT_TYPE_OBJECTBOUNDINGBOX')
  external static int get svgUnitTypeObjectboundingbox;

  external factory SVGUnitTypes();
}

@JS()
@staticInterop
class SVGTests {
  external factory SVGTests();
}

extension PropsSVGTests on SVGTests {
  SVGStringList get requiredExtensions =>
      js_util.getProperty(this, 'requiredExtensions');
  SVGStringList get systemLanguage =>
      js_util.getProperty(this, 'systemLanguage');
}

@JS()
@staticInterop
class SVGFitToViewBox {
  external factory SVGFitToViewBox();
}

extension PropsSVGFitToViewBox on SVGFitToViewBox {
  SVGAnimatedRect get viewBox => js_util.getProperty(this, 'viewBox');
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');
}

@JS()
@staticInterop
class SVGURIReference {
  external factory SVGURIReference();
}

extension PropsSVGURIReference on SVGURIReference {
  SVGAnimatedString get href => js_util.getProperty(this, 'href');
}

///  The interface provides access to the properties of [<svg>]
/// elements, as well as methods to manipulate them. This interface
/// contains also various miscellaneous commonly-used utility
/// methods, such as matrix operations and the ability to control the
/// time of redraw on visual rendering devices.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGSVGElement
///
///
@JS()
@staticInterop
class SVGSVGElement
    implements SVGGraphicsElement, SVGFitToViewBox, WindowEventHandlers {
  external factory SVGSVGElement();
}

extension PropsSVGSVGElement on SVGSVGElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  double get currentScale => js_util.getProperty(this, 'currentScale');
  set currentScale(double newValue) {
    js_util.setProperty(this, 'currentScale', newValue);
  }

  DOMPointReadOnly get currentTranslate =>
      js_util.getProperty(this, 'currentTranslate');
  NodeList getIntersectionList(
          DOMRectReadOnly rect, SVGElement? referenceElement) =>
      js_util.callMethod(this, 'getIntersectionList', [rect, referenceElement]);

  NodeList getEnclosureList(
          DOMRectReadOnly rect, SVGElement? referenceElement) =>
      js_util.callMethod(this, 'getEnclosureList', [rect, referenceElement]);

  bool checkIntersection(SVGElement element, DOMRectReadOnly rect) =>
      js_util.callMethod(this, 'checkIntersection', [element, rect]);

  bool checkEnclosure(SVGElement element, DOMRectReadOnly rect) =>
      js_util.callMethod(this, 'checkEnclosure', [element, rect]);

  void deselectAll() => js_util.callMethod(this, 'deselectAll', []);

  SVGNumber createSVGNumber() =>
      js_util.callMethod(this, 'createSVGNumber', []);

  SVGLength createSVGLength() =>
      js_util.callMethod(this, 'createSVGLength', []);

  SVGAngle createSVGAngle() => js_util.callMethod(this, 'createSVGAngle', []);

  DOMPoint createSVGPoint() => js_util.callMethod(this, 'createSVGPoint', []);

  DOMMatrix createSVGMatrix() =>
      js_util.callMethod(this, 'createSVGMatrix', []);

  DOMRect createSVGRect() => js_util.callMethod(this, 'createSVGRect', []);

  SVGTransform createSVGTransform() =>
      js_util.callMethod(this, 'createSVGTransform', []);

  SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]) =>
      js_util.callMethod(this, 'createSVGTransformFromMatrix', [matrix]);

  Element getElementById(String elementId) =>
      js_util.callMethod(this, 'getElementById', [elementId]);

  int suspendRedraw(int maxWaitMilliseconds) =>
      js_util.callMethod(this, 'suspendRedraw', [maxWaitMilliseconds]);

  void unsuspendRedraw(int suspendHandleID) =>
      js_util.callMethod(this, 'unsuspendRedraw', [suspendHandleID]);

  void unsuspendRedrawAll() =>
      js_util.callMethod(this, 'unsuspendRedrawAll', []);

  void forceRedraw() => js_util.callMethod(this, 'forceRedraw', []);

  void pauseAnimations() => js_util.callMethod(this, 'pauseAnimations', []);

  void unpauseAnimations() => js_util.callMethod(this, 'unpauseAnimations', []);

  bool animationsPaused() => js_util.callMethod(this, 'animationsPaused', []);

  double getCurrentTime() => js_util.callMethod(this, 'getCurrentTime', []);

  void setCurrentTime(double seconds) =>
      js_util.callMethod(this, 'setCurrentTime', [seconds]);
}

/// The interface corresponds to the [<g>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGElement
///
///
@JS()
@staticInterop
class SVGGElement implements SVGGraphicsElement {
  external factory SVGGElement();
}

/// The interface corresponds to the [<defs>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGDefsElement
///
///
@JS()
@staticInterop
class SVGDefsElement implements SVGGraphicsElement {
  external factory SVGDefsElement();
}

/// The interface corresponds to the [<desc>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGDescElement
///
///
@JS()
@staticInterop
class SVGDescElement implements SVGElement {
  external factory SVGDescElement();
}

/// The interface corresponds to the [<metadata>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGMetadataElement
///
///
@JS()
@staticInterop
class SVGMetadataElement implements SVGElement {
  external factory SVGMetadataElement();
}

/// The interface corresponds to the [<title>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGTitleElement
///
///
@JS()
@staticInterop
class SVGTitleElement implements SVGElement {
  external factory SVGTitleElement();
}

/// The interface corresponds to the [<symbol>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGSymbolElement
///
///
@JS()
@staticInterop
class SVGSymbolElement implements SVGGraphicsElement, SVGFitToViewBox {
  external factory SVGSymbolElement();
}

@JS()
@staticInterop
class SVGUseElement implements SVGGraphicsElement, SVGURIReference {
  external factory SVGUseElement();
}

extension PropsSVGUseElement on SVGUseElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  SVGElement? get instanceRoot => js_util.getProperty(this, 'instanceRoot');
  SVGElement? get animatedInstanceRoot =>
      js_util.getProperty(this, 'animatedInstanceRoot');
}

@JS()
@staticInterop
class SVGUseElementShadowRoot implements ShadowRoot {
  external factory SVGUseElementShadowRoot();
}

@JS()
@staticInterop
class SVGElementInstance {
  external factory SVGElementInstance();
}

extension PropsSVGElementInstance on SVGElementInstance {
  SVGElement? get correspondingElement =>
      js_util.getProperty(this, 'correspondingElement');
  SVGUseElement? get correspondingUseElement =>
      js_util.getProperty(this, 'correspondingUseElement');
}

@JS()
@staticInterop
class ShadowAnimation implements Animation {
  external factory ShadowAnimation(Animation source, dynamic newTarget);
}

extension PropsShadowAnimation on ShadowAnimation {
  Animation get sourceAnimation => js_util.getProperty(this, 'sourceAnimation');
}

/// The interface corresponds to the [<switch>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGSwitchElement
///
///
@JS()
@staticInterop
class SVGSwitchElement implements SVGGraphicsElement {
  external factory SVGSwitchElement();
}

@JS()
@staticInterop
class GetSVGDocument {
  external factory GetSVGDocument();
}

extension PropsGetSVGDocument on GetSVGDocument {
  Document getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);
}

@JS()
@staticInterop
class SVGStyleElement implements SVGElement, LinkStyle {
  external factory SVGStyleElement();
}

extension PropsSVGStyleElement on SVGStyleElement {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }
}

@JS()
@staticInterop
class SVGTransform {
  @JS('SVG_TRANSFORM_UNKNOWN')
  external static int get svgTransformUnknown;

  @JS('SVG_TRANSFORM_MATRIX')
  external static int get svgTransformMatrix;

  @JS('SVG_TRANSFORM_TRANSLATE')
  external static int get svgTransformTranslate;

  @JS('SVG_TRANSFORM_SCALE')
  external static int get svgTransformScale;

  @JS('SVG_TRANSFORM_ROTATE')
  external static int get svgTransformRotate;

  @JS('SVG_TRANSFORM_SKEWX')
  external static int get svgTransformSkewx;

  @JS('SVG_TRANSFORM_SKEWY')
  external static int get svgTransformSkewy;

  external factory SVGTransform();
}

extension PropsSVGTransform on SVGTransform {
  int get type => js_util.getProperty(this, 'type');
  DOMMatrix get matrix => js_util.getProperty(this, 'matrix');
  double get angle => js_util.getProperty(this, 'angle');
  void setMatrix([DOMMatrix2DInit? matrix]) =>
      js_util.callMethod(this, 'setMatrix', [matrix]);

  void setTranslate(double tx, double ty) =>
      js_util.callMethod(this, 'setTranslate', [tx, ty]);

  void setScale(double sx, double sy) =>
      js_util.callMethod(this, 'setScale', [sx, sy]);

  void setRotate(double angle, double cx, double cy) =>
      js_util.callMethod(this, 'setRotate', [angle, cx, cy]);

  void setSkewX(double angle) => js_util.callMethod(this, 'setSkewX', [angle]);

  void setSkewY(double angle) => js_util.callMethod(this, 'setSkewY', [angle]);
}

@JS()
@staticInterop
class SVGTransformList {
  external factory SVGTransformList();
}

extension PropsSVGTransformList on SVGTransformList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  void clear() => js_util.callMethod(this, 'clear', []);

  SVGTransform initialize(SVGTransform newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  SVGTransform getItem(int index) =>
      js_util.callMethod(this, 'getItem', [index]);

  SVGTransform insertItemBefore(SVGTransform newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  SVGTransform replaceItem(SVGTransform newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  SVGTransform removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  SVGTransform appendItem(SVGTransform newItem) =>
      js_util.callMethod(this, 'appendItem', [newItem]);

  SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]) =>
      js_util.callMethod(this, 'createSVGTransformFromMatrix', [matrix]);

  SVGTransform? consolidate() => js_util.callMethod(this, 'consolidate', []);
}

@JS()
@staticInterop
class SVGAnimatedTransformList {
  external factory SVGAnimatedTransformList();
}

extension PropsSVGAnimatedTransformList on SVGAnimatedTransformList {
  SVGTransformList get baseVal => js_util.getProperty(this, 'baseVal');
  SVGTransformList get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGPreserveAspectRatio {
  @JS('SVG_PRESERVEASPECTRATIO_UNKNOWN')
  external static int get svgPreserveaspectratioUnknown;

  @JS('SVG_PRESERVEASPECTRATIO_NONE')
  external static int get svgPreserveaspectratioNone;

  @JS('SVG_PRESERVEASPECTRATIO_XMINYMIN')
  external static int get svgPreserveaspectratioXminymin;

  @JS('SVG_PRESERVEASPECTRATIO_XMIDYMIN')
  external static int get svgPreserveaspectratioXmidymin;

  @JS('SVG_PRESERVEASPECTRATIO_XMAXYMIN')
  external static int get svgPreserveaspectratioXmaxymin;

  @JS('SVG_PRESERVEASPECTRATIO_XMINYMID')
  external static int get svgPreserveaspectratioXminymid;

  @JS('SVG_PRESERVEASPECTRATIO_XMIDYMID')
  external static int get svgPreserveaspectratioXmidymid;

  @JS('SVG_PRESERVEASPECTRATIO_XMAXYMID')
  external static int get svgPreserveaspectratioXmaxymid;

  @JS('SVG_PRESERVEASPECTRATIO_XMINYMAX')
  external static int get svgPreserveaspectratioXminymax;

  @JS('SVG_PRESERVEASPECTRATIO_XMIDYMAX')
  external static int get svgPreserveaspectratioXmidymax;

  @JS('SVG_PRESERVEASPECTRATIO_XMAXYMAX')
  external static int get svgPreserveaspectratioXmaxymax;

  @JS('SVG_MEETORSLICE_UNKNOWN')
  external static int get svgMeetorsliceUnknown;

  @JS('SVG_MEETORSLICE_MEET')
  external static int get svgMeetorsliceMeet;

  @JS('SVG_MEETORSLICE_SLICE')
  external static int get svgMeetorsliceSlice;

  external factory SVGPreserveAspectRatio();
}

extension PropsSVGPreserveAspectRatio on SVGPreserveAspectRatio {
  int get align => js_util.getProperty(this, 'align');
  set align(int newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  int get meetOrSlice => js_util.getProperty(this, 'meetOrSlice');
  set meetOrSlice(int newValue) {
    js_util.setProperty(this, 'meetOrSlice', newValue);
  }
}

@JS()
@staticInterop
class SVGAnimatedPreserveAspectRatio {
  external factory SVGAnimatedPreserveAspectRatio();
}

extension PropsSVGAnimatedPreserveAspectRatio
    on SVGAnimatedPreserveAspectRatio {
  SVGPreserveAspectRatio get baseVal => js_util.getProperty(this, 'baseVal');
  SVGPreserveAspectRatio get animVal => js_util.getProperty(this, 'animVal');
}

/// The interface corresponds to the [<path>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGPathElement
///
///
///
///   Note: In SVG 2 the [getPathSegAtLength()] and
/// [createSVGPathSeg*] methods were removed and the [pathLength]
/// property and the [getTotalLength()] and [getPointAtLength()]
/// methods were moved to [SVGGeometryElement].
///
@JS()
@staticInterop
class SVGPathElement implements SVGGeometryElement {
  external factory SVGPathElement();
}

///  The interface provides access to the properties of [<rect>]
/// elements, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGRectElement
///
///
@JS()
@staticInterop
class SVGRectElement implements SVGGeometryElement {
  external factory SVGRectElement();
}

extension PropsSVGRectElement on SVGRectElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');
  SVGAnimatedLength get ry => js_util.getProperty(this, 'ry');
}

/// The interface is an interface for the [<circle>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGCircleElement
///
///
@JS()
@staticInterop
class SVGCircleElement implements SVGGeometryElement {
  external factory SVGCircleElement();
}

extension PropsSVGCircleElement on SVGCircleElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get r => js_util.getProperty(this, 'r');
}

///  The interface provides access to the properties of [<ellipse>]
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGEllipseElement
///
///
@JS()
@staticInterop
class SVGEllipseElement implements SVGGeometryElement {
  external factory SVGEllipseElement();
}

extension PropsSVGEllipseElement on SVGEllipseElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');
  SVGAnimatedLength get ry => js_util.getProperty(this, 'ry');
}

///  The interface provides access to the properties of [<line>]
/// elements, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGLineElement
///
///
@JS()
@staticInterop
class SVGLineElement implements SVGGeometryElement {
  external factory SVGLineElement();
}

extension PropsSVGLineElement on SVGLineElement {
  SVGAnimatedLength get x1 => js_util.getProperty(this, 'x1');
  SVGAnimatedLength get y1 => js_util.getProperty(this, 'y1');
  SVGAnimatedLength get x2 => js_util.getProperty(this, 'x2');
  SVGAnimatedLength get y2 => js_util.getProperty(this, 'y2');
}

@JS()
@staticInterop
class SVGAnimatedPoints {
  external factory SVGAnimatedPoints();
}

extension PropsSVGAnimatedPoints on SVGAnimatedPoints {
  SVGPointList get points => js_util.getProperty(this, 'points');
  SVGPointList get animatedPoints =>
      js_util.getProperty(this, 'animatedPoints');
}

/// The interface represents a list of [SVGPoint] objects.
///  An can be designated as read-only, which means that attempts to
/// modify the object will result in an exception being thrown.
@JS()
@staticInterop
class SVGPointList {
  external factory SVGPointList();
}

extension PropsSVGPointList on SVGPointList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  void clear() => js_util.callMethod(this, 'clear', []);

  DOMPoint initialize(DOMPoint newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  DOMPoint getItem(int index) => js_util.callMethod(this, 'getItem', [index]);

  DOMPoint insertItemBefore(DOMPoint newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  DOMPoint replaceItem(DOMPoint newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  DOMPoint removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  DOMPoint appendItem(DOMPoint newItem) =>
      js_util.callMethod(this, 'appendItem', [newItem]);
}

///  The interface provides access to the properties of [<polyline>]
/// elements, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGPolylineElement
///
///
@JS()
@staticInterop
class SVGPolylineElement implements SVGGeometryElement, SVGAnimatedPoints {
  external factory SVGPolylineElement();
}

///  The interface provides access to the properties of [<polygon>]
/// elements, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGGeometryElement
///
///
///
///
///
///    SVGPolygonElement
///
///
@JS()
@staticInterop
class SVGPolygonElement implements SVGGeometryElement, SVGAnimatedPoints {
  external factory SVGPolygonElement();
}

///  The interface is implemented by elements that support rendering
/// child text content. It is inherited by various text-related
/// interfaces, such as [SVGTextElement], [SVGTSpanElement],
/// [SVGTRefElement], [SVGAltGlyphElement] and [SVGTextPathElement].
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGTextContentElement
///
///
@JS()
@staticInterop
class SVGTextContentElement implements SVGGraphicsElement {
  @JS('LENGTHADJUST_UNKNOWN')
  external static int get lengthadjustUnknown;

  @JS('LENGTHADJUST_SPACING')
  external static int get lengthadjustSpacing;

  @JS('LENGTHADJUST_SPACINGANDGLYPHS')
  external static int get lengthadjustSpacingandglyphs;

  external factory SVGTextContentElement();
}

extension PropsSVGTextContentElement on SVGTextContentElement {
  SVGAnimatedLength get textLength => js_util.getProperty(this, 'textLength');
  SVGAnimatedEnumeration get lengthAdjust =>
      js_util.getProperty(this, 'lengthAdjust');
  int getNumberOfChars() => js_util.callMethod(this, 'getNumberOfChars', []);

  double getComputedTextLength() =>
      js_util.callMethod(this, 'getComputedTextLength', []);

  double getSubStringLength(int charnum, int nchars) =>
      js_util.callMethod(this, 'getSubStringLength', [charnum, nchars]);

  DOMPoint getStartPositionOfChar(int charnum) =>
      js_util.callMethod(this, 'getStartPositionOfChar', [charnum]);

  DOMPoint getEndPositionOfChar(int charnum) =>
      js_util.callMethod(this, 'getEndPositionOfChar', [charnum]);

  DOMRect getExtentOfChar(int charnum) =>
      js_util.callMethod(this, 'getExtentOfChar', [charnum]);

  double getRotationOfChar(int charnum) =>
      js_util.callMethod(this, 'getRotationOfChar', [charnum]);

  int getCharNumAtPosition([DOMPointInit? point]) =>
      js_util.callMethod(this, 'getCharNumAtPosition', [point]);

  void selectSubString(int charnum, int nchars) =>
      js_util.callMethod(this, 'selectSubString', [charnum, nchars]);
}

///  The interface is implemented by elements that support attributes
/// that position individual text glyphs. It is inherited by
/// [SVGTextElement], [SVGTSpanElement], [SVGTRefElement] and
/// [SVGAltGlyphElement].
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGTextContentElement
///
///
///
///
///
///    SVGTextPositioningElement
///
///
@JS()
@staticInterop
class SVGTextPositioningElement implements SVGTextContentElement {
  external factory SVGTextPositioningElement();
}

extension PropsSVGTextPositioningElement on SVGTextPositioningElement {
  SVGAnimatedLengthList get x => js_util.getProperty(this, 'x');
  SVGAnimatedLengthList get y => js_util.getProperty(this, 'y');
  SVGAnimatedLengthList get dx => js_util.getProperty(this, 'dx');
  SVGAnimatedLengthList get dy => js_util.getProperty(this, 'dy');
  SVGAnimatedNumberList get rotate => js_util.getProperty(this, 'rotate');
}

/// The interface corresponds to the [<text>] elements.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGTextContentElement
///
///
///
///
///
///    SVGTextPositioningElement
///
///
///
///
///
///    SVGTextElement
///
///
@JS()
@staticInterop
class SVGTextElement implements SVGTextPositioningElement {
  external factory SVGTextElement();
}

/// The interface represents a [<tspan>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGTextContentElement
///
///
///
///
///
///    SVGTextPositioningElement
///
///
///
///
///
///    SVGTSpanElement
///
///
@JS()
@staticInterop
class SVGTSpanElement implements SVGTextPositioningElement {
  external factory SVGTSpanElement();
}

/// The interface corresponds to the [<textPath>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGTextContentElement
///
///
///
///
///
///    SVGTextPathElement
///
///
@JS()
@staticInterop
class SVGTextPathElement implements SVGTextContentElement, SVGURIReference {
  @JS('TEXTPATH_METHODTYPE_UNKNOWN')
  external static int get textpathMethodtypeUnknown;

  @JS('TEXTPATH_METHODTYPE_ALIGN')
  external static int get textpathMethodtypeAlign;

  @JS('TEXTPATH_METHODTYPE_STRETCH')
  external static int get textpathMethodtypeStretch;

  @JS('TEXTPATH_SPACINGTYPE_UNKNOWN')
  external static int get textpathSpacingtypeUnknown;

  @JS('TEXTPATH_SPACINGTYPE_AUTO')
  external static int get textpathSpacingtypeAuto;

  @JS('TEXTPATH_SPACINGTYPE_EXACT')
  external static int get textpathSpacingtypeExact;

  external factory SVGTextPathElement();
}

extension PropsSVGTextPathElement on SVGTextPathElement {
  SVGAnimatedLength get startOffset => js_util.getProperty(this, 'startOffset');
  SVGAnimatedEnumeration get method => js_util.getProperty(this, 'method');
  SVGAnimatedEnumeration get spacing => js_util.getProperty(this, 'spacing');
}

/// The interface corresponds to the [<image>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGImageElement
///
///
@JS()
@staticInterop
class SVGImageElement implements SVGGraphicsElement, SVGURIReference {
  external factory SVGImageElement();
}

extension PropsSVGImageElement on SVGImageElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }
}

///  The interface provides access to the properties of
/// [<foreignObject>] elements, as well as methods to manipulate
/// them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGForeignObjectElement
///
///
@JS()
@staticInterop
class SVGForeignObjectElement implements SVGGraphicsElement {
  external factory SVGForeignObjectElement();
}

extension PropsSVGForeignObjectElement on SVGForeignObjectElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}

///  The interface provides access to the properties of [<marker>]
/// elements, as well as methods to manipulate them. The [<marker>]
/// element defines the graphics used for drawing marks on a shape.
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
///    SVGElement
///
///
///
///
///
///    SVGMarkerElement
///
///
///  The following properties and methods all return, or act on the
/// attributes of the [<marker>] element represented by .
@JS()
@staticInterop
class SVGMarkerElement implements SVGElement, SVGFitToViewBox {
  @JS('SVG_MARKERUNITS_UNKNOWN')
  external static int get svgMarkerunitsUnknown;

  @JS('SVG_MARKERUNITS_USERSPACEONUSE')
  external static int get svgMarkerunitsUserspaceonuse;

  @JS('SVG_MARKERUNITS_STROKEWIDTH')
  external static int get svgMarkerunitsStrokewidth;

  @JS('SVG_MARKER_ORIENT_UNKNOWN')
  external static int get svgMarkerOrientUnknown;

  @JS('SVG_MARKER_ORIENT_AUTO')
  external static int get svgMarkerOrientAuto;

  @JS('SVG_MARKER_ORIENT_ANGLE')
  external static int get svgMarkerOrientAngle;

  external factory SVGMarkerElement();
}

extension PropsSVGMarkerElement on SVGMarkerElement {
  SVGAnimatedLength get refX => js_util.getProperty(this, 'refX');
  SVGAnimatedLength get refY => js_util.getProperty(this, 'refY');
  SVGAnimatedEnumeration get markerUnits =>
      js_util.getProperty(this, 'markerUnits');
  SVGAnimatedLength get markerWidth => js_util.getProperty(this, 'markerWidth');
  SVGAnimatedLength get markerHeight =>
      js_util.getProperty(this, 'markerHeight');
  SVGAnimatedEnumeration get orientType =>
      js_util.getProperty(this, 'orientType');
  SVGAnimatedAngle get orientAngle => js_util.getProperty(this, 'orientAngle');
  String get orient => js_util.getProperty(this, 'orient');
  set orient(String newValue) {
    js_util.setProperty(this, 'orient', newValue);
  }

  void setOrientToAuto() => js_util.callMethod(this, 'setOrientToAuto', []);

  void setOrientToAngle(SVGAngle angle) =>
      js_util.callMethod(this, 'setOrientToAngle', [angle]);
}

///  The [SVGGradient] interface is a base interface used by
/// [SVGLinearGradientElement] and [SVGRadialGradientElement].
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
///    SVGElement
///
///
///
///
///
///    SVGGradientElement
///
///
@JS()
@staticInterop
class SVGGradientElement implements SVGElement, SVGURIReference {
  @JS('SVG_SPREADMETHOD_UNKNOWN')
  external static int get svgSpreadmethodUnknown;

  @JS('SVG_SPREADMETHOD_PAD')
  external static int get svgSpreadmethodPad;

  @JS('SVG_SPREADMETHOD_REFLECT')
  external static int get svgSpreadmethodReflect;

  @JS('SVG_SPREADMETHOD_REPEAT')
  external static int get svgSpreadmethodRepeat;

  external factory SVGGradientElement();
}

extension PropsSVGGradientElement on SVGGradientElement {
  SVGAnimatedEnumeration get gradientUnits =>
      js_util.getProperty(this, 'gradientUnits');
  SVGAnimatedTransformList get gradientTransform =>
      js_util.getProperty(this, 'gradientTransform');
  SVGAnimatedEnumeration get spreadMethod =>
      js_util.getProperty(this, 'spreadMethod');
}

/// The interface corresponds to the [<linearGradient>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGradientElement
///
///
///
///
///
///    SVGLinearGradientElement
///
///
@JS()
@staticInterop
class SVGLinearGradientElement implements SVGGradientElement {
  external factory SVGLinearGradientElement();
}

extension PropsSVGLinearGradientElement on SVGLinearGradientElement {
  SVGAnimatedLength get x1 => js_util.getProperty(this, 'x1');
  SVGAnimatedLength get y1 => js_util.getProperty(this, 'y1');
  SVGAnimatedLength get x2 => js_util.getProperty(this, 'x2');
  SVGAnimatedLength get y2 => js_util.getProperty(this, 'y2');
}

/// The interface corresponds to the [<RadialGradient>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGGradientElement
///
///
///
///
///
///    SVGRadialGradientElement
///
///
@JS()
@staticInterop
class SVGRadialGradientElement implements SVGGradientElement {
  external factory SVGRadialGradientElement();
}

extension PropsSVGRadialGradientElement on SVGRadialGradientElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get r => js_util.getProperty(this, 'r');
  SVGAnimatedLength get fx => js_util.getProperty(this, 'fx');
  SVGAnimatedLength get fy => js_util.getProperty(this, 'fy');
  SVGAnimatedLength get fr => js_util.getProperty(this, 'fr');
}

/// The interface corresponds to the [<stop>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGStopElement
///
///
@JS()
@staticInterop
class SVGStopElement implements SVGElement {
  external factory SVGStopElement();
}

extension PropsSVGStopElement on SVGStopElement {
  SVGAnimatedNumber get offset => js_util.getProperty(this, 'offset');
}

/// The interface corresponds to the [<pattern>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGPatternElement
///
///
@JS()
@staticInterop
class SVGPatternElement
    implements SVGElement, SVGFitToViewBox, SVGURIReference {
  external factory SVGPatternElement();
}

extension PropsSVGPatternElement on SVGPatternElement {
  SVGAnimatedEnumeration get patternUnits =>
      js_util.getProperty(this, 'patternUnits');
  SVGAnimatedEnumeration get patternContentUnits =>
      js_util.getProperty(this, 'patternContentUnits');
  SVGAnimatedTransformList get patternTransform =>
      js_util.getProperty(this, 'patternTransform');
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}

/// The interface corresponds to the SVG [<script>] element.
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
///    SVGElement
///
///
///
///
///
///    SVGScriptElement
///
///
@JS()
@staticInterop
class SVGScriptElement implements SVGElement, SVGURIReference {
  external factory SVGScriptElement();
}

extension PropsSVGScriptElement on SVGScriptElement {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }
}

///  The interface provides access to the properties of an [<a>]
/// element, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGGraphicsElement
///
///
///
///
///
///    SVGAElement
///
///
@JS()
@staticInterop
class SVGAElement implements SVGGraphicsElement, SVGURIReference {
  external factory SVGAElement();
}

extension PropsSVGAElement on SVGAElement {
  SVGAnimatedString get target => js_util.getProperty(this, 'target');
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

///  The interface provides access to the properties of [<view>]
/// elements, as well as methods to manipulate them.
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
///    SVGElement
///
///
///
///
///
///    SVGViewElement
///
///
@JS()
@staticInterop
class SVGViewElement implements SVGElement, SVGFitToViewBox {
  external factory SVGViewElement();
}
