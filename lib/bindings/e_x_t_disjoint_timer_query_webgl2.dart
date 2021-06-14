/// WebGL EXT_disjoint_timer_query_webgl2 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_disjoint_timer_query_webgl2/
@JS('window')
library e_x_t_disjoint_timer_query_webgl2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl2.dart';
import 'webgl1.dart';

@JS()
class EXT_disjoint_timer_query_webgl2 {
  external static int get QUERY_COUNTER_BITS_EXT;
  external static int get TIME_ELAPSED_EXT;
  external static int get TIMESTAMP_EXT;
  external static int get GPU_DISJOINT_EXT;
  external Object queryCounterEXT(WebGLQuery query, int target);

  external factory EXT_disjoint_timer_query_webgl2();
}
