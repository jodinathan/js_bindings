/// WebXR Device API
///
/// https://immersive-web.github.io/webxr/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface provides methods which let you
/// get access to an [XRSession] object representing a WebXR session.
/// With that [XRSession] in hand, you can use it to interact with
/// the Augmented Reality (AR) or Virtual Reality (VR) device.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRSystem
///
///
@experimental
@JS()
@staticInterop
class XRSystem implements EventTarget {
  external factory XRSystem();
}

extension PropsXRSystem on XRSystem {
  Future<bool> isSessionSupported(XRSessionMode mode) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'isSessionSupported', [mode.name]));

  Future<XRSession> requestSession(XRSessionMode mode,
          [XRSessionInit? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestSession', [mode.name, options]));

  EventHandlerNonNull? get ondevicechange =>
      js_util.getProperty(this, 'ondevicechange');
  set ondevicechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondevicechange', newValue);
  }
}

enum XRSessionMode { inline, immersiveVr, immersiveAr }

@anonymous
@JS()
@staticInterop
class XRSessionInit {
  external factory XRSessionInit(
      {required Iterable<dynamic> requiredFeatures,
      required Iterable<dynamic> optionalFeatures});
}

extension PropsXRSessionInit on XRSessionInit {
  Iterable<dynamic> get requiredFeatures =>
      js_util.getProperty(this, 'requiredFeatures');
  set requiredFeatures(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'requiredFeatures', newValue);
  }

  Iterable<dynamic> get optionalFeatures =>
      js_util.getProperty(this, 'optionalFeatures');
  set optionalFeatures(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'optionalFeatures', newValue);
  }
}

enum XRVisibilityState { visible, visibleBlurred, hidden }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The [WebXR Device API]'s interface represents an ongoing XR
/// session, providing methods and properties used to interact with
/// and control the session. To open a WebXR session, use the
/// [XRSystem] interface's [requestSession()] method.
///  With methods, you can poll the viewer's position and orientation
/// (the [XRViewerPose]), gather information about the user's
/// environment, and present imagery to the user. supports both
/// inline and immersive virtual and augmented reality modes.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRSession
///
///
@JS()
@staticInterop
class XRSession implements EventTarget {
  external factory XRSession();
}

extension PropsXRSession on XRSession {
  XRVisibilityState get visibilityState => XRVisibilityState.values
      .byName(js_util.getProperty(this, 'visibilityState'));
  double? get frameRate => js_util.getProperty(this, 'frameRate');
  Float32List? get supportedFrameRates =>
      js_util.getProperty(this, 'supportedFrameRates');
  XRRenderState get renderState => js_util.getProperty(this, 'renderState');
  XRInputSourceArray get inputSources =>
      js_util.getProperty(this, 'inputSources');
  Object updateRenderState([XRRenderStateInit? state]) =>
      js_util.callMethod(this, 'updateRenderState', [state]);

  Future<Object> updateTargetFrameRate(double rate) => js_util.promiseToFuture(
      js_util.callMethod(this, 'updateTargetFrameRate', [rate]));

  Future<XRReferenceSpace> requestReferenceSpace(XRReferenceSpaceType type) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestReferenceSpace', [type.name]));

  int requestAnimationFrame(XRFrameRequestCallback callback) => js_util
      .callMethod(this, 'requestAnimationFrame', [allowInterop(callback)]);

  Object cancelAnimationFrame(int handle) =>
      js_util.callMethod(this, 'cancelAnimationFrame', [handle]);

  Future<Object> end() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'end', []));

  EventHandlerNonNull? get onend => js_util.getProperty(this, 'onend');
  set onend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onend', newValue);
  }

  EventHandlerNonNull? get oninputsourceschange =>
      js_util.getProperty(this, 'oninputsourceschange');
  set oninputsourceschange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninputsourceschange', newValue);
  }

  EventHandlerNonNull? get onselect => js_util.getProperty(this, 'onselect');
  set onselect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselect', newValue);
  }

  EventHandlerNonNull? get onselectstart =>
      js_util.getProperty(this, 'onselectstart');
  set onselectstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselectstart', newValue);
  }

  EventHandlerNonNull? get onselectend =>
      js_util.getProperty(this, 'onselectend');
  set onselectend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onselectend', newValue);
  }

  EventHandlerNonNull? get onsqueeze => js_util.getProperty(this, 'onsqueeze');
  set onsqueeze(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsqueeze', newValue);
  }

  EventHandlerNonNull? get onsqueezestart =>
      js_util.getProperty(this, 'onsqueezestart');
  set onsqueezestart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsqueezestart', newValue);
  }

  EventHandlerNonNull? get onsqueezeend =>
      js_util.getProperty(this, 'onsqueezeend');
  set onsqueezeend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsqueezeend', newValue);
  }

  EventHandlerNonNull? get onvisibilitychange =>
      js_util.getProperty(this, 'onvisibilitychange');
  set onvisibilitychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onvisibilitychange', newValue);
  }

  EventHandlerNonNull? get onframeratechange =>
      js_util.getProperty(this, 'onframeratechange');
  set onframeratechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onframeratechange', newValue);
  }

  XREnvironmentBlendMode get environmentBlendMode =>
      XREnvironmentBlendMode.values
          .byName(js_util.getProperty(this, 'environmentBlendMode'));
  XRInteractionMode get interactionMode => XRInteractionMode.values
      .byName(js_util.getProperty(this, 'interactionMode'));
  Future<XRLightProbe> requestLightProbe([XRLightProbeInit? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestLightProbe', [options]));

  XRReflectionFormat get preferredReflectionFormat => XRReflectionFormat.values
      .byName(js_util.getProperty(this, 'preferredReflectionFormat'));
  XRDepthUsage get depthUsage =>
      XRDepthUsage.values.byName(js_util.getProperty(this, 'depthUsage'));
  XRDepthDataFormat get depthDataFormat => XRDepthDataFormat.values
      .byName(js_util.getProperty(this, 'depthDataFormat'));
  Future<XRHitTestSource> requestHitTestSource(XRHitTestOptionsInit options) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestHitTestSource', [options]));

  Future<XRTransientInputHitTestSource> requestHitTestSourceForTransientInput(
          XRTransientInputHitTestOptionsInit options) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'requestHitTestSourceForTransientInput', [options]));

  XRDOMOverlayState? get domOverlayState =>
      js_util.getProperty(this, 'domOverlayState');
}

@anonymous
@JS()
@staticInterop
class XRRenderStateInit {
  external factory XRRenderStateInit(
      {required double depthNear,
      required double depthFar,
      required double inlineVerticalFieldOfView,
      XRWebGLLayer? baseLayer,
      required Iterable<XRLayer> layers});
}

extension PropsXRRenderStateInit on XRRenderStateInit {
  double get depthNear => js_util.getProperty(this, 'depthNear');
  set depthNear(double newValue) {
    js_util.setProperty(this, 'depthNear', newValue);
  }

  double get depthFar => js_util.getProperty(this, 'depthFar');
  set depthFar(double newValue) {
    js_util.setProperty(this, 'depthFar', newValue);
  }

  double get inlineVerticalFieldOfView =>
      js_util.getProperty(this, 'inlineVerticalFieldOfView');
  set inlineVerticalFieldOfView(double newValue) {
    js_util.setProperty(this, 'inlineVerticalFieldOfView', newValue);
  }

  XRWebGLLayer? get baseLayer => js_util.getProperty(this, 'baseLayer');
  set baseLayer(XRWebGLLayer? newValue) {
    js_util.setProperty(this, 'baseLayer', newValue);
  }

  Iterable<XRLayer> get layers => js_util.getProperty(this, 'layers');
  set layers(Iterable<XRLayer> newValue) {
    js_util.setProperty(this, 'layers', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API contains configurable
/// values which affect how the imagery generated by an [XRSession]
/// gets composited. These properties include the range of distances
/// from the viewer within which content should be rendered, the
/// vertical field of view (for inline presentations), and a
/// reference to the [XRWebGLLayer] being used as the target for
/// rendering the scene prior to it being presented on the XR
/// device's display or displays.
///  When you apply changes using the [XRSession] method
/// [updateRenderState()], the specified changes take effect after
/// the current animation frame has completed, but before the next
/// one begins.
@JS()
@staticInterop
class XRRenderState {
  external factory XRRenderState();
}

extension PropsXRRenderState on XRRenderState {
  double get depthNear => js_util.getProperty(this, 'depthNear');
  double get depthFar => js_util.getProperty(this, 'depthFar');
  double? get inlineVerticalFieldOfView =>
      js_util.getProperty(this, 'inlineVerticalFieldOfView');
  XRWebGLLayer? get baseLayer => js_util.getProperty(this, 'baseLayer');
  Iterable<XRLayer> get layers => js_util.getProperty(this, 'layers');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  A WebXR Device API object is passed into the
/// [requestAnimationFrame()] callback function and provides access
/// to the information needed in order to render a single frame of
/// animation for an [XRSession] describing a VR or AR scene. Events
/// which communicate the tracking state of objects also provide an
/// reference as part of their structure.
///  In addition to providing a reference to the [XRSession] for
/// which this frame is to be rendered, the [getViewerPose()] method
/// is provided to obtain the [XRViewerPose] describing the viewer's
/// position and orientation in space, and [getPose()] can be used to
/// create an [XRPose] describing the relative position of one
/// [XRSpace] relative to another.
@JS()
@staticInterop
class XRFrame {
  external factory XRFrame();
}

extension PropsXRFrame on XRFrame {
  XRSession get session => js_util.getProperty(this, 'session');
  double get predictedDisplayTime =>
      js_util.getProperty(this, 'predictedDisplayTime');
  XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace) =>
      js_util.callMethod(this, 'getViewerPose', [referenceSpace]);

  XRPose? getPose(XRSpace space, XRSpace baseSpace) =>
      js_util.callMethod(this, 'getPose', [space, baseSpace]);

  XRLightEstimate? getLightEstimate(XRLightProbe lightProbe) =>
      js_util.callMethod(this, 'getLightEstimate', [lightProbe]);

  Future<XRAnchor> createAnchor(XRRigidTransform pose, XRSpace space) => js_util
      .promiseToFuture(js_util.callMethod(this, 'createAnchor', [pose, space]));

  XRAnchorSet get trackedAnchors => js_util.getProperty(this, 'trackedAnchors');
  XRCPUDepthInformation? getDepthInformation(XRView view) =>
      js_util.callMethod(this, 'getDepthInformation', [view]);

  XRJointPose? getJointPose(XRJointSpace joint, XRSpace baseSpace) =>
      js_util.callMethod(this, 'getJointPose', [joint, baseSpace]);

  bool fillJointRadii(Iterable<XRJointSpace> jointSpaces, Float32List radii) =>
      js_util.callMethod(this, 'fillJointRadii', [jointSpaces, radii]);

  bool fillPoses(Iterable<XRSpace> spaces, XRSpace baseSpace,
          Float32List transforms) =>
      js_util.callMethod(this, 'fillPoses', [spaces, baseSpace, transforms]);

  Iterable<XRHitTestResult> getHitTestResults(XRHitTestSource hitTestSource) =>
      js_util.callMethod(this, 'getHitTestResults', [hitTestSource]);

  Iterable<XRTransientInputHitTestResult> getHitTestResultsForTransientInput(
          XRTransientInputHitTestSource hitTestSource) =>
      js_util.callMethod(
          this, 'getHitTestResultsForTransientInput', [hitTestSource]);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is an abstract interface
/// providing a common basis for every class which represents a
/// virtual coordinate system within the virtual world, in which its
/// origin corresponds to a physical location. Spatial data in WebXR
/// is always expressed relative to an object based upon one of the
/// descendant interfaces of , at the time at which a given [XRFrame]
/// takes place.
///  Numeric values such as pose positions are thus coordinates in
/// the corresponding , relative to that space's origin.
///
///   Note: The interface is never used directly; instead, all spaces
/// are created using one of the interfaces based on . At this time,
/// those are [XRReferenceSpace], [XRBoundedReferenceSpace], and
/// [XRJointSpace].
///
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRSpace
///
///
@experimental
@JS()
@staticInterop
class XRSpace implements EventTarget {
  external factory XRSpace();
}

enum XRReferenceSpaceType { viewer, local, localFloor, boundedFloor, unbounded }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface describes the coordinate system
/// for a specific tracked entity or object within the virtual world
/// using a specified tracking behavior. The tracking behavior is
/// defined by the selected reference space type. It expands upon the
/// base class, [XRSpace], by adding support for several different
/// tracking behaviors as well as to request a new reference space
/// which describes the offset transform between the tracked object
/// and another location in the world.
///  All reference spaces—with the sole exception being bounded
/// reference spaces—are described using the type. Bounded spaces are
/// implemented as [XRBoundedReferenceSpace] objects. These are
/// special spaces which let you establish a perimeter within which
/// it's "safe" for the viewer to move. For XR systems that allow the
/// user to physically move around, such as those that track movement
/// with a real-world camera, this boundary establishes the edges of
/// the area the user is able to move around in, whether due to
/// physical obstacles or due to limitations of the XR hardware. See
/// the article Using bounded reference spaces to protect the viewer
/// for more on using boundaries to keep the user from colliding with
/// obstacles both physical and virtual.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRSpace
///
///
///
///
///
///
///
///    XRReferenceSpace
///
///
@JS()
@staticInterop
class XRReferenceSpace implements XRSpace {
  external factory XRReferenceSpace();
}

extension PropsXRReferenceSpace on XRReferenceSpace {
  XRReferenceSpace getOffsetReferenceSpace(XRRigidTransform originOffset) =>
      js_util.callMethod(this, 'getOffsetReferenceSpace', [originOffset]);

  EventHandlerNonNull? get onreset => js_util.getProperty(this, 'onreset');
  set onreset(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreset', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface describes a virtual world
/// reference space which has preset boundaries. This extends
/// [XRReferenceSpace], which describes an essentially unrestricted
/// space around the viewer's position. These bounds are defined
/// using an array of points, each of which defines a vertex in a
/// polygon inside which the user is allowed to move.
///  This is typically used when the XR system is capable of tracking
/// the user's physical movement within a limited distance of their
/// starting position. The specified bounds may, in fact, describe
/// the shape and size of the room the user is located in, in order
/// to let the WebXR site or application prevent the user from
/// colliding with the walls or other obstacles in the real world. At
/// a minimum, the boundaries indicate the area in which the XR
/// device is capable of tracking the user's movement. See the
/// article Using bounded reference spaces for details on how bounded
/// spaces work and why they're useful.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRSpace
///
///
///
///
///
///
///
///    XRReferenceSpace
///
///
///
///
///
///
///
///    XRBoundedReferenceSpace
///
///
@JS()
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {
  external factory XRBoundedReferenceSpace();
}

extension PropsXRBoundedReferenceSpace on XRBoundedReferenceSpace {
  Iterable<DOMPointReadOnly> get boundsGeometry =>
      js_util.getProperty(this, 'boundsGeometry');
}

enum XREye { none, left, right }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface describes a single view into
/// the XR scene for a specific frame, providing orientation and
/// position information for the viewpoint. You can think of it as a
/// description of a specific eye or camera and how it views the
/// world. A 3D frame will involve two views, one for each eye,
/// separated by an appropriate distance which approximates the
/// distance between the viewer's eyes. This allows the two views,
/// when projected in isolation into the appropriate eyes, to
/// simulate a 3D world.
@JS()
@staticInterop
class XRView {
  external factory XRView();
}

extension PropsXRView on XRView {
  XREye get eye => XREye.values.byName(js_util.getProperty(this, 'eye'));
  Float32List get projectionMatrix =>
      js_util.getProperty(this, 'projectionMatrix');
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  double? get recommendedViewportScale =>
      js_util.getProperty(this, 'recommendedViewportScale');
  Object requestViewportScale(double? scale) =>
      js_util.callMethod(this, 'requestViewportScale', [scale]);

  bool get isFirstPersonObserver =>
      js_util.getProperty(this, 'isFirstPersonObserver');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface provides properties used to
/// describe the size and position of the current viewport within the
/// [XRWebGLLayer] being used to render the 3D scene.
@JS()
@staticInterop
class XRViewport {
  external factory XRViewport();
}

extension PropsXRViewport on XRViewport {
  int get x => js_util.getProperty(this, 'x');
  int get y => js_util.getProperty(this, 'y');
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
}

///  The is a WebXR API interface that represents the 3D geometric
/// transform described by a position and orientation.
///   is used to specify transforms throughout the WebXR APIs,
/// including:
///
///   The offset and orientation relative to the parent reference
/// space to use when creating a new reference space with
/// [getOffsetReferenceSpace()].
///  The [transform] of an [XRView].
///  The [transform] of an [XRPose].
///   The [XRReferenceSpaceEvent] event's [transform] property, as
/// found in the [reset] event received by an [XRReferenceSpace].
///
///  Using in these places rather than bare arrays that provide the
/// matrix data has an advantage. It automatically computes the
/// inverse of the transform and even caches it making subsequent
/// requests significantly faster.
@JS()
@staticInterop
class XRRigidTransform {
  external factory XRRigidTransform(
      [DOMPointInit? position, DOMPointInit? orientation]);
}

extension PropsXRRigidTransform on XRRigidTransform {
  DOMPointReadOnly get position => js_util.getProperty(this, 'position');
  DOMPointReadOnly get orientation => js_util.getProperty(this, 'orientation');
  Float32List get matrix => js_util.getProperty(this, 'matrix');
  XRRigidTransform get inverse => js_util.getProperty(this, 'inverse');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///   is a WebXR API interface representing a position and
/// orientation in the 3D space, relative to the [XRSpace] within
/// which it resides. The [XRSpace]—which is either an
/// [XRReferenceSpace] or an [XRBoundedReferenceSpace]—defines the
/// coordinate system used for the pose and, in the case of an
/// [XRViewerPose], its underlying views.
///  To obtain the for the [XRSpace] used as the local coordinate
/// system of an object, call [XRFrame.getPose()], specifying that
/// local [XRSpace] and the space to which you wish to convert:
/// [thePose = xrFrame.getPose(localSpace, baseSpace);
/// ]
///  The pose for a viewer (or camera) is represented by the
/// [XRViewerPose] subclass of . This is obtained using
/// [XRFrame.getViewerPose()] instead of [getPose()], specifying a
/// reference space which has been adjusted to position and orient
/// the node to provide the desired viewing position and angle:
/// [viewerPose = xrFrame.getViewerPose(adjReferenceSpace);
/// ]
///  Here, [adjReferenceSpace] is a reference space which has been
/// updated using the base frame of reference for the frame and any
/// adjustments needed to position the viewer based on movement or
/// rotation which is being supplied from a source other than the XR
/// device, such as keyboard or mouse inputs.
///  See the article Movement, orientation, and motion for further
/// details and an example with thorough explanations of what's going
/// on.
@JS()
@staticInterop
class XRPose {
  external factory XRPose();
}

extension PropsXRPose on XRPose {
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  DOMPointReadOnly? get linearVelocity =>
      js_util.getProperty(this, 'linearVelocity');
  DOMPointReadOnly? get angularVelocity =>
      js_util.getProperty(this, 'angularVelocity');
  bool get emulatedPosition => js_util.getProperty(this, 'emulatedPosition');
}

///  The WebXR Device API interface represents the pose (the position
/// and orientation) of a viewer's point of view on the scene. Each
/// can have multiple views to represent, for example, the slight
/// separation between the left and right eye.
///  This view can represent anything from the point-of-view of a
/// user's XR headset to the viewpoint represented by a player's
/// movement of an avatar using mouse and keyboard, presented on the
/// screen, to a virtual camera capturing the scene for a spectator.
///
///
///
///    XRPose
///
///
///
///
///
///
///
///    XRViewerPose
///
///
@JS()
@staticInterop
class XRViewerPose implements XRPose {
  external factory XRViewerPose();
}

extension PropsXRViewerPose on XRViewerPose {
  Iterable<XRView> get views => js_util.getProperty(this, 'views');
}

enum XRHandedness { none, left, right }

enum XRTargetRayMode { gaze, trackedPointer, screen }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface describes a single source of
/// control input which is part of the user's WebXR-compatible
/// virtual or augmented reality system. The device is specific to
/// the platform being used, but provides the direction in which it
/// is being aimed and optionally may generate events if the user
/// triggers performs actions using the device.
@experimental
@JS()
@staticInterop
class XRInputSource {
  external factory XRInputSource();
}

extension PropsXRInputSource on XRInputSource {
  XRHandedness get handedness =>
      XRHandedness.values.byName(js_util.getProperty(this, 'handedness'));
  XRTargetRayMode get targetRayMode =>
      XRTargetRayMode.values.byName(js_util.getProperty(this, 'targetRayMode'));
  XRSpace get targetRaySpace => js_util.getProperty(this, 'targetRaySpace');
  XRSpace? get gripSpace => js_util.getProperty(this, 'gripSpace');
  Iterable<String> get profiles => js_util.getProperty(this, 'profiles');
  XRHand? get hand => js_util.getProperty(this, 'hand');
  Gamepad? get gamepad => js_util.getProperty(this, 'gamepad');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents a live list of WebXR input sources, and
/// is used as the return value of the [XRSession] property
/// [inputSources]. Each entry is an [XRInputSource] representing one
/// input device connected to the WebXR system.
///  In addition to being able to access the input sources in the
/// list using standard array notation (that is, with index numbers
/// inside square brackets), methods are available to allow the use
/// of iterators and the [forEach()] method is also available.
@JS()
@staticInterop
class XRInputSourceArray extends JsArray<XRInputSource> {
  external factory XRInputSourceArray();
}

extension PropsXRInputSourceArray on XRInputSourceArray {
  int get length => js_util.getProperty(this, 'length');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is the base class for
/// WebXR layer types. It inherits methods from [EventTarget].
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRLayer
///
///
@JS()
@staticInterop
class XRLayer implements EventTarget {
  external factory XRLayer();
}

@anonymous
@JS()
@staticInterop
class XRWebGLLayerInit {
  external factory XRWebGLLayerInit(
      {bool? antialias = true,
      bool? depth = true,
      bool? stencil = false,
      bool? alpha = true,
      bool? ignoreDepthValues = false,
      double? framebufferScaleFactor = 1.0});
}

extension PropsXRWebGLLayerInit on XRWebGLLayerInit {
  bool get antialias => js_util.getProperty(this, 'antialias');
  set antialias(bool newValue) {
    js_util.setProperty(this, 'antialias', newValue);
  }

  bool get depth => js_util.getProperty(this, 'depth');
  set depth(bool newValue) {
    js_util.setProperty(this, 'depth', newValue);
  }

  bool get stencil => js_util.getProperty(this, 'stencil');
  set stencil(bool newValue) {
    js_util.setProperty(this, 'stencil', newValue);
  }

  bool get alpha => js_util.getProperty(this, 'alpha');
  set alpha(bool newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  bool get ignoreDepthValues => js_util.getProperty(this, 'ignoreDepthValues');
  set ignoreDepthValues(bool newValue) {
    js_util.setProperty(this, 'ignoreDepthValues', newValue);
  }

  double get framebufferScaleFactor =>
      js_util.getProperty(this, 'framebufferScaleFactor');
  set framebufferScaleFactor(double newValue) {
    js_util.setProperty(this, 'framebufferScaleFactor', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API provides a linkage between
/// the WebXR device (or simulated XR device, in the case of an
/// inline session) and a WebGL context used to render the scene for
/// display on the device. In particular, it provides access to the
/// WebGL framebuffer and viewport to ease access to the context.
///  Although is currently the only type of framebuffer layer
/// supported by WebGL, it's entirely possible that future updates to
/// the WebXR specification may allow for other layer types and
/// corresponding image sources.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    XRLayer
///
///
///
///
///
///
///
///    XRWebGLLayer
///
///
@experimental
@JS()
@staticInterop
class XRWebGLLayer implements XRLayer {
  external factory XRWebGLLayer(XRSession session, dynamic context,
      [XRWebGLLayerInit? layerInit]);
}

extension PropsXRWebGLLayer on XRWebGLLayer {
  bool get antialias => js_util.getProperty(this, 'antialias');
  bool get ignoreDepthValues => js_util.getProperty(this, 'ignoreDepthValues');
  double? get fixedFoveation => js_util.getProperty(this, 'fixedFoveation');
  set fixedFoveation(double? newValue) {
    js_util.setProperty(this, 'fixedFoveation', newValue);
  }

  WebGLFramebuffer? get framebuffer => js_util.getProperty(this, 'framebuffer');
  int get framebufferWidth => js_util.getProperty(this, 'framebufferWidth');
  int get framebufferHeight => js_util.getProperty(this, 'framebufferHeight');
  XRViewport? getViewport(XRView view) =>
      js_util.callMethod(this, 'getViewport', [view]);

  static double getNativeFramebufferScaleFactor(XRSession session) => js_util
      .callMethod(XRWebGLLayer, 'getNativeFramebufferScaleFactor', [session]);
}

///  The WebXR Device API's interface describes an event which
/// indicates the change of the state of an [XRSession]. These events
/// occur, for example, when the session ends or the visibility of
/// its context changes.
///
///
///
///    Event
///
///
///
///
///
///
///
///    XRSessionEvent
///
///
@JS()
@staticInterop
class XRSessionEvent implements Event {
  external factory XRSessionEvent(
      String type, XRSessionEventInit eventInitDict);
}

extension PropsXRSessionEvent on XRSessionEvent {
  XRSession get session => js_util.getProperty(this, 'session');
}

@anonymous
@JS()
@staticInterop
class XRSessionEventInit implements EventInit {
  external factory XRSessionEventInit({required XRSession session});
}

extension PropsXRSessionEventInit on XRSessionEventInit {
  XRSession get session => js_util.getProperty(this, 'session');
  set session(XRSession newValue) {
    js_util.setProperty(this, 'session', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface describes an event which has
/// occurred on a WebXR user input device such as a hand controller,
/// gaze tracking system, or motion tracking system. More
/// specifically, they represent a change in the state of an
/// [XRInputSource].
///  To learn more about handling inputs in a WebXR project, see the
/// article Inputs and input sources.
///
///
///
///    Event
///
///
///
///
///
///
///
///    XRInputSourceEvent
///
///
@JS()
@staticInterop
class XRInputSourceEvent implements Event {
  external factory XRInputSourceEvent(
      String type, XRInputSourceEventInit eventInitDict);
}

extension PropsXRInputSourceEvent on XRInputSourceEvent {
  XRFrame get frame => js_util.getProperty(this, 'frame');
  XRInputSource get inputSource => js_util.getProperty(this, 'inputSource');
}

@anonymous
@JS()
@staticInterop
class XRInputSourceEventInit implements EventInit {
  external factory XRInputSourceEventInit(
      {required XRFrame frame, required XRInputSource inputSource});
}

extension PropsXRInputSourceEventInit on XRInputSourceEventInit {
  XRFrame get frame => js_util.getProperty(this, 'frame');
  set frame(XRFrame newValue) {
    js_util.setProperty(this, 'frame', newValue);
  }

  XRInputSource get inputSource => js_util.getProperty(this, 'inputSource');
  set inputSource(XRInputSource newValue) {
    js_util.setProperty(this, 'inputSource', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface is used to represent the
/// [inputsourceschange] event sent to an [XRSession] when the set of
/// available WebXR input controllers changes.
///
///
///
///    Event
///
///
///
///
///
///
///
///    XRInputSourcesChangeEvent
///
///
@JS()
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external factory XRInputSourcesChangeEvent(
      String type, XRInputSourcesChangeEventInit eventInitDict);
}

extension PropsXRInputSourcesChangeEvent on XRInputSourcesChangeEvent {
  XRSession get session => js_util.getProperty(this, 'session');
  Iterable<XRInputSource> get added => js_util.getProperty(this, 'added');
  Iterable<XRInputSource> get removed => js_util.getProperty(this, 'removed');
}

@anonymous
@JS()
@staticInterop
class XRInputSourcesChangeEventInit implements EventInit {
  external factory XRInputSourcesChangeEventInit(
      {required XRSession session,
      required Iterable<XRInputSource> added,
      required Iterable<XRInputSource> removed});
}

extension PropsXRInputSourcesChangeEventInit on XRInputSourcesChangeEventInit {
  XRSession get session => js_util.getProperty(this, 'session');
  set session(XRSession newValue) {
    js_util.setProperty(this, 'session', newValue);
  }

  Iterable<XRInputSource> get added => js_util.getProperty(this, 'added');
  set added(Iterable<XRInputSource> newValue) {
    js_util.setProperty(this, 'added', newValue);
  }

  Iterable<XRInputSource> get removed => js_util.getProperty(this, 'removed');
  set removed(Iterable<XRInputSource> newValue) {
    js_util.setProperty(this, 'removed', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface represents an event sent to an
/// [XRReferenceSpace]. Currently, the only event that uses this type
/// is the [reset] event.
///
///
///
///    Event
///
///
///
///
///
///
///
///    XRReferenceSpaceEvent
///
///
@JS()
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external factory XRReferenceSpaceEvent(
      String type, XRReferenceSpaceEventInit eventInitDict);
}

extension PropsXRReferenceSpaceEvent on XRReferenceSpaceEvent {
  XRReferenceSpace get referenceSpace =>
      js_util.getProperty(this, 'referenceSpace');
  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
}

@anonymous
@JS()
@staticInterop
class XRReferenceSpaceEventInit implements EventInit {
  external factory XRReferenceSpaceEventInit(
      {required XRReferenceSpace referenceSpace, XRRigidTransform? transform});
}

extension PropsXRReferenceSpaceEventInit on XRReferenceSpaceEventInit {
  XRReferenceSpace get referenceSpace =>
      js_util.getProperty(this, 'referenceSpace');
  set referenceSpace(XRReferenceSpace newValue) {
    js_util.setProperty(this, 'referenceSpace', newValue);
  }

  XRRigidTransform? get transform => js_util.getProperty(this, 'transform');
  set transform(XRRigidTransform? newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class XRSessionSupportedPermissionDescriptor implements PermissionDescriptor {
  external factory XRSessionSupportedPermissionDescriptor._(
      {required String mode});

  factory XRSessionSupportedPermissionDescriptor(
          {required XRSessionMode mode}) =>
      XRSessionSupportedPermissionDescriptor._(mode: mode.name);
}

extension PropsXRSessionSupportedPermissionDescriptor
    on XRSessionSupportedPermissionDescriptor {
  XRSessionMode get mode =>
      XRSessionMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(XRSessionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class XRPermissionDescriptor implements PermissionDescriptor {
  external factory XRPermissionDescriptor._(
      {required String mode,
      required Iterable<dynamic> requiredFeatures,
      required Iterable<dynamic> optionalFeatures});

  factory XRPermissionDescriptor(
          {required XRSessionMode mode,
          required Iterable<dynamic> requiredFeatures,
          required Iterable<dynamic> optionalFeatures}) =>
      XRPermissionDescriptor._(
          mode: mode.name,
          requiredFeatures: requiredFeatures,
          optionalFeatures: optionalFeatures);
}

extension PropsXRPermissionDescriptor on XRPermissionDescriptor {
  XRSessionMode get mode =>
      XRSessionMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(XRSessionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }

  Iterable<dynamic> get requiredFeatures =>
      js_util.getProperty(this, 'requiredFeatures');
  set requiredFeatures(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'requiredFeatures', newValue);
  }

  Iterable<dynamic> get optionalFeatures =>
      js_util.getProperty(this, 'optionalFeatures');
  set optionalFeatures(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'optionalFeatures', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface defines the object returned by calling
/// [navigator.permissions.query()] for the [xr] permission name; it
/// indicates whether or not the app or site has permission to use
/// WebXR, and may be monitored over time for changes to that
/// permissions tate.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    PermissionStatus
///
///
///
///
///
///
///
///    XRPermissionStatus
///
///
@JS()
@staticInterop
class XRPermissionStatus implements PermissionStatus {
  external factory XRPermissionStatus();
}

extension PropsXRPermissionStatus on XRPermissionStatus {
  Iterable<dynamic> get granted => js_util.getProperty(this, 'granted');
  set granted(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'granted', newValue);
  }
}
