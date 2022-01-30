/// Scalable Vector Graphics (SVG) 2
///
/// https://svgwg.org/svg2-draft/
@JS('window')
@staticInterop
library svg11;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
svg11
cssom_1
dom
geometry_1
web_animations_1
css_pseudo_4 */

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
  external SVGElement();
}

extension PropsSVGElement on SVGElement {
  ///  An [SVGAnimatedString] that reflects the value of the [class]
  /// attribute on the given element, or the empty string if [class] is
  /// not present. This attribute is deprecated and may be removed in a
  /// future version of this specification. Authors are advised to use
  /// [Element.classList] instead.
  ///
  @override
  @deprecated
  SVGAnimatedString get className => js_util.getProperty(this, 'className');

  ///  An [SVGSVGElement] referring to the nearest ancestor [<svg>]
  /// element. [null] if the given element is the outermost [<svg>]
  /// element.
  ///
  SVGSVGElement? get ownerSVGElement =>
      js_util.getProperty(this, 'ownerSVGElement');

  ///  The [SVGElement], which established the current viewport. Often,
  /// the nearest ancestor [<svg>] element. [null] if the given element
  /// is the outermost [<svg>] element.
  ///
  SVGElement? get viewportElement =>
      js_util.getProperty(this, 'viewportElement');
}

@anonymous
@JS()
@staticInterop
class SVGBoundingBoxOptions {
  external factory SVGBoundingBoxOptions(
      {bool fill = true,
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
  external SVGGraphicsElement();
}

extension PropsSVGGraphicsElement on SVGGraphicsElement {
  ///  An [SVGAnimatedTransformList] reflecting the computed value of
  /// the property and its corresponding [transform] attribute of the
  /// given element.
  ///
  SVGAnimatedTransformList get transform =>
      js_util.getProperty(this, 'transform');

  ///  Returns a [DOMRect] representing the computed bounding box of
  /// the current element.
  ///
  /// let bboxRect = object.getBBox();
  ///
  DOMRect getBBox([SVGBoundingBoxOptions? options]) =>
      js_util.callMethod(this, 'getBBox', [options]);

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to its SVG viewport's
  /// coordinate system.
  ///
  DOMMatrix? getCTM() => js_util.callMethod(this, 'getCTM', []);

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to the coordinate system
  /// of the SVG viewport for the SVG document fragment.
  ///
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
  external SVGGeometryElement();
}

extension PropsSVGGeometryElement on SVGGeometryElement {
  /// This property reflects the [pathLength] attribute.
  ///
  SVGAnimatedNumber get pathLength => js_util.getProperty(this, 'pathLength');

  ///  Determines whether a given point is within the fill shape of an
  /// element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the fill.
  ///
  /// boolean someElement.isPointInFill(DOMPointInit point);
  ///
  bool isPointInFill([DOMPointInit? point]) =>
      js_util.callMethod(this, 'isPointInFill', [point]);

  ///  Determines whether a given point is within the stroke shape of
  /// an element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the stroke.
  ///
  /// boolean someElement.isPointInStroke(DOMPointInit point);
  ///
  bool isPointInStroke([DOMPointInit? point]) =>
      js_util.callMethod(this, 'isPointInStroke', [point]);

  ///  Returns the user agent's computed value for the total length of
  /// the path in user units.
  ///
  /// float someElement.getTotalLength();
  ///
  double getTotalLength() => js_util.callMethod(this, 'getTotalLength', []);

  /// Returns the point at a given distance along the path.
  ///
  /// DOMPoint someElement.getPointAtLength(float distance);
  ///
  DOMPoint getPointAtLength(

          /// A float referring to the distance along the path.
          ///
          double distance) =>
      js_util.callMethod(this, 'getPointAtLength', [distance]);
}

/// The interface corresponds to the [<number>] basic data type.
///  An object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being
/// thrown.
@JS()
@staticInterop
class SVGNumber {
  external SVGNumber();
}

extension PropsSVGNumber on SVGNumber {
  /// A float representing the number.
  ///    Note: If the [SVGNumber] is read-only, a [Exception] with the
  /// code NO_MODIFICATION_ALLOWED_ERR is raised on an attempt to
  /// change the value.
  ///
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@JS()
@staticInterop
class SVGLength {
  external static int get SVG_LENGTHTYPE_UNKNOWN;
  external static int get SVG_LENGTHTYPE_NUMBER;
  external static int get SVG_LENGTHTYPE_PERCENTAGE;
  external static int get SVG_LENGTHTYPE_EMS;
  external static int get SVG_LENGTHTYPE_EXS;
  external static int get SVG_LENGTHTYPE_PX;
  external static int get SVG_LENGTHTYPE_CM;
  external static int get SVG_LENGTHTYPE_MM;
  external static int get SVG_LENGTHTYPE_IN;
  external static int get SVG_LENGTHTYPE_PT;
  external static int get SVG_LENGTHTYPE_PC;
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
  external static int get SVG_ANGLETYPE_UNKNOWN;
  external static int get SVG_ANGLETYPE_UNSPECIFIED;
  external static int get SVG_ANGLETYPE_DEG;
  external static int get SVG_ANGLETYPE_RAD;
  external static int get SVG_ANGLETYPE_GRAD;
  external SVGAngle();
}

extension PropsSVGAngle on SVGAngle {
  ///  The type of the value as specified by one of the
  /// [SVG_ANGLETYPE_*] constants defined on this interface.
  ///
  int get unitType => js_util.getProperty(this, 'unitType');

  ///  The value as a floating point value, in user units. Setting this
  /// attribute will cause [valueInSpecifiedUnits] and [valueAsString]
  /// to be updated automatically to reflect this setting.
  ///    Exceptions on setting: A [Exception] with code
  /// [NO_MODIFICATION_ALLOWED_ERR] is raised when the length
  /// corresponds to a read-only attribute, or when the object itself
  /// is read-only.
  ///
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  ///  The value as a floating point value, in the units expressed by
  /// [unitType]. Setting this attribute will cause [value] and
  /// [valueAsString] to be updated automatically to reflect this
  /// setting.
  ///    Exceptions on setting: A [Exception] with code
  /// [NO_MODIFICATION_ALLOWED_ERR] is raised when the length
  /// corresponds to a read-only attribute, or when the object itself
  /// is read-only.
  ///
  double get valueInSpecifiedUnits =>
      js_util.getProperty(this, 'valueInSpecifiedUnits');
  set valueInSpecifiedUnits(double newValue) {
    js_util.setProperty(this, 'valueInSpecifiedUnits', newValue);
  }

  ///  The value as a [String] value, in the units expressed by
  /// [unitType]. Setting this attribute will cause [value],
  /// [valueInSpecifiedUnits], and [unitType] to be updated
  /// automatically to reflect this setting.
  ///   Exceptions on setting:
  ///    A [Exception] with code [SYNTAX_ERR] is raised if the assigned
  /// string cannot be parsed as a valid [<angle>].
  ///    A [Exception] with code [NO_MODIFICATION_ALLOWED_ERR] is
  /// raised when the length corresponds to a read-only attribute, or
  /// when the object itself is read-only.
  ///
  String get valueAsString => js_util.getProperty(this, 'valueAsString');
  set valueAsString(String newValue) {
    js_util.setProperty(this, 'valueAsString', newValue);
  }

  ///  Reset the value as a number with an associated unitType, thereby
  /// replacing the values for all of the attributes on the object.
  ///   Exceptions:
  ///
  ///     A [Exception] with code [NOT_SUPPORTED_ERR] is raised if
  /// [unitType] is [SVG_ANGLETYPE_UNKNOWN] or not a valid unit type
  /// constant (one of the other [SVG_ANGLETYPE_*] constants defined on
  /// this interface).
  ///     A [Exception] with code [NO_MODIFICATION_ALLOWED_ERR] is
  /// raised when the length corresponds to a read only attribute or
  /// when the object itself is read only.
  ///
  ///
  Object newValueSpecifiedUnits(int unitType, double valueInSpecifiedUnits) =>
      js_util.callMethod(
          this, 'newValueSpecifiedUnits', [unitType, valueInSpecifiedUnits]);

  ///  Preserve the same underlying stored value, but reset the stored
  /// unit identifier to the given [unitType]. Object attributes
  /// [unitType], [valueInSpecifiedUnits], and [valueAsString] might be
  /// modified as a result of this method.
  ///
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

///  The interface represents attributes of type <length> which can
/// be animated.
@JS()
@staticInterop
class SVGAnimatedLength {
  external SVGAnimatedLength();
}

extension PropsSVGAnimatedLength on SVGAnimatedLength {
  ///  A [SVGLength] representing the base value of the given attribute
  /// before applying any animations.
  ///
  SVGLength get baseVal => js_util.getProperty(this, 'baseVal');

  ///
  ///    If the given attribute or property is being animated,
  ///     a [SVGLength] containing the current animated value of the
  /// attribute or property.
  ///     If the given attribute or property is not currently being
  /// animated,
  ///    a [SVGLength] containing the same value as [baseVal].
  ///
  ///
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

///  The interface represents string attributes which can be animated
/// from each SVG declaration. You need to create SVG attribute
/// before doing anything else, everything should be declared inside
/// this.
@JS()
@staticInterop
class SVGAnimatedString {
  external SVGAnimatedString();
}

extension PropsSVGAnimatedString on SVGAnimatedString {
  ///  This is a [String] representing the base value. The base value
  /// of the given attribute before applying any animations. Setter
  /// throws DOMException.
  ///
  String get baseVal => js_util.getProperty(this, 'baseVal');
  set baseVal(String newValue) {
    js_util.setProperty(this, 'baseVal', newValue);
  }

  ///  This is a [String] representing the animation value. If the
  /// given attribute or property is being animated it contains the
  /// current animated value of the attribute or property. If the given
  /// attribute or property is not currently being animated, it
  /// contains the same value as baseVal.
  ///
  String get animVal => js_util.getProperty(this, 'animVal');
}

///  The interface is used for attributes of basic [SVGRect] which
/// can be animated.
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
  ///  Is a [SVGNumberList] that represents the base value of the given
  /// attribute before applying any animations.
  ///
  SVGNumberList get baseVal => js_util.getProperty(this, 'baseVal');

  ///  Is a read only [SVGNumberList] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGNumberList] will have
  /// the same contents as [baseVal]. The object referenced by will
  /// always be distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  ///
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

///  The interface defines a commonly used set of constants used for
/// reflecting [gradientUnits], [patternContentUnits] and other
/// similar attributes.
@JS()
@staticInterop
class SVGUnitTypes {
  external static int get SVG_UNIT_TYPE_UNKNOWN;
  external static int get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static int get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
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
  external SVGSVGElement();
}

extension PropsSVGSVGElement on SVGSVGElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<svg>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<svg>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<svg>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<svg>] element.
  ///
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');

  ///  On an outermost [<svg>] element, this float attribute indicates
  /// the current scale factor relative to the initial view to take
  /// into account user magnification and panning operations. DOM
  /// attributes and [currentTranslate] are equivalent to the 2×3
  /// matrix [[a b c d e f] = [currentScale 0 0 currentScale
  /// currentTranslate.x currentTranslate.y]]. If "magnification" is
  /// enabled (i.e., [zoomAndPan="magnify"]), then the effect is as if
  /// an extra transformation were placed at the outermost level on the
  /// SVG document fragment (i.e., outside the outermost [<svg>]
  /// element).
  ///
  double get currentScale => js_util.getProperty(this, 'currentScale');
  set currentScale(double newValue) {
    js_util.setProperty(this, 'currentScale', newValue);
  }

  ///  An [SVGPoint] representing the translation factor that takes
  /// into account user "magnification" corresponding to an outermost
  /// [<svg>] element. The behavior is undefined for [<svg>] elements
  /// that are not at the outermost level.
  ///
  DOMPointReadOnly get currentTranslate =>
      js_util.getProperty(this, 'currentTranslate');

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  NodeList getIntersectionList(
          DOMRectReadOnly rect, SVGElement? referenceElement) =>
      js_util.callMethod(this, 'getIntersectionList', [rect, referenceElement]);

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// is entirely contained within the supplied rectangle. Each
  /// candidate graphics element is to be considered a match only if
  /// the same graphics element can be a target of pointer events as
  /// defined in [pointer-events] processing.
  ///
  NodeList getEnclosureList(
          DOMRectReadOnly rect, SVGElement? referenceElement) =>
      js_util.callMethod(this, 'getEnclosureList', [rect, referenceElement]);

  ///  Returns [true] if the rendered content of the given element
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  bool checkIntersection(SVGElement element, DOMRectReadOnly rect) =>
      js_util.callMethod(this, 'checkIntersection', [element, rect]);

  ///  Returns [true] if the rendered content of the given element is
  /// entirely contained within the supplied rectangle. Each candidate
  /// graphics element is to be considered a match only if the same
  /// graphics element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  bool checkEnclosure(SVGElement element, DOMRectReadOnly rect) =>
      js_util.callMethod(this, 'checkEnclosure', [element, rect]);

  ///  Unselects any selected objects, including any selections of text
  /// strings and type-in bars.
  ///
  Object deselectAll() => js_util.callMethod(this, 'deselectAll', []);

  ///  Creates an [SVGNumber] object outside of any document trees. The
  /// object is initialized to [0].
  ///
  SVGNumber createSVGNumber() =>
      js_util.callMethod(this, 'createSVGNumber', []);

  ///  Creates an [SVGLength] object outside of any document trees. The
  /// object is initialized to [0] user units.
  ///
  SVGLength createSVGLength() =>
      js_util.callMethod(this, 'createSVGLength', []);

  ///  Creates an [SVGAngle] object outside of any document trees. The
  /// object is initialized to a value of [0] degrees (unitless).
  ///
  SVGAngle createSVGAngle() => js_util.callMethod(this, 'createSVGAngle', []);

  ///  Creates an [SVGPoint] object outside of any document trees. The
  /// object is initialized to the point [(0,0)] in the user coordinate
  /// system.
  ///
  DOMPoint createSVGPoint() => js_util.callMethod(this, 'createSVGPoint', []);

  ///  Creates an [SVGMatrix] object outside of any document trees. The
  /// object is initialized to the identity matrix.
  ///
  DOMMatrix createSVGMatrix() =>
      js_util.callMethod(this, 'createSVGMatrix', []);

  ///  Creates an [SVGRect] object outside of any document trees. The
  /// object is initialized such that all values are set to [0] user
  /// units.
  ///
  DOMRect createSVGRect() => js_util.callMethod(this, 'createSVGRect', []);

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to an identity matrix transform
  /// ([SVG_TRANSFORM_MATRIX]).
  ///
  SVGTransform createSVGTransform() =>
      js_util.callMethod(this, 'createSVGTransform', []);

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to the given matrix transform (i.e.,
  /// [SVG_TRANSFORM_MATRIX]). The values from the parameter matrix are
  /// copied, the matrix parameter is not adopted as
  /// [SVGTransform::matrix].
  ///
  SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]) =>
      js_util.callMethod(this, 'createSVGTransformFromMatrix', [matrix]);

  ///  Searches this SVG document fragment (i.e., the search is
  /// restricted to a subset of the document tree) for an Element whose
  /// [id] is given by [elementId]. If an Element is found, that
  /// Element is returned. If no such element exists, returns [null].
  /// Behavior is not defined if more than one element has this id.
  ///
  Element getElementById(String elementId) =>
      js_util.callMethod(this, 'getElementById', [elementId]);

  ///  Takes a time-out value which indicates that redraw shall not
  /// occur until:
  ///    the corresponding [unsuspendRedraw()] call has been made, an
  /// [unsuspendRedrawAll()] call has been made, or its timer has timed
  /// out.
  ///    In environments that do not support interactivity (e.g., print
  /// media), then redraw shall not be suspended. Calls to
  /// [suspendRedraw()] and [unsuspendRedraw()] should, but need not
  /// be, made in balanced pairs.
  ///    To suspend redraw actions as a collection of SVG DOM changes
  /// occur, precede the changes to the SVG DOM with a method call
  /// similar to:
  ///   [const suspendHandleID = suspendRedraw(maxWaitMilliseconds)
  /// ]
  ///   and follow the changes with a method call similar to:
  ///   [unsuspendRedraw(suspendHandleID)
  /// ]
  ///    Note that multiple [suspendRedraw()] calls can be used at
  /// once, and that each such method call is treated independently of
  /// the other [suspendRedraw()] method calls.
  ///
  @deprecated
  int suspendRedraw(int maxWaitMilliseconds) =>
      js_util.callMethod(this, 'suspendRedraw', [maxWaitMilliseconds]);

  ///  Cancels a specified [suspendRedraw()] by providing a unique
  /// suspend handle ID that was returned by a previous
  /// [suspendRedraw()] call.
  ///
  @deprecated
  Object unsuspendRedraw(int suspendHandleID) =>
      js_util.callMethod(this, 'unsuspendRedraw', [suspendHandleID]);

  ///  Cancels all currently active [suspendRedraw()] method calls.
  /// This method is most useful at the very end of a set of SVG DOM
  /// calls to ensure that all pending [suspendRedraw()] method calls
  /// have been cancelled.
  ///
  @deprecated
  Object unsuspendRedrawAll() =>
      js_util.callMethod(this, 'unsuspendRedrawAll', []);

  ///  In rendering environments supporting interactivity, forces the
  /// user agent to immediately redraw all regions of the viewport that
  /// require updating.
  ///
  @deprecated
  Object forceRedraw() => js_util.callMethod(this, 'forceRedraw', []);

  Object pauseAnimations() => js_util.callMethod(this, 'pauseAnimations', []);

  Object unpauseAnimations() =>
      js_util.callMethod(this, 'unpauseAnimations', []);

  bool animationsPaused() => js_util.callMethod(this, 'animationsPaused', []);

  double getCurrentTime() => js_util.callMethod(this, 'getCurrentTime', []);

  Object setCurrentTime(double seconds) =>
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
  external SVGGElement();
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
  external SVGDefsElement();
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
  external SVGDescElement();
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
  external SVGMetadataElement();
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
  external SVGTitleElement();
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
  external SVGSymbolElement();
}

@JS()
@staticInterop
class SVGUseElement implements SVGGraphicsElement, SVGURIReference {
  external SVGUseElement();
}

extension PropsSVGUseElement on SVGUseElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given element.
  ///
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
  ///  A [String] corresponding to the [type] attribute of the given
  /// element.
  ///    SVG 1.1 defined that a [Exception] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  A [String] corresponding to the [media] attribute of the given
  /// element.
  ///    SVG 1.1 defined that a [Exception] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  ///  A [String] corresponding to the [title] attribute of the given
  /// element.
  ///    SVG 1.1 defined that a [Exception] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }
}

@JS()
@staticInterop
class SVGTransform {
  external static int get SVG_TRANSFORM_UNKNOWN;
  external static int get SVG_TRANSFORM_MATRIX;
  external static int get SVG_TRANSFORM_TRANSLATE;
  external static int get SVG_TRANSFORM_SCALE;
  external static int get SVG_TRANSFORM_ROTATE;
  external static int get SVG_TRANSFORM_SKEWX;
  external static int get SVG_TRANSFORM_SKEWY;
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
  external static int get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external static int get SVG_PRESERVEASPECTRATIO_NONE;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external static int get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external static int get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external static int get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external static int get SVG_MEETORSLICE_UNKNOWN;
  external static int get SVG_MEETORSLICE_MEET;
  external static int get SVG_MEETORSLICE_SLICE;
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
  ///  Is a [SVGPreserveAspectRatio] that represents the base value of
  /// the given attribute before applying any animations.
  ///
  SVGPreserveAspectRatio get baseVal => js_util.getProperty(this, 'baseVal');

  ///  Is a [SVGPreserveAspectRatio] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGPreserveAspectRatio]
  /// will have the same contents as [baseVal]. The object referenced
  /// by is always distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  ///
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
  external SVGPathElement();
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
  external SVGRectElement();
}

extension PropsSVGRectElement on SVGRectElement {
  ///  Returns an [SVGAnimatedLength] corresponding to the [x]
  /// attribute of the given [<rect>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  Returns an [SVGAnimatedLength] corresponding to the [y]
  /// attribute of the given [<rect>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  Returns an [SVGAnimatedLength] corresponding to the [width]
  /// attribute of the given [<rect>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  Returns an [SVGAnimatedLength] corresponding to the [height]
  /// attribute of the given [<rect>] element.
  ///
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');

  ///  Returns an [SVGAnimatedLength] corresponding to the [rx]
  /// attribute of the given [<rect>] element.
  ///
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');

  ///  Returns an [SVGAnimatedLength] corresponding to the [ry]
  /// attribute of the given [<rect>] element.
  ///
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
  external SVGCircleElement();
}

extension PropsSVGCircleElement on SVGCircleElement {
  ///  This property defines the x-coordinate of the center of the
  /// [<circle>] element. It is denoted by the [cx] attribute of the
  /// element.
  ///
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');

  ///  This property defines the y-coordinate of the center of the
  /// [<circle>] element. It is denoted by the [cy] attribute of the
  /// element.
  ///
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');

  ///  This property defines the radius of the [<circle>] element. It
  /// is denoted by the [r] of the element.
  ///
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
  external SVGEllipseElement();
}

extension PropsSVGEllipseElement on SVGEllipseElement {
  ///  This property returns a [SVGAnimatedLength] reflecting the [cx]
  /// attribute of the given [<ellipse>] element.
  ///
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');

  ///  This property returns a [SVGAnimatedLength] reflecting the [cy]
  /// attribute of the given [<ellipse>] element.
  ///
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');

  ///  This property returns a [SVGAnimatedLength] reflecting the [rx]
  /// attribute of the given [<ellipse>] element.
  ///
  SVGAnimatedLength get rx => js_util.getProperty(this, 'rx');

  ///  This property returns a [SVGAnimatedLength] reflecting the [ry]
  /// attribute of the given [<ellipse>] element.
  ///
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
  external SVGLineElement();
}

extension PropsSVGLineElement on SVGLineElement {
  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x1] on the given [<line>] element.
  ///
  SVGAnimatedLength get x1 => js_util.getProperty(this, 'x1');

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y1] on the given [<line>] element.
  ///
  SVGAnimatedLength get y1 => js_util.getProperty(this, 'y1');

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x2] on the given [<line>] element.
  ///
  SVGAnimatedLength get x2 => js_util.getProperty(this, 'x2');

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y2] on the given [<line>] element.
  ///
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

/// The interface represents a list of [SVGPoint] objects.
///  An can be designated as read-only, which means that attempts to
/// modify the object will result in an exception being thrown.
@JS()
@staticInterop
class SVGPointList {
  external SVGPointList();
}

extension PropsSVGPointList on SVGPointList {
  /// Returns the number of points in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  /// Returns the number of points in the list.
  ///
  int get numberOfItems => js_util.getProperty(this, 'numberOfItems');

  /// Removes all items in the list.
  ///
  /// SVGPointList.clear();
  ///
  Object clear() => js_util.callMethod(this, 'clear', []);

  ///  First removes all items in the list, then adds a single value to
  /// the list.
  ///
  /// SVGPointList.initialize(obj);
  ///
  DOMPoint initialize(DOMPoint newItem) =>
      js_util.callMethod(this, 'initialize', [newItem]);

  /// Gets an item from the list at a specified position.
  ///
  /// SVGPointList.getItem(index);
  ///
  DOMPoint getItem(

          /// The index of the item to return.
          ///
          int index) =>
      js_util.callMethod(this, 'getItem', [index]);

  /// Inserts an element into the list at a specified position.
  ///
  /// SVGPointList.insertItemBefore(obj,index);
  ///  obj
  ///
  ///   An SVGPoint object containing the coordinates of the point to be inserted.
  ///
  ///  index
  ///
  ///   The index of the item the object should be inserted before. If the index passed in is greater than the length of the list, then index will be set to the list length and the item inserted before the last item in the list.
  ///
  ///
  DOMPoint insertItemBefore(DOMPoint newItem, int index) =>
      js_util.callMethod(this, 'insertItemBefore', [newItem, index]);

  /// Replaces an item in the list with a new item.
  ///
  /// SVGPointList.replaceItem(obj,index);
  ///  obj
  ///
  ///   An point object containing the coordinates of the point to be inserted.
  ///
  ///  index
  ///
  ///   The index of the item to replace.
  ///
  ///
  DOMPoint replaceItem(DOMPoint newItem, int index) =>
      js_util.callMethod(this, 'replaceItem', [newItem, index]);

  /// Removes an item from the list.
  ///
  /// SVGPointList.removeItem(index);
  ///  index
  ///
  ///   The index of the item to remove.
  ///
  ///
  DOMPoint removeItem(int index) =>
      js_util.callMethod(this, 'removeItem', [index]);

  /// Adds an item to the end of the list.
  ///
  /// SVGPointList.appendItem(obj);
  ///  obj
  ///
  ///   An SVGPoint object containing the coordinates of the point to be appended.
  ///
  ///
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
  external SVGPolylineElement();
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
  external SVGPolygonElement();
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
  external static int get LENGTHADJUST_UNKNOWN;
  external static int get LENGTHADJUST_SPACING;
  external static int get LENGTHADJUST_SPACINGANDGLYPHS;
  external SVGTextContentElement();
}

extension PropsSVGTextContentElement on SVGTextContentElement {
  ///  An [SVGAnimatedLength] reflecting the [textLength] attribute of
  /// the given element.
  ///
  SVGAnimatedLength get textLength => js_util.getProperty(this, 'textLength');

  ///  An [SVGAnimatedEnumeration] reflecting the [lengthAdjust]
  /// attribute of the given element. The numeric type values represent
  /// one of the constant values above.
  ///
  SVGAnimatedEnumeration get lengthAdjust =>
      js_util.getProperty(this, 'lengthAdjust');

  ///  Returns a long representing the total number of addressable
  /// characters available for rendering within the current element,
  /// regardless of whether they will be rendered.
  ///
  int getNumberOfChars() => js_util.callMethod(this, 'getNumberOfChars', []);

  ///  Returns a float representing the computed length for the text
  /// within the element.
  ///
  double getComputedTextLength() =>
      js_util.callMethod(this, 'getComputedTextLength', []);

  ///  Returns a float representing the computed length of the
  /// formatted text advance distance for a substring of text within
  /// the element. Note that this method only accounts for the widths
  /// of the glyphs in the substring and any extra spacing inserted by
  /// the CSS 'letter-spacing' and 'word-spacing' properties. Visual
  /// spacing adjustments made by the 'x' attribute is ignored.
  ///
  double getSubStringLength(int charnum, int nchars) =>
      js_util.callMethod(this, 'getSubStringLength', [charnum, nchars]);

  ///  Returns a [DOMPoint] representing the position of a typographic
  /// character after text layout has been performed.
  ///
  ///    Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  ///
  DOMPoint getStartPositionOfChar(int charnum) =>
      js_util.callMethod(this, 'getStartPositionOfChar', [charnum]);

  ///  Returns a [DOMPoint] representing the trailing position of a
  /// typographic character after text layout has been performed.
  ///
  ///    Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  ///
  DOMPoint getEndPositionOfChar(int charnum) =>
      js_util.callMethod(this, 'getEndPositionOfChar', [charnum]);

  ///  Returns a [DOMRect] representing the computed tight bounding box
  /// of the glyph cell that corresponds to a given typographic
  /// character.
  ///
  DOMRect getExtentOfChar(int charnum) =>
      js_util.callMethod(this, 'getExtentOfChar', [charnum]);

  ///  Returns a float representing the rotation of typographic
  /// character.
  ///
  double getRotationOfChar(int charnum) =>
      js_util.callMethod(this, 'getRotationOfChar', [charnum]);

  ///  Returns a long representing the character which caused a text
  /// glyph to be rendered at a given position in the coordinate
  /// system. Because the relationship between characters and glyphs is
  /// not one-to-one, only the first character of the relevant
  /// typographic character is returned
  ///
  int getCharNumAtPosition([DOMPointInit? point]) =>
      js_util.callMethod(this, 'getCharNumAtPosition', [point]);

  /// Selects text within the element.
  ///
  @deprecated
  Object selectSubString(int charnum, int nchars) =>
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
  external SVGTextPositioningElement();
}

extension PropsSVGTextPositioningElement on SVGTextPositioningElement {
  ///  Returns an [SVGAnimatedLengthList] reflecting the [x] attribute
  /// of the given element.
  ///
  SVGAnimatedLengthList get x => js_util.getProperty(this, 'x');

  ///  Returns an [SVGAnimatedLengthList] reflecting the [y] attribute
  /// of the given element.
  ///
  SVGAnimatedLengthList get y => js_util.getProperty(this, 'y');

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dx] attribute
  /// of the given element.
  ///
  SVGAnimatedLengthList get dx => js_util.getProperty(this, 'dx');

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dy] attribute
  /// of the given element.
  ///
  SVGAnimatedLengthList get dy => js_util.getProperty(this, 'dy');

  ///  Returns an [SVGAnimatedNumberList] reflecting the [rotate]
  /// attribute of the given element.
  ///
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
  external SVGTextElement();
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
  external SVGTSpanElement();
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
  external static int get TEXTPATH_METHODTYPE_UNKNOWN;
  external static int get TEXTPATH_METHODTYPE_ALIGN;
  external static int get TEXTPATH_METHODTYPE_STRETCH;
  external static int get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static int get TEXTPATH_SPACINGTYPE_AUTO;
  external static int get TEXTPATH_SPACINGTYPE_EXACT;
  external SVGTextPathElement();
}

extension PropsSVGTextPathElement on SVGTextPathElement {
  ///  An [SVGAnimatedLength] corresponding to the X component of the
  /// [startOffset] attribute of the given element.
  ///
  SVGAnimatedLength get startOffset => js_util.getProperty(this, 'startOffset');

  ///  An [SVGAnimatedEnumeration] corresponding to the [method]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_METHODTYPE_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get method => js_util.getProperty(this, 'method');

  ///  An [SVGAnimatedEnumeration] corresponding to the [spacing]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_SPACINGTYPE_*] constants defined on this interface.
  ///
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
  external SVGImageElement();
}

extension PropsSVGImageElement on SVGImageElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<image>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<image>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<image>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<image>] element.
  ///
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');

  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given [<image>] element.
  ///
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');

  ///  A [String] corresponding to the [crossorigin] attribute of the
  /// given [<image>] element.
  ///
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
  external SVGForeignObjectElement();
}

extension PropsSVGForeignObjectElement on SVGForeignObjectElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<foreignObject>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<foreignObject>] element.
  ///
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
  external static int get SVG_MARKERUNITS_UNKNOWN;
  external static int get SVG_MARKERUNITS_USERSPACEONUSE;
  external static int get SVG_MARKERUNITS_STROKEWIDTH;
  external static int get SVG_MARKER_ORIENT_UNKNOWN;
  external static int get SVG_MARKER_ORIENT_AUTO;
  external static int get SVG_MARKER_ORIENT_ANGLE;
  external SVGMarkerElement();
}

extension PropsSVGMarkerElement on SVGMarkerElement {
  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refX] attribute of the [<marker>].
  ///
  SVGAnimatedLength get refX => js_util.getProperty(this, 'refX');

  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refY] attribute of the [<marker>].
  ///
  SVGAnimatedLength get refY => js_util.getProperty(this, 'refY');

  ///  Returns an [SVGAnimatedEnumeration] object, with one of the
  /// following values:
  ///
  ///    0
  ///
  ///      [SVG_MARKERUNITS_UNKNOWN] which means that the [markerUnits]
  /// attribute has a value other than the two predefined keywords.
  ///
  ///    1
  ///
  ///      [SVG_MARKERUNITS_USERSPACEONUSE] which means that the
  /// [markerUnits] attribute has the keyword value [userSpaceOnUse].
  ///
  ///    2
  ///
  ///      [SVG_MARKERUNITS_STROKEWIDTH] which means that the
  /// [markerUnits] attribute has the keyword value [strokeWidth].
  ///
  ///
  ///
  SVGAnimatedEnumeration get markerUnits =>
      js_util.getProperty(this, 'markerUnits');

  ///  Returns an [SVGAnimatedLength] object containing the width of
  /// the [<marker>] viewport.
  ///
  SVGAnimatedLength get markerWidth => js_util.getProperty(this, 'markerWidth');

  ///  Returns an [SVGAnimatedLength] object containing the height of
  /// the [<marker>] viewport.
  ///
  SVGAnimatedLength get markerHeight =>
      js_util.getProperty(this, 'markerHeight');

  ///  Returns an [SVGAnimatedEnumeration] object, with one of the
  /// following values:
  ///
  ///    0
  ///
  ///      [SVG_MARKER_ORIENT_UNKNOWN] which means that the [orient]
  /// attribute has a value other than the two predefined keywords.
  ///
  ///    1
  ///
  ///      [SVG_MARKERUNITS_ORIENT_AUTO] which means that the [orient]
  /// attribute has the keyword value [auto].
  ///
  ///    2
  ///
  ///      [SVG_MARKERUNITS_ORIENT_ANGLE] which means that the [orient]
  /// attribute has an [<angle>] or [<number>] value indicating the
  /// angle.
  ///
  ///
  ///
  SVGAnimatedEnumeration get orientType =>
      js_util.getProperty(this, 'orientType');

  ///  Returns an [SVGAnimatedAngle] object containing the angle of the
  /// [orient] attribute.
  ///
  SVGAnimatedAngle get orientAngle => js_util.getProperty(this, 'orientAngle');
  String get orient => js_util.getProperty(this, 'orient');
  set orient(String newValue) {
    js_util.setProperty(this, 'orient', newValue);
  }

  /// Sets the value of the [orient] attribute to [auto].
  ///
  /// setOrientToAuto();
  ///
  Object setOrientToAuto() => js_util.callMethod(this, 'setOrientToAuto', []);

  ///  Sets the value of the [orient] attribute to a specific angle
  /// value.
  ///
  /// setOrientToAngle(angle);
  ///
  Object setOrientToAngle(

          /// An [SVGAngle].
          ///
          SVGAngle angle) =>
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
  external static int get SVG_SPREADMETHOD_UNKNOWN;
  external static int get SVG_SPREADMETHOD_PAD;
  external static int get SVG_SPREADMETHOD_REFLECT;
  external static int get SVG_SPREADMETHOD_REPEAT;
  external SVGGradientElement();
}

extension PropsSVGGradientElement on SVGGradientElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [gradientUnits]
  /// attribute on the given element. This property takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get gradientUnits =>
      js_util.getProperty(this, 'gradientUnits');

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [gradientTransform] attribute on the given element.
  ///
  SVGAnimatedTransformList get gradientTransform =>
      js_util.getProperty(this, 'gradientTransform');

  ///  An [SVGAnimatedEnumeration] corresponding to the [spreadMethod]
  /// attribute on the given element. One of the spread method types
  /// defined on this interface.
  ///
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
  external SVGLinearGradientElement();
}

extension PropsSVGLinearGradientElement on SVGLinearGradientElement {
  ///  An [SVGAnimatedLength] corresponding to the [x1] attribute of
  /// the given [<linearGradient>] element.
  ///
  SVGAnimatedLength get x1 => js_util.getProperty(this, 'x1');

  ///  An [SVGAnimatedLength] corresponding to the [y1] attribute of
  /// the given [<linearGradient>] element.
  ///
  SVGAnimatedLength get y1 => js_util.getProperty(this, 'y1');

  ///  An [SVGAnimatedLength] corresponding to the [x2] attribute of
  /// the given [<linearGradient>] element.
  ///
  SVGAnimatedLength get x2 => js_util.getProperty(this, 'x2');

  ///  An [SVGAnimatedLength] corresponding to the [y2] attribute of
  /// the given [<linearGradient>] element.
  ///
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
  external SVGRadialGradientElement();
}

extension PropsSVGRadialGradientElement on SVGRadialGradientElement {
  ///  An [SVGAnimatedLength] corresponding to the [cx] attribute of
  /// the given [<RadialGradient>] element.
  ///
  SVGAnimatedLength get cx => js_util.getProperty(this, 'cx');
  SVGAnimatedLength get cy => js_util.getProperty(this, 'cy');

  ///  An [SVGAnimatedLength] corresponding to the [r] attribute of the
  /// given [<RadialGradient>] element.
  ///
  SVGAnimatedLength get r => js_util.getProperty(this, 'r');

  ///  An [SVGAnimatedLength] corresponding to the [fx] attribute of
  /// the given [<RadialGradient>] element.
  ///
  SVGAnimatedLength get fx => js_util.getProperty(this, 'fx');

  ///  An [SVGAnimatedLength] corresponding to the [fy] attribute of
  /// the given [<RadialGradient>] element.
  ///
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
  external SVGStopElement();
}

extension PropsSVGStopElement on SVGStopElement {
  ///  An [SVGAnimatedNumber] corresponding to the [offset] of the
  /// given element.
  ///
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
  external SVGPatternElement();
}

extension PropsSVGPatternElement on SVGPatternElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [patternUnits]
  /// attribute of the given [<pattern>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get patternUnits =>
      js_util.getProperty(this, 'patternUnits');

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [patternContentUnits] attribute of the given [<pattern>] element.
  /// Takes one of the constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get patternContentUnits =>
      js_util.getProperty(this, 'patternContentUnits');

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [patternTransform] attribute of the given [<pattern>] element.
  ///
  SVGAnimatedTransformList get patternTransform =>
      js_util.getProperty(this, 'patternTransform');

  ///  An [SVGAnimatedEnumeration] corresponding to the [x] attribute
  /// of the given [<pattern>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedEnumeration] corresponding to the [y] attribute
  /// of the given [<pattern>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedEnumeration] corresponding to the [width]
  /// attribute of the given [<pattern>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedEnumeration] corresponding to the [height]
  /// attribute of the given [<pattern>] element.
  ///
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
  external SVGScriptElement();
}

extension PropsSVGScriptElement on SVGScriptElement {
  ///  A [String] corresponding to the [type] attribute of the given
  /// [<script>] element. A [Exception] is raised with the code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read only attribute.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  ///  A [String] corresponding to the [crossorigin] attribute of the
  /// given [<script>] element.
  ///
  String? get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(String? newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }
}

///  The interface provides access to the properties of an [<a>]
/// element, as well as methods to manipulate them.
@JS()
@staticInterop
class SVGAElement
    implements SVGGraphicsElement, HTMLHyperlinkElementUtils, SVGURIReference {
  external SVGAElement();
}

extension PropsSVGAElement on SVGAElement {
  /// It corresponds to the [target] attribute of the given element.
  ///
  SVGAnimatedString get target => js_util.getProperty(this, 'target');

  /// See [HTMLAnchorElement.download].
  ///
  String get download => js_util.getProperty(this, 'download');
  set download(String newValue) {
    js_util.setProperty(this, 'download', newValue);
  }

  ///  Is a [String] that reflects the ping attribute, containing a
  /// space-separated list of URLs to which, when the hyperlink is
  /// followed, [POST] requests with the body [PING] will be sent by
  /// the browser (in the background). Typically used for tracking.
  ///
  String get ping => js_util.getProperty(this, 'ping');
  set ping(String newValue) {
    js_util.setProperty(this, 'ping', newValue);
  }

  /// See [HTMLAnchorElement.rel].
  ///
  String get rel => js_util.getProperty(this, 'rel');
  set rel(String newValue) {
    js_util.setProperty(this, 'rel', newValue);
  }

  /// See [HTMLAnchorElement.relList].
  ///
  DOMTokenList get relList => js_util.getProperty(this, 'relList');

  ///  Is a [String] that reflects the attribute, indicating the
  /// language of the linked resource.
  ///
  String get hreflang => js_util.getProperty(this, 'hreflang');
  set hreflang(String newValue) {
    js_util.setProperty(this, 'hreflang', newValue);
  }

  ///  Is a [String] that reflects the attribute, indicating the MIME
  /// type of the linked resource.
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

  /// See [HTMLAnchorElement.referrerPolicy].
  ///
  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }
}

///  The interface provides access to the properties of [<view>]
/// elements, as well as methods to manipulate them.
@JS()
@staticInterop
class SVGViewElement implements SVGElement, SVGFitToViewBox {
  external SVGViewElement();
}
