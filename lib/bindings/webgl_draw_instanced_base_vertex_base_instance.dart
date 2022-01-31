/// WebGL WEBGL_draw_instanced_base_vertex_base_instance Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_draw_instanced_base_vertex_base_instance/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_draw_instanced_base_vertex_base_instance;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGLDrawInstancedBaseVertexBaseInstance {
  external WEBGLDrawInstancedBaseVertexBaseInstance();
}

extension PropsWEBGLDrawInstancedBaseVertexBaseInstance
    on WEBGLDrawInstancedBaseVertexBaseInstance {
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
