/// WebGL EXT_disjoint_timer_query Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_disjoint_timer_query/
@JS('window')
@staticInterop
library e_x_t_disjoint_timer_query;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

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
@JS()
@staticInterop
class EXT_disjoint_timer_query {
  external static int get QUERY_COUNTER_BITS_EXT;
  external static int get CURRENT_QUERY_EXT;
  external static int get QUERY_RESULT_EXT;
  external static int get QUERY_RESULT_AVAILABLE_EXT;
  external static int get TIME_ELAPSED_EXT;
  external static int get TIMESTAMP_EXT;
  external static int get GPU_DISJOINT_EXT;
  external factory EXT_disjoint_timer_query();
}

extension PropsEXT_disjoint_timer_query on EXT_disjoint_timer_query {
  /// Creates a new [WebGLTimerQueryEXT].
  ///
  /// WebGLTimerQueryEXT ext.createQueryEXT();
  ///
  external WebGLTimerQueryEXT? createQueryEXT();

  /// Deletes a given [WebGLTimerQueryEXT].
  ///
  /// void ext.deleteQueryEXT(query);
  ///
  external Object deleteQueryEXT(WebGLTimerQueryEXT? query);

  ///  Returns [true] if a given object is a valid
  /// [WebGLTimerQueryEXT].
  ///
  /// GLBoolean ext.isQueryEXT(query);
  ///
  external bool isQueryEXT(WebGLTimerQueryEXT? query);

  ///  The timer starts when all commands prior to have been fully
  /// executed.
  ///
  /// void ext.beginQueryEXT(target, query);
  ///
  external Object beginQueryEXT(int target, WebGLTimerQueryEXT query);

  ///  The timer stops when all commands prior to have been fully
  /// executed.
  ///
  /// void ext.endQueryEXT(target);
  ///
  external Object endQueryEXT(int target);

  /// Records the current time into the corresponding query object.
  ///
  /// void ext.queryCounterEXT(query, target);
  ///
  external Object queryCounterEXT(WebGLTimerQueryEXT query, int target);

  /// Returns information about a query target.
  ///
  /// any ext.getQueryEXT(target, pname);
  ///
  external dynamic getQueryEXT(int target, int pname);

  /// Return the state of a query object.
  ///
  /// any ext.getQueryObjectEXT(query, pname);
  ///
  external dynamic getQueryObjectEXT(WebGLTimerQueryEXT query, int pname);
}
