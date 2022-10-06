/// WebXR Depth Sensing Module
///
/// https://immersive-web.github.io/depth-sensing/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr_depth_sensing_1;

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
  external factory XRDepthStateInit._(
      {required Iterable<String> usagePreference,
      required Iterable<String> dataFormatPreference});

  factory XRDepthStateInit(
          {required Iterable<XRDepthUsage> usagePreference,
          required Iterable<XRDepthDataFormat> dataFormatPreference}) =>
      XRDepthStateInit._(
          usagePreference: usagePreference.names,
          dataFormatPreference: dataFormatPreference.names);
}

extension PropsXRDepthStateInit on XRDepthStateInit {
  Iterable<XRDepthUsage> get usagePreference =>
      XRDepthUsage.values.byNames(js_util.getProperty(this, 'usagePreference'));
  set usagePreference(Iterable<XRDepthUsage> newValue) {
    js_util.setProperty(this, 'usagePreference', newValue.names);
  }

  Iterable<XRDepthDataFormat> get dataFormatPreference =>
      XRDepthDataFormat.values
          .byNames(js_util.getProperty(this, 'dataFormatPreference'));
  set dataFormatPreference(Iterable<XRDepthDataFormat> newValue) {
    js_util.setProperty(this, 'dataFormatPreference', newValue.names);
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
  external factory XRDepthInformation();
}

extension PropsXRDepthInformation on XRDepthInformation {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  XRRigidTransform get normDepthBufferFromNormView =>
      js_util.getProperty(this, 'normDepthBufferFromNormView');
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
  external factory XRCPUDepthInformation();
}

extension PropsXRCPUDepthInformation on XRCPUDepthInformation {
  ByteBuffer get data => js_util.getProperty(this, 'data');
  double getDepthInMeters(double x, double y) =>
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
  external factory XRWebGLDepthInformation();
}

extension PropsXRWebGLDepthInformation on XRWebGLDepthInformation {
  WebGLTexture get texture => js_util.getProperty(this, 'texture');
}
