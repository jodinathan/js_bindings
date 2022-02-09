/// WebGL OES_vertex_array_object Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library oes_vertex_array_object;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class WebGLVertexArrayObjectOES implements WebGLObject {
  external WebGLVertexArrayObjectOES();
}

@JS('OES_vertex_array_object')
@staticInterop
class OESVertexArrayObject {
  @JS('VERTEX_ARRAY_BINDING_OES')
  external static int get vertexArrayBindingOes;

  external OESVertexArrayObject();
}

extension PropsOESVertexArrayObject on OESVertexArrayObject {
  WebGLVertexArrayObjectOES? createVertexArrayOES() =>
      js_util.callMethod(this, 'createVertexArrayOES', []);

  Object deleteVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'deleteVertexArrayOES', [arrayObject]);

  bool isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'isVertexArrayOES', [arrayObject]);

  Object bindVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'bindVertexArrayOES', [arrayObject]);
}
