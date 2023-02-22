/// Filter Effects Module Level 1
///
/// https://drafts.fxtf.org/filter-effects-1/

// ignore_for_file: unused_import

@JS('self')
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
  external factory SVGFilterElement();
}

extension PropsSVGFilterElement on SVGFilterElement {
  SVGAnimatedEnumeration get filterUnits =>
      js_util.getProperty(this, 'filterUnits');
  SVGAnimatedEnumeration get primitiveUnits =>
      js_util.getProperty(this, 'primitiveUnits');
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}

@JS()
@staticInterop
class SVGFilterPrimitiveStandardAttributes {
  external factory SVGFilterPrimitiveStandardAttributes();
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

  external factory SVGFEBlendElement();
}

extension PropsSVGFEBlendElement on SVGFEBlendElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
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

  external factory SVGFEColorMatrixElement();
}

extension PropsSVGFEColorMatrixElement on SVGFEColorMatrixElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
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
  external factory SVGFEComponentTransferElement();
}

extension PropsSVGFEComponentTransferElement on SVGFEComponentTransferElement {
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

  external factory SVGComponentTransferFunctionElement();
}

extension PropsSVGComponentTransferFunctionElement
    on SVGComponentTransferFunctionElement {
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
  SVGAnimatedNumberList get tableValues =>
      js_util.getProperty(this, 'tableValues');
  SVGAnimatedNumber get slope => js_util.getProperty(this, 'slope');
  SVGAnimatedNumber get intercept => js_util.getProperty(this, 'intercept');
  SVGAnimatedNumber get amplitude => js_util.getProperty(this, 'amplitude');
  SVGAnimatedNumber get exponent => js_util.getProperty(this, 'exponent');
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

  external factory SVGFECompositeElement();
}

extension PropsSVGFECompositeElement on SVGFECompositeElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
  SVGAnimatedEnumeration get operator => js_util.getProperty(this, 'operator');
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

  external factory SVGFEConvolveMatrixElement();
}

extension PropsSVGFEConvolveMatrixElement on SVGFEConvolveMatrixElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedInteger get orderX => js_util.getProperty(this, 'orderX');
  SVGAnimatedInteger get orderY => js_util.getProperty(this, 'orderY');
  SVGAnimatedNumberList get kernelMatrix =>
      js_util.getProperty(this, 'kernelMatrix');
  SVGAnimatedNumber get divisor => js_util.getProperty(this, 'divisor');
  SVGAnimatedNumber get bias => js_util.getProperty(this, 'bias');
  SVGAnimatedInteger get targetX => js_util.getProperty(this, 'targetX');
  SVGAnimatedInteger get targetY => js_util.getProperty(this, 'targetY');
  SVGAnimatedEnumeration get edgeMode => js_util.getProperty(this, 'edgeMode');
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');
  SVGAnimatedNumber get kernelUnitLengthY =>
      js_util.getProperty(this, 'kernelUnitLengthY');
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
  external factory SVGFEDiffuseLightingElement();
}

extension PropsSVGFEDiffuseLightingElement on SVGFEDiffuseLightingElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get surfaceScale =>
      js_util.getProperty(this, 'surfaceScale');
  SVGAnimatedNumber get diffuseConstant =>
      js_util.getProperty(this, 'diffuseConstant');
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');
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
  external factory SVGFEDistantLightElement();
}

extension PropsSVGFEDistantLightElement on SVGFEDistantLightElement {
  SVGAnimatedNumber get azimuth => js_util.getProperty(this, 'azimuth');
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
  external factory SVGFEPointLightElement();
}

extension PropsSVGFEPointLightElement on SVGFEPointLightElement {
  SVGAnimatedNumber get x => js_util.getProperty(this, 'x');
  SVGAnimatedNumber get y => js_util.getProperty(this, 'y');
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
  external factory SVGFESpotLightElement();
}

extension PropsSVGFESpotLightElement on SVGFESpotLightElement {
  SVGAnimatedNumber get x => js_util.getProperty(this, 'x');
  SVGAnimatedNumber get y => js_util.getProperty(this, 'y');
  SVGAnimatedNumber get z => js_util.getProperty(this, 'z');
  SVGAnimatedNumber get pointsAtX => js_util.getProperty(this, 'pointsAtX');
  SVGAnimatedNumber get pointsAtY => js_util.getProperty(this, 'pointsAtY');
  SVGAnimatedNumber get pointsAtZ => js_util.getProperty(this, 'pointsAtZ');
  SVGAnimatedNumber get specularExponent =>
      js_util.getProperty(this, 'specularExponent');
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

  external factory SVGFEDisplacementMapElement();
}

extension PropsSVGFEDisplacementMapElement on SVGFEDisplacementMapElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
  SVGAnimatedNumber get scale => js_util.getProperty(this, 'scale');
  SVGAnimatedEnumeration get xChannelSelector =>
      js_util.getProperty(this, 'xChannelSelector');
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
  external factory SVGFEDropShadowElement();
}

extension PropsSVGFEDropShadowElement on SVGFEDropShadowElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');
  SVGAnimatedNumber get dy => js_util.getProperty(this, 'dy');
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');
  void setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
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
  @JS('SVG_EDGEMODE_UNKNOWN')
  external static int get svgEdgemodeUnknown;

  @JS('SVG_EDGEMODE_DUPLICATE')
  external static int get svgEdgemodeDuplicate;

  @JS('SVG_EDGEMODE_WRAP')
  external static int get svgEdgemodeWrap;

  @JS('SVG_EDGEMODE_NONE')
  external static int get svgEdgemodeNone;

  external factory SVGFEGaussianBlurElement();
}

extension PropsSVGFEGaussianBlurElement on SVGFEGaussianBlurElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');
  SVGAnimatedEnumeration get edgeMode => js_util.getProperty(this, 'edgeMode');
  void setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
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
  external factory SVGFEImageElement();
}

extension PropsSVGFEImageElement on SVGFEImageElement {
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');
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

  external factory SVGFEMorphologyElement();
}

extension PropsSVGFEMorphologyElement on SVGFEMorphologyElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedEnumeration get operator => js_util.getProperty(this, 'operator');
  SVGAnimatedNumber get radiusX => js_util.getProperty(this, 'radiusX');
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
  external factory SVGFEOffsetElement();
}

extension PropsSVGFEOffsetElement on SVGFEOffsetElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');
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
  external factory SVGFESpecularLightingElement();
}

extension PropsSVGFESpecularLightingElement on SVGFESpecularLightingElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get surfaceScale =>
      js_util.getProperty(this, 'surfaceScale');
  SVGAnimatedNumber get specularConstant =>
      js_util.getProperty(this, 'specularConstant');
  SVGAnimatedNumber get specularExponent =>
      js_util.getProperty(this, 'specularExponent');
  SVGAnimatedNumber get kernelUnitLengthX =>
      js_util.getProperty(this, 'kernelUnitLengthX');
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
  external factory SVGFETileElement();
}

extension PropsSVGFETileElement on SVGFETileElement {
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

  external factory SVGFETurbulenceElement();
}

extension PropsSVGFETurbulenceElement on SVGFETurbulenceElement {
  SVGAnimatedNumber get baseFrequencyX =>
      js_util.getProperty(this, 'baseFrequencyX');
  SVGAnimatedNumber get baseFrequencyY =>
      js_util.getProperty(this, 'baseFrequencyY');
  SVGAnimatedInteger get numOctaves => js_util.getProperty(this, 'numOctaves');
  SVGAnimatedNumber get seed => js_util.getProperty(this, 'seed');
  SVGAnimatedEnumeration get stitchTiles =>
      js_util.getProperty(this, 'stitchTiles');
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
}
