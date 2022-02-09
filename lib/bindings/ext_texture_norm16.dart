/// WebGL EXT_texture_norm16 Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_norm16/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_texture_norm16;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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

  external EXTTextureNorm16();
}
