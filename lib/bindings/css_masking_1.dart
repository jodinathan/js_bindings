/// CSS Masking Module Level 1
///
/// https://drafts.fxtf.org/css-masking-1/
@JS('window')
library css_masking_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'svg2.dart';

///
///
///  The interface provides access to the properties of [<clipPath>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGClipPathElement extends SVGElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [clipPathUnits]
  /// attribute of the given [<clipPath>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get clipPathUnits;
  external SVGAnimatedTransformList get transform;

  external factory SVGClipPathElement();
}

///
///
///  The interface provides access to the properties of [<mask>]
/// elements, as well as methods to manipulate them.
///
///
@JS()
class SVGMaskElement extends SVGElement {
  ///  An [SVGAnimatedEnumeration] corresponding to the [maskUnits]
  /// attribute of the given [<mask>] element. Takes one of the
  /// constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get maskUnits;

  ///  An [SVGAnimatedEnumeration] corresponding to the
  /// [maskContentUnits] attribute of the given [<mask>] element. Takes
  /// one of the constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get maskContentUnits;

  ///  An [SVGAnimatedLength] corresponding to the [x] attribute of the
  /// given [<mask>] element.
  external SVGAnimatedLength get x;

  ///  An [SVGAnimatedLength] corresponding to the [y] attribute of the
  /// given [<mask>] element.
  external SVGAnimatedLength get y;

  ///  An [SVGAnimatedLength] corresponding to the [width] attribute of
  /// the given [<mask>] element.
  external SVGAnimatedLength get width;

  ///  An [SVGAnimatedLength] corresponding to the [height] attribute
  /// of the given [<mask>] element.
  external SVGAnimatedLength get height;

  external factory SVGMaskElement();
}
