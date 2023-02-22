/// WebGL EXT_disjoint_timer_query Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_disjoint_timer_query/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_disjoint_timer_query;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class WebGLTimerQueryEXT implements WebGLObject {
  external factory WebGLTimerQueryEXT();
}

///  The EXT_disjoint_timer_query extension is part of the WebGL API
/// and provides a way to measure the duration of a set of GL
/// commands, without stalling the rendering pipeline.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension should be available in WebGL1 contexts
/// only. [EXT_disjoint_timer_query_webgl2] is available in WebGL 2
/// contexts .
///
///    In WebGL 2, the [getQueryObject] was renamed to
/// [getQueryParameter].
///    In WebGL 2, other queries (such as occlusion queries and
/// primitive queries) are possible using [WebGLQuery] objects.
///
///
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

  external factory EXTDisjointTimerQuery();
}

extension PropsEXTDisjointTimerQuery on EXTDisjointTimerQuery {
  WebGLTimerQueryEXT? createQueryEXT() =>
      js_util.callMethod(this, 'createQueryEXT', []);

  void deleteQueryEXT(WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'deleteQueryEXT', [query]);

  bool isQueryEXT(WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'isQueryEXT', [query]);

  void beginQueryEXT(int target, WebGLTimerQueryEXT query) =>
      js_util.callMethod(this, 'beginQueryEXT', [target, query]);

  void endQueryEXT(int target) =>
      js_util.callMethod(this, 'endQueryEXT', [target]);

  void queryCounterEXT(WebGLTimerQueryEXT query, int target) =>
      js_util.callMethod(this, 'queryCounterEXT', [query, target]);

  dynamic getQueryEXT(int target, int pname) =>
      js_util.callMethod(this, 'getQueryEXT', [target, pname]);

  dynamic getQueryObjectEXT(WebGLTimerQueryEXT query, int pname) =>
      js_util.callMethod(this, 'getQueryObjectEXT', [query, pname]);
}
