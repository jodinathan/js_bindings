/// WebGL WEBGL_compressed_texture_pvrtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_pvrtc/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl_compressed_texture_pvrtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The extension is part of the WebGL API and exposes four PVRTC
/// compressed texture formats.
///  Compressed textures reduce the amount of memory needed to store
/// a texture on the GPU, allowing for higher resolution textures or
/// more of the same resolution textures.
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///
///
///    Note: PVRTC is typically only available on mobile devices with
/// PowerVR chipsets.
///    It is used in all generations of the iPhone, iPod Touch and
/// iPad and supported on certain Android devices that use a PowerVR
/// GPU.
///
///   This extension is available to both, WebGL1 and WebGL2
/// contexts.
///   Note: On iOS devices, this extension is named
/// [WEBKIT_WEBGL_compressed_texture_pvrtc].
///
@JS('WEBGL_compressed_texture_pvrtc')
@staticInterop
class WEBGLCompressedTexturePvrtc {
  @JS('COMPRESSED_RGB_PVRTC_4BPPV1_IMG')
  external static int get compressedRgbPvrtc4bppv1Img;

  @JS('COMPRESSED_RGB_PVRTC_2BPPV1_IMG')
  external static int get compressedRgbPvrtc2bppv1Img;

  @JS('COMPRESSED_RGBA_PVRTC_4BPPV1_IMG')
  external static int get compressedRgbaPvrtc4bppv1Img;

  @JS('COMPRESSED_RGBA_PVRTC_2BPPV1_IMG')
  external static int get compressedRgbaPvrtc2bppv1Img;

  external factory WEBGLCompressedTexturePvrtc();
}
