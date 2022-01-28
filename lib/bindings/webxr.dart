/// WebXR Device API
///
/// https://immersive-web.github.io/webxr/
@JS('window')
@staticInterop
library webxr;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
hr_time_3
geometry_1
webgl1
webgl2
permissions
webxr_ar_module_1
anchors
webxr
hit_test
depth_sensing
lighting_estimation
webxr_hand_input_1
dom_overlays
gamepad */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface provides methods which let you
/// get access to an [XRSession] object representing a WebXR session.
/// With that [XRSession] in hand, you can use it to interact with
/// the Augmented Reality (AR) or Virtual Reality (VR) device.
@experimental
@JS()
@staticInterop
class XRSystem implements EventTarget {
  external factory XRSystem();
}

extension PropsXRSystem on XRSystem {
  ///
  ///     Returns a promise which resolves to [true] if the browser
  /// supports the given session mode.
  ///    Resolves to [false] if the specified mode isn't supported.
  ///
  ///
  /// isSessionSupported(mode)
  ///
  @experimental
  external Promise<bool> isSessionSupported(XRSessionMode mode);

  ///  Returns a promise that resolves to a new [XRSession] with the
  /// specified session mode.
  ///
  /// requestSession(mode)
  /// requestSession(mode, options)
  ///
  @experimental
  external Promise<XRSession> requestSession(XRSessionMode mode,
      [XRSessionInit? options]);
  external EventHandlerNonNull? get ondevicechange;
  external set ondevicechange(EventHandlerNonNull? newValue);
}

enum XRSessionMode { inline, immersiveVr, immersiveAr }

@anonymous
@JS()
@staticInterop
class XRSessionInit {
  external factory XRSessionInit(
      {Iterable<dynamic> requiredFeatures, Iterable<dynamic> optionalFeatures});
}

extension PropsXRSessionInit on XRSessionInit {
  external Iterable<dynamic> get requiredFeatures;
  external set requiredFeatures(Iterable<dynamic> newValue);
  external Iterable<dynamic> get optionalFeatures;
  external set optionalFeatures(Iterable<dynamic> newValue);
}

enum XRVisibilityState { visible, visibleBlurred, hidden }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API's interface represents an ongoing XR
/// session, providing methods and properties used to interact with
/// and control the session. To open a WebXR session, use the
/// [XRSystem] interface's [requestSession()] method.
///  With methods, you can poll the viewer's position and orientation
/// (the [XRViewerPose]), gather information about the user's
/// environment, and present imagery to the user. supports both
/// inline and immersive virtual and augmented reality modes.
@JS()
@staticInterop
class XRSession implements EventTarget {
  external factory XRSession();
}

extension PropsXRSession on XRSession {
  ///  A string indicating whether or not the session's imagery is
  /// visible to the user, and if so, if it's being visible but not
  /// currently the target for user events.
  ///
  @experimental
  external XRVisibilityState get visibilityState;

  ///  An [XRRenderState] object which contains options affecting how
  /// the imagery is rendered. This includes things such as the near
  /// and far clipping planes (distances defining how close and how far
  /// away objects can be and still get rendered), as well as field of
  /// view information.
  ///
  @experimental
  external XRRenderState get renderState;

  ///  Returns a list of this session's [XRInputSource]s, each
  /// representing an input device used to control the camera and/or
  /// scene.
  ///
  @experimental
  external XRInputSourceArray get inputSources;

  /// Updates the properties of the session's render state.
  ///
  /// updateRenderState()
  /// updateRenderState(state)
  ///
  external Object updateRenderState([XRRenderStateInit? state]);

  ///  Requests that a new [XRReferenceSpace] of the specified type be
  /// created. Returns a promise which resolves with the
  /// [XRReferenceSpace] or [XRBoundedReferenceSpace] which was
  /// requested, or throws a [NotSupportedError] [DOMException] if the
  /// requested space type isn't supported by the device.
  ///
  /// requestReferenceSpace(referenceSpaceType)
  ///
  external Promise<XRReferenceSpace> requestReferenceSpace(
      XRReferenceSpaceType type);

  ///  Schedules the specified method to be called the next time the
  /// user agent is working on rendering an animation frame for the
  /// WebXR device. Returns an integer value which can be used to
  /// identify the request for the purposes of canceling the callback
  /// using [cancelAnimationFrame()]. This method is comparable to the
  /// [Window.requestAnimationFrame()] method.
  ///
  /// requestAnimationFrame(animationFrameCallback)
  ///
  ///
  ///  The following example requests XRSession with "inline" mode so that it can
  ///  be displayed in an HTML element (without the need for a separate AR or VR device).
  ///
  ///   Note: A real application should check that the device and the User
  ///   Agent support WebXR API at all and then that they both support the desired session
  ///   type via XRSystem.isSessionSupported().
  ///
  ///
  /// // Obtain XR object
  /// const XR = navigator.xr
  ///
  /// // Request a new XRSession
  /// XR.requestSession("inline").then((xrSession) => {
  ///  xrSession.requestAnimationFrame((time, xrFrame) => {
  ///   let viewer = xrFrame.getViewerPose(xrReferenceSpace)
  ///
  ///   gl.bindFramebuffer(xrWebGLLayer.framebuffer)
  ///   for (xrView of viewer.views) {
  ///    let xrViewport = xrWebGLLayer.getViewport(xrView)
  ///    gl.viewport(xrViewport.x, xrViewport.y, xrViewport.width, xrViewport.height)
  ///
  ///   // WebGL draw calls will now be rendered into the appropriate viewport.
  ///   }
  ///  })
  /// })
  ///  The following example was taken directly from the spec draft. This example demonstrates
  ///  a design pattern that ensures seamless transition between non-immersive animations
  ///  created via Window.requestAnimationFrame and immersive XR animations.
  ///
  /// let xrSession = null
  ///
  /// function onWindowAnimationFrame(time) {
  ///  window.requestAnimationFrame(onWindowAnimationFrame)
  ///
  ///  // This may be called while an immersive session is running on some devices,
  ///  // such as a desktop with a tethered headset. To prevent two loops from
  ///  // rendering in parallel, skip drawing in this one until the session ends.
  ///  if (!xrSession) {
  ///   renderFrame(time, null)
  ///  }
  /// }
  ///
  /// // The window animation loop can be started immediately upon the page loading.
  /// window.requestAnimationFrame(onWindowAnimationFrame)
  ///
  /// function onXRAnimationFrame(time, xrFrame) {
  ///  xrSession.requestAnimationFrame(onXRAnimationFrame)
  ///  renderFrame(time, xrFrame)
  /// }
  ///
  /// function renderFrame(time, xrFrame) {
  ///  // Shared rendering logic.
  /// }
  ///
  /// // Assumed to be called by a user gesture event elsewhere in code.
  /// function startXRSession() {
  ///  navigator.xr.requestSession('immersive-vr').then((session) => {
  ///   xrSession = session
  ///   xrSession.addEventListener('end', onXRSessionEnded)
  ///   // Do necessary session setup here.
  ///   // Begin the session’s animation loop.
  ///   xrSession.requestAnimationFrame(onXRAnimationFrame)
  ///  })
  /// }
  ///
  /// function onXRSessionEnded() {
  ///  xrSession = null
  /// }
  ///
  external int requestAnimationFrame(XRFrameRequestCallback callback);

  ///  Removes a callback from the animation frame painting callback
  /// from [XRSession]'s set of animation frame rendering callbacks,
  /// given the identifying handle returned by a previous call to
  /// [requestAnimationFrame()].
  ///
  /// cancelAnimationFrame(handle)
  ///
  ///
  ///  In the example below we see code which starts up a WebXR session if immersive VR mode
  ///  is supported. Once started, the session schedules its first frame to be rendered by
  ///  calling requestAnimationFrame().
  ///  The pauseXR() function shown at the bottom can be called to suspend the
  ///  WebVR session, in essence, by canceling any pending animation frame callback. Since each
  ///  frame callback schedules the next one, removing the callback terminates updating of the
  ///  WebXR scene.
  ///
  /// const XR = navigator.xr;
  ///
  /// let requestHandle = null;
  /// let xrSession = null;
  ///
  /// if (XR) {
  ///  XR.isSessionSupported('immersive-vr')
  ///  .then((isSupported) => {
  ///   if (isSupported) {
  ///    startXR();
  ///   }
  ///  });
  /// }
  ///
  /// function frameCallback(time, xrFrame) {
  ///  xrSession.requestAnimationFrame(frameCallback);
  ///
  ///  // Update and render the frame
  /// }
  ///
  /// async function startXR() {
  ///  xrSession = XR.requestSession("immersive-vr");
  ///
  ///  if (xrSession) {
  ///   stopButton.onclick = stopXR;
  ///   requestHandle = xrSession.requestAnimationFrame(frameCallback);
  ///  }
  /// }
  ///
  /// function pauseXR() {
  ///  if (xrSession && requestHandle) {
  ///   xrSession.cancelAnimationFrame(requestHandle);
  ///   requestHandle = null;
  ///  }
  /// }
  ///
  external Object cancelAnimationFrame(int handle);

  ///  Ends the WebXR session. Returns a [promise] which resolves when
  /// the session has been shut down.
  ///
  /// end()
  ///
  external Promise<Object> end();
  external EventHandlerNonNull? get onend;
  external set onend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oninputsourceschange;
  external set oninputsourceschange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselect;
  external set onselect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectstart;
  external set onselectstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onselectend;
  external set onselectend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsqueeze;
  external set onsqueeze(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsqueezestart;
  external set onsqueezestart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsqueezeend;
  external set onsqueezeend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onvisibilitychange;
  external set onvisibilitychange(EventHandlerNonNull? newValue);
  external XREnvironmentBlendMode get environmentBlendMode;
  external XRInteractionMode get interactionMode;
  external Promise<XRHitTestSource> requestHitTestSource(
      XRHitTestOptionsInit options);
  external Promise<XRTransientInputHitTestSource>
      requestHitTestSourceForTransientInput(
          XRTransientInputHitTestOptionsInit options);
  external XRDepthUsage get depthUsage;
  external XRDepthDataFormat get depthDataFormat;
  external Promise<XRLightProbe> requestLightProbe([XRLightProbeInit? options]);
  external XRReflectionFormat get preferredReflectionFormat;
  external XRDOMOverlayState? get domOverlayState;
}

@anonymous
@JS()
@staticInterop
class XRRenderStateInit {
  external factory XRRenderStateInit(
      {double depthNear,
      double depthFar,
      double inlineVerticalFieldOfView,
      XRWebGLLayer? baseLayer,
      Iterable<XRLayer> layers});
}

extension PropsXRRenderStateInit on XRRenderStateInit {
  external double get depthNear;
  external set depthNear(double newValue);
  external double get depthFar;
  external set depthFar(double newValue);
  external double get inlineVerticalFieldOfView;
  external set inlineVerticalFieldOfView(double newValue);
  external XRWebGLLayer? get baseLayer;
  external set baseLayer(XRWebGLLayer? newValue);
  external Iterable<XRLayer> get layers;
  external set layers(Iterable<XRLayer> newValue);
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
  ///  The distance, in meters, of the near clip plane from the viewer.
  /// The near clip plane is the plane, parallel to the display, at
  /// which rendering of the scene begins. Any closer to the viewer
  /// than this, and no portions of the scene are drawn.
  ///
  external double get depthNear;

  ///  The distance, in meters, of the far clip plane from the viewer.
  /// The far clip plane is the plane which is parallel to the display
  /// beyond which rendering of the scene no longer takes place. This,
  /// essentially, specifies the maximum distance the user can see.
  ///
  external double get depthFar;

  ///  The default vertical field of view, defined in radians, to use
  /// when the session is in [inline] mode. [null] for all immersive
  /// sessions.
  ///
  external double? get inlineVerticalFieldOfView;

  ///  The [XRWebGLLayer] from which the browser's compositing system
  /// obtains the image for the XR session.
  ///
  external XRWebGLLayer? get baseLayer;
  external Iterable<XRLayer> get layers;
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
  ///  The [XRSession] that for which this [XRFrame] describes the
  /// tracking details for all objects. The information about a
  /// specific object can be obtained by calling one of the methods on
  /// the object.
  ///
  external XRSession get session;

  ///  Returns an [XRViewerPose] describing the viewer's position and
  /// orientation in a given [XRReferenceSpace].
  ///
  /// getViewerPose(referenceSpace)
  ///
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);

  ///  Returns an [XRPose] object representing the spatial relationship
  /// between the two specified [XRSpace] objects.
  ///
  /// getPose(space, baseSpace)
  ///
  external XRPose? getPose(XRSpace space, XRSpace baseSpace);
  external Promise<XRAnchor> createAnchor(XRRigidTransform pose, XRSpace space);
  external XRAnchorSet get trackedAnchors;
  external Iterable<XRHitTestResult> getHitTestResults(
      XRHitTestSource hitTestSource);
  external Iterable<XRTransientInputHitTestResult>
      getHitTestResultsForTransientInput(
          XRTransientInputHitTestSource hitTestSource);
  external XRCPUDepthInformation? getDepthInformation(XRView view);
  external XRLightEstimate? getLightEstimate(XRLightProbe lightProbe);
  external XRJointPose? getJointPose(XRJointSpace joint, XRSpace baseSpace);
  external bool fillJointRadii(
      Iterable<XRJointSpace> jointSpaces, Float32List radii);
  external bool fillPoses(
      Iterable<XRSpace> spaces, XRSpace baseSpace, Float32List transforms);
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
@JS()
@staticInterop
class XRReferenceSpace implements XRSpace {
  external factory XRReferenceSpace();
}

extension PropsXRReferenceSpace on XRReferenceSpace {
  ///  Creates and returns a new reference space object as the same
  /// type as the one on which you call the method (so, either
  /// [XRReferenceSpace] or [XRBoundedReferenceSpace]). The new
  /// reference space can be used to transform a coordinate from the
  /// reference space of the object on which the method is called into
  /// a different coordinate space. This is useful for positioning
  /// objects while rendering, and to perform the needed transforms
  /// when changing the viewer's position and/or orientation in 3D
  /// space.
  ///
  /// getOffsetReferenceSpace(originOffset)
  ///
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external EventHandlerNonNull? get onreset;
  external set onreset(EventHandlerNonNull? newValue);
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
@JS()
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {
  external factory XRBoundedReferenceSpace();
}

extension PropsXRBoundedReferenceSpace on XRBoundedReferenceSpace {
  ///  An array of [DOMPointReadOnly] objects, each of which defines a
  /// vertex in the polygon defining the boundaries within which the
  /// user will be required to remain. These vertices must be sorted
  /// such that they move clockwise around the viewer's position.
  ///
  external Iterable<DOMPointReadOnly> get boundsGeometry;
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
  ///  Which of the two eyes ([left]) or ([right]) for which this
  /// [XRView] represents the perspective. This value is used to ensure
  /// that any content which is pre-rendered for presenting to a
  /// specific eye is distributed or positioned correctly. The value
  /// can also be [none] if the [XRView] is presenting monoscopic data
  /// (such as a 2D image, a full-screen view of text. or a close-up
  /// view of something that doesn't need to appear in 3D).
  ///
  external XREye get eye;

  ///  The projection matrix that will transform the scene to appear
  /// correctly given the point-of-view indicated by [eye]. This matrix
  /// should be used directly in order to avoid presentation
  /// distortions that may lead to potentially serious user discomfort.
  ///
  external Float32List get projectionMatrix;

  ///  An [XRRigidTransform] which describes the current position and
  /// orientation of the viewpoint in relation to the
  /// [XRReferenceSpace] specified when [getViewerPose()] was called on
  /// the [XRFrame] being rendered.
  ///
  external XRRigidTransform get transform;

  ///  The recommended viewport scale value that you can use for
  /// [requestViewportScale()] if the user agent has such a
  /// recommendation; [null] otherwise.
  ///
  external double? get recommendedViewportScale;

  ///  Requests that the user agent should set the requested viewport
  /// scale for this viewport to the requested value.
  ///
  /// requestViewportScale(scale)
  ///
  external Object requestViewportScale(double? scale);
  external bool get isFirstPersonObserver;
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
  ///  The offset from the origin of the destination graphics surface
  /// (typically a [XRWebGLLayer]) to the left edge of the viewport, in
  /// pixels.
  ///
  external int get x;

  ///  The offset from the origin of the viewport to the bottom edge of
  /// the viewport; WebGL's coordinate system places (0, 0) at the
  /// bottom left corner of the surface.
  ///
  external int get y;

  /// The width, in pixels, of the viewport.
  ///
  external int get width;

  /// The height, in pixels, of the viewport.
  ///
  external int get height;
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
  ///  A [DOMPointReadOnly] specifying a 3-dimensional point, expressed
  /// in meters, describing the translation component of the transform.
  /// The [w] property is always [1.0].
  ///
  @experimental
  external DOMPointReadOnly get position;

  ///  A [DOMPointReadOnly] which contains a unit quaternion describing
  /// the rotational component of the transform. As a unit quaternion,
  /// its length is always normalized to [1.0].
  ///
  @experimental
  external DOMPointReadOnly get orientation;

  ///  Returns the transform matrix in the form of a 16-member
  /// [Float32Array]. See the section Matrix format for how the array
  /// is used to represent a matrix.
  ///
  @experimental
  external Float32List get matrix;

  ///  Returns a [XRRigidTransform] which is the inverse of this
  /// transform. That is, if applied to an object that had been
  /// previously transformed by the original transform, it will undo
  /// the transform and return the original object.
  ///
  @experimental
  external XRRigidTransform get inverse;
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
  ///  A [XRRigidTransform] which provides the position and orientation
  /// of the pose relative to the base [XRSpace].
  ///
  external XRRigidTransform get transform;

  ///  A [DOMPointReadOnly] describing the linear velocity in meters
  /// per second relative to the base [XRSpace].
  ///
  external DOMPointReadOnly? get linearVelocity;

  ///  A [DOMPointReadOnly] describing the angular velocity in radians
  /// per second relative to the base [XRSpace].
  ///
  external DOMPointReadOnly? get angularVelocity;

  ///  A Boolean value which is [false] if the position and orientation
  /// given by [transform] is obtained directly from a full six degree
  /// of freedom (6DoF) XR device (that is, a device which tracks not
  /// only the pitch, yaw, and roll of the head but also the forward,
  /// backward, and side-to-side motion of the viewer). If any
  /// component of the [transform] is computed or created artificially
  /// (such as by using mouse or keyboard controls to move through
  /// space), this value is instead [true], indicating that the
  /// [transform] is in part emulated in software.
  ///
  external bool get emulatedPosition;
}

///  The WebXR Device API interface represents the pose (the position
/// and orientation) of a viewer's point of view on the scene. Each
/// can have multiple views to represent, for example, the slight
/// separation between the left and right eye.
///  This view can represent anything from the point-of-view of a
/// user's XR headset to the viewpoint represented by a player's
/// movement of an avatar using mouse and keyboard, presented on the
/// screen, to a virtual camera capturing the scene for a spectator.
@JS()
@staticInterop
class XRViewerPose implements XRPose {
  external factory XRViewerPose();
}

extension PropsXRViewerPose on XRViewerPose {
  ///  An array of [XRView] objects, one for each viewpoint on the
  /// scene which is needed to represent the scene to the user. A
  /// typical headset provides a viewer pose with two views whose [eye]
  /// property is either [left] or [right], indicating which eye that
  /// view represents. Taken together, these views can reproduce the 3D
  /// effect when displayed on the XR device.
  ///
  external Iterable<XRView> get views;
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
  ///  A [DOMString] that indicates which hand the device represented
  /// by this [XRInputSource] is being used in, if any. The value will
  /// be [left], [right], or [none].
  ///
  external XRHandedness get handedness;

  ///  A [DOMString] indicating the methodology used to produce the
  /// target ray: [gaze], [tracked-pointer], or [screen].
  ///
  external XRTargetRayMode get targetRayMode;

  ///  An [XRSpace] object defining the origin of the target ray and
  /// the direction in which it extends. This space is established
  /// using the method defined by [targetRayMode].
  ///
  external XRSpace get targetRaySpace;

  ///  An [XRSpace] whose origin tracks the pose which is used to
  /// render objects which should appear as if they're held in the hand
  /// indicated by [handedness]. The orientation of this space
  /// indicates the angle at which the hand is gripping the object.
  /// Read on in the main article on for more details on how to use
  /// this space.
  ///
  external XRSpace? get gripSpace;

  ///  An array of [DOMString] objects, each specifying the name of an
  /// input profile describing the preferred visual representation and
  /// behavior of this input source.
  ///
  external Iterable<String> get profiles;
  external XRHand? get hand;
  external Gamepad? get gamepad;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents a live list of WebXR input sources, and
/// is used as the return value of the [XRSession] property
/// [inputSources]. Each entry is an [XRInputSource] representing one
/// input device connected to the WebXR system.
///  In addition to being able to access the input sources in the
/// list using standard array notation (that is, with index numbers
/// insize square brackets), methods are available to allow the use
/// of iterators and the [forEach()] method is also available.
@JS()
@staticInterop
class XRInputSourceArray {
  external factory XRInputSourceArray();
}

extension PropsXRInputSourceArray on XRInputSourceArray {
  /// The number of [XRInputSource] objects in the list.
  ///
  external int get length;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is the base class for
/// WebXR layer types. It inherits methods from [EventTarget].
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
      {bool antialias = true,
      bool depth = true,
      bool stencil = false,
      bool alpha = true,
      bool ignoreDepthValues = false,
      double framebufferScaleFactor = 1.0});
}

extension PropsXRWebGLLayerInit on XRWebGLLayerInit {
  external bool get antialias;
  external set antialias(bool newValue);
  external bool get depth;
  external set depth(bool newValue);
  external bool get stencil;
  external set stencil(bool newValue);
  external bool get alpha;
  external set alpha(bool newValue);
  external bool get ignoreDepthValues;
  external set ignoreDepthValues(bool newValue);
  external double get framebufferScaleFactor;
  external set framebufferScaleFactor(double newValue);
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
@experimental
@JS()
@staticInterop
class XRWebGLLayer implements XRLayer {
  external factory XRWebGLLayer(XRSession session, dynamic context,
      [XRWebGLLayerInit? layerInit]);
}

extension PropsXRWebGLLayer on XRWebGLLayer {
  ///  A Boolean value indicating whether or not the WebGL context's
  /// framebuffer supports anti-aliasing. The specific type of
  /// anti-aliasing is determined by the user agent.
  ///
  external bool get antialias;

  ///  A Boolean which Indicates whether or not the WebXR compositor
  /// should make use of the contents of the layer's depth buffer while
  /// compositing the scene.
  ///
  external bool get ignoreDepthValues;

  ///  A number indicating the amount of foveation used by the XR
  /// compositor. Fixed Foveated Rendering (FFR) renders the edges of
  /// the eye textures at a lower resolution than the center and
  /// reduces the GPU load.
  ///
  external double? get fixedFoveation;
  external set fixedFoveation(double? newValue);

  ///  Returns a [WebGLFramebuffer] suitable for passing into the
  /// [bindFrameBuffer()] method.
  ///
  external WebGLFramebuffer? get framebuffer;

  /// Returns the width of the [XRWebGLLayer]'s framebuffer.
  ///
  external int get framebufferWidth;

  /// Returns the height of the layer's framebuffer.
  ///
  external int get framebufferHeight;

  ///  Returns a new [XRViewport] instance representing the position,
  /// width, and height to which the WebGL context's viewport must be
  /// set to contain drawing to the area of the framebuffer designated
  /// for the specified view's contents. In this way, for example, the
  /// rendering of the left eye's point of view and of the right eye's
  /// point of view are each placed into the correct parts of the
  /// framebuffer.
  ///
  /// getViewport(view);
  ///
  ///
  ///  This example demonstrates in part what the callback for the
  ///  requestAnimationFrame() function might
  ///  look like, using getViewport() to get the viewport so that drawing can be
  ///  constrained to the area set aside for the eye whose viewpoint is currently being
  ///  rendered.
  ///  This works because the set of views returned by an XRViewerPose each
  ///  represent one eye's perspective on the scene. Since the framebuffer is split in half,
  ///  one half for each eye, setting the WebGL viewport to match the WebXR layer's viewport
  ///  will ensure that when rendering the scene for the current eye's pose, it is rendered
  ///  into the correct half of the framebuffer.
  ///
  /// <<<--- add link to appropriate section in the Cameras and views
  /// article --->>>
  /// function drawFrame(time, frame) {
  ///  let session = frame.session;
  ///
  ///  let pose = frame.getViewerPose(mainReferenceSpace);
  ///
  ///  if (pose) {
  ///   let glLayer = session.renderState.baseLayer;
  ///   gl.bindFramebuffer(gl.FRAMEBUFFER, glLayer.framebuffer);
  ///
  ///   gl.clearColor(0, 0, 0, 1.0);
  ///   gl.clearDepth(1.0);
  ///   gl.clear(gl.COLOR_BUFFER_BIT, gl.DEPTH_COLOR_BIT);
  ///
  ///   for (let view of pose.views) {
  ///    let viewport = glLayer.getViewport(view);
  ///    gl.viewport(viewport.x, viewport.y, viewport.width, viewport.height);
  ///
  ///    /* Render the scene now */
  ///  }
  /// }
  ///
  external XRViewport? getViewport(XRView view);
  external static double getNativeFramebufferScaleFactor(XRSession session);
}

///  The WebXR Device API's interface describes an event which
/// indicates the change of the state of an [XRSession]. These events
/// occur, for example, when the session ends or the visibility of
/// its context changes.
@JS()
@staticInterop
class XRSessionEvent implements Event {
  external factory XRSessionEvent(
      String type, XRSessionEventInit eventInitDict);
}

extension PropsXRSessionEvent on XRSessionEvent {
  /// The [XRSession] to which the event refers.
  ///
  external XRSession get session;
}

@anonymous
@JS()
@staticInterop
class XRSessionEventInit implements EventInit {
  external factory XRSessionEventInit({XRSession session});
}

extension PropsXRSessionEventInit on XRSessionEventInit {
  external XRSession get session;
  external set session(XRSession newValue);
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
@JS()
@staticInterop
class XRInputSourceEvent implements Event {
  external factory XRInputSourceEvent(
      String type, XRInputSourceEventInit eventInitDict);
}

extension PropsXRInputSourceEvent on XRInputSourceEvent {
  ///  An [XRFrame] object providing the needed information about the
  /// event frame during which the event occurred. This frame may have
  /// been rendered in the past rather than being a current frame.
  /// Because this is an event frame, not an animation frame, you
  /// cannot call the [XRFrame] method [getViewerPose()] on it;
  /// instead, use [getPose()].
  ///
  external XRFrame get frame;

  ///  An [XRInputSource] object indicating which input source
  /// generated the input event.
  ///
  external XRInputSource get inputSource;
}

@anonymous
@JS()
@staticInterop
class XRInputSourceEventInit implements EventInit {
  external factory XRInputSourceEventInit(
      {XRFrame frame, XRInputSource inputSource});
}

extension PropsXRInputSourceEventInit on XRInputSourceEventInit {
  external XRFrame get frame;
  external set frame(XRFrame newValue);
  external XRInputSource get inputSource;
  external set inputSource(XRInputSource newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface is used to represent the
/// [inputsourceschange] event sent to an [XRSession] when the set of
/// available WebXR input controllers changes.
@JS()
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external factory XRInputSourcesChangeEvent(
      String type, XRInputSourcesChangeEventInit eventInitDict);
}

extension PropsXRInputSourcesChangeEvent on XRInputSourcesChangeEvent {
  ///  The [XRSession] to which this input source change event is being
  /// directed.
  ///
  external XRSession get session;

  ///  An array of zero or more [XRInputSource] objects, each
  /// representing an input device which has been newly connected or
  /// enabled for use.
  ///
  external Iterable<XRInputSource> get added;

  ///  An array of zero or more [XRInputSource] objects representing
  /// the input devices newly connected or enabled for use.
  ///
  external Iterable<XRInputSource> get removed;
}

@anonymous
@JS()
@staticInterop
class XRInputSourcesChangeEventInit implements EventInit {
  external factory XRInputSourcesChangeEventInit(
      {XRSession session,
      Iterable<XRInputSource> added,
      Iterable<XRInputSource> removed});
}

extension PropsXRInputSourcesChangeEventInit on XRInputSourcesChangeEventInit {
  external XRSession get session;
  external set session(XRSession newValue);
  external Iterable<XRInputSource> get added;
  external set added(Iterable<XRInputSource> newValue);
  external Iterable<XRInputSource> get removed;
  external set removed(Iterable<XRInputSource> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The WebXR Device API interface represents an event sent to an
/// [XRReferenceSpace]. Currently, the only event that uses this type
/// is the [reset] event.
@JS()
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external factory XRReferenceSpaceEvent(
      String type, XRReferenceSpaceEventInit eventInitDict);
}

extension PropsXRReferenceSpaceEvent on XRReferenceSpaceEvent {
  ///  An [XRReferenceSpace] indicating the reference space that
  /// generated the event.
  ///
  external XRReferenceSpace get referenceSpace;

  ///  An [XRRigidTransform] object indicating the position and
  /// orientation of the specified [referenceSpace]'s native origin
  /// after the event, defined relative to the coordinate system before
  /// the event.
  ///
  external XRRigidTransform? get transform;
}

@anonymous
@JS()
@staticInterop
class XRReferenceSpaceEventInit implements EventInit {
  external factory XRReferenceSpaceEventInit(
      {XRReferenceSpace referenceSpace, XRRigidTransform? transform});
}

extension PropsXRReferenceSpaceEventInit on XRReferenceSpaceEventInit {
  external XRReferenceSpace get referenceSpace;
  external set referenceSpace(XRReferenceSpace newValue);
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);
}

@anonymous
@JS()
@staticInterop
class XRPermissionDescriptor implements PermissionDescriptor {
  external factory XRPermissionDescriptor(
      {XRSessionMode mode,
      Iterable<dynamic> requiredFeatures,
      Iterable<dynamic> optionalFeatures});
}

extension PropsXRPermissionDescriptor on XRPermissionDescriptor {
  external XRSessionMode get mode;
  external set mode(XRSessionMode newValue);
  external Iterable<dynamic> get requiredFeatures;
  external set requiredFeatures(Iterable<dynamic> newValue);
  external Iterable<dynamic> get optionalFeatures;
  external set optionalFeatures(Iterable<dynamic> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface defines the object returned by calling
/// [navigator.permissions.query()] for the [xr] permission name; it
/// indicates whether or not the app or site has permission to use
/// WebXR, and may be monitored over time for changes to that
/// permissions tate.
@JS()
@staticInterop
class XRPermissionStatus implements PermissionStatus {
  external factory XRPermissionStatus();
}

extension PropsXRPermissionStatus on XRPermissionStatus {
  ///  An array of strings listing the names of the features for which
  /// permission has been granted as of the time at which
  /// [navigator.permissions.query()] was called. Any feature which was
  /// specified in either [optionalFeatures] or [requiredFeatures] when
  /// calling [navigator.permissions.query()] are listed in if and only
  /// if permission to use them is granted.
  ///
  external Iterable<dynamic> get granted;
  external set granted(Iterable<dynamic> newValue);
}

@anonymous
@JS()
@staticInterop
class XRSessionSupportedPermissionDescriptor implements PermissionDescriptor {
  external factory XRSessionSupportedPermissionDescriptor({XRSessionMode mode});
}

extension PropsXRSessionSupportedPermissionDescriptor
    on XRSessionSupportedPermissionDescriptor {
  external XRSessionMode get mode;
  external set mode(XRSessionMode newValue);
}
