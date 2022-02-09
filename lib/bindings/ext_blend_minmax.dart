/// WebGL EXT_blend_minmax Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_blend_minmax/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_blend_minmax;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_blend_minmax')
@staticInterop
class EXTBlendMinmax {
  @JS('MIN_EXT')
  external static int get minExt;

  @JS('MAX_EXT')
  external static int get maxExt;

  external EXTBlendMinmax();
}
