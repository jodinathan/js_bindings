/// WebGL WEBGL_blend_equation_advanced_coherent Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_blend_equation_advanced_coherent/
@JS('window')
library w_e_b_g_l_blend_equation_advanced_coherent;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
class WEBGL_blend_equation_advanced_coherent {
  external static int get MULTIPLY;
  external static int get SCREEN;
  external static int get OVERLAY;
  external static int get DARKEN;
  external static int get LIGHTEN;
  external static int get COLORDODGE;
  external static int get COLORBURN;
  external static int get HARDLIGHT;
  external static int get SOFTLIGHT;
  external static int get DIFFERENCE;
  external static int get EXCLUSION;
  external static int get HSL_HUE;
  external static int get HSL_SATURATION;
  external static int get HSL_COLOR;
  external static int get HSL_LUMINOSITY;

  external factory WEBGL_blend_equation_advanced_coherent();
}
