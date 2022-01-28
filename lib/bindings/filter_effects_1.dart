/// Filter Effects Module Level 1
///
/// https://drafts.fxtf.org/filter-effects-1/
@JS('window')
@staticInterop
library filter_effects_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: svg11
filter_effects_1 */

///  The interface provides access to the properties of [<filter>]
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
///    SVGFilterElement
///
///
@JS()
@staticInterop
class SVGFilterElement implements SVGElement, SVGURIReference {
  external factory SVGFilterElement();
}

extension PropsSVGFilterElement on SVGFilterElement {
  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [filterUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  ///
  external SVGAnimatedEnumeration get filterUnits;

  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [primitiveUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  ///
  external SVGAnimatedEnumeration get primitiveUnits;

  ///  An [SVGAnimatedLength] that corresponds to the [x] attribute on
  /// the given [<filter>] element.
  ///
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] that corresponds to the [y] attribute of
  /// the given [<filter>] element.
  ///
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] that corresponds to the [width] attribute
  /// of the given [<filter>] element.
  ///
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] that corresponds to the [height]
  /// attribute of the given [<filter>] element.
  ///
  external SVGAnimatedLength get height;
}

@JS()
@staticInterop
class SVGFilterPrimitiveStandardAttributes {
  external factory SVGFilterPrimitiveStandardAttributes();
}

extension PropsSVGFilterPrimitiveStandardAttributes
    on SVGFilterPrimitiveStandardAttributes {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}

/// The interface corresponds to the [<feBlend>] element.
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
///    SVGFEBlendElement
///
///
@JS()
@staticInterop
class SVGFEBlendElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_FEBLEND_MODE_UNKNOWN;
  external static int get SVG_FEBLEND_MODE_NORMAL;
  external static int get SVG_FEBLEND_MODE_MULTIPLY;
  external static int get SVG_FEBLEND_MODE_SCREEN;
  external static int get SVG_FEBLEND_MODE_DARKEN;
  external static int get SVG_FEBLEND_MODE_LIGHTEN;
  external static int get SVG_FEBLEND_MODE_OVERLAY;
  external static int get SVG_FEBLEND_MODE_COLOR_DODGE;
  external static int get SVG_FEBLEND_MODE_COLOR_BURN;
  external static int get SVG_FEBLEND_MODE_HARD_LIGHT;
  external static int get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external static int get SVG_FEBLEND_MODE_DIFFERENCE;
  external static int get SVG_FEBLEND_MODE_EXCLUSION;
  external static int get SVG_FEBLEND_MODE_HUE;
  external static int get SVG_FEBLEND_MODE_SATURATION;
  external static int get SVG_FEBLEND_MODE_COLOR;
  external static int get SVG_FEBLEND_MODE_LUMINOSITY;
  external factory SVGFEBlendElement();
}

extension PropsSVGFEBlendElement on SVGFEBlendElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in2;

  ///  An [SVGAnimatedEnumeration] corresponding to the [mode]
  /// attribute of the given element. It takes one of the
  /// [SVG_FEBLEND_MODE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get mode;
}

/// The interface corresponds to the [<feColorMatrix>] element.
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
///    SVGFEColorMatrixElement
///
///
@JS()
@staticInterop
class SVGFEColorMatrixElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external static int get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external static int get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external static int get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external static int get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
  external factory SVGFEColorMatrixElement();
}

extension PropsSVGFEColorMatrixElement on SVGFEColorMatrixElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOLORMATRIX_TYPE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get type;

  ///  An [SVGAnimatedNumberList] corresponding to the [values]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumberList get values;
}

///  The interface corresponds to the [<feComponentTransfer>]
/// element.
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
///    SVGFEComponentTransferElement
///
///
@JS()
@staticInterop
class SVGFEComponentTransferElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEComponentTransferElement();
}

extension PropsSVGFEComponentTransferElement on SVGFEComponentTransferElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;
}

///  The interface defines a base interface used by the component
/// transfer function interfaces.
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
///    SVGComponentTransferFunctionElement
///
///
@JS()
@staticInterop
class SVGComponentTransferFunctionElement implements SVGElement {
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
  external factory SVGComponentTransferFunctionElement();
}

extension PropsSVGComponentTransferFunctionElement
    on SVGComponentTransferFunctionElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOMPONENTTRANSFER_TYPE_*] constants defined on this
  /// interface.
  ///
  external SVGAnimatedEnumeration get type;

  ///  An [SVGAnimatedNumberList] corresponding to the [tableValues]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumberList get tableValues;

  ///  An [SVGAnimatedNumber] corresponding to the [slope] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get slope;

  ///  An [SVGAnimatedNumber] corresponding to the [intercept]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get intercept;

  ///  An [SVGAnimatedNumber] corresponding to the [amplitude]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get amplitude;

  ///  An [SVGAnimatedNumber] corresponding to the [exponent] attribute
  /// of the given element.
  ///
  external SVGAnimatedNumber get exponent;

  ///  An [SVGAnimatedNumber] corresponding to the [offset] attribute
  /// of the given element.
  ///
  external SVGAnimatedNumber get offset;
}

/// The interface corresponds to the [<feFuncR>] element.
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
///    SVGComponentTransferFunctionElement
///
///
///
///
///
///    SVGFEFuncRElement
///
///
@JS()
@staticInterop
class SVGFEFuncRElement implements SVGComponentTransferFunctionElement {
  external factory SVGFEFuncRElement();
}

/// The interface corresponds to the [<feFuncG>] element.
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
///    SVGComponentTransferFunctionElement
///
///
///
///
///
///    SVGFEFuncGElement
///
///
@JS()
@staticInterop
class SVGFEFuncGElement implements SVGComponentTransferFunctionElement {
  external factory SVGFEFuncGElement();
}

/// The interface corresponds to the [<feFuncB>] element.
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
///    SVGComponentTransferFunctionElement
///
///
///
///
///
///    SVGFEFuncBElement
///
///
@JS()
@staticInterop
class SVGFEFuncBElement implements SVGComponentTransferFunctionElement {
  external factory SVGFEFuncBElement();
}

/// The interface corresponds to the [<feFuncA>] element.
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
///    SVGComponentTransferFunctionElement
///
///
///
///
///
///    SVGFEFuncAElement
///
///
@JS()
@staticInterop
class SVGFEFuncAElement implements SVGComponentTransferFunctionElement {
  external factory SVGFEFuncAElement();
}

/// The interface corresponds to the [<feComposite>] element.
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
///    SVGFECompositeElement
///
///
@JS()
@staticInterop
class SVGFECompositeElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OVER;
  external static int get SVG_FECOMPOSITE_OPERATOR_IN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OUT;
  external static int get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external static int get SVG_FECOMPOSITE_OPERATOR_XOR;
  external static int get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
  external factory SVGFECompositeElement();
}

extension PropsSVGFECompositeElement on SVGFECompositeElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  @JS('operator')
  @staticInterop
  external SVGAnimatedEnumeration get mOperator;
  external SVGAnimatedNumber get k1;
  external SVGAnimatedNumber get k2;
  external SVGAnimatedNumber get k3;
  external SVGAnimatedNumber get k4;
}

/// The interface corresponds to the [<feConvolveMatrix>] element.
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
///    SVGFEConvolveMatrixElement
///
///
@JS()
@staticInterop
class SVGFEConvolveMatrixElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;
  external factory SVGFEConvolveMatrixElement();
}

extension PropsSVGFEConvolveMatrixElement on SVGFEConvolveMatrixElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  ///
  external SVGAnimatedInteger get orderX;

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  ///
  external SVGAnimatedInteger get orderY;

  ///  An [SVGAnimatedNumberList] corresponding to the [kernelMatrix]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumberList get kernelMatrix;

  ///  An [SVGAnimatedNumber] corresponding to the [divisor] attribute
  /// of the given element.
  ///
  external SVGAnimatedNumber get divisor;

  ///  An [SVGAnimatedNumber] corresponding to the [bias] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get bias;

  ///  An [SVGAnimatedInteger] corresponding to the [targetX] attribute
  /// of the given element.
  ///
  external SVGAnimatedInteger get targetX;

  ///  An [SVGAnimatedInteger] corresponding to the [targetY] attribute
  /// of the given element.
  ///
  external SVGAnimatedInteger get targetY;

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get edgeMode;

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthY;

  ///  An [SVGAnimatedBoolean] corresponding to the [preserveAlpha]
  /// attribute of the given element.
  ///
  external SVGAnimatedBoolean get preserveAlpha;
}

/// The interface corresponds to the [<feDiffuseLighting>] element.
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
///    SVGFEDiffuseLightingElement
///
///
@JS()
@staticInterop
class SVGFEDiffuseLightingElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDiffuseLightingElement();
}

extension PropsSVGFEDiffuseLightingElement on SVGFEDiffuseLightingElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get surfaceScale;

  ///  An [SVGAnimatedNumber] corresponding to the [diffuseConstant]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get diffuseConstant;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthY;
}

/// The interface corresponds to the [<feDistantLight>] element.
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
///    SVGFEDistantLightElement
///
///
@JS()
@staticInterop
class SVGFEDistantLightElement implements SVGElement {
  external factory SVGFEDistantLightElement();
}

extension PropsSVGFEDistantLightElement on SVGFEDistantLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [azimuth] attribute
  /// of the given element.
  ///
  external SVGAnimatedNumber get azimuth;

  ///  An [SVGAnimatedNumber] corresponding to the [elevation]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get elevation;
}

/// The interface corresponds to the [<fePointLight>] element.
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
///    SVGFEPointLightElement
///
///
@JS()
@staticInterop
class SVGFEPointLightElement implements SVGElement {
  external factory SVGFEPointLightElement();
}

extension PropsSVGFEPointLightElement on SVGFEPointLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get x;

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get y;

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get z;
}

/// The interface corresponds to the [<feSpotLight>] element.
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
///    SVGFESpotLightElement
///
///
@JS()
@staticInterop
class SVGFESpotLightElement implements SVGElement {
  external factory SVGFESpotLightElement();
}

extension PropsSVGFESpotLightElement on SVGFESpotLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get x;

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get y;

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  ///
  external SVGAnimatedNumber get z;
  external SVGAnimatedNumber get pointsAtX;
  external SVGAnimatedNumber get pointsAtY;
  external SVGAnimatedNumber get pointsAtZ;

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get specularExponent;

  ///  An [SVGAnimatedNumber] corresponding to the [limitingConeAngle]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get limitingConeAngle;
}

/// The interface corresponds to the [<feDisplacementMap>] element.
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
///    SVGFEDisplacementMapElement
///
///
@JS()
@staticInterop
class SVGFEDisplacementMapElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_CHANNEL_UNKNOWN;
  external static int get SVG_CHANNEL_R;
  external static int get SVG_CHANNEL_G;
  external static int get SVG_CHANNEL_B;
  external static int get SVG_CHANNEL_A;
  external factory SVGFEDisplacementMapElement();
}

extension PropsSVGFEDisplacementMapElement on SVGFEDisplacementMapElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in2;

  ///  An [SVGAnimatedNumber] corresponding to the [scale] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get scale;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [xChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get xChannelSelector;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [yChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get yChannelSelector;
}

/// The interface corresponds to the [<feDropShadow>] element.
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
///    SVGFEDropShadowElement
///
///
@JS()
@staticInterop
class SVGFEDropShadowElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDropShadowElement();
}

extension PropsSVGFEDropShadowElement on SVGFEDropShadowElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get dx;

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get dy;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviationX]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get stdDeviationX;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviationY]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get stdDeviationY;

  /// Sets the values for the [stdDeviation] attribute.
  ///
  external Object setStdDeviation(double stdDeviationX, double stdDeviationY);
}

/// The interface corresponds to the [<feFlood>] element.
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
///    SVGFEFloodElement
///
///
@JS()
@staticInterop
class SVGFEFloodElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEFloodElement();
}

/// The interface corresponds to the [<feGaussianBlur>] element.
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
///    SVGFEGaussianBlurElement
///
///
@JS()
@staticInterop
class SVGFEGaussianBlurElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;
  external factory SVGFEGaussianBlurElement();
}

extension PropsSVGFEGaussianBlurElement on SVGFEGaussianBlurElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviation]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get stdDeviationX;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviation]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get stdDeviationY;

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get edgeMode;

  /// Sets the values for the [stdDeviation] attribute.
  ///
  external Object setStdDeviation(double stdDeviationX, double stdDeviationY);
}

/// The interface corresponds to the [<feImage>] element.
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
///    SVGFEImageElement
///
///
@JS()
@staticInterop
class SVGFEImageElement
    implements
        SVGElement,
        SVGFilterPrimitiveStandardAttributes,
        SVGURIReference {
  external factory SVGFEImageElement();
}

extension PropsSVGFEImageElement on SVGFEImageElement {
  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given element.
  ///
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;

  ///  An [SVGAnimatedString] reflects the [crossorigin] attribute of
  /// the given element, limited to only known values.
  ///
  external SVGAnimatedString get crossOrigin;
}

/// The interface corresponds to the [<feMerge>] element.
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
///    SVGFEMergeElement
///
///
@JS()
@staticInterop
class SVGFEMergeElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMergeElement();
}

/// The interface corresponds to the [<feMergeNode>] element.
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
///    SVGFEMergeNodeElement
///
///
@JS()
@staticInterop
class SVGFEMergeNodeElement implements SVGElement {
  external factory SVGFEMergeNodeElement();
}

extension PropsSVGFEMergeNodeElement on SVGFEMergeNodeElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;
}

/// The interface corresponds to the [<feMorphology>] element.
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
///    SVGFEMorphologyElement
///
///
@JS()
@staticInterop
class SVGFEMorphologyElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external static int get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external static int get SVG_MORPHOLOGY_OPERATOR_DILATE;
  external factory SVGFEMorphologyElement();
}

extension PropsSVGFEMorphologyElement on SVGFEMorphologyElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedEnumeration] corresponding to the [operator]
  /// attribute of the given element. It takes one of the
  /// [SVG_MORPHOLOGY_OPERATOR_*] constants defined on this interface.
  ///
  @JS('operator')
  @staticInterop
  external SVGAnimatedEnumeration get mOperator;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [radius] attribute of the given element.
  ///
  external SVGAnimatedNumber get radiusX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [radius] attribute of the given element.
  ///
  external SVGAnimatedNumber get radiusY;
}

/// The interface corresponds to the [<feOffset>] element.
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
///    SVGFEOffsetElement
///
///
@JS()
@staticInterop
class SVGFEOffsetElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEOffsetElement();
}

extension PropsSVGFEOffsetElement on SVGFEOffsetElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get dx;

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get dy;
}

/// The interface corresponds to the [<feSpecularLighting>] element.
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
///    SVGFESpecularLightingElement
///
///
@JS()
@staticInterop
class SVGFESpecularLightingElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFESpecularLightingElement();
}

extension PropsSVGFESpecularLightingElement on SVGFESpecularLightingElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get surfaceScale;

  ///  An [SVGAnimatedNumber] corresponding to the [specularConstant]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get specularConstant;

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  ///
  external SVGAnimatedNumber get specularExponent;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  external SVGAnimatedNumber get kernelUnitLengthY;
}

/// The interface corresponds to the [<feTile>] element.
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
///    SVGFETileElement
///
///
@JS()
@staticInterop
class SVGFETileElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external factory SVGFETileElement();
}

extension PropsSVGFETileElement on SVGFETileElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  external SVGAnimatedString get in1;
}

/// The interface corresponds to the [<feTurbulence>] element.
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
///    SVGFETurbulenceElement
///
///
@JS()
@staticInterop
class SVGFETurbulenceElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_TURBULENCE_TYPE_UNKNOWN;
  external static int get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external static int get SVG_TURBULENCE_TYPE_TURBULENCE;
  external static int get SVG_STITCHTYPE_UNKNOWN;
  external static int get SVG_STITCHTYPE_STITCH;
  external static int get SVG_STITCHTYPE_NOSTITCH;
  external factory SVGFETurbulenceElement();
}

extension PropsSVGFETurbulenceElement on SVGFETurbulenceElement {
  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [baseFrequency] attribute of the given element.
  ///
  external SVGAnimatedNumber get baseFrequencyX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [baseFrequency] attribute of the given element.
  ///
  external SVGAnimatedNumber get baseFrequencyY;

  ///  An [SVGAnimatedInteger] corresponding to the [numOctaves]
  /// attribute of the given element.
  ///
  external SVGAnimatedInteger get numOctaves;

  ///  An [SVGAnimatedNumber] corresponding to the [seed] attribute of
  /// the given element.
  ///
  external SVGAnimatedNumber get seed;

  ///  An [SVGAnimatedEnumeration] corresponding to the [stitchTiles]
  /// attribute of the given element. It takes one of the
  /// [SVG_STITCHTYPE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get stitchTiles;

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_TURBULENCE_TYPE_*] constants defined on this interface.
  ///
  external SVGAnimatedEnumeration get type;
}
