/// WebGL OES_element_index_uint Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_element_index_uint/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library oes_element_index_uint;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and adds support for
/// [gl.UNSIGNED_INT] types to
/// [WebGLRenderingContext.drawElements()].
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default.
///
@JS('OES_element_index_uint')
@staticInterop
class OESElementIndexUint {
  external factory OESElementIndexUint();
}
