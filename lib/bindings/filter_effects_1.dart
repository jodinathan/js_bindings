/// Filter Effects Module Level 1
///
/// https://drafts.fxtf.org/filter-effects-1/
@JS('window')
library filter_effects_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'svg2.dart';
import 'filter_effects_1.dart';

///
///
///  The interface provides access to the properties of [<filter>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGFilterElement extends SVGElement with SVGURIReference {
  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [filterUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get filterUnits;

  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [primitiveUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get primitiveUnits;

  ///  An [SVGAnimatedLength] that corresponds to the [x] attribute on
  /// the given [<filter>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] that corresponds to the [y] attribute of
  /// the given [<filter>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] that corresponds to the [width] attribute
  /// of the given [<filter>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] that corresponds to the [height]
  /// attribute of the given [<filter>] element.
  external SVGAnimatedLength get height;

  external factory SVGFilterElement();
}

@JS()
mixin SVGFilterPrimitiveStandardAttributes {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}

///
///
/// The interface corresponds to the [<feBlend>] element.
///
///
@JS()
class SVGFEBlendElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
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

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  external SVGAnimatedString get in2;

  ///  An [SVGAnimatedEnumeration] corresponding to the [mode]
  /// attribute of the given element. It takes one of the
  /// [SVG_FEBLEND_MODE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get mode;

  external factory SVGFEBlendElement();
}

///
///
/// The interface corresponds to the [<feColorMatrix>] element.
///
///
@JS()
class SVGFEColorMatrixElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external static int get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external static int get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external static int get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external static int get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOLORMATRIX_TYPE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get type;

  ///  An [SVGAnimatedNumberList] corresponding to the [values]
  /// attribute of the given element.
  external SVGAnimatedNumberList get values;

  external factory SVGFEColorMatrixElement();
}

///
///
///  The interface corresponds to the [<feComponentTransfer>]
/// element.
///
///
@JS()
class SVGFEComponentTransferElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  external factory SVGFEComponentTransferElement();
}

///
///
///  The interface defines a base interface used by the component
/// transfer function interfaces.
///
///
@JS()
class SVGComponentTransferFunctionElement extends SVGElement {
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOMPONENTTRANSFER_TYPE_*] constants defined on this
  /// interface.
  external SVGAnimatedEnumeration get type;

  ///  An [SVGAnimatedNumberList] corresponding to the [tableValues]
  /// attribute of the given element.
  external SVGAnimatedNumberList get tableValues;

  ///  An [SVGAnimatedNumber] corresponding to the [slope] attribute of
  /// the given element.
  external SVGAnimatedNumber get slope;

  ///  An [SVGAnimatedNumber] corresponding to the [intercept]
  /// attribute of the given element.
  external SVGAnimatedNumber get intercept;

  ///  An [SVGAnimatedNumber] corresponding to the [amplitude]
  /// attribute of the given element.
  external SVGAnimatedNumber get amplitude;

  ///  An [SVGAnimatedNumber] corresponding to the [exponent] attribute
  /// of the given element.
  external SVGAnimatedNumber get exponent;

  ///  An [SVGAnimatedNumber] corresponding to the [offset] attribute
  /// of the given element.
  external SVGAnimatedNumber get offset;

  external factory SVGComponentTransferFunctionElement();
}

///
///
/// The interface corresponds to the [<feFuncR>] element.
///
///
@JS()
class SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncRElement();
}

///
///
/// The interface corresponds to the [<feFuncG>] element.
///
///
@JS()
class SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncGElement();
}

///
///
/// The interface corresponds to the [<feFuncB>] element.
///
///
@JS()
class SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncBElement();
}

///
///
/// The interface corresponds to the [<feFuncA>] element.
///
///
@JS()
class SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncAElement();
}

///
///
/// The interface corresponds to the [<feComposite>] element.
///
///
@JS()
class SVGFECompositeElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OVER;
  external static int get SVG_FECOMPOSITE_OPERATOR_IN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OUT;
  external static int get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external static int get SVG_FECOMPOSITE_OPERATOR_XOR;
  external static int get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  @JS('operator')
  external SVGAnimatedEnumeration get mOperator;
  external SVGAnimatedNumber get k1;
  external SVGAnimatedNumber get k2;
  external SVGAnimatedNumber get k3;
  external SVGAnimatedNumber get k4;

  external factory SVGFECompositeElement();
}

///
///
/// The interface corresponds to the [<feConvolveMatrix>] element.
///
///
@JS()
class SVGFEConvolveMatrixElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  external SVGAnimatedInteger get orderX;

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  external SVGAnimatedInteger get orderY;

  ///  An [SVGAnimatedNumberList] corresponding to the [kernelMatrix]
  /// attribute of the given element.
  external SVGAnimatedNumberList get kernelMatrix;

  ///  An [SVGAnimatedNumber] corresponding to the [divisor] attribute
  /// of the given element.
  external SVGAnimatedNumber get divisor;

  ///  An [SVGAnimatedNumber] corresponding to the [bias] attribute of
  /// the given element.
  external SVGAnimatedNumber get bias;

  ///  An [SVGAnimatedInteger] corresponding to the [targetX] attribute
  /// of the given element.
  external SVGAnimatedInteger get targetX;

  ///  An [SVGAnimatedInteger] corresponding to the [targetY] attribute
  /// of the given element.
  external SVGAnimatedInteger get targetY;

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  external SVGAnimatedEnumeration get edgeMode;

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthY;

  ///  An [SVGAnimatedBoolean] corresponding to the [preserveAlpha]
  /// attribute of the given element.
  external SVGAnimatedBoolean get preserveAlpha;

  external factory SVGFEConvolveMatrixElement();
}

///
///
/// The interface corresponds to the [<feDiffuseLighting>] element.
///
///
@JS()
class SVGFEDiffuseLightingElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  external SVGAnimatedNumber get surfaceScale;

  ///  An [SVGAnimatedNumber] corresponding to the [diffuseConstant]
  /// attribute of the given element.
  external SVGAnimatedNumber get diffuseConstant;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthY;

  external factory SVGFEDiffuseLightingElement();
}

///
///
/// The interface corresponds to the [<feDistantLight>] element.
///
///
@JS()
class SVGFEDistantLightElement extends SVGElement {
  ///  An [SVGAnimatedNumber] corresponding to the [azimuth] attribute
  /// of the given element.
  external SVGAnimatedNumber get azimuth;

  ///  An [SVGAnimatedNumber] corresponding to the [elevation]
  /// attribute of the given element.
  external SVGAnimatedNumber get elevation;

  external factory SVGFEDistantLightElement();
}

///
///
/// The interface corresponds to the [<fePointLight>] element.
///
///
@JS()
class SVGFEPointLightElement extends SVGElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  external SVGAnimatedNumber get x;

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  external SVGAnimatedNumber get y;

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  external SVGAnimatedNumber get z;

  external factory SVGFEPointLightElement();
}

///
///
/// The interface corresponds to the [<feSpotLight>] element.
///
///
@JS()
class SVGFESpotLightElement extends SVGElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  external SVGAnimatedNumber get x;

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  external SVGAnimatedNumber get y;

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  external SVGAnimatedNumber get z;
  external SVGAnimatedNumber get pointsAtX;
  external SVGAnimatedNumber get pointsAtY;
  external SVGAnimatedNumber get pointsAtZ;

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  external SVGAnimatedNumber get specularExponent;

  ///  An [SVGAnimatedNumber] corresponding to the [limitingConeAngle]
  /// attribute of the given element.
  external SVGAnimatedNumber get limitingConeAngle;

  external factory SVGFESpotLightElement();
}

///
///
/// The interface corresponds to the [<feDisplacementMap>] element.
///
///
@JS()
class SVGFEDisplacementMapElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_CHANNEL_UNKNOWN;
  external static int get SVG_CHANNEL_R;
  external static int get SVG_CHANNEL_G;
  external static int get SVG_CHANNEL_B;
  external static int get SVG_CHANNEL_A;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  external SVGAnimatedString get in2;

  ///  An [SVGAnimatedNumber] corresponding to the [scale] attribute of
  /// the given element.
  external SVGAnimatedNumber get scale;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [xChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  external SVGAnimatedEnumeration get xChannelSelector;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [yChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  external SVGAnimatedEnumeration get yChannelSelector;

  external factory SVGFEDisplacementMapElement();
}

///
///
/// The interface corresponds to the [<feDropShadow>] element.
///
///
@JS()
class SVGFEDropShadowElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  external SVGAnimatedNumber get dx;

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  external SVGAnimatedNumber get dy;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviationX]
  /// attribute of the given element.
  external SVGAnimatedNumber get stdDeviationX;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviationY]
  /// attribute of the given element.
  external SVGAnimatedNumber get stdDeviationY;

  /// Sets the values for the [stdDeviation] attribute.
  external Object setStdDeviation(double stdDeviationX, double stdDeviationY);

  external factory SVGFEDropShadowElement();
}

///
///
/// The interface corresponds to the [<feFlood>] element.
///
///
@JS()
class SVGFEFloodElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEFloodElement();
}

///
///
/// The interface corresponds to the [<feGaussianBlur>] element.
///
///
@JS()
class SVGFEGaussianBlurElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviation]
  /// attribute of the given element.
  external SVGAnimatedNumber get stdDeviationX;

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviation]
  /// attribute of the given element.
  external SVGAnimatedNumber get stdDeviationY;

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  external SVGAnimatedEnumeration get edgeMode;

  /// Sets the values for the [stdDeviation] attribute.
  external Object setStdDeviation(double stdDeviationX, double stdDeviationY);

  external factory SVGFEGaussianBlurElement();
}

///
///
/// The interface corresponds to the [<feImage>] element.
///
///
@JS()
class SVGFEImageElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes, SVGURIReference {
  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given element.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;

  ///  An [SVGAnimatedString] reflects the [crossorigin] attribute of
  /// the given element, limited to only known values.
  external SVGAnimatedString get crossOrigin;

  external factory SVGFEImageElement();
}

///
///
/// The interface corresponds to the [<feMerge>] element.
///
///
@JS()
class SVGFEMergeElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMergeElement();
}

///
///
/// The interface corresponds to the [<feMergeNode>] element.
///
///
@JS()
class SVGFEMergeNodeElement extends SVGElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  external factory SVGFEMergeNodeElement();
}

///
///
/// The interface corresponds to the [<feMorphology>] element.
///
///
@JS()
class SVGFEMorphologyElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external static int get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external static int get SVG_MORPHOLOGY_OPERATOR_DILATE;

  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedEnumeration] corresponding to the [operator]
  /// attribute of the given element. It takes one of the
  /// [SVG_MORPHOLOGY_OPERATOR_*] constants defined on this interface.
  @JS('operator')
  external SVGAnimatedEnumeration get mOperator;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [radius] attribute of the given element.
  external SVGAnimatedNumber get radiusX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [radius] attribute of the given element.
  external SVGAnimatedNumber get radiusY;

  external factory SVGFEMorphologyElement();
}

///
///
/// The interface corresponds to the [<feOffset>] element.
///
///
@JS()
class SVGFEOffsetElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  external SVGAnimatedNumber get dx;

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  external SVGAnimatedNumber get dy;

  external factory SVGFEOffsetElement();
}

///
///
/// The interface corresponds to the [<feSpecularLighting>] element.
///
///
@JS()
class SVGFESpecularLightingElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  external SVGAnimatedNumber get surfaceScale;

  ///  An [SVGAnimatedNumber] corresponding to the [specularConstant]
  /// attribute of the given element.
  external SVGAnimatedNumber get specularConstant;

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  external SVGAnimatedNumber get specularExponent;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  external SVGAnimatedNumber get kernelUnitLengthY;

  external factory SVGFESpecularLightingElement();
}

///
///
/// The interface corresponds to the [<feTile>] element.
///
///
@JS()
class SVGFETileElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  external SVGAnimatedString get in1;

  external factory SVGFETileElement();
}

///
///
/// The interface corresponds to the [<feTurbulence>] element.
///
///
@JS()
class SVGFETurbulenceElement extends SVGElement
    with SVGFilterPrimitiveStandardAttributes {
  external static int get SVG_TURBULENCE_TYPE_UNKNOWN;
  external static int get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external static int get SVG_TURBULENCE_TYPE_TURBULENCE;
  external static int get SVG_STITCHTYPE_UNKNOWN;
  external static int get SVG_STITCHTYPE_STITCH;
  external static int get SVG_STITCHTYPE_NOSTITCH;

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [baseFrequency] attribute of the given element.
  external SVGAnimatedNumber get baseFrequencyX;

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [baseFrequency] attribute of the given element.
  external SVGAnimatedNumber get baseFrequencyY;

  ///  An [SVGAnimatedInteger] corresponding to the [numOctaves]
  /// attribute of the given element.
  external SVGAnimatedInteger get numOctaves;

  ///  An [SVGAnimatedNumber] corresponding to the [seed] attribute of
  /// the given element.
  external SVGAnimatedNumber get seed;

  ///  An [SVGAnimatedEnumeration] corresponding to the [stitchTiles]
  /// attribute of the given element. It takes one of the
  /// [SVG_STITCHTYPE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get stitchTiles;

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_TURBULENCE_TYPE_*] constants defined on this interface.
  external SVGAnimatedEnumeration get type;

  external factory SVGFETurbulenceElement();
}
