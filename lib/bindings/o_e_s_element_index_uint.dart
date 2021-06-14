/// WebGL OES_element_index_uint Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_element_index_uint/
@JS('window')
library o_e_s_element_index_uint;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [OES_element_index_uint] extension is part of the WebGL API
/// and adds support for [gl.UNSIGNED_INT] types to
/// [WebGLRenderingContext.drawElements()].
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default.
///
@JS()
class OES_element_index_uint {
  external factory OES_element_index_uint();
}
