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
  external SVGClipPathElement();
}

extension PropsSVGClipPathElement on SVGClipPathElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [clipPathUnits]
  /// attribute of the given [<clipPath>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
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
  external SVGMaskElement();
}

extension PropsSVGMaskElement on SVGMaskElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [maskUnits]
  /// attribute of the given [<mask>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get maskUnits =>
      js_util.getProperty(this, 'maskUnits');

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [maskContentUnits] attribute of the given [<mask>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  ///
  SVGAnimatedEnumeration get maskContentUnits =>
      js_util.getProperty(this, 'maskContentUnits');

  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<mask>] element.
  ///
  SVGAnimatedLength get x => js_util.getProperty(this, 'x');

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<mask>] element.
  ///
  SVGAnimatedLength get y => js_util.getProperty(this, 'y');

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<mask>] element.
  ///
  SVGAnimatedLength get width => js_util.getProperty(this, 'width');

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<mask>] element.
  ///
  SVGAnimatedLength get height => js_util.getProperty(this, 'height');
}
