/// WebGL WEBGL_multi_draw_instanced_base_vertex_base_instance Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_multi_draw_instanced_base_vertex_base_instance/
@JS('window')
@staticInterop
library w_e_b_g_l_multi_draw_instanced_base_vertex_base_instance;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class WEBGL_multi_draw_instanced_base_vertex_base_instance {
  external WEBGL_multi_draw_instanced_base_vertex_base_instance();
}

extension PropsWEBGL_multi_draw_instanced_base_vertex_base_instance
    on WEBGL_multi_draw_instanced_base_vertex_base_instance {
  Object multiDrawArraysInstancedBaseInstanceWEBGL(
          int mode,
          dynamic firstsList,
          int firstsOffset,
          dynamic countsList,
          int countsOffset,
          dynamic instanceCountsList,
          int instanceCountsOffset,
          dynamic baseInstancesList,
          int baseInstancesOffset,
          int drawCount) =>
      js_util.callMethod(this, 'multiDrawArraysInstancedBaseInstanceWEBGL', [
        mode,
        firstsList,
        firstsOffset,
        countsList,
        countsOffset,
        instanceCountsList,
        instanceCountsOffset,
        baseInstancesList,
        baseInstancesOffset,
        drawCount
      ]);

  Object multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
          int mode,
          dynamic countsList,
          int countsOffset,
          int type,
          dynamic offsetsList,
          int offsetsOffset,
          dynamic instanceCountsList,
          int instanceCountsOffset,
          dynamic baseVerticesList,
          int baseVerticesOffset,
          dynamic baseInstancesList,
          int baseInstancesOffset,
          int drawCount) =>
      js_util.callMethod(
          this, 'multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL', [
        mode,
        countsList,
        countsOffset,
        type,
        offsetsList,
        offsetsOffset,
        instanceCountsList,
        instanceCountsOffset,
        baseVerticesList,
        baseVerticesOffset,
        baseInstancesList,
        baseInstancesOffset,
        drawCount
      ]);
}
