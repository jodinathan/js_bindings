/// WebGL EXT_disjoint_timer_query Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_disjoint_timer_query/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_disjoint_timer_query;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class WebGLTimerQueryEXT implements WebGLObject {
  external WebGLTimerQueryEXT();
}

@JS('EXT_disjoint_timer_query')
@staticInterop
class EXTDisjointTimerQuery {
  @JS('QUERY_COUNTER_BITS_EXT')
  external static int get queryCounterBitsExt;

  @JS('CURRENT_QUERY_EXT')
  external static int get currentQueryExt;

  @JS('QUERY_RESULT_EXT')
  external static int get queryResultExt;

  @JS('QUERY_RESULT_AVAILABLE_EXT')
  external static int get queryResultAvailableExt;

  @JS('TIME_ELAPSED_EXT')
  external static int get timeElapsedExt;

  @JS('TIMESTAMP_EXT')
  external static int get timestampExt;

  @JS('GPU_DISJOINT_EXT')
  external static int get gpuDisjointExt;

  external EXTDisjointTimerQuery();
}

extension PropsEXTDisjointTimerQuery on EXTDisjointTimerQuery {
  WebGLTimerQueryEXT? createQueryEXT() =>
      js_util.callMethod(this, 'createQueryEXT', []);

  Object deleteQueryEXT(WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'deleteQueryEXT', [query]);

  bool isQueryEXT(WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'isQueryEXT', [query]);

  Object beginQueryEXT(int target, WebGLTimerQueryEXT query) =>
      js_util.callMethod(this, 'beginQueryEXT', [target, query]);

  Object endQueryEXT(int target) =>
      js_util.callMethod(this, 'endQueryEXT', [target]);

  Object queryCounterEXT(WebGLTimerQueryEXT query, int target) =>
      js_util.callMethod(this, 'queryCounterEXT', [query, target]);

  dynamic getQueryEXT(int target, int pname) =>
      js_util.callMethod(this, 'getQueryEXT', [target, pname]);

  dynamic getQueryObjectEXT(WebGLTimerQueryEXT query, int pname) =>
      js_util.callMethod(this, 'getQueryObjectEXT', [query, pname]);
}
