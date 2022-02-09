/// WebXR Layers API Level 1
///
/// https://immersive-web.github.io/layers/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxrlayers_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum XRLayerLayout {
  valueDefault,
  mono,
  stereo,
  stereoLeftRight,
  stereoTopBottom
}

@JS()
@staticInterop
class XRCompositionLayer implements XRLayer {
  external XRCompositionLayer();
}

extension PropsXRCompositionLayer on XRCompositionLayer {
  XRLayerLayout get layout =>
      XRLayerLayout.values.byName(js_util.getProperty(this, 'layout'));
  bool get blendTextureSourceAlpha =>
      js_util.getProperty(this, 'blendTextureSourceAlpha');
  set blendTextureSourceAlpha(bool newValue) {
    js_util.setProperty(this, 'blendTextureSourceAlpha', newValue);
  }

  bool? get chromaticAberrationCorrection =>
      js_util.getProperty(this, 'chromaticAberrationCorrection');
  set chromaticAberrationCorrection(bool? newValue) {
    js_util.setProperty(this, 'chromaticAberrationCorrection', newValue);
  }

  int get mipLevels => js_util.getProperty(this, 'mipLevels');
  bool get needsRedraw => js_util.getProperty(this, 'needsRedraw');
  Object destroy() => js_util.callMethod(this, 'destroy', []);
}

@JS()
@staticInterop
class XRProjectionLayer implements XRCompositionLayer {
  external XRProjectionLayer();
}

extension PropsXRProjectionLayer on XRProjectionLayer {
  int get textureWidth => js_util.getProperty(this, 'textureWidth');
  int get textureHeight => js_util.getProperty(this, 'textureHeight');
  int get textureArrayLength => js_util.getProperty(this, 'textureArrayLength');
  bool get ignoreDepthValues => js_util.getProperty(this, 'ignoreDepthValues');
  double? get fixedFoveation => js_util.getProperty(this, 'fixedFoveation');
  set fixedFoveation(double? newValue) {
    js_util.setProperty(this, 'fixedFoveation', newValue);
  }
}

@JS()
@staticInterop
class XRQuadLayer implements XRCompositionLayer {
  external XRQuadLayer();
}

extension PropsXRQuadLayer on XRQuadLayer {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  double get height => js_util.getProperty(this, 'height');
  set height(double newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
}

@JS()
@staticInterop
class XRCylinderLayer implements XRCompositionLayer {
  external XRCylinderLayer();
}

extension PropsXRCylinderLayer on XRCylinderLayer {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralAngle => js_util.getProperty(this, 'centralAngle');
  set centralAngle(double newValue) {
    js_util.setProperty(this, 'centralAngle', newValue);
  }

  double get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(double newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
}

@JS()
@staticInterop
class XREquirectLayer implements XRCompositionLayer {
  external XREquirectLayer();
}

extension PropsXREquirectLayer on XREquirectLayer {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralHorizontalAngle =>
      js_util.getProperty(this, 'centralHorizontalAngle');
  set centralHorizontalAngle(double newValue) {
    js_util.setProperty(this, 'centralHorizontalAngle', newValue);
  }

  double get upperVerticalAngle =>
      js_util.getProperty(this, 'upperVerticalAngle');
  set upperVerticalAngle(double newValue) {
    js_util.setProperty(this, 'upperVerticalAngle', newValue);
  }

  double get lowerVerticalAngle =>
      js_util.getProperty(this, 'lowerVerticalAngle');
  set lowerVerticalAngle(double newValue) {
    js_util.setProperty(this, 'lowerVerticalAngle', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
}

@JS()
@staticInterop
class XRCubeLayer implements XRCompositionLayer {
  external XRCubeLayer();
}

extension PropsXRCubeLayer on XRCubeLayer {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  DOMPointReadOnly get orientation => js_util.getProperty(this, 'orientation');
  set orientation(DOMPointReadOnly newValue) {
    js_util.setProperty(this, 'orientation', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
}

@JS()
@staticInterop
class XRSubImage {
  external XRSubImage();
}

extension PropsXRSubImage on XRSubImage {
  XRViewport get viewport => js_util.getProperty(this, 'viewport');
}

@JS()
@staticInterop
class XRWebGLSubImage implements XRSubImage {
  external XRWebGLSubImage();
}

extension PropsXRWebGLSubImage on XRWebGLSubImage {
  WebGLTexture get colorTexture => js_util.getProperty(this, 'colorTexture');
  WebGLTexture? get depthStencilTexture =>
      js_util.getProperty(this, 'depthStencilTexture');
  int? get imageIndex => js_util.getProperty(this, 'imageIndex');
  int get textureWidth => js_util.getProperty(this, 'textureWidth');
  int get textureHeight => js_util.getProperty(this, 'textureHeight');
}

enum XRTextureType { texture, textureArray }

@anonymous
@JS()
@staticInterop
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit._(
      {String? textureType,
      int? colorFormat = 0x1908,
      int? depthFormat = 0x1902,
      double? scaleFactor = 1.0});

  factory XRProjectionLayerInit(
          {XRTextureType? textureType = XRTextureType.texture,
          int? colorFormat = 0x1908,
          int? depthFormat = 0x1902,
          double? scaleFactor = 1.0}) =>
      XRProjectionLayerInit._(
          textureType: textureType?.name,
          colorFormat: colorFormat,
          depthFormat: depthFormat,
          scaleFactor: scaleFactor);
}

extension PropsXRProjectionLayerInit on XRProjectionLayerInit {
  XRTextureType get textureType =>
      XRTextureType.values.byName(js_util.getProperty(this, 'textureType'));
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue.name);
  }

  int get colorFormat => js_util.getProperty(this, 'colorFormat');
  set colorFormat(int newValue) {
    js_util.setProperty(this, 'colorFormat', newValue);
  }

  int get depthFormat => js_util.getProperty(this, 'depthFormat');
  set depthFormat(int newValue) {
    js_util.setProperty(this, 'depthFormat', newValue);
  }

  double get scaleFactor => js_util.getProperty(this, 'scaleFactor');
  set scaleFactor(double newValue) {
    js_util.setProperty(this, 'scaleFactor', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRLayerInit {
  external factory XRLayerInit._(
      {required XRSpace space,
      int? colorFormat = 0x1908,
      int? depthFormat,
      int? mipLevels = 1,
      int? viewPixelWidth,
      int? viewPixelHeight,
      String? layout,
      bool? isStatic = false});

  factory XRLayerInit(
          {required XRSpace space,
          int? colorFormat = 0x1908,
          int? depthFormat,
          int? mipLevels = 1,
          int? viewPixelWidth,
          int? viewPixelHeight,
          XRLayerLayout? layout = XRLayerLayout.mono,
          bool? isStatic = false}) =>
      XRLayerInit._(
          space: space,
          colorFormat: colorFormat,
          depthFormat: depthFormat,
          mipLevels: mipLevels,
          viewPixelWidth: viewPixelWidth,
          viewPixelHeight: viewPixelHeight,
          layout: layout?.name,
          isStatic: isStatic);
}

extension PropsXRLayerInit on XRLayerInit {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  int get colorFormat => js_util.getProperty(this, 'colorFormat');
  set colorFormat(int newValue) {
    js_util.setProperty(this, 'colorFormat', newValue);
  }

  int? get depthFormat => js_util.getProperty(this, 'depthFormat');
  set depthFormat(int? newValue) {
    js_util.setProperty(this, 'depthFormat', newValue);
  }

  int get mipLevels => js_util.getProperty(this, 'mipLevels');
  set mipLevels(int newValue) {
    js_util.setProperty(this, 'mipLevels', newValue);
  }

  int get viewPixelWidth => js_util.getProperty(this, 'viewPixelWidth');
  set viewPixelWidth(int newValue) {
    js_util.setProperty(this, 'viewPixelWidth', newValue);
  }

  int get viewPixelHeight => js_util.getProperty(this, 'viewPixelHeight');
  set viewPixelHeight(int newValue) {
    js_util.setProperty(this, 'viewPixelHeight', newValue);
  }

  XRLayerLayout get layout =>
      XRLayerLayout.values.byName(js_util.getProperty(this, 'layout'));
  set layout(XRLayerLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
  }

  bool get isStatic => js_util.getProperty(this, 'isStatic');
  set isStatic(bool newValue) {
    js_util.setProperty(this, 'isStatic', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRQuadLayerInit implements XRLayerInit {
  external factory XRQuadLayerInit._(
      {String? textureType,
      XRRigidTransform? transform,
      double? width = 1.0,
      double? height = 1.0});

  factory XRQuadLayerInit(
          {XRTextureType? textureType = XRTextureType.texture,
          XRRigidTransform? transform,
          double? width = 1.0,
          double? height = 1.0}) =>
      XRQuadLayerInit._(
          textureType: textureType?.name,
          transform: transform,
          width: width,
          height: height);
}

extension PropsXRQuadLayerInit on XRQuadLayerInit {
  XRTextureType get textureType =>
      XRTextureType.values.byName(js_util.getProperty(this, 'textureType'));
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue.name);
  }

  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  double get height => js_util.getProperty(this, 'height');
  set height(double newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRCylinderLayerInit implements XRLayerInit {
  external factory XRCylinderLayerInit._(
      {String? textureType,
      XRRigidTransform? transform,
      double? radius = 2.0,
      double? centralAngle = 0.78539,
      double? aspectRatio = 2.0});

  factory XRCylinderLayerInit(
          {XRTextureType? textureType = XRTextureType.texture,
          XRRigidTransform? transform,
          double? radius = 2.0,
          double? centralAngle = 0.78539,
          double? aspectRatio = 2.0}) =>
      XRCylinderLayerInit._(
          textureType: textureType?.name,
          transform: transform,
          radius: radius,
          centralAngle: centralAngle,
          aspectRatio: aspectRatio);
}

extension PropsXRCylinderLayerInit on XRCylinderLayerInit {
  XRTextureType get textureType =>
      XRTextureType.values.byName(js_util.getProperty(this, 'textureType'));
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue.name);
  }

  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralAngle => js_util.getProperty(this, 'centralAngle');
  set centralAngle(double newValue) {
    js_util.setProperty(this, 'centralAngle', newValue);
  }

  double get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(double newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XREquirectLayerInit implements XRLayerInit {
  external factory XREquirectLayerInit._(
      {String? textureType,
      XRRigidTransform? transform,
      double? radius = 0,
      double? centralHorizontalAngle = 6.28318,
      double? upperVerticalAngle = 1.570795,
      double? lowerVerticalAngle = -1.570795});

  factory XREquirectLayerInit(
          {XRTextureType? textureType = XRTextureType.texture,
          XRRigidTransform? transform,
          double? radius = 0,
          double? centralHorizontalAngle = 6.28318,
          double? upperVerticalAngle = 1.570795,
          double? lowerVerticalAngle = -1.570795}) =>
      XREquirectLayerInit._(
          textureType: textureType?.name,
          transform: transform,
          radius: radius,
          centralHorizontalAngle: centralHorizontalAngle,
          upperVerticalAngle: upperVerticalAngle,
          lowerVerticalAngle: lowerVerticalAngle);
}

extension PropsXREquirectLayerInit on XREquirectLayerInit {
  XRTextureType get textureType =>
      XRTextureType.values.byName(js_util.getProperty(this, 'textureType'));
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue.name);
  }

  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralHorizontalAngle =>
      js_util.getProperty(this, 'centralHorizontalAngle');
  set centralHorizontalAngle(double newValue) {
    js_util.setProperty(this, 'centralHorizontalAngle', newValue);
  }

  double get upperVerticalAngle =>
      js_util.getProperty(this, 'upperVerticalAngle');
  set upperVerticalAngle(double newValue) {
    js_util.setProperty(this, 'upperVerticalAngle', newValue);
  }

  double get lowerVerticalAngle =>
      js_util.getProperty(this, 'lowerVerticalAngle');
  set lowerVerticalAngle(double newValue) {
    js_util.setProperty(this, 'lowerVerticalAngle', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRCubeLayerInit implements XRLayerInit {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

extension PropsXRCubeLayerInit on XRCubeLayerInit {
  DOMPointReadOnly? get orientation => js_util.getProperty(this, 'orientation');
  set orientation(DOMPointReadOnly? newValue) {
    js_util.setProperty(this, 'orientation', newValue);
  }
}

@JS()
@staticInterop
class XRWebGLBinding {
  external XRWebGLBinding(XRSession session, dynamic context);
}

extension PropsXRWebGLBinding on XRWebGLBinding {
  double get nativeProjectionScaleFactor =>
      js_util.getProperty(this, 'nativeProjectionScaleFactor');
  bool get usesDepthValues => js_util.getProperty(this, 'usesDepthValues');
  XRProjectionLayer createProjectionLayer([XRProjectionLayerInit? init]) =>
      js_util.callMethod(this, 'createProjectionLayer', [init]);

  XRQuadLayer createQuadLayer([XRQuadLayerInit? init]) =>
      js_util.callMethod(this, 'createQuadLayer', [init]);

  XRCylinderLayer createCylinderLayer([XRCylinderLayerInit? init]) =>
      js_util.callMethod(this, 'createCylinderLayer', [init]);

  XREquirectLayer createEquirectLayer([XREquirectLayerInit? init]) =>
      js_util.callMethod(this, 'createEquirectLayer', [init]);

  XRCubeLayer createCubeLayer([XRCubeLayerInit? init]) =>
      js_util.callMethod(this, 'createCubeLayer', [init]);

  XRWebGLSubImage getSubImage(XRCompositionLayer layer, XRFrame frame,
          [XREye? eye = XREye.none]) =>
      js_util.callMethod(this, 'getSubImage', [layer, frame, eye?.name]);

  XRWebGLSubImage getViewSubImage(XRProjectionLayer layer, XRView view) =>
      js_util.callMethod(this, 'getViewSubImage', [layer, view]);

  WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe) =>
      js_util.callMethod(this, 'getReflectionCubeMap', [lightProbe]);

  XRWebGLDepthInformation? getDepthInformation(XRView view) =>
      js_util.callMethod(this, 'getDepthInformation', [view]);
}

@anonymous
@JS()
@staticInterop
class XRMediaLayerInit {
  external factory XRMediaLayerInit._(
      {required XRSpace space, String? layout, bool? invertStereo = false});

  factory XRMediaLayerInit(
          {required XRSpace space,
          XRLayerLayout? layout = XRLayerLayout.mono,
          bool? invertStereo = false}) =>
      XRMediaLayerInit._(
          space: space, layout: layout?.name, invertStereo: invertStereo);
}

extension PropsXRMediaLayerInit on XRMediaLayerInit {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  XRLayerLayout get layout =>
      XRLayerLayout.values.byName(js_util.getProperty(this, 'layout'));
  set layout(XRLayerLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
  }

  bool get invertStereo => js_util.getProperty(this, 'invertStereo');
  set invertStereo(bool newValue) {
    js_util.setProperty(this, 'invertStereo', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRMediaQuadLayerInit implements XRMediaLayerInit {
  external factory XRMediaQuadLayerInit(
      {XRRigidTransform? transform, double? width, double? height});
}

extension PropsXRMediaQuadLayerInit on XRMediaQuadLayerInit {
  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double? get width => js_util.getProperty(this, 'width');
  set width(double? newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  double? get height => js_util.getProperty(this, 'height');
  set height(double? newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRMediaCylinderLayerInit implements XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit(
      {XRRigidTransform? transform,
      double? radius = 2.0,
      double? centralAngle = 0.78539,
      double? aspectRatio});
}

extension PropsXRMediaCylinderLayerInit on XRMediaCylinderLayerInit {
  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralAngle => js_util.getProperty(this, 'centralAngle');
  set centralAngle(double newValue) {
    js_util.setProperty(this, 'centralAngle', newValue);
  }

  double? get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(double? newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRMediaEquirectLayerInit implements XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit(
      {XRRigidTransform? transform,
      double? radius = 0.0,
      double? centralHorizontalAngle = 6.28318,
      double? upperVerticalAngle = 1.570795,
      double? lowerVerticalAngle = -1.570795});
}

extension PropsXRMediaEquirectLayerInit on XRMediaEquirectLayerInit {
  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  double get centralHorizontalAngle =>
      js_util.getProperty(this, 'centralHorizontalAngle');
  set centralHorizontalAngle(double newValue) {
    js_util.setProperty(this, 'centralHorizontalAngle', newValue);
  }

  double get upperVerticalAngle =>
      js_util.getProperty(this, 'upperVerticalAngle');
  set upperVerticalAngle(double newValue) {
    js_util.setProperty(this, 'upperVerticalAngle', newValue);
  }

  double get lowerVerticalAngle =>
      js_util.getProperty(this, 'lowerVerticalAngle');
  set lowerVerticalAngle(double newValue) {
    js_util.setProperty(this, 'lowerVerticalAngle', newValue);
  }
}

@JS()
@staticInterop
class XRMediaBinding {
  external XRMediaBinding(XRSession session);
}

extension PropsXRMediaBinding on XRMediaBinding {
  XRQuadLayer createQuadLayer(HTMLVideoElement video,
          [XRMediaQuadLayerInit? init]) =>
      js_util.callMethod(this, 'createQuadLayer', [video, init]);

  XRCylinderLayer createCylinderLayer(HTMLVideoElement video,
          [XRMediaCylinderLayerInit? init]) =>
      js_util.callMethod(this, 'createCylinderLayer', [video, init]);

  XREquirectLayer createEquirectLayer(HTMLVideoElement video,
          [XRMediaEquirectLayerInit? init]) =>
      js_util.callMethod(this, 'createEquirectLayer', [video, init]);
}

@JS()
@staticInterop
class XRLayerEvent implements Event {
  external XRLayerEvent(String type, XRLayerEventInit eventInitDict);
}

extension PropsXRLayerEvent on XRLayerEvent {
  XRLayer get layer => js_util.getProperty(this, 'layer');
}

@anonymous
@JS()
@staticInterop
class XRLayerEventInit implements EventInit {
  external factory XRLayerEventInit({required XRLayer layer});
}

extension PropsXRLayerEventInit on XRLayerEventInit {
  XRLayer get layer => js_util.getProperty(this, 'layer');
  set layer(XRLayer newValue) {
    js_util.setProperty(this, 'layer', newValue);
  }
}
