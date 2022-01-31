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

///  The OES_vertex_array_object extension is part of the WebGL API
/// and provides vertex array objects (VAOs) which encapsulate vertex
/// array states. These objects keep pointers to vertex data and
/// provide names for different sets of vertex data.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default and the constants and methods are
/// available without the "[OES]" suffix.
///
@JS('OES_vertex_array_object')
@staticInterop
class OESVertexArrayObject {
  @JS('VERTEX_ARRAY_BINDING_OES')
  external static int get vertexArrayBindingOes;

  external OESVertexArrayObject();
}

extension PropsOESVertexArrayObject on OESVertexArrayObject {
  /// Creates a new [WebGLVertexArrayObject].
  ///
  /// WebGLVertexArrayObjectOES ext.createVertexArrayOES();
  ///
  WebGLVertexArrayObjectOES? createVertexArrayOES() =>
      js_util.callMethod(this, 'createVertexArrayOES', []);

  /// Deletes a given [WebGLVertexArrayObject].
  ///
  /// void ext.deleteVertexArrayOES(arrayObject);
  ///
  Object deleteVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'deleteVertexArrayOES', [arrayObject]);

  /// Returns [true] if a given object is a [WebGLVertexArrayObject].
  ///
  /// GLBoolean ext.isVertexArrayOES(arrayObject);
  ///
  bool isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'isVertexArrayOES', [arrayObject]);

  /// Binds a given [WebGLVertexArrayObject] to the buffer.
  ///
  /// void ext.bindVertexArrayOES(arrayObject);
  ///
  Object bindVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject) =>
      js_util.callMethod(this, 'bindVertexArrayOES', [arrayObject]);
}
