/// WebGL WEBGL_compressed_texture_pvrtc Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_pvrtc/
@JS('window')
@staticInterop
library w_e_b_g_l_compressed_texture_pvrtc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

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
@JS()
@staticInterop
class WEBGL_compressed_texture_pvrtc {
  external static int get COMPRESSED_RGB_PVRTC_4BPPV1_IMG;
  external static int get COMPRESSED_RGB_PVRTC_2BPPV1_IMG;
  external static int get COMPRESSED_RGBA_PVRTC_4BPPV1_IMG;
  external static int get COMPRESSED_RGBA_PVRTC_2BPPV1_IMG;
  external WEBGL_compressed_texture_pvrtc();
}
