/// WebGL EXT_texture_norm16 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_norm16/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library ext_texture_norm16;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and provides a set of new
/// 16-bit signed normalized and unsigned normalized formats
/// (fixed-point texture, renderbuffer and texture buffer).
/// When this extension is enabled:
///
///   The [WebGLRenderingContext.texImage2D()] and
/// [WebGLRenderingContext.texSubImage2D()] methods accept new
/// formats provided by this extension.
///   The 16-bit normalized fixed-point types [ext.R16_EXT],
/// [ext.RG16_EXT] and [ext.RGBA16_EXT] become available as
/// color-renderable formats and renderbuffers and be created in
/// these formats.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///  Note: This extension is only available to WebGL 2 contexts.
///
@JS('EXT_texture_norm16')
@staticInterop
class EXTTextureNorm16 {
  @JS('R16_EXT')
  external static int get r16Ext;

  @JS('RG16_EXT')
  external static int get rg16Ext;

  @JS('RGB16_EXT')
  external static int get rgb16Ext;

  @JS('RGBA16_EXT')
  external static int get rgba16Ext;

  @JS('R16_SNORM_EXT')
  external static int get r16SnormExt;

  @JS('RG16_SNORM_EXT')
  external static int get rg16SnormExt;

  @JS('RGB16_SNORM_EXT')
  external static int get rgb16SnormExt;

  @JS('RGBA16_SNORM_EXT')
  external static int get rgba16SnormExt;

  external factory EXTTextureNorm16();
}
