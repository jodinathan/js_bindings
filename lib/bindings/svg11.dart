/// Scalable Vector Graphics (SVG) 2
///
/// https://svgwg.org/svg2-draft/
@JS('window')
@staticInterop
library svg11;

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
  external factory SVGElement();
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
  external SVGAnimatedString get className;

  ///  An [SVGSVGElement] referring to the nearest ancestor [<svg>]
  /// element. [null] if the given element is the outermost [<svg>]
  /// element.
  ///
  external SVGSVGElement? get ownerSVGElement;

  ///  The [SVGElement], which established the current viewport. Often,
  /// the nearest ancestor [<svg>] element. [null] if the given element
  /// is the outermost [<svg>] element.
  ///
  external SVGElement? get viewportElement;
}

@anonymous
@JS()
@staticInterop
class SVGBoundingBoxOptions {
  external factory SVGBoundingBoxOptions(
      {bool fill = true,
      bool stroke = false,
      bool markers = false,
      bool clipped = false});
}

extension PropsSVGBoundingBoxOptions on SVGBoundingBoxOptions {
  external bool get fill;
  external set fill(bool newValue);
  external bool get stroke;
  external set stroke(bool newValue);
  external bool get markers;
  external set markers(bool newValue);
  external bool get clipped;
  external set clipped(bool newValue);
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
  ///  An [SVGAnimatedTransformList] reflecting the computed value of
  /// the property and its corresponding [transform] attribute of the
  /// given element.
  ///
  external SVGAnimatedTransformList get transform;

  ///  Returns a [DOMRect] representing the computed bounding box of
  /// the current element.
  ///
  /// let bboxRect = object.getBBox();
  ///
  external DOMRect getBBox([SVGBoundingBoxOptions? options]);

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to its SVG viewport's
  /// coordinate system.
  ///
  external DOMMatrix? getCTM();

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to the coordinate system
  /// of the SVG viewport for the SVG document fragment.
  ///
  external DOMMatrix? getScreenCTM();
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
  /// This property reflects the [pathLength] attribute.
  ///
  external SVGAnimatedNumber get pathLength;

  ///  Determines whether a given point is within the fill shape of an
  /// element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the fill.
  ///
  /// boolean someElement.isPointInFill(DOMPointInit point);
  ///
  external bool isPointInFill([DOMPointInit? point]);

  ///  Determines whether a given point is within the stroke shape of
  /// an element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the stroke.
  ///
  /// boolean someElement.isPointInStroke(DOMPointInit point);
  ///
  external bool isPointInStroke([DOMPointInit? point]);

  ///  Returns the user agent's computed value for the total length of
  /// the path in user units.
  ///
  /// float someElement.getTotalLength();
  ///
  external double getTotalLength();

  /// Returns the point at a given distance along the path.
  ///
  /// DOMPoint someElement.getPointAtLength(float distance);
  ///
  external DOMPoint getPointAtLength(double distance);
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
  /// A float representing the number.
  ///    Note: If the [SVGNumber] is read-only, a [DOMException] with
  /// the code NO_MODIFICATION_ALLOWED_ERR is raised on an attempt to
  /// change the value.
  ///
  external double get value;
  external set value(double newValue);
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
  external factory SVGLength();
}

extension PropsSVGLength on SVGLength {
  external int get unitType;
  external double get value;
  external set value(double newValue);
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(double newValue);
  external String get valueAsString;
  external set valueAsString(String newValue);
  external Object newValueSpecifiedUnits(
      int unitType, double valueInSpecifiedUnits);
  external Object convertToSpecifiedUnits(int unitType);
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
  external factory SVGAngle();
}

extension PropsSVGAngle on SVGAngle {
  ///  The type of the value as specified by one of the
  /// [SVG_ANGLETYPE_*] constants defined on this interface.
  ///
  external int get unitType;

  ///  The value as a floating point value, in user units. Setting this
  /// attribute will cause [valueInSpecifiedUnits] and [valueAsString]
  /// to be updated automatically to reflect this setting.
  ///    Exceptions on setting: A [DOMException] with code
  /// [NO_MODIFICATION_ALLOWED_ERR] is raised when the length
  /// corresponds to a read-only attribute, or when the object itself
  /// is read-only.
  ///
  external double get value;
  external set value(double newValue);

  ///  The value as a floating point value, in the units expressed by
  /// [unitType]. Setting this attribute will cause [value] and
  /// [valueAsString] to be updated automatically to reflect this
  /// setting.
  ///    Exceptions on setting: A [DOMException] with code
  /// [NO_MODIFICATION_ALLOWED_ERR] is raised when the length
  /// corresponds to a read-only attribute, or when the object itself
  /// is read-only.
  ///
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(double newValue);

  ///  The value as a [DOMString] value, in the units expressed by
  /// [unitType]. Setting this attribute will cause [value],
  /// [valueInSpecifiedUnits], and [unitType] to be updated
  /// automatically to reflect this setting.
  ///   Exceptions on setting:
  ///    A [DOMException] with code [SYNTAX_ERR] is raised if the
  /// assigned string cannot be parsed as a valid [<angle>].
  ///    A [DOMException] with code [NO_MODIFICATION_ALLOWED_ERR] is
  /// raised when the length corresponds to a read-only attribute, or
  /// when the object itself is read-only.
  ///
  external String get valueAsString;
  external set valueAsString(String newValue);

  ///  Reset the value as a number with an associated unitType, thereby
  /// replacing the values for all of the attributes on the object.
  ///   Exceptions:
  ///
  ///     A [DOMException] with code [NOT_SUPPORTED_ERR] is raised if
  /// [unitType] is [SVG_ANGLETYPE_UNKNOWN] or not a valid unit type
  /// constant (one of the other [SVG_ANGLETYPE_*] constants defined on
  /// this interface).
  ///     A [DOMException] with code [NO_MODIFICATION_ALLOWED_ERR] is
  /// raised when the length corresponds to a read only attribute or
  /// when the object itself is read only.
  ///
  ///
  external Object newValueSpecifiedUnits(
      int unitType, double valueInSpecifiedUnits);

  ///  Preserve the same underlying stored value, but reset the stored
  /// unit identifier to the given [unitType]. Object attributes
  /// [unitType], [valueInSpecifiedUnits], and [valueAsString] might be
  /// modified as a result of this method.
  ///
  external Object convertToSpecifiedUnits(int unitType);
}

@JS()
@staticInterop
class SVGNumberList {
  external factory SVGNumberList();
}

extension PropsSVGNumberList on SVGNumberList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external SVGNumber initialize(SVGNumber newItem);
  external SVGNumber getItem(int index);
  external SVGNumber insertItemBefore(SVGNumber newItem, int index);
  external SVGNumber replaceItem(SVGNumber newItem, int index);
  external SVGNumber removeItem(int index);
  external SVGNumber appendItem(SVGNumber newItem);
}

@JS()
@staticInterop
class SVGLengthList {
  external factory SVGLengthList();
}

extension PropsSVGLengthList on SVGLengthList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external SVGLength initialize(SVGLength newItem);
  external SVGLength getItem(int index);
  external SVGLength insertItemBefore(SVGLength newItem, int index);
  external SVGLength replaceItem(SVGLength newItem, int index);
  external SVGLength removeItem(int index);
  external SVGLength appendItem(SVGLength newItem);
}

@JS()
@staticInterop
class SVGStringList {
  external factory SVGStringList();
}

extension PropsSVGStringList on SVGStringList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external String initialize(String newItem);
  external String getItem(int index);
  external String insertItemBefore(String newItem, int index);
  external String replaceItem(String newItem, int index);
  external String removeItem(int index);
  external String appendItem(String newItem);
}

@JS()
@staticInterop
class SVGAnimatedBoolean {
  external factory SVGAnimatedBoolean();
}

extension PropsSVGAnimatedBoolean on SVGAnimatedBoolean {
  external bool get baseVal;
  external set baseVal(bool newValue);
  external bool get animVal;
}

@JS()
@staticInterop
class SVGAnimatedEnumeration {
  external factory SVGAnimatedEnumeration();
}

extension PropsSVGAnimatedEnumeration on SVGAnimatedEnumeration {
  external int get baseVal;
  external set baseVal(int newValue);
  external int get animVal;
}

@JS()
@staticInterop
class SVGAnimatedInteger {
  external factory SVGAnimatedInteger();
}

extension PropsSVGAnimatedInteger on SVGAnimatedInteger {
  external int get baseVal;
  external set baseVal(int newValue);
  external int get animVal;
}

@JS()
@staticInterop
class SVGAnimatedNumber {
  external factory SVGAnimatedNumber();
}

extension PropsSVGAnimatedNumber on SVGAnimatedNumber {
  external double get baseVal;
  external set baseVal(double newValue);
  external double get animVal;
}

///  The interface represents attributes of type <length> which can
/// be animated.
@JS()
@staticInterop
class SVGAnimatedLength {
  external factory SVGAnimatedLength();
}

extension PropsSVGAnimatedLength on SVGAnimatedLength {
  ///  A [SVGLength] representing the base value of the given attribute
  /// before applying any animations.
  ///
  external SVGLength get baseVal;

  ///
  ///    If the given attribute or property is being animated,
  ///     a [SVGLength] containing the current animated value of the
  /// attribute or property.
  ///     If the given attribute or property is not currently being
  /// animated,
  ///    a [SVGLength] containing the same value as [baseVal].
  ///
  ///
  external SVGLength get animVal;
}

@JS()
@staticInterop
class SVGAnimatedAngle {
  external factory SVGAnimatedAngle();
}

extension PropsSVGAnimatedAngle on SVGAnimatedAngle {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;
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
  ///  This is a [DOMString] representing the base value. The base
  /// value of the given attribute before applying any animations.
  /// Setter throws DOMException.
  ///
  external String get baseVal;
  external set baseVal(String newValue);

  ///  This is a [DOMString] representing the animation value. If the
  /// given attribute or property is being animated it contains the
  /// current animated value of the attribute or property. If the given
  /// attribute or property is not currently being animated, it
  /// contains the same value as baseVal.
  ///
  external String get animVal;
}

///  The interface is used for attributes of basic [SVGRect] which
/// can be animated.
@JS()
@staticInterop
class SVGAnimatedRect {
  external factory SVGAnimatedRect();
}

extension PropsSVGAnimatedRect on SVGAnimatedRect {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;
}

@JS()
@staticInterop
class SVGAnimatedNumberList {
  external factory SVGAnimatedNumberList();
}

extension PropsSVGAnimatedNumberList on SVGAnimatedNumberList {
  ///  Is a [SVGNumberList] that represents the base value of the given
  /// attribute before applying any animations.
  ///
  external SVGNumberList get baseVal;

  ///  Is a read only [SVGNumberList] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGNumberList] will have
  /// the same contents as [baseVal]. The object referenced by will
  /// always be distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  ///
  external SVGNumberList get animVal;
}

@JS()
@staticInterop
class SVGAnimatedLengthList {
  external factory SVGAnimatedLengthList();
}

extension PropsSVGAnimatedLengthList on SVGAnimatedLengthList {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;
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
  external factory SVGUnitTypes();
}

@JS()
@staticInterop
class SVGTests {
  external factory SVGTests();
}

extension PropsSVGTests on SVGTests {
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}

@JS()
@staticInterop
class SVGFitToViewBox {
  external factory SVGFitToViewBox();
}

extension PropsSVGFitToViewBox on SVGFitToViewBox {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
}

@JS()
@staticInterop
class SVGURIReference {
  external factory SVGURIReference();
}

extension PropsSVGURIReference on SVGURIReference {
  external SVGAnimatedString get href;
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
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<svg>] element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<svg>] element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<svg>] element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<svg>] element.
  ///
  external SVGAnimatedLength get height;

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
  external double get currentScale;
  external set currentScale(double newValue);

  ///  An [SVGPoint] representing the translation factor that takes
  /// into account user "magnification" corresponding to an outermost
  /// [<svg>] element. The behavior is undefined for [<svg>] elements
  /// that are not at the outermost level.
  ///
  external DOMPointReadOnly get currentTranslate;

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  external NodeList getIntersectionList(
      DOMRectReadOnly rect, SVGElement? referenceElement);

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// is entirely contained within the supplied rectangle. Each
  /// candidate graphics element is to be considered a match only if
  /// the same graphics element can be a target of pointer events as
  /// defined in [pointer-events] processing.
  ///
  external NodeList getEnclosureList(
      DOMRectReadOnly rect, SVGElement? referenceElement);

  ///  Returns [true] if the rendered content of the given element
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  external bool checkIntersection(SVGElement element, DOMRectReadOnly rect);

  ///  Returns [true] if the rendered content of the given element is
  /// entirely contained within the supplied rectangle. Each candidate
  /// graphics element is to be considered a match only if the same
  /// graphics element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  ///
  external bool checkEnclosure(SVGElement element, DOMRectReadOnly rect);

  ///  Unselects any selected objects, including any selections of text
  /// strings and type-in bars.
  ///
  external Object deselectAll();

  ///  Creates an [SVGNumber] object outside of any document trees. The
  /// object is initialized to [0].
  ///
  external SVGNumber createSVGNumber();

  ///  Creates an [SVGLength] object outside of any document trees. The
  /// object is initialized to [0] user units.
  ///
  external SVGLength createSVGLength();

  ///  Creates an [SVGAngle] object outside of any document trees. The
  /// object is initialized to a value of [0] degrees (unitless).
  ///
  external SVGAngle createSVGAngle();

  ///  Creates an [SVGPoint] object outside of any document trees. The
  /// object is initialized to the point [(0,0)] in the user coordinate
  /// system.
  ///
  external DOMPoint createSVGPoint();

  ///  Creates an [SVGMatrix] object outside of any document trees. The
  /// object is initialized to the identity matrix.
  ///
  external DOMMatrix createSVGMatrix();

  ///  Creates an [SVGRect] object outside of any document trees. The
  /// object is initialized such that all values are set to [0] user
  /// units.
  ///
  external DOMRect createSVGRect();

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to an identity matrix transform
  /// ([SVG_TRANSFORM_MATRIX]).
  ///
  external SVGTransform createSVGTransform();

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to the given matrix transform (i.e.,
  /// [SVG_TRANSFORM_MATRIX]). The values from the parameter matrix are
  /// copied, the matrix parameter is not adopted as
  /// [SVGTransform::matrix].
  ///
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]);

  ///  Searches this SVG document fragment (i.e., the search is
  /// restricted to a subset of the document tree) for an Element whose
  /// [id] is given by [elementId]. If an Element is found, that
  /// Element is returned. If no such element exists, returns [null].
  /// Behavior is not defined if more than one element has this id.
  ///
  external Element getElementById(String elementId);

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
  external int suspendRedraw(int maxWaitMilliseconds);

  ///  Cancels a specified [suspendRedraw()] by providing a unique
  /// suspend handle ID that was returned by a previous
  /// [suspendRedraw()] call.
  ///
  @deprecated
  external Object unsuspendRedraw(int suspendHandleID);

  ///  Cancels all currently active [suspendRedraw()] method calls.
  /// This method is most useful at the very end of a set of SVG DOM
  /// calls to ensure that all pending [suspendRedraw()] method calls
  /// have been cancelled.
  ///
  @deprecated
  external Object unsuspendRedrawAll();

  ///  In rendering environments supporting interactivity, forces the
  /// user agent to immediately redraw all regions of the viewport that
  /// require updating.
  ///
  @deprecated
  external Object forceRedraw();
  external Object pauseAnimations();
  external Object unpauseAnimations();
  external bool animationsPaused();
  external double getCurrentTime();
  external Object setCurrentTime(double seconds);
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
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given element.
  ///
  external SVGAnimatedLength get height;
  external SVGElement? get instanceRoot;
  external SVGElement? get animatedInstanceRoot;
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
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
}

@JS()
@staticInterop
class ShadowAnimation implements Animation {
  external factory ShadowAnimation(Animation source, dynamic newTarget);
}

extension PropsShadowAnimation on ShadowAnimation {
  external Animation get sourceAnimation;
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
  external Document getSVGDocument();
}

@JS()
@staticInterop
class SVGStyleElement implements SVGElement, LinkStyle {
  external factory SVGStyleElement();
}

extension PropsSVGStyleElement on SVGStyleElement {
  ///  A [DOMString] corresponding to the [type] attribute of the given
  /// element.
  ///    SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get type;
  external set type(String newValue);

  ///  A [DOMString] corresponding to the [media] attribute of the
  /// given element.
  ///    SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get media;
  external set media(String newValue);

  ///  A [DOMString] corresponding to the [title] attribute of the
  /// given element.
  ///    SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get title;
  external set title(String newValue);
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
  external factory SVGTransform();
}

extension PropsSVGTransform on SVGTransform {
  external int get type;
  external DOMMatrix get matrix;
  external double get angle;
  external Object setMatrix([DOMMatrix2DInit? matrix]);
  external Object setTranslate(double tx, double ty);
  external Object setScale(double sx, double sy);
  external Object setRotate(double angle, double cx, double cy);
  external Object setSkewX(double angle);
  external Object setSkewY(double angle);
}

@JS()
@staticInterop
class SVGTransformList {
  external factory SVGTransformList();
}

extension PropsSVGTransformList on SVGTransformList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external SVGTransform initialize(SVGTransform newItem);
  external SVGTransform getItem(int index);
  external SVGTransform insertItemBefore(SVGTransform newItem, int index);
  external SVGTransform replaceItem(SVGTransform newItem, int index);
  external SVGTransform removeItem(int index);
  external SVGTransform appendItem(SVGTransform newItem);
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]);
  external SVGTransform? consolidate();
}

@JS()
@staticInterop
class SVGAnimatedTransformList {
  external factory SVGAnimatedTransformList();
}

extension PropsSVGAnimatedTransformList on SVGAnimatedTransformList {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;
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
  external factory SVGPreserveAspectRatio();
}

extension PropsSVGPreserveAspectRatio on SVGPreserveAspectRatio {
  external int get align;
  external set align(int newValue);
  external int get meetOrSlice;
  external set meetOrSlice(int newValue);
}

@JS()
@staticInterop
class SVGAnimatedPreserveAspectRatio {
  external factory SVGAnimatedPreserveAspectRatio();
}

extension PropsSVGAnimatedPreserveAspectRatio
    on SVGAnimatedPreserveAspectRatio {
  ///  Is a [SVGPreserveAspectRatio] that represents the base value of
  /// the given attribute before applying any animations.
  ///
  external SVGPreserveAspectRatio get baseVal;

  ///  Is a [SVGPreserveAspectRatio] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGPreserveAspectRatio]
  /// will have the same contents as [baseVal]. The object referenced
  /// by is always distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  ///
  external SVGPreserveAspectRatio get animVal;
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
  ///  Returns an [SVGAnimatedLength] corresponding to the [x]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get x;

  ///  Returns an [SVGAnimatedLength] corresponding to the [y]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get y;

  ///  Returns an [SVGAnimatedLength] corresponding to the [width]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get width;

  ///  Returns an [SVGAnimatedLength] corresponding to the [height]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get height;

  ///  Returns an [SVGAnimatedLength] corresponding to the [rx]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get rx;

  ///  Returns an [SVGAnimatedLength] corresponding to the [ry]
  /// attribute of the given [<rect>] element.
  ///
  external SVGAnimatedLength get ry;
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
  ///  This property defines the x-coordinate of the center of the
  /// [<circle>] element. It is denoted by the [cx] attribute of the
  /// element.
  ///
  external SVGAnimatedLength get cx;

  ///  This property defines the y-coordinate of the center of the
  /// [<circle>] element. It is denoted by the [cy] attribute of the
  /// element.
  ///
  external SVGAnimatedLength get cy;

  ///  This property defines the radius of the [<circle>] element. It
  /// is denoted by the [r] of the element.
  ///
  external SVGAnimatedLength get r;
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
  ///  This property returns a [SVGAnimatedLength] reflecting the [cx]
  /// attribute of the given [<ellipse>] element.
  ///
  external SVGAnimatedLength get cx;

  ///  This property returns a [SVGAnimatedLength] reflecting the [cy]
  /// attribute of the given [<ellipse>] element.
  ///
  external SVGAnimatedLength get cy;

  ///  This property returns a [SVGAnimatedLength] reflecting the [rx]
  /// attribute of the given [<ellipse>] element.
  ///
  external SVGAnimatedLength get rx;

  ///  This property returns a [SVGAnimatedLength] reflecting the [ry]
  /// attribute of the given [<ellipse>] element.
  ///
  external SVGAnimatedLength get ry;
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
  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x1] on the given [<line>] element.
  ///
  external SVGAnimatedLength get x1;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y1] on the given [<line>] element.
  ///
  external SVGAnimatedLength get y1;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x2] on the given [<line>] element.
  ///
  external SVGAnimatedLength get x2;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y2] on the given [<line>] element.
  ///
  external SVGAnimatedLength get y2;
}

@JS()
@staticInterop
class SVGAnimatedPoints {
  external factory SVGAnimatedPoints();
}

extension PropsSVGAnimatedPoints on SVGAnimatedPoints {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
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
  /// Returns the number of points in the list.
  ///
  external int get length;

  /// Returns the number of points in the list.
  ///
  external int get numberOfItems;

  /// Removes all items in the list.
  ///
  /// SVGPointList.clear();
  ///
  external Object clear();

  ///  First removes all items in the list, then adds a single value to
  /// the list.
  ///
  /// SVGPointList.initialize(obj);
  ///
  external DOMPoint initialize(DOMPoint newItem);

  /// Gets an item from the list at a specified position.
  ///
  /// SVGPointList.getItem(index);
  ///
  external DOMPoint getItem(int index);

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
  external DOMPoint insertItemBefore(DOMPoint newItem, int index);

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
  external DOMPoint replaceItem(DOMPoint newItem, int index);

  /// Removes an item from the list.
  ///
  /// SVGPointList.removeItem(index);
  ///  index
  ///
  ///   The index of the item to remove.
  ///
  ///
  external DOMPoint removeItem(int index);

  /// Adds an item to the end of the list.
  ///
  /// SVGPointList.appendItem(obj);
  ///  obj
  ///
  ///   An SVGPoint object containing the coordinates of the point to be appended.
  ///
  ///
  external DOMPoint appendItem(DOMPoint newItem);
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
  external static int get LENGTHADJUST_UNKNOWN;
  external static int get LENGTHADJUST_SPACING;
  external static int get LENGTHADJUST_SPACINGANDGLYPHS;
  external factory SVGTextContentElement();
}

extension PropsSVGTextContentElement on SVGTextContentElement {
  ///  An [SVGAnimatedLength] reflecting the [textLength] attribute of
  /// the given element.
  ///
  external SVGAnimatedLength get textLength;

  ///  An [SVGAnimatedEnumeration] reflecting the [lengthAdjust]
  /// attribute of the given element. The numeric type values represent
  /// one of the constant values above.
  ///
  external SVGAnimatedEnumeration get lengthAdjust;

  ///  Returns a long representing the total number of addressable
  /// characters available for rendering within the current element,
  /// regardless of whether they will be rendered.
  ///
  external int getNumberOfChars();

  ///  Returns a float representing the computed length for the text
  /// within the element.
  ///
  external double getComputedTextLength();

  ///  Returns a float representing the computed length of the
  /// formatted text advance distance for a substring of text within
  /// the element. Note that this method only accounts for the widths
  /// of the glyphs in the substring and any extra spacing inserted by
  /// the CSS 'letter-spacing' and 'word-spacing' properties. Visual
  /// spacing adjustments made by the 'x' attribute is ignored.
  ///
  external double getSubStringLength(int charnum, int nchars);

  ///  Returns a [DOMPoint] representing the position of a typographic
  /// character after text layout has been performed.
  ///
  ///    Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  ///
  external DOMPoint getStartPositionOfChar(int charnum);

  ///  Returns a [DOMPoint] representing the trailing position of a
  /// typographic character after text layout has been performed.
  ///
  ///    Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  ///
  external DOMPoint getEndPositionOfChar(int charnum);

  ///  Returns a [DOMRect] representing the computed tight bounding box
  /// of the glyph cell that corresponds to a given typographic
  /// character.
  ///
  external DOMRect getExtentOfChar(int charnum);

  ///  Returns a float representing the rotation of typographic
  /// character.
  ///
  external double getRotationOfChar(int charnum);

  ///  Returns a long representing the character which caused a text
  /// glyph to be rendered at a given position in the coordinate
  /// system. Because the relationship between characters and glyphs is
  /// not one-to-one, only the first character of the relevant
  /// typographic character is returned
  ///
  external int getCharNumAtPosition([DOMPointInit? point]);

  /// Selects text within the element.
  ///
  @deprecated
  external Object selectSubString(int charnum, int nchars);
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
  ///  Returns an [SVGAnimatedLengthList] reflecting the [x] attribute
  /// of the given element.
  ///
  external SVGAnimatedLengthList get x;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [y] attribute
  /// of the given element.
  ///
  external SVGAnimatedLengthList get y;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dx] attribute
  /// of the given element.
  ///
  external SVGAnimatedLengthList get dx;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dy] attribute
  /// of the given element.
  ///
  external SVGAnimatedLengthList get dy;

  ///  Returns an [SVGAnimatedNumberList] reflecting the [rotate]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumberList get rotate;
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
  external static int get TEXTPATH_METHODTYPE_UNKNOWN;
  external static int get TEXTPATH_METHODTYPE_ALIGN;
  external static int get TEXTPATH_METHODTYPE_STRETCH;
  external static int get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static int get TEXTPATH_SPACINGTYPE_AUTO;
  external static int get TEXTPATH_SPACINGTYPE_EXACT;
  external factory SVGTextPathElement();
}

extension PropsSVGTextPathElement on SVGTextPathElement {
  ///  An [SVGAnimatedLength] corresponding to the X component of the
  /// [startOffset] attribute of the given element.
  ///
  external SVGAnimatedLength get startOffset;

  ///  An [SVGAnimatedEnumeration] corresponding to the [method]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_METHODTYPE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get method;

  ///  An [SVGAnimatedEnumeration] corresponding to the [spacing]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_SPACINGTYPE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get spacing;
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
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<image>] element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<image>] element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<image>] element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<image>] element.
  ///
  external SVGAnimatedLength get height;

  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given [<image>] element.
  ///
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;

  ///  A [DOMString] corresponding to the [crossorigin] attribute of
  /// the given [<image>] element.
  ///
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);
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
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<foreignObject>] element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<foreignObject>] element.
  ///
  external SVGAnimatedLength get height;
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
  external factory SVGMarkerElement();
}

extension PropsSVGMarkerElement on SVGMarkerElement {
  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refX] attribute of the [<marker>].
  ///
  external SVGAnimatedLength get refX;

  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refY] attribute of the [<marker>].
  ///
  external SVGAnimatedLength get refY;

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
  external SVGAnimatedEnumeration get markerUnits;

  ///  Returns an [SVGAnimatedLength] object containing the width of
  /// the [<marker>] viewport.
  ///
  external SVGAnimatedLength get markerWidth;

  ///  Returns an [SVGAnimatedLength] object containing the height of
  /// the [<marker>] viewport.
  ///
  external SVGAnimatedLength get markerHeight;

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
  external SVGAnimatedEnumeration get orientType;

  ///  Returns an [SVGAnimatedAngle] object containing the angle of the
  /// [orient] attribute.
  ///
  external SVGAnimatedAngle get orientAngle;
  external String get orient;
  external set orient(String newValue);

  /// Sets the value of the [orient] attribute to [auto].
  ///
  /// setOrientToAuto();
  ///
  external Object setOrientToAuto();

  ///  Sets the value of the [orient] attribute to a specific angle
  /// value.
  ///
  /// setOrientToAngle(angle);
  ///
  external Object setOrientToAngle(SVGAngle angle);
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
  external factory SVGGradientElement();
}

extension PropsSVGGradientElement on SVGGradientElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [gradientUnits]
  /// attribute on the given element. This property takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
  external SVGAnimatedEnumeration get gradientUnits;

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [gradientTransform] attribute on the given element.
  ///
  external SVGAnimatedTransformList get gradientTransform;

  ///  An [SVGAnimatedEnumeration] corresponding to the [spreadMethod]
  /// attribute on the given element. One of the spread method types
  /// defined on this interface.
  ///
  external SVGAnimatedEnumeration get spreadMethod;
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
  ///  An [SVGAnimatedLength] corresponding to the [x1] attribute of
  /// the given [<linearGradient>] element.
  ///
  external SVGAnimatedLength get x1;

  ///  An [SVGAnimatedLength] corresponding to the [y1] attribute of
  /// the given [<linearGradient>] element.
  ///
  external SVGAnimatedLength get y1;

  ///  An [SVGAnimatedLength] corresponding to the [x2] attribute of
  /// the given [<linearGradient>] element.
  ///
  external SVGAnimatedLength get x2;

  ///  An [SVGAnimatedLength] corresponding to the [y2] attribute of
  /// the given [<linearGradient>] element.
  ///
  external SVGAnimatedLength get y2;
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
  ///  An [SVGAnimatedLength] corresponding to the [cx] attribute of
  /// the given [<RadialGradient>] element.
  ///
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;

  ///  An [SVGAnimatedLength] corresponding to the [r] attribute of the
  /// given [<RadialGradient>] element.
  ///
  external SVGAnimatedLength get r;

  ///  An [SVGAnimatedLength] corresponding to the [fx] attribute of
  /// the given [<RadialGradient>] element.
  ///
  external SVGAnimatedLength get fx;

  ///  An [SVGAnimatedLength] corresponding to the [fy] attribute of
  /// the given [<RadialGradient>] element.
  ///
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;
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
  ///  An [SVGAnimatedNumber] corresponding to the [offset] of the
  /// given element.
  ///
  external SVGAnimatedNumber get offset;
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
  ///  An [SVGAnimatedEnumeration] corresponding to the [patternUnits]
  /// attribute of the given [<pattern>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
  external SVGAnimatedEnumeration get patternUnits;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [patternContentUnits] attribute of the given [<pattern>] element.
  /// Takes one of the constants defined in [SVGUnitTypes].
  ///
  external SVGAnimatedEnumeration get patternContentUnits;

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [patternTransform] attribute of the given [<pattern>] element.
  ///
  external SVGAnimatedTransformList get patternTransform;

  ///  An [SVGAnimatedEnumeration] corresponding to the [x] attribute
  /// of the given [<pattern>] element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedEnumeration] corresponding to the [y] attribute
  /// of the given [<pattern>] element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedEnumeration] corresponding to the [width]
  /// attribute of the given [<pattern>] element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedEnumeration] corresponding to the [height]
  /// attribute of the given [<pattern>] element.
  ///
  external SVGAnimatedLength get height;
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
  ///  A [DOMString] corresponding to the [type] attribute of the given
  /// [<script>] element. A [DOMException] is raised with the code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read only attribute.
  ///
  external String get type;
  external set type(String newValue);

  ///  A [DOMString] corresponding to the [crossorigin] attribute of
  /// the given [<script>] element.
  ///
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);
}

///  The interface provides access to the properties of an [<a>]
/// element, as well as methods to manipulate them.
@JS()
@staticInterop
class SVGAElement
    implements SVGGraphicsElement, HTMLHyperlinkElementUtils, SVGURIReference {
  external factory SVGAElement();
}

extension PropsSVGAElement on SVGAElement {
  /// It corresponds to the [target] attribute of the given element.
  ///
  external SVGAnimatedString get target;

  /// See [HTMLAnchorElement.download].
  ///
  external String get download;
  external set download(String newValue);

  ///  Is a [DOMString] that reflects the ping attribute, containing a
  /// space-separated list of URLs to which, when the hyperlink is
  /// followed, [POST] requests with the body [PING] will be sent by
  /// the browser (in the background). Typically used for tracking.
  ///
  external String get ping;
  external set ping(String newValue);

  /// See [HTMLAnchorElement.rel].
  ///
  external String get rel;
  external set rel(String newValue);

  /// See [HTMLAnchorElement.relList].
  ///
  external DOMTokenList get relList;

  ///  Is a [DOMString] that reflects the attribute, indicating the
  /// language of the linked resource.
  ///
  external String get hreflang;
  external set hreflang(String newValue);

  ///  Is a [DOMString] that reflects the attribute, indicating the
  /// MIME type of the linked resource.
  ///
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] being a synonym for the [Node.textContent]
  /// property.
  ///
  external String get text;
  external set text(String newValue);

  /// See [HTMLAnchorElement.referrerPolicy].
  ///
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
}

///  The interface provides access to the properties of [<view>]
/// elements, as well as methods to manipulate them.
@JS()
@staticInterop
class SVGViewElement implements SVGElement, SVGFitToViewBox {
  external factory SVGViewElement();
}
