/// WebXR Layers API Level 1
///
/// https://immersive-web.github.io/layers/
@JS('window')
library webxrlayers_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';
import 'html.dart';
import 'geometry_1.dart';
import 'webgl1.dart';
import 'dom.dart';
import 'depth_sensing.dart';
import 'lighting_estimation.dart';

@JS()
enum XRLayerLayout {
  @JS('default')
  valueDefault,
  mono,
  stereo,
  @JS('stereo-left-right')
  stereoLeftRight,
  @JS('stereo-top-bottom')
  stereoTopBottom
}

@JS()
class XRCompositionLayer extends XRLayer {
  external XRLayerLayout get layout;
  external bool get blendTextureSourceAlpha;
  external set blendTextureSourceAlpha(bool newValue);
  external bool? get chromaticAberrationCorrection;
  external set chromaticAberrationCorrection(bool? newValue);
  external int get mipLevels;
  external bool get needsRedraw;
  external Object destroy();

  external factory XRCompositionLayer();
}

@JS()
class XRProjectionLayer extends XRCompositionLayer {
  external int get textureWidth;
  external int get textureHeight;
  external int get textureArrayLength;
  external bool get ignoreDepthValues;
  external double? get fixedFoveation;
  external set fixedFoveation(double? newValue);

  external factory XRProjectionLayer();
}

@JS()
class XRQuadLayer extends XRCompositionLayer {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);
  external double get width;
  external set width(double newValue);
  external double get height;
  external set height(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);

  external factory XRQuadLayer();
}

@JS()
class XRCylinderLayer extends XRCompositionLayer {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralAngle;
  external set centralAngle(double newValue);
  external double get aspectRatio;
  external set aspectRatio(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);

  external factory XRCylinderLayer();
}

@JS()
class XREquirectLayer extends XRCompositionLayer {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(double newValue);
  external double get upperVerticalAngle;
  external set upperVerticalAngle(double newValue);
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);

  external factory XREquirectLayer();
}

@JS()
class XRCubeLayer extends XRCompositionLayer {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external DOMPointReadOnly get orientation;
  external set orientation(DOMPointReadOnly newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);

  external factory XRCubeLayer();
}

@JS()
class XRSubImage {
  external XRViewport get viewport;

  external factory XRSubImage();
}

@JS()
class XRWebGLSubImage extends XRSubImage {
  external WebGLTexture get colorTexture;
  external WebGLTexture? get depthStencilTexture;
  external int? get imageIndex;
  external int get textureWidth;
  external int get textureHeight;

  external factory XRWebGLSubImage();
}

@JS()
enum XRTextureType {
  texture,
  @JS('texture-array')
  textureArray
}

@anonymous
@JS()
class XRProjectionLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external int get colorFormat;
  external set colorFormat(int newValue);
  external int get depthFormat;
  external set depthFormat(int newValue);
  external double get scaleFactor;
  external set scaleFactor(double newValue);

  external factory XRProjectionLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      int colorFormat = 0x1908,
      int depthFormat = 0x1902,
      double scaleFactor = 1.0});
}

@anonymous
@JS()
class XRLayerInit {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external int get colorFormat;
  external set colorFormat(int newValue);
  external int? get depthFormat;
  external set depthFormat(int? newValue);
  external int get mipLevels;
  external set mipLevels(int newValue);
  external int get viewPixelWidth;
  external set viewPixelWidth(int newValue);
  external int get viewPixelHeight;
  external set viewPixelHeight(int newValue);
  external XRLayerLayout get layout;
  external set layout(XRLayerLayout newValue);
  external bool get isStatic;
  external set isStatic(bool newValue);

  external factory XRLayerInit(
      {XRSpace space,
      int colorFormat = 0x1908,
      int? depthFormat,
      int mipLevels = 1,
      int viewPixelWidth,
      int viewPixelHeight,
      XRLayerLayout layout = XRLayerLayout.mono,
      bool isStatic = false});
}

@anonymous
@JS()
class XRQuadLayerInit extends XRLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get width;
  external set width(double newValue);
  external double get height;
  external set height(double newValue);

  external factory XRQuadLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double width = 1.0,
      double height = 1.0});
}

@anonymous
@JS()
class XRCylinderLayerInit extends XRLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralAngle;
  external set centralAngle(double newValue);
  external double get aspectRatio;
  external set aspectRatio(double newValue);

  external factory XRCylinderLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double radius = 2.0,
      double centralAngle = 0.78539,
      double aspectRatio = 2.0});
}

@anonymous
@JS()
class XREquirectLayerInit extends XRLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(double newValue);
  external double get upperVerticalAngle;
  external set upperVerticalAngle(double newValue);
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(double newValue);

  external factory XREquirectLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double radius = 0,
      double centralHorizontalAngle = 6.28318,
      double upperVerticalAngle = 1.570795,
      double lowerVerticalAngle = -1.570795});
}

@anonymous
@JS()
class XRCubeLayerInit extends XRLayerInit {
  external DOMPointReadOnly? get orientation;
  external set orientation(DOMPointReadOnly? newValue);

  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

@JS()
class XRWebGLBinding {
  external factory XRWebGLBinding({XRSession session, dynamic context});
  external double get nativeProjectionScaleFactor;
  external XRProjectionLayer createProjectionLayer(
      [XRProjectionLayerInit? init]);
  external XRQuadLayer createQuadLayer([XRQuadLayerInit? init]);
  external XRCylinderLayer createCylinderLayer([XRCylinderLayerInit? init]);
  external XREquirectLayer createEquirectLayer([XREquirectLayerInit? init]);
  external XRCubeLayer createCubeLayer([XRCubeLayerInit? init]);
  external XRWebGLSubImage getSubImage(XRCompositionLayer layer, XRFrame frame,
      [XREye? eye = XREye.none]);
  external XRWebGLSubImage getViewSubImage(
      XRProjectionLayer layer, XRView view);
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);
}

@anonymous
@JS()
class XRMediaLayerInit {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external XRLayerLayout get layout;
  external set layout(XRLayerLayout newValue);
  external bool get invertStereo;
  external set invertStereo(bool newValue);

  external factory XRMediaLayerInit(
      {XRSpace space,
      XRLayerLayout layout = XRLayerLayout.mono,
      bool invertStereo = false});
}

@anonymous
@JS()
class XRMediaQuadLayerInit extends XRMediaLayerInit {
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double? get width;
  external set width(double? newValue);
  external double? get height;
  external set height(double? newValue);

  external factory XRMediaQuadLayerInit(
      {XRRigidTransform? transform, double? width, double? height});
}

@anonymous
@JS()
class XRMediaCylinderLayerInit extends XRMediaLayerInit {
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralAngle;
  external set centralAngle(double newValue);
  external double? get aspectRatio;
  external set aspectRatio(double? newValue);

  external factory XRMediaCylinderLayerInit(
      {XRRigidTransform? transform,
      double radius = 2.0,
      double centralAngle = 0.78539,
      double? aspectRatio});
}

@anonymous
@JS()
class XRMediaEquirectLayerInit extends XRMediaLayerInit {
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(double newValue);
  external double get upperVerticalAngle;
  external set upperVerticalAngle(double newValue);
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(double newValue);

  external factory XRMediaEquirectLayerInit(
      {XRRigidTransform? transform,
      double radius = 0.0,
      double centralHorizontalAngle = 6.28318,
      double upperVerticalAngle = 1.570795,
      double lowerVerticalAngle = -1.570795});
}

@JS()
class XRMediaBinding {
  external factory XRMediaBinding({XRSession session});
  external XRQuadLayer createQuadLayer(HTMLVideoElement video,
      [XRMediaQuadLayerInit? init]);
  external XRCylinderLayer createCylinderLayer(HTMLVideoElement video,
      [XRMediaCylinderLayerInit? init]);
  external XREquirectLayer createEquirectLayer(HTMLVideoElement video,
      [XRMediaEquirectLayerInit? init]);
}

@JS()
class XRLayerEvent extends Event {
  external factory XRLayerEvent({String type, XRLayerEventInit eventInitDict});
  external XRLayer get layer;
}

@anonymous
@JS()
class XRLayerEventInit extends EventInit {
  external XRLayer get layer;
  external set layer(XRLayer newValue);

  external factory XRLayerEventInit({XRLayer layer});
}
