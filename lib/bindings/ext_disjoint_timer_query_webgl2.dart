/// WebGL EXT_disjoint_timer_query_webgl2 Extension Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_disjoint_timer_query_webgl2/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_disjoint_timer_query_webgl2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_disjoint_timer_query_webgl2')
@staticInterop
class EXTDisjointTimerQueryWebgl2 {
  @JS('QUERY_COUNTER_BITS_EXT')
  external static int get queryCounterBitsExt;

  @JS('TIME_ELAPSED_EXT')
  external static int get timeElapsedExt;

  @JS('TIMESTAMP_EXT')
  external static int get timestampExt;

  @JS('GPU_DISJOINT_EXT')
  external static int get gpuDisjointExt;

  external factory EXTDisjointTimerQueryWebgl2();
}

extension PropsEXTDisjointTimerQueryWebgl2 on EXTDisjointTimerQueryWebgl2 {
  void queryCounterEXT(WebGLQuery query, int target) =>
      js_util.callMethod(this, 'queryCounterEXT', [query, target]);
}
