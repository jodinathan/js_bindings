/// Filter Effects Module Level 1
///
/// https://drafts.fxtf.org/filter-effects-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library filter_effects_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external SVGFilterElement();
}

extension PropsSVGFilterElement on SVGFilterElement {
  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [filterUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get filterUnits =>
      js_util.getProperty(this, 'filterUnits');

  ///  An [SVGAnimatedEnumeration] that corresponds to the
  /// [primitiveUnits] attribute of the given [<filter>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get primitiveUnits =>
      js_util.getProperty(this, 'primitiveUnits');

  ///  An [SVGAnimatedLength] that corresponds to the [x] attribute on
  /// the given [<filter>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] that corresponds to the [y] attribute of
  /// the given [<filter>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] that corresponds to the [width] attribute
  /// of the given [<filter>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] that corresponds to the [height]
  /// attribute of the given [<filter>] element.
  ///
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}

@JS()
@staticInterop
class SVGFilterPrimitiveStandardAttributes {
  external SVGFilterPrimitiveStandardAttributes();
}

extension PropsSVGFilterPrimitiveStandardAttributes
    on SVGFilterPrimitiveStandardAttributes {
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
  SVGAnimatedString get result => js_util.getProperty(this, 'result');
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
  @JS('SVG_FEBLEND_MODE_UNKNOWN')
  external static int get svgFeblendModeUnknown;

  @JS('SVG_FEBLEND_MODE_NORMAL')
  external static int get svgFeblendModeNormal;

  @JS('SVG_FEBLEND_MODE_MULTIPLY')
  external static int get svgFeblendModeMultiply;

  @JS('SVG_FEBLEND_MODE_SCREEN')
  external static int get svgFeblendModeScreen;

  @JS('SVG_FEBLEND_MODE_DARKEN')
  external static int get svgFeblendModeDarken;

  @JS('SVG_FEBLEND_MODE_LIGHTEN')
  external static int get svgFeblendModeLighten;

  @JS('SVG_FEBLEND_MODE_OVERLAY')
  external static int get svgFeblendModeOverlay;

  @JS('SVG_FEBLEND_MODE_COLOR_DODGE')
  external static int get svgFeblendModeColorDodge;

  @JS('SVG_FEBLEND_MODE_COLOR_BURN')
  external static int get svgFeblendModeColorBurn;

  @JS('SVG_FEBLEND_MODE_HARD_LIGHT')
  external static int get svgFeblendModeHardLight;

  @JS('SVG_FEBLEND_MODE_SOFT_LIGHT')
  external static int get svgFeblendModeSoftLight;

  @JS('SVG_FEBLEND_MODE_DIFFERENCE')
  external static int get svgFeblendModeDifference;

  @JS('SVG_FEBLEND_MODE_EXCLUSION')
  external static int get svgFeblendModeExclusion;

  @JS('SVG_FEBLEND_MODE_HUE')
  external static int get svgFeblendModeHue;

  @JS('SVG_FEBLEND_MODE_SATURATION')
  external static int get svgFeblendModeSaturation;

  @JS('SVG_FEBLEND_MODE_COLOR')
  external static int get svgFeblendModeColor;

  @JS('SVG_FEBLEND_MODE_LUMINOSITY')
  external static int get svgFeblendModeLuminosity;

  external SVGFEBlendElement();
}

extension PropsSVGFEBlendElement on SVGFEBlendElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');

  ///  An [SVGAnimatedEnumeration] corresponding to the [mode]
  /// attribute of the given element. It takes one of the
  /// [SVG_FEBLEND_MODE_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get mode => js_util.getProperty(this, 'mode');
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
  @JS('SVG_FECOLORMATRIX_TYPE_UNKNOWN')
  external static int get svgFecolormatrixTypeUnknown;

  @JS('SVG_FECOLORMATRIX_TYPE_MATRIX')
  external static int get svgFecolormatrixTypeMatrix;

  @JS('SVG_FECOLORMATRIX_TYPE_SATURATE')
  external static int get svgFecolormatrixTypeSaturate;

  @JS('SVG_FECOLORMATRIX_TYPE_HUEROTATE')
  external static int get svgFecolormatrixTypeHuerotate;

  @JS('SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA')
  external static int get svgFecolormatrixTypeLuminancetoalpha;

  external SVGFEColorMatrixElement();
}

extension PropsSVGFEColorMatrixElement on SVGFEColorMatrixElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOLORMATRIX_TYPE_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');

  ///  An [SVGAnimatedNumberList] corresponding to the [values]
  /// attribute of the given element.
  ///
  SVGAnimatedNumberList get values => js_util.getProperty(this, 'values');
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
  external SVGFEComponentTransferElement();
}

extension PropsSVGFEComponentTransferElement on SVGFEComponentTransferElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
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
  @JS('SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN')
  external static int get svgFecomponenttransferTypeUnknown;

  @JS('SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY')
  external static int get svgFecomponenttransferTypeIdentity;

  @JS('SVG_FECOMPONENTTRANSFER_TYPE_TABLE')
  external static int get svgFecomponenttransferTypeTable;

  @JS('SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE')
  external static int get svgFecomponenttransferTypeDiscrete;

  @JS('SVG_FECOMPONENTTRANSFER_TYPE_LINEAR')
  external static int get svgFecomponenttransferTypeLinear;

  @JS('SVG_FECOMPONENTTRANSFER_TYPE_GAMMA')
  external static int get svgFecomponenttransferTypeGamma;

  external SVGComponentTransferFunctionElement();
}

extension PropsSVGComponentTransferFunctionElement
    on SVGComponentTransferFunctionElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_FECOMPONENTTRANSFER_TYPE_*] constants defined on this
  /// interface.
  ///
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');

  ///  An [SVGAnimatedNumberList] corresponding to the [tableValues]
  /// attribute of the given element.
  ///
  SVGAnimatedNumberList get tableValues =>
      js_util.getProperty(this, 'tableValues');

  ///  An [SVGAnimatedNumber] corresponding to the [slope] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get slope => js_util.getProperty(this, 'slope');

  ///  An [SVGAnimatedNumber] corresponding to the [intercept]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get intercept => js_util.getProperty(this, 'intercept');

  ///  An [SVGAnimatedNumber] corresponding to the [amplitude]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get amplitude => js_util.getProperty(this, 'amplitude');

  ///  An [SVGAnimatedNumber] corresponding to the [exponent] attribute
  /// of the given element.
  ///
  SVGAnimatedNumber get exponent => js_util.getProperty(this, 'exponent');

  ///  An [SVGAnimatedNumber] corresponding to the [offset] attribute
  /// of the given element.
  ///
  SVGAnimatedNumber get offset => js_util.getProperty(this, 'offset');
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
  external SVGFEFuncRElement();
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
  external SVGFEFuncGElement();
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
  external SVGFEFuncBElement();
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
  external SVGFEFuncAElement();
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
  @JS('SVG_FECOMPOSITE_OPERATOR_UNKNOWN')
  external static int get svgFecompositeOperatorUnknown;

  @JS('SVG_FECOMPOSITE_OPERATOR_OVER')
  external static int get svgFecompositeOperatorOver;

  @JS('SVG_FECOMPOSITE_OPERATOR_IN')
  external static int get svgFecompositeOperatorIn;

  @JS('SVG_FECOMPOSITE_OPERATOR_OUT')
  external static int get svgFecompositeOperatorOut;

  @JS('SVG_FECOMPOSITE_OPERATOR_ATOP')
  external static int get svgFecompositeOperatorAtop;

  @JS('SVG_FECOMPOSITE_OPERATOR_XOR')
  external static int get svgFecompositeOperatorXor;

  @JS('SVG_FECOMPOSITE_OPERATOR_ARITHMETIC')
  external static int get svgFecompositeOperatorArithmetic;

  external SVGFECompositeElement();
}

extension PropsSVGFECompositeElement on SVGFECompositeElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
  @JS('operator')
  @staticInterop
  SVGAnimatedEnumeration get mOperator => js_util.getProperty(this, 'operator');
  SVGAnimatedNumber get k1 => js_util.getProperty(this, 'k1');
  SVGAnimatedNumber get k2 => js_util.getProperty(this, 'k2');
  SVGAnimatedNumber get k3 => js_util.getProperty(this, 'k3');
  SVGAnimatedNumber get k4 => js_util.getProperty(this, 'k4');
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
  @JS('SVG_EDGEMODE_UNKNOWN')
  external static int get svgEdgemodeUnknown;

  @JS('SVG_EDGEMODE_DUPLICATE')
  external static int get svgEdgemodeDuplicate;

  @JS('SVG_EDGEMODE_WRAP')
  external static int get svgEdgemodeWrap;

  @JS('SVG_EDGEMODE_NONE')
  external static int get svgEdgemodeNone;

  external SVGFEConvolveMatrixElement();
}

extension PropsSVGFEConvolveMatrixElement on SVGFEConvolveMatrixElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  ///
  SVGAnimatedInteger get orderX => js_util.getProperty(this, 'orderX');

  ///  An [SVGAnimatedInteger] corresponding to the [order] attribute
  /// of the given element.
  ///
  SVGAnimatedInteger get orderY => js_util.getProperty(this, 'orderY');

  ///  An [SVGAnimatedNumberList] corresponding to the [kernelMatrix]
  /// attribute of the given element.
  ///
  SVGAnimatedNumberList get kernelMatrix =>
      js_util.getProperty(this, 'kernelMatrix');

  ///  An [SVGAnimatedNumber] corresponding to the [divisor] attribute
  /// of the given element.
  ///
  SVGAnimatedNumber get divisor => js_util.getProperty(this, 'divisor');

  ///  An [SVGAnimatedNumber] corresponding to the [bias] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get bias => js_util.getProperty(this, 'bias');

  ///  An [SVGAnimatedInteger] corresponding to the [targetX] attribute
  /// of the given element.
  ///
  SVGAnimatedInteger get targetX => js_util.getProperty(this, 'targetX');

  ///  An [SVGAnimatedInteger] corresponding to the [targetY] attribute
  /// of the given element.
  ///
  SVGAnimatedInteger get targetY => js_util.getProperty(this, 'targetY');

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  ///
  SVGAnimatedEnumeration get edgeMode => js_util.getProperty(this, 'edgeMode');

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');

  ///  An [SVGAnimatedNumber] corresponding to the [kernelUnitLength]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthY =>
      js_util.getProperty(this, 'kernelUnitLengthY');

  ///  An [SVGAnimatedBoolean] corresponding to the [preserveAlpha]
  /// attribute of the given element.
  ///
  SVGAnimatedBoolean get preserveAlpha =>
      js_util.getProperty(this, 'preserveAlpha');
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
  external SVGFEDiffuseLightingElement();
}

extension PropsSVGFEDiffuseLightingElement on SVGFEDiffuseLightingElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get surfaceScale =>
      js_util.getProperty(this, 'surfaceScale');

  ///  An [SVGAnimatedNumber] corresponding to the [diffuseConstant]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get diffuseConstant =>
      js_util.getProperty(this, 'diffuseConstant');

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthY =>
      js_util.getProperty(this, 'kernelUnitLengthY');
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
  external SVGFEDistantLightElement();
}

extension PropsSVGFEDistantLightElement on SVGFEDistantLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [azimuth] attribute
  /// of the given element.
  ///
  SVGAnimatedNumber get azimuth => js_util.getProperty(this, 'azimuth');

  ///  An [SVGAnimatedNumber] corresponding to the [elevation]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get elevation => js_util.getProperty(this, 'elevation');
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
  external SVGFEPointLightElement();
}

extension PropsSVGFEPointLightElement on SVGFEPointLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get z => js_util.getProperty(this, 'z');
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
  external SVGFESpotLightElement();
}

extension PropsSVGFESpotLightElement on SVGFESpotLightElement {
  ///  An [SVGAnimatedNumber] corresponding to the [x] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedNumber] corresponding to the [y] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedNumber] corresponding to the [z] attribute of the
  /// given element.
  ///
  SVGAnimatedNumber get z => js_util.getProperty(this, 'z');
  SVGAnimatedNumber get pointsAtX => js_util.getProperty(this, 'pointsAtX');
  SVGAnimatedNumber get pointsAtY => js_util.getProperty(this, 'pointsAtY');
  SVGAnimatedNumber get pointsAtZ => js_util.getProperty(this, 'pointsAtZ');

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get specularExponent =>
      js_util.getProperty(this, 'specularExponent');

  ///  An [SVGAnimatedNumber] corresponding to the [limitingConeAngle]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get limitingConeAngle =>
      js_util.getProperty(this, 'limitingConeAngle');
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
  @JS('SVG_CHANNEL_UNKNOWN')
  external static int get svgChannelUnknown;

  @JS('SVG_CHANNEL_R')
  external static int get svgChannelR;

  @JS('SVG_CHANNEL_G')
  external static int get svgChannelG;

  @JS('SVG_CHANNEL_B')
  external static int get svgChannelB;

  @JS('SVG_CHANNEL_A')
  external static int get svgChannelA;

  external SVGFEDisplacementMapElement();
}

extension PropsSVGFEDisplacementMapElement on SVGFEDisplacementMapElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedString] corresponding to the [in2] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');

  ///  An [SVGAnimatedNumber] corresponding to the [scale] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get scale => js_util.getProperty(this, 'scale');

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [xChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get xChannelSelector =>
      js_util.getProperty(this, 'xChannelSelector');

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [yChannelSelect] attribute of the given element. It takes one of
  /// the [SVG_CHANNEL_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get yChannelSelector =>
      js_util.getProperty(this, 'yChannelSelector');
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
  external SVGFEDropShadowElement();
}

extension PropsSVGFEDropShadowElement on SVGFEDropShadowElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get dy => js_util.getProperty(this, 'dy');

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviationX]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviationY]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');

  /// Sets the values for the [stdDeviation] attribute.
  ///
  Object setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
      .callMethod(this, 'setStdDeviation', [stdDeviationX, stdDeviationY]);
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
  external SVGFEFloodElement();
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
  @JS('SVG_EDGEMODE_UNKNOWN')
  external static int get svgEdgemodeUnknown;

  @JS('SVG_EDGEMODE_DUPLICATE')
  external static int get svgEdgemodeDuplicate;

  @JS('SVG_EDGEMODE_WRAP')
  external static int get svgEdgemodeWrap;

  @JS('SVG_EDGEMODE_NONE')
  external static int get svgEdgemodeNone;

  external SVGFEGaussianBlurElement();
}

extension PropsSVGFEGaussianBlurElement on SVGFEGaussianBlurElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) X component of the [stdDeviation]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');

  ///  An [SVGAnimatedNumber] corresponding to the (possibly
  /// automatically computed) Y component of the [stdDeviation]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');

  ///  An [SVGAnimatedEnumeration] corresponding to the [edgeMode]
  /// attribute of the given element. Takes one of the [SVG_EDGEMODE_*]
  /// constants defined on this interface.
  ///
  SVGAnimatedEnumeration get edgeMode => js_util.getProperty(this, 'edgeMode');

  /// Sets the values for the [stdDeviation] attribute.
  ///
  Object setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
      .callMethod(this, 'setStdDeviation', [stdDeviationX, stdDeviationY]);
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
  external SVGFEImageElement();
}

extension PropsSVGFEImageElement on SVGFEImageElement {
  ///  An [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// [preserveAspectRatio] attribute of the given element.
  ///
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');

  ///  An [SVGAnimatedString] reflects the [crossorigin] attribute of
  /// the given element, limited to only known values.
  ///
  SVGAnimatedString get crossOrigin => js_util.getProperty(this, 'crossOrigin');
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
  external SVGFEMergeElement();
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
  external SVGFEMergeNodeElement();
}

extension PropsSVGFEMergeNodeElement on SVGFEMergeNodeElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
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
  @JS('SVG_MORPHOLOGY_OPERATOR_UNKNOWN')
  external static int get svgMorphologyOperatorUnknown;

  @JS('SVG_MORPHOLOGY_OPERATOR_ERODE')
  external static int get svgMorphologyOperatorErode;

  @JS('SVG_MORPHOLOGY_OPERATOR_DILATE')
  external static int get svgMorphologyOperatorDilate;

  external SVGFEMorphologyElement();
}

extension PropsSVGFEMorphologyElement on SVGFEMorphologyElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedEnumeration] corresponding to the [operator]
  /// attribute of the given element. It takes one of the
  /// [SVG_MORPHOLOGY_OPERATOR_*] constants defined on this interface.
  ///
  @JS('operator')
  @staticInterop
  SVGAnimatedEnumeration get mOperator => js_util.getProperty(this, 'operator');

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [radius] attribute of the given element.
  ///
  SVGAnimatedNumber get radiusX => js_util.getProperty(this, 'radiusX');

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [radius] attribute of the given element.
  ///
  SVGAnimatedNumber get radiusY => js_util.getProperty(this, 'radiusY');
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
  external SVGFEOffsetElement();
}

extension PropsSVGFEOffsetElement on SVGFEOffsetElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedNumber] corresponding to the [dx] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');

  ///  An [SVGAnimatedNumber] corresponding to the [dy] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get dy => js_util.getProperty(this, 'dy');
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
  external SVGFESpecularLightingElement();
}

extension PropsSVGFESpecularLightingElement on SVGFESpecularLightingElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');

  ///  An [SVGAnimatedNumber] corresponding to the [surfaceScale]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get surfaceScale =>
      js_util.getProperty(this, 'surfaceScale');

  ///  An [SVGAnimatedNumber] corresponding to the [specularConstant]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get specularConstant =>
      js_util.getProperty(this, 'specularConstant');

  ///  An [SVGAnimatedNumber] corresponding to the [specularExponent]
  /// attribute of the given element.
  ///
  SVGAnimatedNumber get specularExponent =>
      js_util.getProperty(this, 'specularExponent');

  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [kernelUnitLength] attribute of the given element.
  ///
  SVGAnimatedNumber get kernelUnitLengthY =>
      js_util.getProperty(this, 'kernelUnitLengthY');
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
  external SVGFETileElement();
}

extension PropsSVGFETileElement on SVGFETileElement {
  ///  An [SVGAnimatedString] corresponding to the [in] attribute of
  /// the given element.
  ///
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
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
  @JS('SVG_TURBULENCE_TYPE_UNKNOWN')
  external static int get svgTurbulenceTypeUnknown;

  @JS('SVG_TURBULENCE_TYPE_FRACTALNOISE')
  external static int get svgTurbulenceTypeFractalnoise;

  @JS('SVG_TURBULENCE_TYPE_TURBULENCE')
  external static int get svgTurbulenceTypeTurbulence;

  @JS('SVG_STITCHTYPE_UNKNOWN')
  external static int get svgStitchtypeUnknown;

  @JS('SVG_STITCHTYPE_STITCH')
  external static int get svgStitchtypeStitch;

  @JS('SVG_STITCHTYPE_NOSTITCH')
  external static int get svgStitchtypeNostitch;

  external SVGFETurbulenceElement();
}

extension PropsSVGFETurbulenceElement on SVGFETurbulenceElement {
  ///  An [SVGAnimatedNumber] corresponding to the X component of the
  /// [baseFrequency] attribute of the given element.
  ///
  SVGAnimatedNumber get baseFrequencyX =>
      js_util.getProperty(this, 'baseFrequencyX');

  ///  An [SVGAnimatedNumber] corresponding to the Y component of the
  /// [baseFrequency] attribute of the given element.
  ///
  SVGAnimatedNumber get baseFrequencyY =>
      js_util.getProperty(this, 'baseFrequencyY');

  ///  An [SVGAnimatedInteger] corresponding to the [numOctaves]
  /// attribute of the given element.
  ///
  SVGAnimatedInteger get numOctaves => js_util.getProperty(this, 'numOctaves');

  ///  An [SVGAnimatedNumber] corresponding to the [seed] attribute of
  /// the given element.
  ///
  SVGAnimatedNumber get seed => js_util.getProperty(this, 'seed');

  ///  An [SVGAnimatedEnumeration] corresponding to the [stitchTiles]
  /// attribute of the given element. It takes one of the
  /// [SVG_STITCHTYPE_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get stitchTiles =>
      js_util.getProperty(this, 'stitchTiles');

  ///  An [SVGAnimatedEnumeration] corresponding to the [type]
  /// attribute of the given element. It takes one of the
  /// [SVG_TURBULENCE_TYPE_*] constants defined on this interface.
  ///
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
}
