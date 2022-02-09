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

@JS()
@staticInterop
class SVGFilterElement implements SVGElement, SVGURIReference {
  external SVGFilterElement();
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
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
  SVGAnimatedEnumeration get mode => js_util.getProperty(this, 'mode');
}

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
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
  SVGAnimatedNumberList get values => js_util.getProperty(this, 'values');
}

@JS()
@staticInterop
class SVGFEComponentTransferElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEComponentTransferElement();
}

extension PropsSVGFEComponentTransferElement on SVGFEComponentTransferElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
}

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
  SVGAnimatedEnumeration get type => js_util.getProperty(this, 'type');
  SVGAnimatedNumberList get tableValues =>
      js_util.getProperty(this, 'tableValues');
  SVGAnimatedNumber get slope => js_util.getProperty(this, 'slope');
  SVGAnimatedNumber get intercept => js_util.getProperty(this, 'intercept');
  SVGAnimatedNumber get amplitude => js_util.getProperty(this, 'amplitude');
  SVGAnimatedNumber get exponent => js_util.getProperty(this, 'exponent');
  SVGAnimatedNumber get offset => js_util.getProperty(this, 'offset');
}

@JS()
@staticInterop
class SVGFEFuncRElement implements SVGComponentTransferFunctionElement {
  external SVGFEFuncRElement();
}

@JS()
@staticInterop
class SVGFEFuncGElement implements SVGComponentTransferFunctionElement {
  external SVGFEFuncGElement();
}

@JS()
@staticInterop
class SVGFEFuncBElement implements SVGComponentTransferFunctionElement {
  external SVGFEFuncBElement();
}

@JS()
@staticInterop
class SVGFEFuncAElement implements SVGComponentTransferFunctionElement {
  external SVGFEFuncAElement();
}

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

@JS()
@staticInterop
class SVGFEDiffuseLightingElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEDiffuseLightingElement();
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

@JS()
@staticInterop
class SVGFEDistantLightElement implements SVGElement {
  external SVGFEDistantLightElement();
}

extension PropsSVGFEDistantLightElement on SVGFEDistantLightElement {
  SVGAnimatedNumber get azimuth => js_util.getProperty(this, 'azimuth');
  SVGAnimatedNumber get elevation => js_util.getProperty(this, 'elevation');
}

@JS()
@staticInterop
class SVGFEPointLightElement implements SVGElement {
  external SVGFEPointLightElement();
}

extension PropsSVGFEPointLightElement on SVGFEPointLightElement {
  SVGAnimatedNumber get x => js_util.getProperty(this, 'x');
  SVGAnimatedNumber get y => js_util.getProperty(this, 'y');
  SVGAnimatedNumber get z => js_util.getProperty(this, 'z');
}

@JS()
@staticInterop
class SVGFESpotLightElement implements SVGElement {
  external SVGFESpotLightElement();
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
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedString get in2 => js_util.getProperty(this, 'in2');
  SVGAnimatedNumber get scale => js_util.getProperty(this, 'scale');
  SVGAnimatedEnumeration get xChannelSelector =>
      js_util.getProperty(this, 'xChannelSelector');
  SVGAnimatedEnumeration get yChannelSelector =>
      js_util.getProperty(this, 'yChannelSelector');
}

@JS()
@staticInterop
class SVGFEDropShadowElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEDropShadowElement();
}

extension PropsSVGFEDropShadowElement on SVGFEDropShadowElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');
  SVGAnimatedNumber get dy => js_util.getProperty(this, 'dy');
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');
  Object setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
      .callMethod(this, 'setStdDeviation', [stdDeviationX, stdDeviationY]);
}

@JS()
@staticInterop
class SVGFEFloodElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEFloodElement();
}

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
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get stdDeviationX =>
      js_util.getProperty(this, 'stdDeviationX');
  SVGAnimatedNumber get stdDeviationY =>
      js_util.getProperty(this, 'stdDeviationY');
  SVGAnimatedEnumeration get edgeMode => js_util.getProperty(this, 'edgeMode');
  Object setStdDeviation(double stdDeviationX, double stdDeviationY) => js_util
      .callMethod(this, 'setStdDeviation', [stdDeviationX, stdDeviationY]);
}

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
  SVGAnimatedPreserveAspectRatio get preserveAspectRatio =>
      js_util.getProperty(this, 'preserveAspectRatio');
  SVGAnimatedString get crossOrigin => js_util.getProperty(this, 'crossOrigin');
}

@JS()
@staticInterop
class SVGFEMergeElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEMergeElement();
}

@JS()
@staticInterop
class SVGFEMergeNodeElement implements SVGElement {
  external SVGFEMergeNodeElement();
}

extension PropsSVGFEMergeNodeElement on SVGFEMergeNodeElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
}

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
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  @JS('operator')
  @staticInterop
  SVGAnimatedEnumeration get mOperator => js_util.getProperty(this, 'operator');
  SVGAnimatedNumber get radiusX => js_util.getProperty(this, 'radiusX');
  SVGAnimatedNumber get radiusY => js_util.getProperty(this, 'radiusY');
}

@JS()
@staticInterop
class SVGFEOffsetElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFEOffsetElement();
}

extension PropsSVGFEOffsetElement on SVGFEOffsetElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
  SVGAnimatedNumber get dx => js_util.getProperty(this, 'dx');
  SVGAnimatedNumber get dy => js_util.getProperty(this, 'dy');
}

@JS()
@staticInterop
class SVGFESpecularLightingElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFESpecularLightingElement();
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

@JS()
@staticInterop
class SVGFETileElement
    implements SVGElement, SVGFilterPrimitiveStandardAttributes {
  external SVGFETileElement();
}

extension PropsSVGFETileElement on SVGFETileElement {
  SVGAnimatedString get in1 => js_util.getProperty(this, 'in1');
}

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
