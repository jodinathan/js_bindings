/// Scalable Vector Graphics (SVG) 2
///
/// https://svgwg.org/svg2-draft/
@JS('window')
library svg2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'geometry_1.dart';
import 'web_animations_1.dart';
import 'css_pseudo_4.dart';
import 'svg2.dart';
import 'html.dart';
import 'cssom_1.dart';

///
///
///  All of the SVG DOM interfaces that correspond directly to
/// elements in the SVG language derive from the interface.
///
///
@JS()
class SVGElement extends Element {
  ///  An [SVGAnimatedString] that reflects the value of the [class]
  /// attribute on the given element, or the empty string if [class] is
  /// not present. This attribute is deprecated and may be removed in a
  /// future version of this specification. Authors are advised to use
  /// [Element.classList] instead.
  @override
  @deprecated
  external SVGAnimatedString get className;

  ///  An [SVGSVGElement] referring to the nearest ancestor [<svg>]
  /// element. [null] if the given element is the outermost [<svg>]
  /// element.
  external SVGSVGElement? get ownerSVGElement;

  ///  The [SVGElement], which established the current viewport. Often,
  /// the nearest ancestor [<svg>] element. [null] if the given element
  /// is the outermost [<svg>] element.
  external SVGElement? get viewportElement;

  external factory SVGElement();
}

@anonymous
@JS()
class SVGBoundingBoxOptions {
  external bool get fill;
  external set fill(bool newValue);
  external bool get stroke;
  external set stroke(bool newValue);
  external bool get markers;
  external set markers(bool newValue);
  external bool get clipped;
  external set clipped(bool newValue);

  external factory SVGBoundingBoxOptions(
      {bool fill = true,
      bool stroke = false,
      bool markers = false,
      bool clipped = false});
}

///
///
///  The interface represents SVG elements whose primary purpose is
/// to directly render graphics into a group.
///
///
@JS()
class SVGGraphicsElement extends SVGElement {
  ///  An [SVGAnimatedTransformList] reflecting the computed value of
  /// the property and its corresponding [transform] attribute of the
  /// given element.
  external SVGAnimatedTransformList get transform;

  ///  Returns a [DOMRect] representing the computed bounding box of
  /// the current element.
  /// let bboxRect = object.getBBox();
  external DOMRect getBBox([SVGBoundingBoxOptions? options]);

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to its SVG viewport's
  /// coordinate system.
  external DOMMatrix? getCTM();

  ///  Returns a [DOMMatrix] representing the matrix that transforms
  /// the current element's coordinate system to the coordinate system
  /// of the SVG viewport for the SVG document fragment.
  external DOMMatrix? getScreenCTM();

  external factory SVGGraphicsElement();
}

///
///
///  The interface represents SVG elements whose rendering is defined
/// by geometry with an equivalent path, and which can be filled and
/// stroked. This includes paths and the basic shapes.
///
///
@JS()
class SVGGeometryElement extends SVGGraphicsElement {
  /// This property reflects the [pathLength] attribute.
  external SVGAnimatedNumber get pathLength;

  ///  Determines whether a given point is within the fill shape of an
  /// element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the fill.
  /// boolean someElement.isPointInFill(DOMPointInit point);
  ///
  external bool isPointInFill([DOMPointInit? point]);

  ///  Determines whether a given point is within the stroke shape of
  /// an element. Normal hit testing rules apply; the value of the
  /// [pointer-events] property on the element determines whether a
  /// point is considered to be within the stroke.
  /// boolean someElement.isPointInStroke(DOMPointInit point);
  ///
  external bool isPointInStroke([DOMPointInit? point]);

  ///  Returns the user agent's computed value for the total length of
  /// the path in user units.
  /// float someElement.getTotalLength();
  ///
  external double getTotalLength();

  /// Returns the point at a given distance along the path.
  /// DOMPoint someElement.getPointAtLength(float distance);
  ///
  external DOMPoint getPointAtLength(double distance);

  external factory SVGGeometryElement();
}

///
///
/// The interface corresponds to the [<number>] basic data type.
///
///  An object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being
/// thrown.
@JS()
class SVGNumber {
  /// A float representing the number.
  ///   Note: If the [SVGNumber] is read-only, a [DOMException] with
  /// the code NO_MODIFICATION_ALLOWED_ERR is raised on an attempt to
  /// change the value.
  ///
  external double get value;
  external set value(double newValue);

  external factory SVGNumber();
}

///
@JS()
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

  external factory SVGLength();
}

///
@JS()
class SVGAngle {
  external static int get SVG_ANGLETYPE_UNKNOWN;
  external static int get SVG_ANGLETYPE_UNSPECIFIED;
  external static int get SVG_ANGLETYPE_DEG;
  external static int get SVG_ANGLETYPE_RAD;
  external static int get SVG_ANGLETYPE_GRAD;
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

  external factory SVGAngle();
}

///
@JS()
class SVGNumberList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external SVGNumber initialize(SVGNumber newItem);
  external SVGNumber getItem(int index);
  external SVGNumber insertItemBefore(SVGNumber newItem, int index);
  external SVGNumber replaceItem(SVGNumber newItem, int index);
  external SVGNumber removeItem(int index);
  external SVGNumber appendItem(SVGNumber newItem);

  external factory SVGNumberList();
}

///
@JS()
class SVGLengthList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external SVGLength initialize(SVGLength newItem);
  external SVGLength getItem(int index);
  external SVGLength insertItemBefore(SVGLength newItem, int index);
  external SVGLength replaceItem(SVGLength newItem, int index);
  external SVGLength removeItem(int index);
  external SVGLength appendItem(SVGLength newItem);

  external factory SVGLengthList();
}

///
@JS()
class SVGStringList {
  external int get length;
  external int get numberOfItems;
  external Object clear();
  external String initialize(String newItem);
  external String getItem(int index);
  external String insertItemBefore(String newItem, int index);
  external String replaceItem(String newItem, int index);
  external String removeItem(int index);
  external String appendItem(String newItem);

  external factory SVGStringList();
}

///
@JS()
class SVGAnimatedBoolean {
  external bool get baseVal;
  external set baseVal(bool newValue);
  external bool get animVal;

  external factory SVGAnimatedBoolean();
}

///
@JS()
class SVGAnimatedEnumeration {
  external int get baseVal;
  external set baseVal(int newValue);
  external int get animVal;

  external factory SVGAnimatedEnumeration();
}

///
@JS()
class SVGAnimatedInteger {
  external int get baseVal;
  external set baseVal(int newValue);
  external int get animVal;

  external factory SVGAnimatedInteger();
}

///
@JS()
class SVGAnimatedNumber {
  external double get baseVal;
  external set baseVal(double newValue);
  external double get animVal;

  external factory SVGAnimatedNumber();
}

///
@JS()
class SVGAnimatedLength {
  external SVGLength get baseVal;
  external SVGLength get animVal;

  external factory SVGAnimatedLength();
}

///
@JS()
class SVGAnimatedAngle {
  external SVGAngle get baseVal;
  external SVGAngle get animVal;

  external factory SVGAnimatedAngle();
}

///
///
///  The [SVGAnimatedString] interface represents string attributes
/// which can be animated from each SVG declaration. You need to
/// create SVG attribute before doing anything else, everything
/// should be declared inside this.
@JS()
class SVGAnimatedString {
  ///  This is a [DOMString] representing the base value. The base
  /// value of the given attribute before applying any animations.
  /// Setter throws DOMException.
  external String get baseVal;
  external set baseVal(String newValue);

  ///  This is a [DOMString] representing the animation value. If the
  /// given attribute or property is being animated it contains the
  /// current animated value of the attribute or property. If the given
  /// attribute or property is not currently being animated, it
  /// contains the same value as baseVal.
  external String get animVal;

  external factory SVGAnimatedString();
}

///
///
///  The interface is used for attributes of basic [SVGRect] which
/// can be animated.
@JS()
class SVGAnimatedRect {
  external DOMRect get baseVal;
  external DOMRectReadOnly get animVal;

  external factory SVGAnimatedRect();
}

///
@JS()
class SVGAnimatedNumberList {
  ///  Is a [SVGNumberList] that represents the base value of the given
  /// attribute before applying any animations.
  external SVGNumberList get baseVal;

  ///  Is a read only [SVGNumberList] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGNumberList] will have
  /// the same contents as [baseVal]. The object referenced by will
  /// always be distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  external SVGNumberList get animVal;

  external factory SVGAnimatedNumberList();
}

///
@JS()
class SVGAnimatedLengthList {
  external SVGLengthList get baseVal;
  external SVGLengthList get animVal;

  external factory SVGAnimatedLengthList();
}

///
///
///  The interface defines a commonly used set of constants used for
/// reflecting [gradientUnits], [patternContentUnits] and other
/// similar attributes.
///
///
@JS()
class SVGUnitTypes {
  external static int get SVG_UNIT_TYPE_UNKNOWN;
  external static int get SVG_UNIT_TYPE_USERSPACEONUSE;
  external static int get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;

  external factory SVGUnitTypes();
}

@JS()
abstract class SVGTests {
  external SVGStringList get requiredExtensions;
  external SVGStringList get systemLanguage;
}

@JS()
abstract class SVGFitToViewBox {
  external SVGAnimatedRect get viewBox;
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
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
///  The interface is used to reflect the [zoomAndPan] attribute, and
/// is mixed in to other interfaces for elements that support this
/// attribute.
///
///
@JS()
abstract class SVGZoomAndPan {
  external static int get SVG_ZOOMANDPAN_UNKNOWN;
  external static int get SVG_ZOOMANDPAN_DISABLE;
  external static int get SVG_ZOOMANDPAN_MAGNIFY;

  ///  An unsigned short representing the value of the [zoomAndPan]
  /// attribute.
  external int get zoomAndPan;
  external set zoomAndPan(int newValue);
}

@JS()
abstract class SVGURIReference {
  external SVGAnimatedString get href;
}

///
///
///  The interface provides access to the properties of [<svg>]
/// elements, as well as methods to manipulate them. This interface
/// contains also various miscellaneous commonly-used utility
/// methods, such as matrix operations and the ability to control the
/// time of redraw on visual rendering devices.
///
///
@JS()
class SVGSVGElement extends SVGGraphicsElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<svg>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<svg>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<svg>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<svg>] element.
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
  external double get currentScale;
  external set currentScale(double newValue);

  ///  An [SVGPoint] representing the translation factor that takes
  /// into account user "magnification" corresponding to an outermost
  /// [<svg>] element. The behavior is undefined for [<svg>] elements
  /// that are not at the outermost level.
  external DOMPointReadOnly get currentTranslate;

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  external NodeList getIntersectionList(
      DOMRectReadOnly rect, SVGElement? referenceElement);

  ///  Returns a [NodeList] of graphics elements whose rendered content
  /// is entirely contained within the supplied rectangle. Each
  /// candidate graphics element is to be considered a match only if
  /// the same graphics element can be a target of pointer events as
  /// defined in [pointer-events] processing.
  external NodeList getEnclosureList(
      DOMRectReadOnly rect, SVGElement? referenceElement);

  ///  Returns [true] if the rendered content of the given element
  /// intersects the supplied rectangle. Each candidate graphics
  /// element is to be considered a match only if the same graphics
  /// element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  external bool checkIntersection(SVGElement element, DOMRectReadOnly rect);

  ///  Returns [true] if the rendered content of the given element is
  /// entirely contained within the supplied rectangle. Each candidate
  /// graphics element is to be considered a match only if the same
  /// graphics element can be a target of pointer events as defined in
  /// [pointer-events] processing.
  external bool checkEnclosure(SVGElement element, DOMRectReadOnly rect);

  ///  Unselects any selected objects, including any selections of text
  /// strings and type-in bars.
  external Object deselectAll();

  ///  Creates an [SVGNumber] object outside of any document trees. The
  /// object is initialized to [0].
  external SVGNumber createSVGNumber();

  ///  Creates an [SVGLength] object outside of any document trees. The
  /// object is initialized to [0] user units.
  external SVGLength createSVGLength();

  ///  Creates an [SVGAngle] object outside of any document trees. The
  /// object is initialized to a value of [0] degrees (unitless).
  external SVGAngle createSVGAngle();

  ///  Creates an [SVGPoint] object outside of any document trees. The
  /// object is initialized to the point [(0,0)] in the user coordinate
  /// system.
  external DOMPoint createSVGPoint();

  ///  Creates an [SVGMatrix] object outside of any document trees. The
  /// object is initialized to the identity matrix.
  external DOMMatrix createSVGMatrix();

  ///  Creates an [SVGRect] object outside of any document trees. The
  /// object is initialized such that all values are set to [0] user
  /// units.
  external DOMRect createSVGRect();

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to an identity matrix transform
  /// ([SVG_TRANSFORM_MATRIX]).
  external SVGTransform createSVGTransform();

  ///  Creates an [SVGTransform] object outside of any document trees.
  /// The object is initialized to the given matrix transform (i.e.,
  /// [SVG_TRANSFORM_MATRIX]). The values from the parameter matrix are
  /// copied, the matrix parameter is not adopted as
  /// [SVGTransform::matrix].
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit? matrix]);

  ///  Searches this SVG document fragment (i.e., the search is
  /// restricted to a subset of the document tree) for an Element whose
  /// [id] is given by [elementId]. If an Element is found, that
  /// Element is returned. If no such element exists, returns [null].
  /// Behavior is not defined if more than one element has this id.
  external Element getElementById(String elementId);

  ///  Takes a time-out value which indicates that redraw shall not
  /// occur until:
  ///   the corresponding [unsuspendRedraw()] call has been made, an
  /// [unsuspendRedrawAll()] call has been made, or its timer has timed
  /// out.
  ///
  ///   In environments that do not support interactivity (e.g., print
  /// media), then redraw shall not be suspended. Calls to
  /// [suspendRedraw()] and [unsuspendRedraw()] should, but need not
  /// be, made in balanced pairs.
  ///
  ///   To suspend redraw actions as a collection of SVG DOM changes
  /// occur, precede the changes to the SVG DOM with a method call
  /// similar to:
  ///
  /// 	[const suspendHandleID = suspendRedraw(maxWaitMilliseconds)]
  ///
  /// 	and follow the changes with a method call similar to:
  ///
  /// 	[unsuspendRedraw(suspendHandleID)]
  ///
  ///   Note that multiple [suspendRedraw()] calls can be used at once,
  /// and that each such method call is treated independently of the
  /// other [suspendRedraw()] method calls.
  ///
  @deprecated
  external int suspendRedraw(int maxWaitMilliseconds);

  ///  Cancels a specified [suspendRedraw()] by providing a unique
  /// suspend handle ID that was returned by a previous
  /// [suspendRedraw()] call.
  @deprecated
  external Object unsuspendRedraw(int suspendHandleID);

  ///  Cancels all currently active [suspendRedraw()] method calls.
  /// This method is most useful at the very end of a set of SVG DOM
  /// calls to ensure that all pending [suspendRedraw()] method calls
  /// have been cancelled.
  @deprecated
  external Object unsuspendRedrawAll();

  ///  In rendering environments supporting interactivity, forces the
  /// user agent to immediately redraw all regions of the viewport that
  /// require updating.
  @deprecated
  external Object forceRedraw();
  external Object pauseAnimations();
  external Object unpauseAnimations();
  external bool animationsPaused();
  external double getCurrentTime();
  external Object setCurrentTime(double seconds);

  external factory SVGSVGElement();
}

///
///
/// The interface corresponds to the [<g>] element.
///
///
@JS()
class SVGGElement extends SVGGraphicsElement {
  external factory SVGGElement();
}

@JS()
class SVGUnknownElement extends SVGGraphicsElement {
  external factory SVGUnknownElement();
}

///
///
/// The interface corresponds to the [<defs>] element.
///
///
@JS()
class SVGDefsElement extends SVGGraphicsElement {
  external factory SVGDefsElement();
}

///
///
/// The interface corresponds to the [<desc>] element.
///
///
@JS()
class SVGDescElement extends SVGElement {
  external factory SVGDescElement();
}

///
///
/// The interface corresponds to the [<metadata>] element.
///
///
@JS()
class SVGMetadataElement extends SVGElement {
  external factory SVGMetadataElement();
}

///
///
/// The interface corresponds to the [<title>] element.
///
///
@JS()
class SVGTitleElement extends SVGElement {
  external factory SVGTitleElement();
}

///
///
/// The interface corresponds to the [<symbol>] element.
///
///
@JS()
class SVGSymbolElement extends SVGGraphicsElement {
  external factory SVGSymbolElement();
}

///
@JS()
class SVGUseElement extends SVGGraphicsElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given element.
  external SVGAnimatedLength get height;
  external SVGElement? get instanceRoot;
  external SVGElement? get animatedInstanceRoot;

  external factory SVGUseElement();
}

@JS()
class SVGUseElementShadowRoot extends ShadowRoot {
  external factory SVGUseElementShadowRoot();
}

@JS()
abstract class SVGElementInstance {
  external SVGElement? get correspondingElement;
  external SVGUseElement? get correspondingUseElement;
}

@JS()
class ShadowAnimation extends Animation {
  external factory ShadowAnimation({Animation source, dynamic newTarget});
  external Animation get sourceAnimation;
}

///
///
/// The interface corresponds to the [<switch>] element.
///
///
@JS()
class SVGSwitchElement extends SVGGraphicsElement {
  external factory SVGSwitchElement();
}

@JS()
abstract class GetSVGDocument {
  external Document getSVGDocument();
}

///
@JS()
class SVGStyleElement extends SVGElement {
  ///  A [DOMString] corresponding to the [type] attribute of the given
  /// element.
  ///   SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get type;
  external set type(String newValue);

  ///  A [DOMString] corresponding to the [media] attribute of the
  /// given element.
  ///   SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get media;
  external set media(String newValue);

  ///  A [DOMString] corresponding to the [title] attribute of the
  /// given element.
  ///   SVG 1.1 defined that a [DOMException] is raised with code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read-only attribute. This restriction was removed in SVG 2.
  ///
  external String get title;
  external set title(String newValue);

  external factory SVGStyleElement();
}

///
@JS()
class SVGTransform {
  external static int get SVG_TRANSFORM_UNKNOWN;
  external static int get SVG_TRANSFORM_MATRIX;
  external static int get SVG_TRANSFORM_TRANSLATE;
  external static int get SVG_TRANSFORM_SCALE;
  external static int get SVG_TRANSFORM_ROTATE;
  external static int get SVG_TRANSFORM_SKEWX;
  external static int get SVG_TRANSFORM_SKEWY;
  external int get type;
  external DOMMatrix get matrix;
  external double get angle;
  external Object setMatrix([DOMMatrix2DInit? matrix]);
  external Object setTranslate(double tx, double ty);
  external Object setScale(double sx, double sy);
  external Object setRotate(double angle, double cx, double cy);
  external Object setSkewX(double angle);
  external Object setSkewY(double angle);

  external factory SVGTransform();
}

///
@JS()
class SVGTransformList {
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

  external factory SVGTransformList();
}

///
@JS()
class SVGAnimatedTransformList {
  external SVGTransformList get baseVal;
  external SVGTransformList get animVal;

  external factory SVGAnimatedTransformList();
}

///
@JS()
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
  external int get align;
  external set align(int newValue);
  external int get meetOrSlice;
  external set meetOrSlice(int newValue);

  external factory SVGPreserveAspectRatio();
}

///
@JS()
class SVGAnimatedPreserveAspectRatio {
  ///  Is a [SVGPreserveAspectRatio] that represents the base value of
  /// the given attribute before applying any animations.
  external SVGPreserveAspectRatio get baseVal;

  ///  Is a [SVGPreserveAspectRatio] that represents the current
  /// animated value of the given attribute. If the given attribute is
  /// not currently being animated, then the [SVGPreserveAspectRatio]
  /// will have the same contents as [baseVal]. The object referenced
  /// by is always distinct from the one referenced by [baseVal], even
  /// when the attribute is not animated.
  external SVGPreserveAspectRatio get animVal;

  external factory SVGAnimatedPreserveAspectRatio();
}

///
///
/// The interface corresponds to the [<path>] element.
///
///
///  Note: In SVG 2 the [getPathSegAtLength()] and
/// [createSVGPathSeg*] methods were removed and the [pathLength]
/// property and the [getTotalLength()] and [getPointAtLength()]
/// methods were moved to [SVGGeometryElement].
///
@JS()
class SVGPathElement extends SVGGeometryElement {
  external factory SVGPathElement();
}

///
///
///  The interface provides access to the properties of [<rect>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGRectElement extends SVGGeometryElement {
  ///  Returns an [SVGAnimatedLength] corresponding to the [x]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get x;

  ///  Returns an [SVGAnimatedLength] corresponding to the [y]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get y;

  ///  Returns an [SVGAnimatedLength] corresponding to the [width]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get width;

  ///  Returns an [SVGAnimatedLength] corresponding to the [height]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get height;

  ///  Returns an [SVGAnimatedLength] corresponding to the [rx]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get rx;

  ///  Returns an [SVGAnimatedLength] corresponding to the [ry]
  /// attribute of the given [<rect>] element.
  external SVGAnimatedLength get ry;

  external factory SVGRectElement();
}

///
///
/// The interface is an interface for the [<circle>] element.
///
///
@JS()
class SVGCircleElement extends SVGGeometryElement {
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

  external factory SVGCircleElement();
}

///
///
///  The interface provides access to the properties of [<ellipse>]
/// elements.
///
///
@JS()
class SVGEllipseElement extends SVGGeometryElement {
  ///  This property returns a [SVGAnimatedLength] reflecting the [cx]
  /// attribute of the given [<ellipse>] element.
  external SVGAnimatedLength get cx;

  ///  This property returns a [SVGAnimatedLength] reflecting the [cy]
  /// attribute of the given [<ellipse>] element.
  external SVGAnimatedLength get cy;

  ///  This property returns a [SVGAnimatedLength] reflecting the [rx]
  /// attribute of the given [<ellipse>] element.
  external SVGAnimatedLength get rx;

  ///  This property returns a [SVGAnimatedLength] reflecting the [ry]
  /// attribute of the given [<ellipse>] element.
  external SVGAnimatedLength get ry;

  external factory SVGEllipseElement();
}

///
///
///  The interface provides access to the properties of [<line>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGLineElement extends SVGGeometryElement {
  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x1] on the given [<line>] element.
  external SVGAnimatedLength get x1;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y1] on the given [<line>] element.
  external SVGAnimatedLength get y1;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [x2] on the given [<line>] element.
  external SVGAnimatedLength get x2;

  ///  Returns an [SVGAnimatedLength] that corresponds to attribute
  /// [y2] on the given [<line>] element.
  external SVGAnimatedLength get y2;

  external factory SVGLineElement();
}

@JS()
abstract class SVGAnimatedPoints {
  external SVGPointList get points;
  external SVGPointList get animatedPoints;
}

///
///
/// The interface represents a list of [SVGPoint] objects.
///
///  An can be designated as read-only, which means that attempts to
/// modify the object will result in an exception being thrown.
@JS()
class SVGPointList {
  /// Returns the number of points in the list.
  external int get length;

  /// Returns the number of points in the list.
  external int get numberOfItems;

  /// Removes all items in the list.
  /// SVGPointList.clear();
  external Object clear();

  ///  First removes all items in the list, then adds a single value to
  /// the list.
  /// SVGPointList.initialize(obj);
  external DOMPoint initialize(DOMPoint newItem);

  /// Gets an item from the list at a specified position.
  /// SVGPointList.getItem(index);
  external DOMPoint getItem(int index);

  /// Inserts an element into the list at a specified position.
  /// SVGPointList.insertItemBefore(obj,index);
  ///  obj
  ///  An SVGPoint object containing the coordinates of the point to be inserted.
  ///  index
  ///  The index of the item the object should be inserted before. If the index passed in is greater than the length of the list, then index will be set to the list length and the item inserted before the last item in the list.
  ///
  external DOMPoint insertItemBefore(DOMPoint newItem, int index);

  /// Replaces an item in the list with a new item.
  /// SVGPointList.replaceItem(obj,index);
  ///  obj
  ///  An point object containing the coordinates of the point to be inserted.
  ///  index
  ///  The index of the item to replace.
  ///
  external DOMPoint replaceItem(DOMPoint newItem, int index);

  /// Removes an item from the list.
  /// SVGPointList.removeItem(index);
  ///  index
  ///  The index of the item to remove.
  ///
  external DOMPoint removeItem(int index);

  /// Adds an item to the end of the list.
  /// SVGPointList.appendItem(obj);
  ///  obj
  ///  An SVGPoint object containing the coordinates of the point to be appended.
  ///
  external DOMPoint appendItem(DOMPoint newItem);

  external factory SVGPointList();
}

///
///
///  The interface provides access to the properties of [<polyline>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGPolylineElement extends SVGGeometryElement {
  external factory SVGPolylineElement();
}

///
///
///  The interface provides access to the properties of [<polygon>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGPolygonElement extends SVGGeometryElement {
  external factory SVGPolygonElement();
}

///
///
///  The interface is implemented by elements that support rendering
/// child text content. It is inherited by various text-related
/// interfaces, such as [SVGTextElement], [SVGTSpanElement],
/// [SVGTRefElement], [SVGAltGlyphElement] and [SVGTextPathElement].
///
///
@JS()
class SVGTextContentElement extends SVGGraphicsElement {
  external static int get LENGTHADJUST_UNKNOWN;
  external static int get LENGTHADJUST_SPACING;
  external static int get LENGTHADJUST_SPACINGANDGLYPHS;

  ///  An [SVGAnimatedLength] reflecting the [textLength] attribute of
  /// the given element.
  external SVGAnimatedLength get textLength;

  ///  An [SVGAnimatedEnumeration] reflecting the [lengthAdjust]
  /// attribute of the given element. The numeric type values represent
  /// one of the constant values above.
  external SVGAnimatedEnumeration get lengthAdjust;

  ///  Returns a long representing the total number of addressable
  /// characters available for rendering within the current element,
  /// regardless of whether they will be rendered.
  external int getNumberOfChars();

  ///  Returns a float representing the computed length for the text
  /// within the element.
  external double getComputedTextLength();

  ///  Returns a float representing the computed length of the
  /// formatted text advance distance for a substring of text within
  /// the element. Note that this method only accounts for the widths
  /// of the glyphs in the substring and any extra spacing inserted by
  /// the CSS 'letter-spacing' and 'word-spacing' properties. Visual
  /// spacing adjustments made by the 'x' attribute is ignored.
  external double getSubStringLength(int charnum, int nchars);

  ///  Returns a [DOMPoint] representing the position of a typographic
  /// character after text layout has been performed.
  ///  Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  external DOMPoint getStartPositionOfChar(int charnum);

  ///  Returns a [DOMPoint] representing the trailing position of a
  /// typographic character after text layout has been performed.
  ///  Note: In SVG 1.1 this method returned an [SVGPoint].
  ///
  external DOMPoint getEndPositionOfChar(int charnum);

  ///  Returns a [DOMRect] representing the computed tight bounding box
  /// of the glyph cell that corresponds to a given typographic
  /// character.
  external DOMRect getExtentOfChar(int charnum);

  ///  Returns a float representing the rotation of typographic
  /// character.
  external double getRotationOfChar(int charnum);

  ///  Returns a long representing the character which caused a text
  /// glyph to be rendered at a given position in the coordinate
  /// system. Because the relationship between characters and glyphs is
  /// not one-to-one, only the first character of the relevant
  /// typographic character is returned
  external int getCharNumAtPosition([DOMPointInit? point]);

  /// Selects text within the element.
  @deprecated
  external Object selectSubString(int charnum, int nchars);

  external factory SVGTextContentElement();
}

///
///
///  The interface is implemented by elements that support attributes
/// that position individual text glyphs. It is inherited by
/// [SVGTextElement], [SVGTSpanElement], [SVGTRefElement] and
/// [SVGAltGlyphElement].
///
///
@JS()
class SVGTextPositioningElement extends SVGTextContentElement {
  ///  Returns an [SVGAnimatedLengthList] reflecting the [x] attribute
  /// of the given element.
  external SVGAnimatedLengthList get x;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [y] attribute
  /// of the given element.
  external SVGAnimatedLengthList get y;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dx] attribute
  /// of the given element.
  external SVGAnimatedLengthList get dx;

  ///  Returns an [SVGAnimatedLengthList] reflecting the [dy] attribute
  /// of the given element.
  external SVGAnimatedLengthList get dy;

  ///  Returns an [SVGAnimatedNumberList] reflecting the [rotate]
  /// attribute of the given element.
  external SVGAnimatedNumberList get rotate;

  external factory SVGTextPositioningElement();
}

///
///
/// The interface corresponds to the [<text>] elements.
///
///
@JS()
class SVGTextElement extends SVGTextPositioningElement {
  external factory SVGTextElement();
}

///
///
/// The interface represents a [<tspan>] element.
///
///
@JS()
class SVGTSpanElement extends SVGTextPositioningElement {
  external factory SVGTSpanElement();
}

///
///
/// The interface corresponds to the [<textPath>] element.
///
///
@JS()
class SVGTextPathElement extends SVGTextContentElement {
  external static int get TEXTPATH_METHODTYPE_UNKNOWN;
  external static int get TEXTPATH_METHODTYPE_ALIGN;
  external static int get TEXTPATH_METHODTYPE_STRETCH;
  external static int get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external static int get TEXTPATH_SPACINGTYPE_AUTO;
  external static int get TEXTPATH_SPACINGTYPE_EXACT;

  ///  An [SVGAnimatedLength] corresponding to the X component of the
  /// [startOffset] attribute of the given element.
  external SVGAnimatedLength get startOffset;

  ///  An [SVGAnimatedEnumeration] corresponding to the [method]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_METHODTYPE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get method;

  ///  An [SVGAnimatedEnumeration] corresponding to the [spacing]
  /// attribute of the given element. It takes one of the
  /// [TEXTPATH_SPACINGTYPE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get spacing;

  external factory SVGTextPathElement();
}

///
///
/// The interface corresponds to the [<image>] element.
///
///
@JS()
class SVGImageElement extends SVGGraphicsElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<image>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<image>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<image>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<image>] element.
  external SVGAnimatedLength get height;

  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given [<image>] element.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;

  ///  A [DOMString] corresponding to the [crossorigin] attribute of
  /// the given [<image>] element.
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);

  external factory SVGImageElement();
}

///
///
///  The interface provides access to the properties of
/// [<foreignObject>] elements, as well as methods to manipulate
/// them.
///
///
@JS()
class SVGForeignObjectElement extends SVGGraphicsElement {
  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<foreignObject>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<foreignObject>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<foreignObject>] element.
  external SVGAnimatedLength get height;

  external factory SVGForeignObjectElement();
}

///
///
///  The interface provides access to the properties of [<marker>]
/// elements, as well as methods to manipulate them. The [<marker>]
/// element defines the graphics used for drawing marks on a shape.
///
///  The following properties and methods all return, or act on the
/// attributes of the [<marker>] element represented by .
@JS()
class SVGMarkerElement extends SVGElement {
  external static int get SVG_MARKERUNITS_UNKNOWN;
  external static int get SVG_MARKERUNITS_USERSPACEONUSE;
  external static int get SVG_MARKERUNITS_STROKEWIDTH;
  external static int get SVG_MARKER_ORIENT_UNKNOWN;
  external static int get SVG_MARKER_ORIENT_AUTO;
  external static int get SVG_MARKER_ORIENT_ANGLE;

  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refX] attribute of the [<marker>].
  external SVGAnimatedLength get refX;

  ///  Returns an [SVGAnimatedLength] object containing the value of
  /// the [refY] attribute of the [<marker>].
  external SVGAnimatedLength get refY;

  ///  Returns an [SVGAnimatedEnumeration] object, with one of the
  /// following values:
  ///
  ///    0
  ///     [SVG_MARKERUNITS_UNKNOWN] which means that the [markerUnits]
  /// attribute has a value other than the two predefined keywords.
  ///    1
  ///     [SVG_MARKERUNITS_USERSPACEONUSE] which means that the
  /// [markerUnits] attribute has the keyword value [userSpaceOnUse].
  ///    2
  ///     [SVG_MARKERUNITS_STROKEWIDTH] which means that the
  /// [markerUnits] attribute has the keyword value [strokeWidth].
  ///
  ///
  external SVGAnimatedEnumeration get markerUnits;

  ///  Returns an [SVGAnimatedLength] object containing the width of
  /// the [<marker>] viewport.
  external SVGAnimatedLength get markerWidth;

  ///  Returns an [SVGAnimatedLength] object containing the height of
  /// the [<marker>] viewport.
  external SVGAnimatedLength get markerHeight;

  ///  Returns an [SVGAnimatedEnumeration] object, with one of the
  /// following values:
  ///
  ///    0
  ///     [SVG_MARKER_ORIENT_UNKNOWN] which means that the [orient]
  /// attribute has a value other than the two predefined keywords.
  ///    1
  ///     [SVG_MARKERUNITS_ORIENT_AUTO] which means that the [orient]
  /// attribute has the keyword value [auto].
  ///    2
  ///     [SVG_MARKERUNITS_ORIENT_ANGLE] which means that the [orient]
  /// attribute has an [<angle>] or [<number>] value indicating the
  /// angle.
  ///
  ///
  external SVGAnimatedEnumeration get orientType;

  ///  Returns an [SVGAnimatedAngle] object containing the angle of the
  /// [orient] attribute.
  external SVGAnimatedAngle get orientAngle;
  external String get orient;
  external set orient(String newValue);

  /// Sets the value of the [orient] attribute to [auto].
  /// setOrientToAuto();
  external Object setOrientToAuto();

  ///  Sets the value of the [orient] attribute to a specific angle
  /// value.
  /// setOrientToAngle(angle);
  external Object setOrientToAngle(SVGAngle angle);

  external factory SVGMarkerElement();
}

///
///
///  The [SVGGradient] interface is a base interface used by
/// [SVGLinearGradientElement] and [SVGRadialGradientElement].
///
///
@JS()
class SVGGradientElement extends SVGElement {
  external static int get SVG_SPREADMETHOD_UNKNOWN;
  external static int get SVG_SPREADMETHOD_PAD;
  external static int get SVG_SPREADMETHOD_REFLECT;
  external static int get SVG_SPREADMETHOD_REPEAT;

  ///  An [SVGAnimatedEnumeration] corresponding to the [gradientUnits]
  /// attribute on the given element. This property takes one of the
  /// constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get gradientUnits;

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [gradientTransform] attribute on the given element.
  external SVGAnimatedTransformList get gradientTransform;

  ///  An [SVGAnimatedEnumeration] corresponding to the [spreadMethod]
  /// attribute on the given element. One of the spread method types
  /// defined on this interface.
  external SVGAnimatedEnumeration get spreadMethod;

  external factory SVGGradientElement();
}

///
///
/// The interface corresponds to the [<linearGradient>] element.
///
///
@JS()
class SVGLinearGradientElement extends SVGGradientElement {
  ///  An [SVGAnimatedLength] corresponding to the [x1] attribute of
  /// the given [<linearGradient>] element.
  external SVGAnimatedLength get x1;

  ///  An [SVGAnimatedLength] corresponding to the [y1] attribute of
  /// the given [<linearGradient>] element.
  external SVGAnimatedLength get y1;

  ///  An [SVGAnimatedLength] corresponding to the [x2] attribute of
  /// the given [<linearGradient>] element.
  external SVGAnimatedLength get x2;

  ///  An [SVGAnimatedLength] corresponding to the [y2] attribute of
  /// the given [<linearGradient>] element.
  external SVGAnimatedLength get y2;

  external factory SVGLinearGradientElement();
}

///
///
/// The interface corresponds to the [<RadialGradient>] element.
///
///
@JS()
class SVGRadialGradientElement extends SVGGradientElement {
  ///  An [SVGAnimatedLength] corresponding to the [cx] attribute of
  /// the given [<RadialGradient>] element.
  external SVGAnimatedLength get cx;
  external SVGAnimatedLength get cy;

  ///  An [SVGAnimatedLength] corresponding to the [r] attribute of the
  /// given [<RadialGradient>] element.
  external SVGAnimatedLength get r;

  ///  An [SVGAnimatedLength] corresponding to the [fx] attribute of
  /// the given [<RadialGradient>] element.
  external SVGAnimatedLength get fx;

  ///  An [SVGAnimatedLength] corresponding to the [fy] attribute of
  /// the given [<RadialGradient>] element.
  external SVGAnimatedLength get fy;
  external SVGAnimatedLength get fr;

  external factory SVGRadialGradientElement();
}

///
///
/// The interface corresponds to the [<stop>] element.
///
///
@JS()
class SVGStopElement extends SVGElement {
  ///  An [SVGAnimatedNumber] corresponding to the [offset] of the
  /// given element.
  external SVGAnimatedNumber get offset;

  external factory SVGStopElement();
}

///
///
/// The interface corresponds to the [<pattern>] element.
///
///
@JS()
class SVGPatternElement extends SVGElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [patternUnits]
  /// attribute of the given [<pattern>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get patternUnits;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [patternContentUnits] attribute of the given [<pattern>] element.
  /// Takes one of the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get patternContentUnits;

  ///  An [SVGAnimatedTransformList] corresponding to the
  /// [patternTransform] attribute of the given [<pattern>] element.
  external SVGAnimatedTransformList get patternTransform;

  ///  An [SVGAnimatedEnumeration] corresponding to the [x] attribute
  /// of the given [<pattern>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedEnumeration] corresponding to the [y] attribute
  /// of the given [<pattern>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedEnumeration] corresponding to the [width]
  /// attribute of the given [<pattern>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedEnumeration] corresponding to the [height]
  /// attribute of the given [<pattern>] element.
  external SVGAnimatedLength get height;

  external factory SVGPatternElement();
}

///
///
/// The interface corresponds to the SVG [<script>] element.
///
///
@JS()
class SVGScriptElement extends SVGElement {
  ///  A [DOMString] corresponding to the [type] attribute of the given
  /// [<script>] element. A [DOMException] is raised with the code
  /// [NO_MODIFICATION_ALLOWED_ERR] on an attempt to change the value
  /// of a read only attribute.
  external String get type;
  external set type(String newValue);

  ///  A [DOMString] corresponding to the [crossorigin] attribute of
  /// the given [<script>] element.
  external String? get crossOrigin;
  external set crossOrigin(String? newValue);

  external factory SVGScriptElement();
}

///
///
///  The interface provides access to the properties of [<a>]
/// element, as well as methods to manipulate them.
@JS()
class SVGAElement extends SVGGraphicsElement {
  /// It corresponds to the [target] attribute of the given element.
  external SVGAnimatedString get target;

  /// See [HTMLAnchorElement.download].
  external String get download;
  external set download(String newValue);

  ///  Is a [DOMString] that reflects the ping attribute, containing a
  /// space-separated list of URLs to which, when the hyperlink is
  /// followed, [POST] requests with the body [PING] will be sent by
  /// the browser (in the background). Typically used for tracking.
  external String get ping;
  external set ping(String newValue);

  /// See [HTMLAnchorElement.rel].
  external String get rel;
  external set rel(String newValue);

  /// See [HTMLAnchorElement.relList].
  external DOMTokenList get relList;

  ///  Is a [DOMString] that reflects the attribute, indicating the
  /// language of the linked resource.
  external String get hreflang;
  external set hreflang(String newValue);

  ///  Is a [DOMString] that reflects the attribute, indicating the
  /// MIME type of the linked resource.
  external String get type;
  external set type(String newValue);

  ///  Is a [DOMString] being a synonym for the [Node.textContent]
  /// property.
  external String get text;
  external set text(String newValue);

  /// See [HTMLAnchorElement.referrerPolicy].
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);

  external factory SVGAElement();
}

///
///
///  The interface provides access to the properties of [<view>]
/// elements, as well as methods to manipulate them.
@JS()
class SVGViewElement extends SVGElement {
  external factory SVGViewElement();
}
