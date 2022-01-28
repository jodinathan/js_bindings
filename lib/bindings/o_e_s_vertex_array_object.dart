/// WebGL OES_vertex_array_object Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/
@JS('window')
@staticInterop
library o_e_s_vertex_array_object;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1 */

@JS()
@staticInterop
class WebGLVertexArrayObjectOES implements WebGLObject {
  external factory WebGLVertexArrayObjectOES();
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
@JS()
@staticInterop
class OES_vertex_array_object {
  external static int get VERTEX_ARRAY_BINDING_OES;
  external factory OES_vertex_array_object();
}

extension PropsOES_vertex_array_object on OES_vertex_array_object {
  /// Creates a new [WebGLVertexArrayObject].
  ///
  /// WebGLVertexArrayObjectOES ext.createVertexArrayOES();
  ///
  external WebGLVertexArrayObjectOES? createVertexArrayOES();

  /// Deletes a given [WebGLVertexArrayObject].
  ///
  /// void ext.deleteVertexArrayOES(arrayObject);
  ///
  external Object deleteVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);

  /// Returns [true] if a given object is a [WebGLVertexArrayObject].
  ///
  /// GLBoolean ext.isVertexArrayOES(arrayObject);
  ///
  external bool isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);

  /// Binds a given [WebGLVertexArrayObject] to the buffer.
  ///
  /// void ext.bindVertexArrayOES(arrayObject);
  ///
  external Object bindVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
}
