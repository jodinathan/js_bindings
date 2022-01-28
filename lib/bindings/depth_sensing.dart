/// WebXR Depth Sensing Module
///
/// https://immersive-web.github.io/depth-sensing/
@JS('window')
@staticInterop
library depth_sensing;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webxr
webgl1
webxrlayers_1 */

enum XRDepthUsage { cpuOptimized, gpuOptimized }

enum XRDepthDataFormat { luminanceAlpha, float32 }

@anonymous
@JS()
@staticInterop
class XRDepthStateInit {
  external factory XRDepthStateInit(
      {Iterable<XRDepthUsage> usagePreference,
      Iterable<XRDepthDataFormat> dataFormatPreference});
}

extension PropsXRDepthStateInit on XRDepthStateInit {
  external Iterable<XRDepthUsage> get usagePreference;
  external set usagePreference(Iterable<XRDepthUsage> newValue);
  external Iterable<XRDepthDataFormat> get dataFormatPreference;
  external set dataFormatPreference(Iterable<XRDepthDataFormat> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface contains information about the distance from the
/// user’s device to the real-world geometry in the user’s
/// environment.
/// This interface is the parent of:
///
///  [XRCPUDepthInformation]
///
///    Depth information from the CPU (returned by
/// [XRFrame.getDepthInformation()]).
///
///  [XRWebGLDepthInformation]
///
///    Depth information from WebGL (returned by
/// [XRWebGLBinding.getDepthInformation()]).
///
///
///  You will usually interact with these child interfaces. However,
/// provides some useful properties that are inherited:
@JS()
@staticInterop
class XRDepthInformation {
  external factory XRDepthInformation();
}

extension PropsXRDepthInformation on XRDepthInformation {
  /// Contains the width of the depth buffer (number of columns).
  ///
  external int get width;

  /// Contains the height of the depth buffer (number of rows).
  ///
  external int get height;

  ///  An [XRRigidTransform] that needs to be applied when indexing
  /// into the depth buffer. The transformation that the matrix
  /// represents changes the coordinate system from normalized view
  /// coordinates to normalized depth-buffer coordinates that can then
  /// be scaled by depth buffer’s [width] and [height] to obtain the
  /// absolute depth-buffer coordinates.
  ///
  external XRRigidTransform get normDepthBufferFromNormView;

  ///  Contains the scale factor by which the raw depth values must be
  /// multiplied in order to get the depths in meters.
  ///
  external double get rawValueToMeters;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface contains depth information from the CPU (returned
/// by [XRFrame.getDepthInformation()]).
///
///
///
///    XRDepthInformation
///
///
///
///
///
///    XRCPUDepthInformation
///
///
///  This interface inherits properties from its parent,
/// [XRDepthInformation].
@JS()
@staticInterop
class XRCPUDepthInformation implements XRDepthInformation {
  external factory XRCPUDepthInformation();
}

extension PropsXRCPUDepthInformation on XRCPUDepthInformation {
  ///  An [ArrayBuffer] containing depth-buffer information in raw
  /// format.
  ///
  external ByteBuffer get data;

  ///  Returns the depth in meters at (x, y) in normalized view
  /// coordinates.
  ///
  /// getDepthInMeters(x, y)
  ///
  external double getDepthInMeters(double x, double y);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface contains depth information from the GPU/WebGL
/// (returned by [XRWebGLBinding.getDepthInformation()]).
///
///
///
///    XRDepthInformation
///
///
///
///
///
///    XRWebGLDepthInformation
///
///
///  This interface inherits properties from its parent,
/// [XRDepthInformation].
@JS()
@staticInterop
class XRWebGLDepthInformation implements XRDepthInformation {
  external factory XRWebGLDepthInformation();
}

extension PropsXRWebGLDepthInformation on XRWebGLDepthInformation {
  ///  A [WebGLTexture] containing depth buffer information as an
  /// opaque texture.
  ///
  external WebGLTexture get texture;
}
