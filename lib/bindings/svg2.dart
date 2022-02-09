/// Scalable Vector Graphics (SVG) 2
///
/// https://svgwg.org/svg2-draft/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library svg2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external SVGElement();
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

@JS()
@staticInterop
class SVGGraphicsElement implements SVGElement, SVGTests {
  external SVGGraphicsElement();
}

extension PropsSVGGraphicsElement on SVGGraphicsElement {
  SVGAnimatedTransformList get transform =>
      js_util.getProperty(this, 'transform');
  DOMRect getBBox([SVGBoundingBoxOptions? options]) =>
      js_util.callMethod(this, 'getBBox', [options]);

  DOMMatrix? getCTM() => js_util.callMethod(this, 'getCTM', []);

  DOMMatrix? getScreenCTM() => js_util.callMethod(this, 'getScreenCTM', []);
}

@JS()
@staticInterop
class SVGGeometryElement implements SVGGraphicsElement {
  external SVGGeometryElement();
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

@JS()
@staticInterop
class SVGNumber {
  external SVGNumber();
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

  external SVGLength();
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

  Object newValueSpecifiedUnits(int unitType, double valueInSpecifiedUnits) =>
      js_util.callMethod(
          this, 'newValueSpecifiedUnits', [unitType, valueInSpecifiedUnits]);

  Object convertToSpecifiedUnits(int unitType) =>
      js_util.callMethod(this, 'convertToSpecifiedUnits', [unitType]);
}

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

  external SVGAngle();
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

  Object newValueSpecifiedUnits(int unitType, double valueInSpecifiedUnits) =>
      js_util.callMethod(
          this, 'newValueSpecifiedUnits', [unitType, valueInSpecifiedUnits]);

  Object convertToSpecifiedUnits(int unitType) =>
      js_util.callMethod(this, 'convertToSpecifiedUnits', [unitType]);
}

@JS()
@staticInterop
class SVGNumberList {
  external SVGNumberList();
}

extension PropsSVGNumberList on SVGNumberList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  Object clear() => js_util.callMethod(this, 'clear', []);

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
  external SVGLengthList();
}

extension PropsSVGLengthList on SVGLengthList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  Object clear() => js_util.callMethod(this, 'clear', []);

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
  external SVGStringList();
}

extension PropsSVGStringList on SVGStringList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  Object clear() => js_util.callMethod(this, 'clear', []);

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
  external SVGAnimatedBoolean();
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
  external SVGAnimatedEnumeration();
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
  external SVGAnimatedInteger();
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
  external SVGAnimatedNumber();
}

extension PropsSVGAnimatedNumber on SVGAnimatedNumber {
  double get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(double newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  double get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedLength {
  external SVGAnimatedLength();
}

extension PropsSVGAnimatedLength on SVGAnimatedLength {
  SVGLength get baseVal => js_util.getProperty(this, 'baseVal');
  SVGLength get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedAngle {
  external SVGAnimatedAngle();
}

extension PropsSVGAnimatedAngle on SVGAnimatedAngle {
  SVGAngle get baseVal => js_util.getProperty(this, 'baseVal');
  SVGAngle get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedString {
  external SVGAnimatedString();
}

extension PropsSVGAnimatedString on SVGAnimatedString {
  String get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(String newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  String get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedRect {
  external SVGAnimatedRect();
}

extension PropsSVGAnimatedRect on SVGAnimatedRect {
  DOMRect get baseVal => js_util.getProperty(this, 'baseVal');
  DOMRectReadOnly get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedNumberList {
  external SVGAnimatedNumberList();
}

extension PropsSVGAnimatedNumberList on SVGAnimatedNumberList {
  SVGNumberList get baseVal => js_util.getProperty(this, 'baseVal');
  SVGNumberList get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGAnimatedLengthList {
  external SVGAnimatedLengthList();
}

extension PropsSVGAnimatedLengthList on SVGAnimatedLengthList {
  SVGLengthList get baseVal => js_util.getProperty(this, 'baseVal');
  SVGLengthList get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGUnitTypes {
  @JS('SVG_UNIT_TYPE_UNKNOWN')
  external static int get svgUnitTypeUnknown;

  @JS('SVG_UNIT_TYPE_USERSPACEONUSE')
  external static int get svgUnitTypeUserspaceonuse;

  @JS('SVG_UNIT_TYPE_OBJECTBOUNDINGBOX')
  external static int get svgUnitTypeObjectboundingbox;

  external SVGUnitTypes();
}

@JS()
@staticInterop
class SVGTests {
  external SVGTests();
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
  external SVGFitToViewBox();
}

extension PropsSVGFitToViewBox on SVGFitToViewBox {
  SVGAnimatedRect get viewBox => js_util.getProperty(this, 'viewBox');
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');
}

@JS()
@staticInterop
class SVGURIReference {
  external SVGURIReference();
}

extension PropsSVGURIReference on SVGURIReference {
  SVGAnimatedString get href => js_util.getProperty(this, 'href');
}

@JS()
@staticInterop
class SVGSVGElement
    implements SVGGraphicsElement, SVGFitToViewBox, WindowEventHandlers {
  external SVGSVGElement();
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

  Object deselectAll() => js_util.callMethod(this, 'deselectAll', []);

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

  Object unsuspendRedraw(int suspendHandleID) =>
      js_util.callMethod(this, 'unsuspendRedraw', [suspendHandleID]);

  Object unsuspendRedrawAll() =>
      js_util.callMethod(this, 'unsuspendRedrawAll', []);

  Object forceRedraw() => js_util.callMethod(this, 'forceRedraw', []);

  Object pauseAnimations() => js_util.callMethod(this, 'pauseAnimations', []);

  Object unpauseAnimations() =>
      js_util.callMethod(this, 'unpauseAnimations', []);

  bool animationsPaused() => js_util.callMethod(this, 'animationsPaused', []);

  double getCurrentTime() => js_util.callMethod(this, 'getCurrentTime', []);

  Object setCurrentTime(double seconds) =>
      js_util.callMethod(this, 'setCurrentTime', [seconds]);
}

@JS()
@staticInterop
class SVGGElement implements SVGGraphicsElement {
  external SVGGElement();
}

@JS()
@staticInterop
class SVGDefsElement implements SVGGraphicsElement {
  external SVGDefsElement();
}

@JS()
@staticInterop
class SVGDescElement implements SVGElement {
  external SVGDescElement();
}

@JS()
@staticInterop
class SVGMetadataElement implements SVGElement {
  external SVGMetadataElement();
}

@JS()
@staticInterop
class SVGTitleElement implements SVGElement {
  external SVGTitleElement();
}

@JS()
@staticInterop
class SVGSymbolElement implements SVGGraphicsElement, SVGFitToViewBox {
  external SVGSymbolElement();
}

@JS()
@staticInterop
class SVGUseElement implements SVGGraphicsElement, SVGURIReference {
  external SVGUseElement();
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
  external SVGUseElementShadowRoot();
}

@JS()
@staticInterop
class SVGElementInstance {
  external SVGElementInstance();
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
  external ShadowAnimation(Animation source, dynamic newTarget);
}

extension PropsShadowAnimation on ShadowAnimation {
  Animation get sourceAnimation => js_util.getProperty(this, 'sourceAnimation');
}

@JS()
@staticInterop
class SVGSwitchElement implements SVGGraphicsElement {
  external SVGSwitchElement();
}

@JS()
@staticInterop
class GetSVGDocument {
  external GetSVGDocument();
}

extension PropsGetSVGDocument on GetSVGDocument {
  Document getSVGDocument() => js_util.callMethod(this, 'getSVGDocument', []);
}

@JS()
@staticInterop
class SVGStyleElement implements SVGElement, LinkStyle {
  external SVGStyleElement();
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

  external SVGTransform();
}

extension PropsSVGTransform on SVGTransform {
  int get type => js_util.getProperty(this, 'type');
  DOMMatrix get matrix => js_util.getProperty(this, 'matrix');
  double get angle => js_util.getProperty(this, 'angle');
  Object setMatrix([DOMMatrix2DInit? matrix]) =>
      js_util.callMethod(this, 'setMatrix', [matrix]);

  Object setTranslate(double tx, double ty) =>
      js_util.callMethod(this, 'setTranslate', [tx, ty]);

  Object setScale(double sx, double sy) =>
      js_util.callMethod(this, 'setScale', [sx, sy]);

  Object setRotate(double angle, double cx, double cy) =>
      js_util.callMethod(this, 'setRotate', [angle, cx, cy]);

  Object setSkewX(double angle) =>
      js_util.callMethod(this, 'setSkewX', [angle]);

  Object setSkewY(double angle) =>
      js_util.callMethod(this, 'setSkewY', [angle]);
}

@JS()
@staticInterop
class SVGTransformList {
  external SVGTransformList();
}

extension PropsSVGTransformList on SVGTransformList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  Object clear() => js_util.callMethod(this, 'clear', []);

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
  external SVGAnimatedTransformList();
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

  external SVGPreserveAspectRatio();
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
  external SVGAnimatedPreserveAspectRatio();
}

extension PropsSVGAnimatedPreserveAspectRatio
    on SVGAnimatedPreserveAspectRatio {
  SVGPreserveAspectRatio get baseVal => js_util.getProperty(this, 'baseVal');
  SVGPreserveAspectRatio get animVal => js_util.getProperty(this, 'animVal');
}

@JS()
@staticInterop
class SVGPathElement implements SVGGeometryElement {
  external SVGPathElement();
}

@JS()
@staticInterop
class SVGRectElement implements SVGGeometryElement {
  external SVGRectElement();
}

extension PropsSVGRectElement on SVGRectElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');
  SVGAnimatedLength get ry => js_util.getProperty(this, 'ry');
}

@JS()
@staticInterop
class SVGCircleElement implements SVGGeometryElement {
  external SVGCircleElement();
}

extension PropsSVGCircleElement on SVGCircleElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get r => js_util.getProperty(this, 'r');
}

@JS()
@staticInterop
class SVGEllipseElement implements SVGGeometryElement {
  external SVGEllipseElement();
}

extension PropsSVGEllipseElement on SVGEllipseElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');
  SVGAnimatedLength get ry => js_util.getProperty(this, 'ry');
}

@JS()
@staticInterop
class SVGLineElement implements SVGGeometryElement {
  external SVGLineElement();
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
  external SVGAnimatedPoints();
}

extension PropsSVGAnimatedPoints on SVGAnimatedPoints {
  SVGPointList get points => js_util.getProperty(this, 'points');
  SVGPointList get animatedPoints =>
      js_util.getProperty(this, 'animatedPoints');
}

@JS()
@staticInterop
class SVGPointList {
  external SVGPointList();
}

extension PropsSVGPointList on SVGPointList {
  int get length => js_util.getProperty(this, 'length');
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');
  Object clear() => js_util.callMethod(this, 'clear', []);

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

@JS()
@staticInterop
class SVGPolylineElement implements SVGGeometryElement, SVGAnimatedPoints {
  external SVGPolylineElement();
}

@JS()
@staticInterop
class SVGPolygonElement implements SVGGeometryElement, SVGAnimatedPoints {
  external SVGPolygonElement();
}

@JS()
@staticInterop
class SVGTextContentElement implements SVGGraphicsElement {
  @JS('LENGTHADJUST_UNKNOWN')
  external static int get lengthadjustUnknown;

  @JS('LENGTHADJUST_SPACING')
  external static int get lengthadjustSpacing;

  @JS('LENGTHADJUST_SPACINGANDGLYPHS')
  external static int get lengthadjustSpacingandglyphs;

  external SVGTextContentElement();
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

  Object selectSubString(int charnum, int nchars) =>
      js_util.callMethod(this, 'selectSubString', [charnum, nchars]);
}

@JS()
@staticInterop
class SVGTextPositioningElement implements SVGTextContentElement {
  external SVGTextPositioningElement();
}

extension PropsSVGTextPositioningElement on SVGTextPositioningElement {
  SVGAnimatedLengthList get x => js_util.getProperty(this, 'x');
  SVGAnimatedLengthList get y => js_util.getProperty(this, 'y');
  SVGAnimatedLengthList get dx => js_util.getProperty(this, 'dx');
  SVGAnimatedLengthList get dy => js_util.getProperty(this, 'dy');
  SVGAnimatedNumberList get rotate => js_util.getProperty(this, 'rotate');
}

@JS()
@staticInterop
class SVGTextElement implements SVGTextPositioningElement {
  external SVGTextElement();
}

@JS()
@staticInterop
class SVGTSpanElement implements SVGTextPositioningElement {
  external SVGTSpanElement();
}

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

  external SVGTextPathElement();
}

extension PropsSVGTextPathElement on SVGTextPathElement {
  SVGAnimatedLength get startOffset => js_util.getProperty(this, 'startOffset');
  SVGAnimatedEnumeration get method => js_util.getProperty(this, 'method');
  SVGAnimatedEnumeration get spacing => js_util.getProperty(this, 'spacing');
}

@JS()
@staticInterop
class SVGImageElement implements SVGGraphicsElement, SVGURIReference {
  external SVGImageElement();
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

@JS()
@staticInterop
class SVGForeignObjectElement implements SVGGraphicsElement {
  external SVGForeignObjectElement();
}

extension PropsSVGForeignObjectElement on SVGForeignObjectElement {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}

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

  external SVGMarkerElement();
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

  Object setOrientToAuto() => js_util.callMethod(this, 'setOrientToAuto', []);

  Object setOrientToAngle(SVGAngle angle) =>
      js_util.callMethod(this, 'setOrientToAngle', [angle]);
}

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

  external SVGGradientElement();
}

extension PropsSVGGradientElement on SVGGradientElement {
  SVGAnimatedEnumeration get gradientUnits =>
      js_util.getProperty(this, 'gradientUnits');
  SVGAnimatedTransformList get gradientTransform =>
      js_util.getProperty(this, 'gradientTransform');
  SVGAnimatedEnumeration get spreadMethod =>
      js_util.getProperty(this, 'spreadMethod');
}

@JS()
@staticInterop
class SVGLinearGradientElement implements SVGGradientElement {
  external SVGLinearGradientElement();
}

extension PropsSVGLinearGradientElement on SVGLinearGradientElement {
  SVGAnimatedLength get x1 => js_util.getProperty(this, 'x1');
  SVGAnimatedLength get y1 => js_util.getProperty(this, 'y1');
  SVGAnimatedLength get x2 => js_util.getProperty(this, 'x2');
  SVGAnimatedLength get y2 => js_util.getProperty(this, 'y2');
}

@JS()
@staticInterop
class SVGRadialGradientElement implements SVGGradientElement {
  external SVGRadialGradientElement();
}

extension PropsSVGRadialGradientElement on SVGRadialGradientElement {
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');
  SVGAnimatedLength get r => js_util.getProperty(this, 'r');
  SVGAnimatedLength get fx => js_util.getProperty(this, 'fx');
  SVGAnimatedLength get fy => js_util.getProperty(this, 'fy');
  SVGAnimatedLength get fr => js_util.getProperty(this, 'fr');
}

@JS()
@staticInterop
class SVGStopElement implements SVGElement {
  external SVGStopElement();
}

extension PropsSVGStopElement on SVGStopElement {
  SVGAnimatedNumber get offset => js_util.getProperty(this, 'offset');
}

@JS()
@staticInterop
class SVGPatternElement
    implements SVGElement, SVGFitToViewBox, SVGURIReference {
  external SVGPatternElement();
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

@JS()
@staticInterop
class SVGScriptElement implements SVGElement, SVGURIReference {
  external SVGScriptElement();
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

@JS()
@staticInterop
class SVGAElement implements SVGGraphicsElement, SVGURIReference {
  external SVGAElement();
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

@JS()
@staticInterop
class SVGViewElement implements SVGElement, SVGFitToViewBox {
  external SVGViewElement();
}
