/// WebXR Layers API Level 1
///
/// https://immersive-web.github.io/layers/
@JS('window')
@staticInterop
library webxrlayers_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webxr
html
geometry_1
webgl1
dom
depth_sensing
lighting_estimation */

enum XRLayerLayout {
  valueDefault,
  mono,
  stereo,
  stereoLeftRight,
  stereoTopBottom
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a base class that
/// defines a set of common properties and behaviors for WebXR layer
/// types. It is not constructable on its own.
/// Several layer types inherit from :
///
///  [XREquirectLayer]
///  [XRCubeLayer]
///  [XRCylinderLayer]
///  [XRProjectionLayer]
///  [XRQuadLayer]
///
///   itself inherits from the general [XRLayer] class (which
/// inherits from [EventTarget]).
@JS()
@staticInterop
class XRCompositionLayer implements XRLayer {
  external factory XRCompositionLayer();
}

extension PropsXRCompositionLayer on XRCompositionLayer {
  /// The layout type of the layer.
  ///
  external XRLayerLayout get layout;

  /// A boolean enabling the layer's texture alpha channel.
  ///
  external bool get blendTextureSourceAlpha;
  external set blendTextureSourceAlpha(bool newValue);

  ///  A boolean enabling optical chromatic aberration correction for
  /// the layer if the device supports it, [null] otherwise.
  ///
  external bool? get chromaticAberrationCorrection;
  external set chromaticAberrationCorrection(bool? newValue);

  ///  The number of mip levels in the color and texture data for the
  /// layer.
  ///
  external int get mipLevels;

  ///  A boolean signaling that the layer should be rerendered in the
  /// next frame.
  ///
  external bool get needsRedraw;

  /// Deletes the underlying layer attachments.
  ///
  /// destroy()
  ///
  external Object destroy();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a layer that fills the
/// entire view of the observer and is refreshed close to the
/// device's native frame rate.
///   is supported by all [XRSession] objects (no [layers] feature
/// descriptor is needed).
///
///   To create a new , call
/// [XRWebGLBinding.createProjectionLayer()].
///   To present layers to the XR device, add them to the [layers]
/// render state using [XRSession.updateRenderState()].
///
///   objects don’t have an associated [XRSpace], because they render
/// to the full frame.
@JS()
@staticInterop
class XRProjectionLayer implements XRCompositionLayer {
  external factory XRProjectionLayer();
}

extension PropsXRProjectionLayer on XRProjectionLayer {
  /// The width in pixels of the color textures of this layer.
  ///
  external int get textureWidth;

  /// The height in pixels of the color textures of this layer.
  ///
  external int get textureHeight;

  ///  The layer's layer count for array textures when using
  /// [texture-array] as the [textureType].
  ///
  external int get textureArrayLength;

  ///  A boolean indicating that the XR compositor is not making use of
  /// depth buffer values when rendering the layer.
  ///
  external bool get ignoreDepthValues;

  ///  A number indicating the amount of foveation used by the XR
  /// compositor for the layer. Fixed Foveated Rendering (FFR) renders
  /// the edges of the eye textures at a lower resolution than the
  /// center and reduces the GPU load.
  ///
  external double? get fixedFoveation;
  external set fixedFoveation(double? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a layer that takes up a
/// flat rectangular space in the virtual environment. An has no
/// thickness. It is a two-dimensional object positioned and oriented
/// in 3D space. The position of a quad refers to the center of the
/// quad. Only the front of the layer is visible.
///   requires the [layers] feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession()].
/// To create a new , call either:
///
///   [XRWebGLBinding.createQuadLayer()] for a WebGL opaque texture
/// quad layer, or
///   [XRMediaBinding.createQuadLayer()] for an HTML [<video>]
/// playback quad layer.
///
///  To present layers to the XR device, add them to the [layers]
/// render state using [XRSession.updateRenderState()].
@JS()
@staticInterop
class XRQuadLayer implements XRCompositionLayer {
  external factory XRQuadLayer();
}

extension PropsXRQuadLayer on XRQuadLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  external XRSpace get space;
  external set space(XRSpace newValue);

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);

  /// Represents the width of the layer in meters.
  ///
  external double get width;
  external set width(double newValue);

  /// Represents the height of the layer in meters.
  ///
  external double get height;
  external set height(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a layer that takes up a
/// curved rectangular space in the virtual environment. Only the
/// front of the layer is visible.
///   requires the [layers] feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession()].
/// To create a new , call either:
///
///   [XRWebGLBinding.createCylinderLayer()] for a WebGL opaque
/// texture layer, or
///   [XRMediaBinding.createCylinderLayer()] for an HTML [<video>]
/// playback layer.
///
///  To present layers to the XR device, add them to the [layers]
/// render state using [XRSession.updateRenderState()].
@JS()
@staticInterop
class XRCylinderLayer implements XRCompositionLayer {
  external factory XRCylinderLayer();
}

extension PropsXRCylinderLayer on XRCylinderLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  external XRSpace get space;
  external set space(XRSpace newValue);

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);

  /// A number indicating the radius of the cylinder.
  ///
  external double get radius;
  external set radius(double newValue);

  ///  A number indicating the angle in radians of the visible section
  /// of the cylinder.
  ///
  external double get centralAngle;
  external set centralAngle(double newValue);

  ///  A number indicating the ratio of the visible cylinder section.
  /// It is the ratio of the width of the visible section of the
  /// cylinder divided by its height. The width is calculated by
  /// multiplying the [radius] with the [centralAngle].
  ///
  external double get aspectRatio;
  external set aspectRatio(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a layer that maps
/// equirectangular coded data onto the inside of a sphere.
///   requires the [layers] feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession()].
/// To create a new , call either:
///
///   [XRWebGLBinding.createEquirectLayer()] for a WebGL opaque
/// texture layer, or
///   [XRMediaBinding.createEquirectLayer()] for an HTML [<video>]
/// playback layer.
///
///  To present layers to the XR device, add them to the [layers]
/// render state using [XRSession.updateRenderState()].
@JS()
@staticInterop
class XREquirectLayer implements XRCompositionLayer {
  external factory XREquirectLayer();
}

extension PropsXREquirectLayer on XREquirectLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  external XRSpace get space;
  external set space(XRSpace newValue);

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  external XRRigidTransform get transform;
  external set transform(XRRigidTransform newValue);

  /// A number indicating the radius of the sphere.
  ///
  external double get radius;
  external set radius(double newValue);

  ///  A number indicating the central horizontal angle in radians for
  /// the sphere.
  ///
  external double get centralHorizontalAngle;
  external set centralHorizontalAngle(double newValue);

  ///  A number indicating the upper vertical angle in radians for the
  /// sphere.
  ///
  external double get upperVerticalAngle;
  external set upperVerticalAngle(double newValue);

  ///  A number indicating the lower vertical angle in radians for the
  /// sphere.
  ///
  external double get lowerVerticalAngle;
  external set lowerVerticalAngle(double newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is a layer that renders
/// directly from a cubemap and projects it onto the inside faces of
/// a cube.
///   requires the [layers] feature to be enabled for the
/// [XRSession]. You can request it in [XRSystem.requestSession()].
/// To create a new , call [XRWebGLBinding.createCubeLayer()].
///  To present layers to the XR device, add them to the [layers]
/// render state using [XRSession.updateRenderState()].
@JS()
@staticInterop
class XRCubeLayer implements XRCompositionLayer {
  external factory XRCubeLayer();
}

extension PropsXRCubeLayer on XRCubeLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  external XRSpace get space;
  external set space(XRSpace newValue);

  ///  A [DOMPointReadOnly] representing the orientation relative to
  /// the [space] property.
  ///
  external DOMPointReadOnly get orientation;
  external set orientation(DOMPointReadOnly newValue);
  external EventHandlerNonNull? get onredraw;
  external set onredraw(EventHandlerNonNull? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API represents what viewport
/// of the GPU texture to use for rendering.
@JS()
@staticInterop
class XRSubImage {
  external factory XRSubImage();
}

extension PropsXRSubImage on XRSubImage {
  /// The [XRViewport] used when rendering the sub image.
  ///
  external XRViewport get viewport;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface is used during rendering of WebGL layers.
@JS()
@staticInterop
class XRWebGLSubImage implements XRSubImage {
  external factory XRWebGLSubImage();
}

extension PropsXRWebGLSubImage on XRWebGLSubImage {
  ///  A color [WebGLTexture] object for the [XRCompositionLayer] to
  /// render.
  ///
  external WebGLTexture get colorTexture;

  ///  A depth/stencil [WebGLTexture] object for the
  /// [XRCompositionLayer] to render.
  ///
  external WebGLTexture? get depthStencilTexture;

  ///  A number representing the offset into the texture array if the
  /// layer was requested with [texture-array]; [null] otherwise.
  ///
  external int? get imageIndex;

  /// A number representing the width in pixels of the GL attachment.
  ///
  external int get textureWidth;

  /// A number representing the height in pixels of the GL attachment.
  ///
  external int get textureHeight;
}

enum XRTextureType { texture, textureArray }

@anonymous
@JS()
@staticInterop
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      int colorFormat = 0x1908,
      int depthFormat = 0x1902,
      double scaleFactor = 1.0});
}

extension PropsXRProjectionLayerInit on XRProjectionLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external int get colorFormat;
  external set colorFormat(int newValue);
  external int get depthFormat;
  external set depthFormat(int newValue);
  external double get scaleFactor;
  external set scaleFactor(double newValue);
}

@anonymous
@JS()
@staticInterop
class XRLayerInit {
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

extension PropsXRLayerInit on XRLayerInit {
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
}

@anonymous
@JS()
@staticInterop
class XRQuadLayerInit implements XRLayerInit {
  external factory XRQuadLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double width = 1.0,
      double height = 1.0});
}

extension PropsXRQuadLayerInit on XRQuadLayerInit {
  external XRTextureType get textureType;
  external set textureType(XRTextureType newValue);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get width;
  external set width(double newValue);
  external double get height;
  external set height(double newValue);
}

@anonymous
@JS()
@staticInterop
class XRCylinderLayerInit implements XRLayerInit {
  external factory XRCylinderLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double radius = 2.0,
      double centralAngle = 0.78539,
      double aspectRatio = 2.0});
}

extension PropsXRCylinderLayerInit on XRCylinderLayerInit {
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
}

@anonymous
@JS()
@staticInterop
class XREquirectLayerInit implements XRLayerInit {
  external factory XREquirectLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double radius = 0,
      double centralHorizontalAngle = 6.28318,
      double upperVerticalAngle = 1.570795,
      double lowerVerticalAngle = -1.570795});
}

extension PropsXREquirectLayerInit on XREquirectLayerInit {
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
}

@anonymous
@JS()
@staticInterop
class XRCubeLayerInit implements XRLayerInit {
  external factory XRCubeLayerInit({DOMPointReadOnly? orientation});
}

extension PropsXRCubeLayerInit on XRCubeLayerInit {
  external DOMPointReadOnly? get orientation;
  external set orientation(DOMPointReadOnly? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface is used to create layers that have a GPU backend.
@JS()
@staticInterop
class XRWebGLBinding {
  external factory XRWebGLBinding(XRSession session, dynamic context);
}

extension PropsXRWebGLBinding on XRWebGLBinding {
  ///  The [scaleFactor] that was passed in during the construction of
  /// the projection layer. The native buffer size is scaled by this
  /// number.
  ///
  external double get nativeProjectionScaleFactor;

  ///  Returns an [XRProjectionLayer] object which is a layer that
  /// fills the entire view of the observer and is refreshed close to
  /// the device's native frame rate.
  ///
  /// createProjectionLayer(options)
  ///
  external XRProjectionLayer createProjectionLayer(
      [XRProjectionLayerInit? init]);

  ///  Returns an [XRQuadLayer] object which is a two-dimensional
  /// object positioned and oriented in 3D space.
  ///
  /// createQuadLayer(init)
  ///
  external XRQuadLayer createQuadLayer([XRQuadLayerInit? init]);

  ///  Returns an [XRCylinderLayer] object which is a layer that takes
  /// up a curved rectangular space in the virtual environment.
  ///
  /// createCylinderLayer(init)
  ///
  external XRCylinderLayer createCylinderLayer([XRCylinderLayerInit? init]);

  ///  Returns an [XREquirectLayer] object which is a layer that maps
  /// equirectangular coded data onto the inside of a sphere.
  ///
  /// createEquirectLayer(init)
  ///
  external XREquirectLayer createEquirectLayer([XREquirectLayerInit? init]);

  ///  Returns an [XRCubeLayer] object, which is a layer that renders
  /// directly from a cubemap, and projects it onto the inside faces of
  /// a cube.
  ///
  /// createCubeLayer(init)
  ///
  external XRCubeLayer createCubeLayer([XRCubeLayerInit? init]);

  ///  Returns an [XRWebGLSubImage] object representing the WebGL
  /// texture to render.
  ///
  /// getSubImage(layer, frame)
  /// getSubImage(layer, frame, eye)
  ///
  external XRWebGLSubImage getSubImage(XRCompositionLayer layer, XRFrame frame,
      [XREye? eye = XREye.none]);

  ///  Returns an [XRWebGLSubImage] object representing the WebGL
  /// texture to render for an [XRView].
  ///
  /// getViewSubImage(layer, view)
  ///
  external XRWebGLSubImage getViewSubImage(
      XRProjectionLayer layer, XRView view);
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
  external WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe);
}

@anonymous
@JS()
@staticInterop
class XRMediaLayerInit {
  external factory XRMediaLayerInit(
      {XRSpace space,
      XRLayerLayout layout = XRLayerLayout.mono,
      bool invertStereo = false});
}

extension PropsXRMediaLayerInit on XRMediaLayerInit {
  external XRSpace get space;
  external set space(XRSpace newValue);
  external XRLayerLayout get layout;
  external set layout(XRLayerLayout newValue);
  external bool get invertStereo;
  external set invertStereo(bool newValue);
}

@anonymous
@JS()
@staticInterop
class XRMediaQuadLayerInit implements XRMediaLayerInit {
  external factory XRMediaQuadLayerInit(
      {XRRigidTransform? transform, double? width, double? height});
}

extension PropsXRMediaQuadLayerInit on XRMediaQuadLayerInit {
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double? get width;
  external set width(double? newValue);
  external double? get height;
  external set height(double? newValue);
}

@anonymous
@JS()
@staticInterop
class XRMediaCylinderLayerInit implements XRMediaLayerInit {
  external factory XRMediaCylinderLayerInit(
      {XRRigidTransform? transform,
      double radius = 2.0,
      double centralAngle = 0.78539,
      double? aspectRatio});
}

extension PropsXRMediaCylinderLayerInit on XRMediaCylinderLayerInit {
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
  external double get radius;
  external set radius(double newValue);
  external double get centralAngle;
  external set centralAngle(double newValue);
  external double? get aspectRatio;
  external set aspectRatio(double? newValue);
}

@anonymous
@JS()
@staticInterop
class XRMediaEquirectLayerInit implements XRMediaLayerInit {
  external factory XRMediaEquirectLayerInit(
      {XRRigidTransform? transform,
      double radius = 0.0,
      double centralHorizontalAngle = 6.28318,
      double upperVerticalAngle = 1.570795,
      double lowerVerticalAngle = -1.570795});
}

extension PropsXRMediaEquirectLayerInit on XRMediaEquirectLayerInit {
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
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface is used to create layers that display the content
/// of an [HTMLVideoElement].
///
///
///   Note:
///    Only the video frames will be displayed in the layer. Video
/// controls need to be implemented separately and must be drawn in
/// another layer.
///
///
@JS()
@staticInterop
class XRMediaBinding {
  external factory XRMediaBinding(XRSession session);
}

extension PropsXRMediaBinding on XRMediaBinding {
  /// Returns an [XRQuadLayer] object bound to an [HTMLVideoElement].
  ///
  /// createQuadLayer(video, options)
  ///
  external XRQuadLayer createQuadLayer(HTMLVideoElement video,
      [XRMediaQuadLayerInit? init]);

  ///  Returns an [XRCylinderLayer] object bound to an
  /// [HTMLVideoElement].
  ///
  /// createCylinderLayer(video, options)
  ///
  external XRCylinderLayer createCylinderLayer(HTMLVideoElement video,
      [XRMediaCylinderLayerInit? init]);

  ///  Returns an [XREquirectLayer] object bound to an
  /// [HTMLVideoElement].
  ///
  /// createEquirectLayer(video, options)
  ///
  external XREquirectLayer createEquirectLayer(HTMLVideoElement video,
      [XRMediaEquirectLayerInit? init]);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is the event type for
/// events related to a change of state of an [XRLayer] object. These
/// events occur, for example, when the layer needs to be redrawn.
@JS()
@staticInterop
class XRLayerEvent implements Event {
  external factory XRLayerEvent(String type, XRLayerEventInit eventInitDict);
}

extension PropsXRLayerEvent on XRLayerEvent {
  /// The [XRLayer] which generated the event.
  ///
  external XRLayer get layer;
}

@anonymous
@JS()
@staticInterop
class XRLayerEventInit implements EventInit {
  external factory XRLayerEventInit({XRLayer layer});
}

extension PropsXRLayerEventInit on XRLayerEventInit {
  external XRLayer get layer;
  external set layer(XRLayer newValue);
}
