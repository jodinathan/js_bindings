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
  external XRCompositionLayer();
}

extension PropsXRCompositionLayer on XRCompositionLayer {
  /// The layout type of the layer.
  ///
  XRLayerLayout get layout => js_util.getProperty(this, 'layout');

  /// A boolean enabling the layer's texture alpha channel.
  ///
  bool get blendTextureSourceAlpha =>
      js_util.getProperty(this, 'blendTextureSourceAlpha');
  set blendTextureSourceAlpha(bool newValue) {
    js_util.setProperty(this, 'blendTextureSourceAlpha', newValue);
  }

  ///  A boolean enabling optical chromatic aberration correction for
  /// the layer if the device supports it, [null] otherwise.
  ///
  bool? get chromaticAberrationCorrection =>
      js_util.getProperty(this, 'chromaticAberrationCorrection');
  set chromaticAberrationCorrection(bool? newValue) {
    js_util.setProperty(this, 'chromaticAberrationCorrection', newValue);
  }

  ///  The number of mip levels in the color and texture data for the
  /// layer.
  ///
  int get mipLevels => js_util.getProperty(this, 'mipLevels');

  ///  A boolean signaling that the layer should be rerendered in the
  /// next frame.
  ///
  bool get needsRedraw => js_util.getProperty(this, 'needsRedraw');

  /// Deletes the underlying layer attachments.
  ///
  /// destroy()
  ///
  Object destroy() => js_util.callMethod(this, 'destroy', []);
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
  external XRProjectionLayer();
}

extension PropsXRProjectionLayer on XRProjectionLayer {
  /// The width in pixels of the color textures of this layer.
  ///
  int get textureWidth => js_util.getProperty(this, 'textureWidth');

  /// The height in pixels of the color textures of this layer.
  ///
  int get textureHeight => js_util.getProperty(this, 'textureHeight');

  ///  The layer's layer count for array textures when using
  /// [texture-array] as the [textureType].
  ///
  int get textureArrayLength => js_util.getProperty(this, 'textureArrayLength');

  ///  A boolean indicating that the XR compositor is not making use of
  /// depth buffer values when rendering the layer.
  ///
  bool get ignoreDepthValues => js_util.getProperty(this, 'ignoreDepthValues');

  ///  A number indicating the amount of foveation used by the XR
  /// compositor for the layer. Fixed Foveated Rendering (FFR) renders
  /// the edges of the eye textures at a lower resolution than the
  /// center and reduces the GPU load.
  ///
  double? get fixedFoveation => js_util.getProperty(this, 'fixedFoveation');
  set fixedFoveation(double? newValue) {
    js_util.setProperty(this, 'fixedFoveation', newValue);
  }
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
  external XRQuadLayer();
}

extension PropsXRQuadLayer on XRQuadLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  /// Represents the width of the layer in meters.
  ///
  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  /// Represents the height of the layer in meters.
  ///
  double get height => js_util.getProperty(this, 'height');
  set height(double newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
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
  external XRCylinderLayer();
}

extension PropsXRCylinderLayer on XRCylinderLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  /// A number indicating the radius of the cylinder.
  ///
  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  ///  A number indicating the angle in radians of the visible section
  /// of the cylinder.
  ///
  double get centralAngle => js_util.getProperty(this, 'centralAngle');
  set centralAngle(double newValue) {
    js_util.setProperty(this, 'centralAngle', newValue);
  }

  ///  A number indicating the ratio of the visible cylinder section.
  /// It is the ratio of the width of the visible section of the
  /// cylinder divided by its height. The width is calculated by
  /// multiplying the [radius] with the [centralAngle].
  ///
  double get aspectRatio => js_util.getProperty(this, 'aspectRatio');
  set aspectRatio(double newValue) {
    js_util.setProperty(this, 'aspectRatio', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
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
  external XREquirectLayer();
}

extension PropsXREquirectLayer on XREquirectLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  ///  An [XRRigidTransform] representing the offset and orientation
  /// relative to [space].
  ///
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  /// A number indicating the radius of the sphere.
  ///
  double get radius => js_util.getProperty(this, 'radius');
  set radius(double newValue) {
    js_util.setProperty(this, 'radius', newValue);
  }

  ///  A number indicating the central horizontal angle in radians for
  /// the sphere.
  ///
  double get centralHorizontalAngle =>
      js_util.getProperty(this, 'centralHorizontalAngle');
  set centralHorizontalAngle(double newValue) {
    js_util.setProperty(this, 'centralHorizontalAngle', newValue);
  }

  ///  A number indicating the upper vertical angle in radians for the
  /// sphere.
  ///
  double get upperVerticalAngle =>
      js_util.getProperty(this, 'upperVerticalAngle');
  set upperVerticalAngle(double newValue) {
    js_util.setProperty(this, 'upperVerticalAngle', newValue);
  }

  ///  A number indicating the lower vertical angle in radians for the
  /// sphere.
  ///
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
  external XRCubeLayer();
}

extension PropsXRCubeLayer on XRCubeLayer {
  ///  An [XRSpace] representing the layer's spatial relationship with
  /// the user’s physical environment.
  ///
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  ///  A [DOMPointReadOnly] representing the orientation relative to
  /// the [space] property.
  ///
  DOMPointReadOnly get orientation => js_util.getProperty(this, 'orientation');
  set orientation(DOMPointReadOnly newValue) {
    js_util.setProperty(this, 'orientation', newValue);
  }

  EventHandlerNonNull? get onredraw => js_util.getProperty(this, 'onredraw');
  set onredraw(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onredraw', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API represents what viewport
/// of the GPU texture to use for rendering.
@JS()
@staticInterop
class XRSubImage {
  external XRSubImage();
}

extension PropsXRSubImage on XRSubImage {
  /// The [XRViewport] used when rendering the sub image.
  ///
  XRViewport get viewport => js_util.getProperty(this, 'viewport');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface is used during rendering of WebGL layers.
@JS()
@staticInterop
class XRWebGLSubImage implements XRSubImage {
  external XRWebGLSubImage();
}

extension PropsXRWebGLSubImage on XRWebGLSubImage {
  ///  A color [WebGLTexture] object for the [XRCompositionLayer] to
  /// render.
  ///
  WebGLTexture get colorTexture => js_util.getProperty(this, 'colorTexture');

  ///  A depth/stencil [WebGLTexture] object for the
  /// [XRCompositionLayer] to render.
  ///
  WebGLTexture? get depthStencilTexture =>
      js_util.getProperty(this, 'depthStencilTexture');

  ///  A number representing the offset into the texture array if the
  /// layer was requested with [texture-array]; [null] otherwise.
  ///
  int? get imageIndex => js_util.getProperty(this, 'imageIndex');

  /// A number representing the width in pixels of the GL attachment.
  ///
  int get textureWidth => js_util.getProperty(this, 'textureWidth');

  /// A number representing the height in pixels of the GL attachment.
  ///
  int get textureHeight => js_util.getProperty(this, 'textureHeight');
}

enum XRTextureType { texture, textureArray }

@anonymous
@JS()
@staticInterop
class XRProjectionLayerInit {
  external factory XRProjectionLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      int? colorFormat = 0x1908,
      int? depthFormat = 0x1902,
      double? scaleFactor = 1.0});
}

extension PropsXRProjectionLayerInit on XRProjectionLayerInit {
  XRTextureType get textureType => js_util.getProperty(this, 'textureType');
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue);
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
  external factory XRLayerInit(
      {XRSpace space,
      int colorFormat = 0x1908,
      int? depthFormat,
      int? mipLevels = 1,
      int? viewPixelWidth,
      int? viewPixelHeight,
      XRLayerLayout? layout = XRLayerLayout.mono,
      bool? isStatic = false});
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

  XRLayerLayout get layout => js_util.getProperty(this, 'layout');
  set layout(XRLayerLayout newValue) {
    js_util.setProperty(this, 'layout', newValue);
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
  external factory XRQuadLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double? width = 1.0,
      double? height = 1.0});
}

extension PropsXRQuadLayerInit on XRQuadLayerInit {
  XRTextureType get textureType => js_util.getProperty(this, 'textureType');
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue);
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
  external factory XRCylinderLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double? radius = 2.0,
      double? centralAngle = 0.78539,
      double? aspectRatio = 2.0});
}

extension PropsXRCylinderLayerInit on XRCylinderLayerInit {
  XRTextureType get textureType => js_util.getProperty(this, 'textureType');
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue);
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
  external factory XREquirectLayerInit(
      {XRTextureType textureType = XRTextureType.texture,
      XRRigidTransform? transform,
      double? radius = 0,
      double? centralHorizontalAngle = 6.28318,
      double? upperVerticalAngle = 1.570795,
      double? lowerVerticalAngle = -1.570795});
}

extension PropsXREquirectLayerInit on XREquirectLayerInit {
  XRTextureType get textureType => js_util.getProperty(this, 'textureType');
  set textureType(XRTextureType newValue) {
    js_util.setProperty(this, 'textureType', newValue);
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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// The interface is used to create layers that have a GPU backend.
@JS()
@staticInterop
class XRWebGLBinding {
  external XRWebGLBinding(XRSession session, dynamic context);
}

extension PropsXRWebGLBinding on XRWebGLBinding {
  ///  The [scaleFactor] that was passed in during the construction of
  /// the projection layer. The native buffer size is scaled by this
  /// number.
  ///
  double get nativeProjectionScaleFactor =>
      js_util.getProperty(this, 'nativeProjectionScaleFactor');

  ///  Returns an [XRProjectionLayer] object which is a layer that
  /// fills the entire view of the observer and is refreshed close to
  /// the device's native frame rate.
  ///
  /// createProjectionLayer(options)
  ///
  XRProjectionLayer createProjectionLayer([XRProjectionLayerInit? init]) =>
      js_util.callMethod(this, 'createProjectionLayer', [init]);

  ///  Returns an [XRQuadLayer] object which is a two-dimensional
  /// object positioned and oriented in 3D space.
  ///
  /// createQuadLayer(init)
  ///
  XRQuadLayer createQuadLayer(
          [

          ///  An object to configure the [XRQuadLayer]. It must have the
          /// [space], [viewPixelHeight], and [viewPixelWidth] properties. has
          /// the following properties:
          ///
          ///     [colorFormat]: Optional. A [GLenum] defining the data type of
          /// the color texture data. Possible values:
          ///
          ///      [gl.RGB]
          ///      [gl.RGBA]
          ///      Additionally, for contexts with the [EXT_sRGB] extension
          /// enabled:
          ///
          ///      [ext.SRGB_EXT]
          ///      [ext.SRGB_ALPHA_EXT]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.RGBA8]
          ///      [gl.RGB8]
          ///      [gl.SRGB8]
          ///      [gl.RGB8_ALPHA8]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_etc] extension enabled:
          ///
          ///      [ext.COMPRESSED_RGB8_ETC2]
          ///      [ext.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_RGBA8_ETC2_EAC]
          ///      [ext.COMPRESSED_SRGB8_ETC2]
          ///      [ext.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_astc] extension enabled:
          ///
          ///      All of the formats the extension supports.
          ///     The default value is [gl.RGBA].
          ///
          ///
          ///      [depthFormat]: Optional. A [GLenum] defining the data type
          /// of the depth texture data or [0] indicating that the layer should
          /// not provide a depth texture (in that case
          /// [XRProjectionLayer.ignoreDepthValues] will be [true]).
          ///      Possible values within [WebGLRenderingContext] contexts with
          /// the [WEBGL_depth_texture] extension enabled, or within
          /// [WebGL2RenderingContext] contexts (no extension required):
          ///
          ///      [gl.DEPTH_COMPONENT]
          ///      [gl.DEPTH_STENCIL]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.DEPTH_COMPONENT24]
          ///      [gl.DEPTH24_STENCIL24]
          ///     The default value is [gl.DEPTH_COMPONENT].
          ///
          ///     [height]: Optional. A number specifying the height of the
          /// layer in meters. The default value is [1.0].
          ///     [isStatic]: Optional. A boolean that, if true, indicates you
          /// can only draw to this layer when [needsRedraw] is [true]. The
          /// default value is [false].
          ///     [layout]: Optional. A string indicating the layout of the
          /// layer. Possible values:
          ///
          ///      [default]: The layer accommodates all views of the session.
          ///       [mono]: A single [XRSubImage] is allocated and presented to
          /// both eyes.
          ///       [stereo]: The user agent decides how it allocates the
          /// [XRSubImage] (one or two) and the layout (top/bottom or
          /// left/right).
          ///       [stereo-left-right]: A single [XRSubImage] is allocated.
          /// Left eye gets the left area of the texture, right eye the right.
          ///       [stereo-top-bottom]: A single [XRSubImage] is allocated.
          /// Left eye gets the top area of the texture, right eye the bottom.
          ///     The default value is [mono].
          ///
          ///     [mipLevels]: Optional. A number specifying desired number of
          /// mip levels. The default value is [1].
          ///     [space]: Required. An [XRSpace] object defining the layer's
          /// spatial relationship with the user’s physical environment.
          ///     [textureType]: Optional. A string defining the type of
          /// texture the layer will have. Possible values:
          ///
          ///       [texture]: The textures of [XRWebGLSubImage] will be of
          /// type [gl.TEXTURE_2D].
          ///       [texture-array]: the textures of [XRWebGLSubImage] will be
          /// of type [gl.TEXTURE_2D_ARRAY] (WebGL 2 contexts only).
          ///     The default value is [texture].
          ///
          ///     [transform]: Optional. An [XRRigidTransform] object defining
          /// the offset and orientation relative to [space].
          ///     [viewPixelHeight]: Required. A number specifying the pixel
          /// height of the layer view.
          ///     [viewPixelWidth]: Required. A number specifying the pixel
          /// width of the layer view.
          ///     [width]: Optional. A number specifying the width of the layer
          /// in meters. The default value is [1.0].
          ///
          ///
          XRQuadLayerInit? init]) =>
      js_util.callMethod(this, 'createQuadLayer', [init]);

  ///  Returns an [XRCylinderLayer] object which is a layer that takes
  /// up a curved rectangular space in the virtual environment.
  ///
  /// createCylinderLayer(init)
  ///
  XRCylinderLayer createCylinderLayer(
          [

          ///  An object to configure the [XRCylinderLayer]. It must have the
          /// [space], [viewPixelHeight], and [viewPixelWidth] properties. has
          /// the following properties:
          ///
          ///     [aspectRatio]: Optional. A number indicating the ratio of the
          /// visible cylinder section. It is the ratio of the width of the
          /// visible section of the cylinder divided by its height. The width
          /// is calculated by multiplying the [radius] with the
          /// [centralAngle]. The default value is [2.0].
          ///     [centralAngle]: Optional. A number indicating the angle in
          /// radians of the visible section of the cylinder. Default value:
          /// [0.78539] (π / 4).
          ///     [colorFormat]: Optional. A [GLenum] defining the data type of
          /// the color texture data. Possible values:
          ///
          ///      [gl.RGB]
          ///      [gl.RGBA]
          ///      Additionally, for contexts with the [EXT_sRGB] extension
          /// enabled:
          ///
          ///      [ext.SRGB_EXT]
          ///      [ext.SRGB_ALPHA_EXT]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.RGBA8]
          ///      [gl.RGB8]
          ///      [gl.SRGB8]
          ///      [gl.RGB8_ALPHA8]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_etc] extension enabled:
          ///
          ///      [ext.COMPRESSED_RGB8_ETC2]
          ///      [ext.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_RGBA8_ETC2_EAC]
          ///      [ext.COMPRESSED_SRGB8_ETC2]
          ///      [ext.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_astc] extension enabled:
          ///
          ///      All of the formats the extension supports.
          ///     The default value is [gl.RGBA].
          ///
          ///
          ///      [depthFormat]: Optional. A [GLenum] defining the data type
          /// of the depth texture data or [0] indicating that the layer should
          /// not provide a depth texture (in that case
          /// [XRProjectionLayer.ignoreDepthValues] will be [true]).
          ///      Possible values within [WebGLRenderingContext] contexts with
          /// the [WEBGL_depth_texture] extension enabled, or within
          /// [WebGL2RenderingContext] contexts (no extension required):
          ///
          ///      [gl.DEPTH_COMPONENT]
          ///      [gl.DEPTH_STENCIL]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.DEPTH_COMPONENT24]
          ///      [gl.DEPTH24_STENCIL24]
          ///     The default value is [gl.DEPTH_COMPONENT].
          ///
          ///     [isStatic]: Optional. A boolean that, if true, indicates you
          /// can only draw to this layer when [needsRedraw] is [true]. The
          /// default value is [false].
          ///     [layout]: Optional. A string indicating the layout of the
          /// layer. Possible values:
          ///
          ///      [default]: The layer accommodates all views of the session.
          ///       [mono]: A single [XRSubImage] is allocated and presented to
          /// both eyes.
          ///       [stereo]: The user agent decides how it allocates the
          /// [XRSubImage] (one or two) and the layout (top/bottom or
          /// left/right).
          ///       [stereo-left-right]: A single [XRSubImage] is allocated.
          /// Left eye gets the left area of the texture, right eye the right.
          ///       [stereo-top-bottom]: A single [XRSubImage] is allocated.
          /// Left eye gets the top area of the texture, right eye the bottom.
          ///     The default value is [mono].
          ///
          ///     [mipLevels]: Optional. A number specifying desired number of
          /// mip levels. The default value is [1].
          ///     [radius]: Optional. A number indicating the radius of the
          /// cylinder. Default value: [2.0].
          ///     [space]: Required. An [XRSpace] object defining the layer's
          /// spatial relationship with the user’s physical environment.
          ///     [textureType]: Optional. A string defining the type of
          /// texture the layer will have. Possible values:
          ///
          ///       [texture]: The textures of [XRWebGLSubImage] will be of
          /// type [gl.TEXTURE_2D].
          ///       [texture-array]: the textures of [XRWebGLSubImage] will be
          /// of type [gl.TEXTURE_2D_ARRAY] (WebGL 2 contexts only).
          ///     The default value is [texture].
          ///
          ///     [transform]: Optional. An [XRRigidTransform] object defining
          /// the offset and orientation relative to [space].
          ///     [viewPixelHeight]: Required. A number specifying the pixel
          /// height of the layer view.
          ///     [viewPixelWidth]: Required. A number specifying the pixel
          /// width of the layer view.
          ///
          ///
          XRCylinderLayerInit? init]) =>
      js_util.callMethod(this, 'createCylinderLayer', [init]);

  ///  Returns an [XREquirectLayer] object which is a layer that maps
  /// equirectangular coded data onto the inside of a sphere.
  ///
  /// createEquirectLayer(init)
  ///
  XREquirectLayer createEquirectLayer(
          [

          ///  An object to configure the [XREquirectLayer]. It must have the
          /// [space], [viewPixelHeight], and [viewPixelWidth] properties. has
          /// the following properties:
          ///
          ///     [centralHorizontalAngle]: Optional. A number indicating the
          /// central horizontal angle in radians of the sphere. Default value:
          /// [6.28318] (2π).
          ///     [colorFormat]: Optional. A [GLenum] defining the data type of
          /// the color texture data. Possible values:
          ///
          ///      [gl.RGB]
          ///      [gl.RGBA]
          ///      Additionally, for contexts with the [EXT_sRGB] extension
          /// enabled:
          ///
          ///      [ext.SRGB_EXT]
          ///      [ext.SRGB_ALPHA_EXT]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.RGBA8]
          ///      [gl.RGB8]
          ///      [gl.SRGB8]
          ///      [gl.RGB8_ALPHA8]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_etc] extension enabled:
          ///
          ///      [ext.COMPRESSED_RGB8_ETC2]
          ///      [ext.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_RGBA8_ETC2_EAC]
          ///      [ext.COMPRESSED_SRGB8_ETC2]
          ///      [ext.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_astc] extension enabled:
          ///
          ///      All of the formats the extension supports.
          ///     The default value is [gl.RGBA].
          ///
          ///
          ///      [depthFormat]: Optional. A [GLenum] defining the data type
          /// of the depth texture data, or else [0] to indicate that the layer
          /// should not provide a depth texture (in that case
          /// [XRProjectionLayer.ignoreDepthValues] will be [true]).
          ///      Possible values within [WebGLRenderingContext] contexts with
          /// the [WEBGL_depth_texture] extension enabled, or within
          /// [WebGL2RenderingContext] contexts (no extension required):
          ///
          ///      [gl.DEPTH_COMPONENT]
          ///      [gl.DEPTH_STENCIL]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.DEPTH_COMPONENT24]
          ///      [gl.DEPTH24_STENCIL24]
          ///     The default value is [gl.DEPTH_COMPONENT].
          ///
          ///     [isStatic]: Optional. A boolean that, if true, indicates you
          /// can only draw to this layer when [needsRedraw] is [true]. The
          /// default value is [false].
          ///     [layout]: Optional. A string indicating the layout of the
          /// layer. Possible values:
          ///
          ///      [default]: The layer accommodates all views of the session.
          ///       [mono]: A single [XRSubImage] is allocated and presented to
          /// both eyes.
          ///       [stereo]: The user agent decides how it allocates the
          /// [XRSubImage] (one or two) and the layout (top/bottom or
          /// left/right).
          ///       [stereo-left-right]: A single [XRSubImage] is allocated.
          /// Left eye gets the left area of the texture, right eye the right.
          ///       [stereo-top-bottom]: A single [XRSubImage] is allocated.
          /// Left eye gets the top area of the texture, right eye the bottom.
          ///     The default value is [mono].
          ///
          ///     [lowerVerticalAngle]: Optional. A number indicating the lower
          /// vertical angle in radians of the sphere. Default value:
          /// [-1.570795] (-π/2).
          ///     [mipLevels]: Optional. A number specifying desired number of
          /// mip levels. The default value is [1].
          ///     [radius]: Optional. A number indicating the radius of the
          /// sphere. Default value: [0] (infinite sphere).
          ///     [space]: Required. An [XRSpace] object defining the layer's
          /// spatial relationship with the user’s physical environment.
          ///     [textureType]: Optional. A string defining the type of
          /// texture the layer will have. Possible values:
          ///
          ///       [texture]: The textures of [XRWebGLSubImage] will be of
          /// type [gl.TEXTURE_2D].
          ///       [texture-array]: the textures of [XRWebGLSubImage] will be
          /// of type [gl.TEXTURE_2D_ARRAY] (WebGL 2 contexts only).
          ///     The default value is [texture].
          ///
          ///     [transform]: Optional. An [XRRigidTransform] object defining
          /// the offset and orientation relative to [space].
          ///     [upperVerticalAngle]: Optional. A number indicating the upper
          /// vertical angle in radians of the sphere. Default value:
          /// [1.570795] (π/2).
          ///     [viewPixelHeight]: Required. A number specifying the pixel
          /// height of the layer view.
          ///     [viewPixelWidth]: Required. A number specifying the pixel
          /// width of the layer view.
          ///
          ///
          XREquirectLayerInit? init]) =>
      js_util.callMethod(this, 'createEquirectLayer', [init]);

  ///  Returns an [XRCubeLayer] object, which is a layer that renders
  /// directly from a cubemap, and projects it onto the inside faces of
  /// a cube.
  ///
  /// createCubeLayer(init)
  ///
  XRCubeLayer createCubeLayer(
          [

          ///  An object to configure the [XRCubeLayer]. It must have the
          /// [space], [viewPixelHeight], and [viewPixelWidth] properties. has
          /// the following properties:
          ///
          ///     [colorFormat]: Optional. A [GLenum] defining the data type of
          /// the color texture data. Possible values:
          ///
          ///      [gl.RGB]
          ///      [gl.RGBA] (Default)
          ///      Additionally, for contexts with the [EXT_sRGB] extension
          /// enabled:
          ///
          ///      [ext.SRGB_EXT]
          ///      [ext.SRGB_ALPHA_EXT]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.RGBA8]
          ///      [gl.RGB8]
          ///      [gl.SRGB8]
          ///      [gl.RGB8_ALPHA8]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_etc] extension enabled:
          ///
          ///      [ext.COMPRESSED_RGB8_ETC2]
          ///      [ext.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_RGBA8_ETC2_EAC]
          ///      [ext.COMPRESSED_SRGB8_ETC2]
          ///      [ext.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2]
          ///      [ext.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC]
          ///      Additionally, for contexts with the
          /// [WEBGL_compressed_texture_astc] extension enabled:
          ///
          ///      All of the formats the extension supports.
          ///
          ///
          ///
          ///      [depthFormat]: Optional. A [GLenum] defining the data type
          /// of the depth texture data or [0] indicating that the layer should
          /// not provide a depth texture. (In that case
          /// [XRProjectionLayer.ignoreDepthValues] will be [true].)
          ///      Possible values for [WebGLRenderingContext] contexts with
          /// the [WEBGL_depth_texture] extension enabled, or for
          /// [WebGL2RenderingContext] contexts (no extension required):
          ///
          ///      [gl.DEPTH_COMPONENT] (Default)
          ///      [gl.DEPTH_STENCIL]
          ///     Additionally, for [WebGL2RenderingContext] contexts:
          ///
          ///      [gl.DEPTH_COMPONENT24]
          ///      [gl.DEPTH24_STENCIL24]
          ///
          ///
          ///     [isStatic]: Optional. A boolean that, if true, indicates you
          /// can only draw to this layer when [needsRedraw] is [true]. The
          /// default value is [false].
          ///     [layout]: Optional. A string indicating the layout of the
          /// layer. Possible values:
          ///
          ///      [default]: The layer accommodates all views of the session.
          ///       [mono]: A single [XRSubImage] is allocated and presented to
          /// both eyes.
          ///       [stereo]: The user agent decides how it allocates the
          /// [XRSubImage] (one or two) and the layout (top/bottom or
          /// left/right).
          ///       [stereo-left-right]: A single [XRSubImage] is allocated.
          /// The left eye gets the left area of the texture, the right eye the
          /// right.
          ///       [stereo-top-bottom]: A single [XRSubImage] is allocated.
          /// The left eye gets the top area of the texture, the right eye the
          /// bottom.
          ///     The default value is [mono].
          ///
          ///     [mipLevels]: Optional. A number specifying the desired number
          /// of mip levels. The default value is [1].
          ///     [orientation]: Optional. A [DOMPointReadOnly] specifying the
          /// orientation relative to the [space] property.
          ///     [space]: Required. An [XRSpace] object defining the layer's
          /// spatial relationship with the user’s physical environment.
          ///     [viewPixelHeight]: Required. A number specifying the pixel
          /// height of the layer view.
          ///     [viewPixelWidth]: Required. A number specifying the pixel
          /// width of the layer view.
          ///
          ///
          XRCubeLayerInit? init]) =>
      js_util.callMethod(this, 'createCubeLayer', [init]);

  ///  Returns an [XRWebGLSubImage] object representing the WebGL
  /// texture to render.
  ///
  /// getSubImage(layer, frame)
  /// getSubImage(layer, frame, eye)
  ///
  XRWebGLSubImage getSubImage(

          ///  The [XRCompositionLayer] to use for rendering (can be all types
          /// of [XRCompositionLayer] objects except [XRProjectionLayer], see
          /// [XRWebGLBinding.getViewSubImage()] for rendering projection
          /// layers).
          ///
          XRCompositionLayer layer,

          /// The [XRFrame] frame to use for rendering.
          ///
          XRFrame frame,
          [

          ///  An optional [XRView.eye] indicating which view's eye to use for
          /// rendering. Possible values:
          ///
          ///     [left]: The [XRView] represents the point-of-view of the
          /// viewer's left eye.
          ///    [right]: The view represents the viewer's right eye.
          ///     [none]: The view describes a monoscopic view, or the view
          /// otherwise doesn't represent a particular eye's point-of-view.
          ///
          ///   Defaults to [none].
          ///
          XREye? eye = XREye.none]) =>
      js_util.callMethod(this, 'getSubImage', [layer, frame, eye]);

  ///  Returns an [XRWebGLSubImage] object representing the WebGL
  /// texture to render for an [XRView].
  ///
  /// getViewSubImage(layer, view)
  ///
  XRWebGLSubImage getViewSubImage(

          ///  The [XRProjectionLayer] to use for rendering (to render other
          /// layer types, see [XRWebGLBinding.getSubImage()]).
          ///
          XRProjectionLayer layer,

          /// The [XRView] to use for rendering.
          ///
          XRView view) =>
      js_util.callMethod(this, 'getViewSubImage', [layer, view]);

  XRWebGLDepthInformation? getDepthInformation(XRView view) =>
      js_util.callMethod(this, 'getDepthInformation', [view]);

  WebGLTexture? getReflectionCubeMap(XRLightProbe lightProbe) =>
      js_util.callMethod(this, 'getReflectionCubeMap', [lightProbe]);
}

@anonymous
@JS()
@staticInterop
class XRMediaLayerInit {
  external factory XRMediaLayerInit(
      {XRSpace space,
      XRLayerLayout layout = XRLayerLayout.mono,
      bool? invertStereo = false});
}

extension PropsXRMediaLayerInit on XRMediaLayerInit {
  XRSpace get space => js_util.getProperty(this, 'space');
  set space(XRSpace newValue) {
    js_util.setProperty(this, 'space', newValue);
  }

  XRLayerLayout get layout => js_util.getProperty(this, 'layout');
  set layout(XRLayerLayout newValue) {
    js_util.setProperty(this, 'layout', newValue);
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
      double radius = 2.0,
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
      double radius = 0.0,
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
  external XRMediaBinding(XRSession session);
}

extension PropsXRMediaBinding on XRMediaBinding {
  /// Returns an [XRQuadLayer] object bound to an [HTMLVideoElement].
  ///
  /// createQuadLayer(video, options)
  ///
  XRQuadLayer createQuadLayer(

          /// An [HTMLVideoElement] to display.
          ///
          HTMLVideoElement video,
          [XRMediaQuadLayerInit? init]) =>
      js_util.callMethod(this, 'createQuadLayer', [video, init]);

  ///  Returns an [XRCylinderLayer] object bound to an
  /// [HTMLVideoElement].
  ///
  /// createCylinderLayer(video, options)
  ///
  XRCylinderLayer createCylinderLayer(

          /// An [HTMLVideoElement] to display.
          ///
          HTMLVideoElement video,
          [XRMediaCylinderLayerInit? init]) =>
      js_util.callMethod(this, 'createCylinderLayer', [video, init]);

  ///  Returns an [XREquirectLayer] object bound to an
  /// [HTMLVideoElement].
  ///
  /// createEquirectLayer(video, options)
  ///
  XREquirectLayer createEquirectLayer(

          /// An [HTMLVideoElement] to display.
          ///
          HTMLVideoElement video,
          [XRMediaEquirectLayerInit? init]) =>
      js_util.callMethod(this, 'createEquirectLayer', [video, init]);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is the event type for
/// events related to a change of state of an [XRLayer] object. These
/// events occur, for example, when the layer needs to be redrawn.
@JS()
@staticInterop
class XRLayerEvent implements Event {
  external XRLayerEvent(String type, XRLayerEventInit eventInitDict);
}

extension PropsXRLayerEvent on XRLayerEvent {
  /// The [XRLayer] which generated the event.
  ///
  XRLayer get layer => js_util.getProperty(this, 'layer');
}

@anonymous
@JS()
@staticInterop
class XRLayerEventInit implements EventInit {
  external factory XRLayerEventInit({XRLayer layer});
}

extension PropsXRLayerEventInit on XRLayerEventInit {
  XRLayer get layer => js_util.getProperty(this, 'layer');
  set layer(XRLayer newValue) {
    js_util.setProperty(this, 'layer', newValue);
  }
}
