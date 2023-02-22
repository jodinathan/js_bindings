/// WebGL EXT_blend_minmax Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_blend_minmax/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_blend_minmax;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and extends blending
/// capabilities by adding two new blend equations: the minimum or
/// maximum color components of the source and destination colors.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///   Note: This extension is only available to WebGL1 contexts. In
/// WebGL2, the functionality of this extension is available on the
/// WebGL2 context by default. The constants in WebGL2 are [gl.MIN]
/// and [gl.MAX].
///
@JS('EXT_blend_minmax')
@staticInterop
class EXTBlendMinmax {
  @JS('MIN_EXT')
  external static int get minExt;

  @JS('MAX_EXT')
  external static int get maxExt;

  external factory EXTBlendMinmax();
}
