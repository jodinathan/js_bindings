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

@JS()
@staticInterop
class XRDepthInformation {
  external XRDepthInformation();
}

extension PropsXRDepthInformation on XRDepthInformation {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  XRRigidTransform get normDepthBufferFromNormView =>
      js_util.getProperty(this, 'normDepthBufferFromNormView');
  double get rawValueToMeters => js_util.getProperty(this, 'rawValueToMeters');
}

@JS()
@staticInterop
class XRCPUDepthInformation implements XRDepthInformation {
  external XRCPUDepthInformation();
}

extension PropsXRCPUDepthInformation on XRCPUDepthInformation {
  ByteBuffer get data => js_util.getProperty(this, 'data');
  double getDepthInMeters(double x, double y) =>
      js_util.callMethod(this, 'getDepthInMeters', [x, y]);
}

@JS()
@staticInterop
class XRWebGLDepthInformation implements XRDepthInformation {
  external XRWebGLDepthInformation();
}

extension PropsXRWebGLDepthInformation on XRWebGLDepthInformation {
  WebGLTexture get texture => js_util.getProperty(this, 'texture');
}
