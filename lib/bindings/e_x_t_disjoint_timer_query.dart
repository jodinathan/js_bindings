/// WebGL EXT_disjoint_timer_query Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_disjoint_timer_query/
@JS('window')
@staticInterop
library e_x_t_disjoint_timer_query;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class WebGLTimerQueryEXT implements WebGLObject {
  external WebGLTimerQueryEXT();
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
  external EXT_disjoint_timer_query();
}

extension PropsEXT_disjoint_timer_query on EXT_disjoint_timer_query {
  /// Creates a new [WebGLTimerQueryEXT].
  ///
  /// WebGLTimerQueryEXT ext.createQueryEXT();
  ///
  WebGLTimerQueryEXT? createQueryEXT() =>
      js_util.callMethod(this, 'createQueryEXT', []);

  /// Deletes a given [WebGLTimerQueryEXT].
  ///
  /// void ext.deleteQueryEXT(query);
  ///
  Object deleteQueryEXT(

          /// A [WebGLQuery] object to delete.
          ///
          WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'deleteQueryEXT', [query]);

  ///  Returns [true] if a given object is a valid
  /// [WebGLTimerQueryEXT].
  ///
  /// GLBoolean ext.isQueryEXT(query);
  ///
  bool isQueryEXT(

          /// A [WebGLQuery] object to test.
          ///
          WebGLTimerQueryEXT? query) =>
      js_util.callMethod(this, 'isQueryEXT', [query]);

  ///  The timer starts when all commands prior to have been fully
  /// executed.
  ///
  /// void ext.beginQueryEXT(target, query);
  ///
  Object beginQueryEXT(
          int target,

          /// A [WebGLQuery] object for which to start the time querying.
          ///
          WebGLTimerQueryEXT query) =>
      js_util.callMethod(this, 'beginQueryEXT', [target, query]);

  ///  The timer stops when all commands prior to have been fully
  /// executed.
  ///
  /// void ext.endQueryEXT(target);
  ///
  Object endQueryEXT(int target) =>
      js_util.callMethod(this, 'endQueryEXT', [target]);

  /// Records the current time into the corresponding query object.
  ///
  /// void ext.queryCounterEXT(query, target);
  ///
  Object queryCounterEXT(

          /// A [WebGLQuery] object for which to record the current time.
          ///
          WebGLTimerQueryEXT query,
          int target) =>
      js_util.callMethod(this, 'queryCounterEXT', [query, target]);

  /// Returns information about a query target.
  ///
  /// any ext.getQueryEXT(target, pname);
  ///
  dynamic getQueryEXT(
          int target,

          ///
          ///    A [GLenum] specifying which information to return. Must be
          ///    [ext.CURRENT_QUERY_EXT] or [ext.QUERY_COUNTER_BITS_EXT].
          ///
          ///
          int pname) =>
      js_util.callMethod(this, 'getQueryEXT', [target, pname]);

  /// Return the state of a query object.
  ///
  /// any ext.getQueryObjectEXT(query, pname);
  ///
  dynamic getQueryObjectEXT(

          /// A [WebGLQuery] object from which to return information.
          ///
          WebGLTimerQueryEXT query,

          ///
          ///    A [GLenum] specifying which information to return. Must be
          ///    [ext.QUERY_RESULT_EXT] or [ext.QUERY_RESULT_AVAILABLE_EXT].
          ///
          ///
          int pname) =>
      js_util.callMethod(this, 'getQueryObjectEXT', [query, pname]);
}
