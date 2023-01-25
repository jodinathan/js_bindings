/// WebGL WEBGL_blend_equation_advanced_coherent Extension Draft Specification
///
/// https://registry.khronos.org/webgl/extensions/WEBGL_blend_equation_advanced_coherent/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl_blend_equation_advanced_coherent;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_blend_equation_advanced_coherent')
@staticInterop
class WEBGLBlendEquationAdvancedCoherent {
  @JS('MULTIPLY')
  external static int get multiply;

  @JS('SCREEN')
  external static int get screen;

  @JS('OVERLAY')
  external static int get overlay;

  @JS('DARKEN')
  external static int get darken;

  @JS('LIGHTEN')
  external static int get lighten;

  @JS('COLORDODGE')
  external static int get colordodge;

  @JS('COLORBURN')
  external static int get colorburn;

  @JS('HARDLIGHT')
  external static int get hardlight;

  @JS('SOFTLIGHT')
  external static int get softlight;

  @JS('DIFFERENCE')
  external static int get difference;

  @JS('EXCLUSION')
  external static int get exclusion;

  @JS('HSL_HUE')
  external static int get hslHue;

  @JS('HSL_SATURATION')
  external static int get hslSaturation;

  @JS('HSL_COLOR')
  external static int get hslColor;

  @JS('HSL_LUMINOSITY')
  external static int get hslLuminosity;

  external factory WEBGLBlendEquationAdvancedCoherent();
}
