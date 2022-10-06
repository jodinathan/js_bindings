/// WebGL WEBGL_multi_draw_instanced_base_vertex_base_instance Extension Draft Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_multi_draw_instanced_base_vertex_base_instance/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl_multi_draw_instanced_base_vertex_base_instance;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('WEBGL_multi_draw_instanced_base_vertex_base_instance')
@staticInterop
class WEBGLMultiDrawInstancedBaseVertexBaseInstance {
  external factory WEBGLMultiDrawInstancedBaseVertexBaseInstance();
}

extension PropsWEBGLMultiDrawInstancedBaseVertexBaseInstance
    on WEBGLMultiDrawInstancedBaseVertexBaseInstance {
  void multiDrawArraysInstancedBaseInstanceWEBGL(
          int mode,
          dynamic firstsList,
          int firstsOffset,
          dynamic countsList,
          int countsOffset,
          dynamic instanceCountsList,
          int instanceCountsOffset,
          dynamic baseInstancesList,
          int baseInstancesOffset,
          int drawcount) =>
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
        drawcount
      ]);

  void multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(
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
          int drawcount) =>
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
        drawcount
      ]);
}
