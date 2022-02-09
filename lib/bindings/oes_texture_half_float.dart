/// WebGL OES_texture_half_float Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_half_float/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library oes_texture_half_float;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('OES_texture_half_float')
@staticInterop
class OESTextureHalfFloat {
  @JS('HALF_FLOAT_OES')
  external static int get halfFloatOes;

  external OESTextureHalfFloat();
}
