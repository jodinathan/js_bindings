/// WebXR Depth Sensing Module
///
/// https://immersive-web.github.io/depth-sensing/
@JS('window')
library depth_sensing;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';
import 'webgl1.dart';
import 'webxrlayers_1.dart';

@JS()
enum XRDepthUsage {
  @JS('cpu-optimized')
  cpuOptimized,
  @JS('gpu-optimized')
  gpuOptimized
}

@JS()
enum XRDepthDataFormat {
  @JS('luminance-alpha')
  luminanceAlpha,
  float32
}

@anonymous
@JS()
class XRDepthStateInit {
  external Iterable<XRDepthUsage> get usagePreference;
  external set usagePreference(Iterable<XRDepthUsage> newValue);
  external Iterable<XRDepthDataFormat> get dataFormatPreference;
  external set dataFormatPreference(Iterable<XRDepthDataFormat> newValue);

  external factory XRDepthStateInit(
      {Iterable<XRDepthUsage> usagePreference,
      Iterable<XRDepthDataFormat> dataFormatPreference});
}

@JS()
class XRDepthInformation {
  external int get width;
  external int get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external double get rawValueToMeters;

  external factory XRDepthInformation();
}

@JS()
class XRCPUDepthInformation extends XRDepthInformation {
  external ByteBuffer get data;
  external double getDepthInMeters(double x, double y);

  external factory XRCPUDepthInformation();
}

@JS()
class XRWebGLDepthInformation extends XRDepthInformation {
  external WebGLTexture get texture;

  external factory XRWebGLDepthInformation();
}
