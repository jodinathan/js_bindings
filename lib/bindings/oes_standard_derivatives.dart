/// WebGL OES_standard_derivatives Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_standard_derivatives/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library oes_standard_derivatives;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('OES_standard_derivatives')
@staticInterop
class OESStandardDerivatives {
  @JS('FRAGMENT_SHADER_DERIVATIVE_HINT_OES')
  external static int get fragmentShaderDerivativeHintOes;

  external OESStandardDerivatives();
}
