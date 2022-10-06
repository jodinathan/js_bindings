/// CSS Masking Module Level 1
///
/// https://drafts.fxtf.org/css-masking-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_masking_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface provides access to the properties of [<clipPath>]
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
///    SVGClipPathElement
///
///
@JS()
@staticInterop
class SVGClipPathElement implements SVGElement {
  external factory SVGClipPathElement();
}

extension PropsSVGClipPathElement on SVGClipPathElement {
  SVGAnimatedEnumeration get clipPathUnits =>
      js_util.getProperty(this, 'clipPathUnits');
  SVGAnimatedTransformList get transform =>
      js_util.getProperty(this, 'transform');
}

///  The interface provides access to the properties of [<mask>]
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
///    SVGMaskElement
///
///
@JS()
@staticInterop
class SVGMaskElement implements SVGElement {
  external factory SVGMaskElement();
}

extension PropsSVGMaskElement on SVGMaskElement {
  SVGAnimatedEnumeration get maskUnits =>
      js_util.getProperty(this, 'maskUnits');
  SVGAnimatedEnumeration get maskContentUnits =>
      js_util.getProperty(this, 'maskContentUnits');
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}
