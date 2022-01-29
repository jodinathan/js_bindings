/// WebGL WEBGL_draw_instanced_base_vertex_base_instance Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_draw_instanced_base_vertex_base_instance/
@JS('window')
@staticInterop
library w_e_b_g_l_draw_instanced_base_vertex_base_instance;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class WEBGL_draw_instanced_base_vertex_base_instance {
  external WEBGL_draw_instanced_base_vertex_base_instance();
}

extension PropsWEBGL_draw_instanced_base_vertex_base_instance
    on WEBGL_draw_instanced_base_vertex_base_instance {
  Object drawArraysInstancedBaseInstanceWEBGL(int mode, int first, int count,
          int instanceCount, int baseInstance) =>
      js_util.callMethod(this, 'drawArraysInstancedBaseInstanceWEBGL',
          [mode, first, count, instanceCount, baseInstance]);

  Object drawElementsInstancedBaseVertexBaseInstanceWEBGL(
          int mode,
          int count,
          int type,
          int offset,
          int instanceCount,
          int baseVertex,
          int baseInstance) =>
      js_util.callMethod(
          this,
          'drawElementsInstancedBaseVertexBaseInstanceWEBGL',
          [mode, count, type, offset, instanceCount, baseVertex, baseInstance]);
}
