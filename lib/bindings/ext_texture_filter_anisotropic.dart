/// WebGL EXT_texture_filter_anisotropic Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_texture_filter_anisotropic;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_texture_filter_anisotropic')
@staticInterop
class EXTTextureFilterAnisotropic {
  @JS('TEXTURE_MAX_ANISOTROPY_EXT')
  external static int get textureMaxAnisotropyExt;

  @JS('MAX_TEXTURE_MAX_ANISOTROPY_EXT')
  external static int get maxTextureMaxAnisotropyExt;

  external EXTTextureFilterAnisotropic();
}
