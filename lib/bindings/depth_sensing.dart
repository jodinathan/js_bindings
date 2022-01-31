/// WebXR Depth Sensing Module
///
/// https://immersive-web.github.io/depth-sensing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library depth_sensing;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

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
  Iterable<XRDepthUsage> get usagePreference =>
      js_util.getProperty(this, 'usagePreference');
  set usagePreference(Iterable<XRDepthUsage> newValue) {
    js_util.setProperty(this, 'usagePreference', newValue);
  }

  Iterable<XRDepthDataFormat> get dataFormatPreference =>
      js_util.getProperty(this, 'dataFormatPreference');
  set dataFormatPreference(Iterable<XRDepthDataFormat> newValue) {
    js_util.setProperty(this, 'dataFormatPreference', newValue);
  }
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
  external XRDepthInformation();
}

extension PropsXRDepthInformation on XRDepthInformation {
  /// Contains the width of the depth buffer (number of columns).
  ///
  int get width => js_util.getProperty(this, 'width');

  /// Contains the height of the depth buffer (number of rows).
  ///
  int get height => js_util.getProperty(this, 'height');

  ///  An [XRRigidTransform] that needs to be applied when indexing
  /// into the depth buffer. The transformation that the matrix
  /// represents changes the coordinate system from normalized view
  /// coordinates to normalized depth-buffer coordinates that can then
  /// be scaled by depth buffer’s [width] and [height] to obtain the
  /// absolute depth-buffer coordinates.
  ///
  XRRigidTransform get normDepthBufferFromNormView =>
      js_util.getProperty(this, 'normDepthBufferFromNormView');

  ///  Contains the scale factor by which the raw depth values must be
  /// multiplied in order to get the depths in meters.
  ///
  double get rawValueToMeters => js_util.getProperty(this, 'rawValueToMeters');
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
  external XRCPUDepthInformation();
}

extension PropsXRCPUDepthInformation on XRCPUDepthInformation {
  ///  An [ArrayBuffer] containing depth-buffer information in raw
  /// format.
  ///
  ByteBuffer get data => js_util.getProperty(this, 'data');

  ///  Returns the depth in meters at (x, y) in normalized view
  /// coordinates.
  ///
  /// getDepthInMeters(x, y)
  ///
  double getDepthInMeters(

          /// X coordinate (origin at the left, grows to the right).
          ///
          double x,

          /// Y coordinate (origin at the top, grows downward).
          ///
          double y) =>
      js_util.callMethod(this, 'getDepthInMeters', [x, y]);
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
  external XRWebGLDepthInformation();
}

extension PropsXRWebGLDepthInformation on XRWebGLDepthInformation {
  ///  A [WebGLTexture] containing depth buffer information as an
  /// opaque texture.
  ///
  WebGLTexture get texture => js_util.getProperty(this, 'texture');
}
