/// WebGL WEBGL_draw_instanced_base_vertex_base_instance Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_draw_instanced_base_vertex_base_instance/
@JS('window')
library w_e_b_g_l_draw_instanced_base_vertex_base_instance;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl1.dart';

@JS()
class WEBGL_draw_instanced_base_vertex_base_instance {
  external Object drawArraysInstancedBaseInstanceWEBGL(
      int mode, int first, int count, int instanceCount, int baseInstance);
  external Object drawElementsInstancedBaseVertexBaseInstanceWEBGL(
      int mode,
      int count,
      int type,
      int offset,
      int instanceCount,
      int baseVertex,
      int baseInstance);

  external factory WEBGL_draw_instanced_base_vertex_base_instance();
}
