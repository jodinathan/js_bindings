/// WebXR Device API
///
/// https://immersive-web.github.io/webxr/
@JS('window')
library webxr;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'hr_time_3.dart';
import 'geometry_1.dart';
import 'webgl1.dart';
import 'webgl2.dart';
import 'permissions.dart';
import 'webxr_ar_module_1.dart';
import 'anchors.dart';
import 'webxr.dart';
import 'hit_test.dart';
import 'depth_sensing.dart';
import 'lighting_estimation.dart';
import 'webxr_hand_input_1.dart';
import 'dom_overlays.dart';
import 'gamepad.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API interface [XRSystem] provides methods which
/// let you get access to an [XRSession] object representing a WebXR
/// session. With that [XRSession] in hand, you can use it to
/// interact with the Augmented Reality (AR) or Virtual Reality (VR)
/// device.
@experimental
@JS()
class XRSystem extends EventTarget {
  ///  Returns a promise which resolves to [true] if the browser
  /// supports the given [XRSessionMode]. Resolves to [false] if the
  /// specified mode isn't supported.
  /// var isSupportedPromise = xr.isSessionSupported(xrSessionMode)
  @experimental
  external Promise<bool> isSessionSupported(XRSessionMode mode);

  ///  Returns a promise that resolves to a new [XRSession] with the
  /// specified [XRSessionMode].
  /// var sessionPromise = xr.requestSession(sessionMode, sessionInit)
  ///
  @experimental
  external Promise<XRSession> requestSession(XRSessionMode mode,
      [XRSessionInit? options]);
  external EventHandlerNonNull? get ondevicechange;
  external set ondevicechange(EventHandlerNonNull? newValue);

  external factory XRSystem();
}

@JS()
enum XRSessionMode {
  inline,
  @JS('immersive-vr')
  immersiveVr,
  @JS('immersive-ar')
  immersiveAr
}

///
///   Draft
///   This page is not complete.
///
///  The WebXR Device API dictionary [XRSessionInit] specifies
/// required and/or optional features when requesting a new
/// [XRSession] by calling the [navigator.xr.requestSession()]
/// method.
@anonymous
@JS()
class XRSessionInit {
  ///  An array of values which the returned [XRSession] must support.
  /// These values currently must come from the enumerated type
  /// [XRReferenceSpaceType]. More features may be added in future
  /// updates to the WebXR standard.
  external Iterable<dynamic> get requiredFeatures;
  external set requiredFeatures(Iterable<dynamic> newValue);

  ///  An array of values identifying features which the returned
  /// [XRSession] may optionally support. At this time, all features
  /// are identified using strings from the [XRReferenceSpaceType]
  /// enumeration, but future updates to the WebXR standard may add
  /// more features.
  external Iterable<dynamic> get optionalFeatures;
  external set optionalFeatures(Iterable<dynamic> newValue);
  external XRDepthStateInit get depthSensing;
  external set depthSensing(XRDepthStateInit newValue);
  external XRDOMOverlayInit? get domOverlay;
  external set domOverlay(XRDOMOverlayInit? newValue);

  external factory XRSessionInit(
      {Iterable<dynamic> requiredFeatures,
      Iterable<dynamic> optionalFeatures,
      XRDepthStateInit depthSensing,
      XRDOMOverlayInit? domOverlay});
}

@JS()
enum XRVisibilityState {
  visible,
  @JS('visible-blurred')
  visibleBlurred,
  hidden
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Draft
///   This page is not complete.
///
///  The WebXR Device API's [XRSession] interface represents an
/// ongoing XR session, providing methods and properties used to
/// interact with and control the session. To open a WebXR session,
/// use the [XRSystem] interface's [requestSession()] method.
///
///  With methods, you can poll the viewer's position and orientation
/// (the [XRViewerPose]), gather information about the user's
/// environment, and present imagery to the user. supports both
/// inline and immersive virtual and augmented reality modes.
@JS()
class XRSession extends EventTarget {
  ///  A [DOMString] whose value is one of those found in the
  /// [XRVisibilityState] enumerated type, indicating whether or not
  /// the session's imagery is visible to the user, and if so, if it's
  /// being visible but not currently the target for user events.
  @experimental
  external XRVisibilityState get visibilityState;

  ///  An [XRRenderState] object which contains options affecting how
  /// the imagery is rendered. This includes things such as the near
  /// and far clipping planes (distances defining how close and how far
  /// away objects can be and still get rendered), as well as field of
  /// view information.
  @experimental
  external XRRenderState get renderState;

  ///  Returns a list of this session's [XRInputSource]s, each
  /// representing an input device used to control the camera and/or
  /// scene.
  @experimental
  external XRInputSourceArray get inputSources;

  ///  Updates the properties of the session's render state to match
  /// the values specified in the specified [XRRenderStateInit]
  /// dictionary. Any properties not included in the given dictionary
  /// are left unchanged from their current values.
  /// xrSession.updateRenderState(newState)
  external Object updateRenderState([XRRenderStateInit? state]);

  ///  Requests that a new [XRReferenceSpace] of the specified type be
  /// created. Returns a promise which resolves with the
  /// [XRReferenceSpace] or [XRBoundedReferenceSpace] which was
  /// requested, or throws a [NotSupportedError] if the requested space
  /// type isn't supported by the device.
  /// refSpacePromise = xrSession.requestReferenceSpace(referenceSpaceType);
  external Promise<XRReferenceSpace> requestReferenceSpace(
      XRReferenceSpaceType type);

  ///  Schedules the specified method to be called the next time the
  /// user agent is working on rendering an animation frame for the
  /// WebXR device. Returns an integer value which can be used to
  /// identify the request for the purposes of canceling the callback
  /// using [cancelAnimationFrame()]. This method is comparable to the
  /// [Window.requestAnimationFrame()] method.
  /// requestID = xrSession.requestAnimationFrame(animationFrameCallback);
  ///
  /// The following example requests XRSession with "inline" mode so that it can
  ///  be displayed in an HTML element (without the need for a separate AR or VR device).
  ///  Note: A real application should check that the device and the User
  ///   Agent support WebXR API at all and then that they both support the desired session
  ///   type via XR.isSessionSupported().
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
  /// The following example was taken directly from the spec draft. This example demonstrates
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
  external int requestAnimationFrame(XRFrameRequestCallback callback);

  ///  Removes a callback from the animation frame painting callback
  /// from [XRSession]'s set of animation frame rendering callbacks,
  /// given the identifying handle returned by a previous call to
  /// [requestAnimationFrame()].
  /// xrSession.cancelAnimationFrame(handle);
  ///
  /// In the example below we see code which starts up a WebXR session if immersive VR mode
  ///  is supported. Once started, the session schedules its first frame to be rendered by
  ///  calling requestAnimationFrame().
  ///
  /// The pauseXR() function shown at the bottom can be called to suspend the
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
  ///
  external Object cancelAnimationFrame(int handle);

  ///  Ends the WebXR session. Returns a [promise] which resolves when
  /// the session has been shut down.
  /// xrSession.end();
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

  external factory XRSession();
}

///
///   Draft
///   This page is not complete.
///
///  The [XRRenderStateInit] dictionary is a writeable version of the
/// [XRRenderState] interface, and is used when calling an
/// [XRSession]'s [updateRenderState()] method to apply changes to
/// the render state prior to rendering the next frame.
///
///  All distances are specified as floating-point values in meters;
/// you can specify a value of 50 centimeters using a value of 0.5,
/// for example.
@anonymous
@JS()
class XRRenderStateInit {
  ///  A floating-point value indicating the distance in meters from
  /// the viewer to a plane parallel to the display surface to be the
  /// near clip plane. No part of the scene on the viewer's side of
  /// this plane will be rendered. This is 0.1 meters (10 centimeters)
  /// by default.
  external double get depthNear;
  external set depthNear(double newValue);

  ///  A floating-point value specifying the distance in meters from
  /// the viewer to the far clip plane, which is a plane parallel to
  /// the display surface beyond which no further rendering will occur.
  /// All rendering will take place between the distances specified by
  /// [depthNear] and . This is 1000 meters (1 kilometer) by default.
  external double get depthFar;
  external set depthFar(double newValue);

  ///  A floating-point value indicating the default field of view, in
  /// radians, to be used when computing the projection matrix for an
  /// [inline] [XRSession]. The projection matrix calculation also
  /// takes into account the output canvas's aspect ratio. This
  /// property must not be specified for immersive sessions, so the
  /// value is [null] by default for immersive sessions. The default
  /// value is otherwise π * 0.5 (half of the value of pi).
  external double get inlineVerticalFieldOfView;
  external set inlineVerticalFieldOfView(double newValue);

  ///  An [XRWebGLLayer] object from which the WebXR compositor will
  /// obtain imagery. This is [null] by default.
  external XRWebGLLayer? get baseLayer;
  external set baseLayer(XRWebGLLayer? newValue);
  external Iterable<XRLayer> get layers;
  external set layers(Iterable<XRLayer> newValue);

  external factory XRRenderStateInit(
      {double depthNear,
      double depthFar,
      double inlineVerticalFieldOfView,
      XRWebGLLayer? baseLayer,
      Iterable<XRLayer> layers});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [XRRenderState] interface of the WebXR Device API contains
/// configurable values which affect how the imagery generated by an
/// [XRSession] gets composited. These properties include the range
/// of distances from the viewer within which content should be
/// rendered, the vertical field of view (for inline presentations),
/// and a reference to the [XRWebGLLayer] being used as the target
/// for rendering the scene prior to it being presented on the XR
/// device's display or displays.
///
///  When you apply changes using the [XRSession] method
/// [updateRenderState()], the specified changes take effect after
/// the current animation frame has completed, but before the next
/// one begins.
@experimental
@JS()
class XRRenderState {
  ///  The distance, in meters, of the near clip plane from the viewer.
  /// The near clip plane is the plane, parallel to the display, at
  /// which rendering of the scene begins. Any closer to the viewer
  /// than this, and no portions of the scene are drawn.
  @experimental
  external double get depthNear;

  ///  The distance, in meters, of the far clip plane from the viewer.
  /// The far clip plane is the plane which is parallel to the display
  /// beyond which rendering of the scene no longer takes place. This,
  /// essentially, specifies the maximum distance the user can see.
  @experimental
  external double get depthFar;

  ///  The default vertical field of view, defined in radians, to use
  /// when the session is in [inline] mode. [null] for all immersive
  /// sessions.
  @experimental
  external double? get inlineVerticalFieldOfView;

  ///  The [XRWebGLLayer] from which the browser's compositing system
  /// obtains the image for the XR session.
  @experimental
  external XRWebGLLayer? get baseLayer;
  external Iterable<XRLayer> get layers;

  external factory XRRenderState();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Draft
///   This page is not complete.
///
///  A WebXR Device API [XRFrame] object is passed into the
/// [requestAnimationFrame()] callback function and provides access
/// to the information needed in order to render a single frame of
/// animation for an [XRSession] describing a VR or AR sccene. Events
/// which communicate the tracking state of objects also provide an
/// reference as part of their structure.
///
///  In addition to providing a reference to the [XRSession] for
/// which this frame is to be rendered, the [getViewerPose()] method
/// is provided to obtain the [XRViewerPose] describing the viewer's
/// position and orientation in space, and [getPose()] can be used to
/// create an [XRPose] describing the relative position of one
/// [XRSpace] relative to another.
@JS()
class XRFrame {
  ///  The [XRSession] that for which this [XRFrame] describes the
  /// tracking details for all objects. The information about a
  /// specific object can be obtained by calling one of the methods on
  /// the object.
  external XRSession get session;

  ///  Returns an [XRViewerPose] describing the viewer's position and
  /// orientation in a given [XRReferenceSpace].
  /// var xrViewerPose = xrFrame.getViewerPose(referenceSpace);
  external XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);

  ///  Returns an [XRPose] object representing the spatial relationship
  /// between the two specified [XRSpace] objects.
  /// var xrPose = xrFrame.getPose(space, baseSpace);
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

  external factory XRFrame();
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebXR Device API is an abstract interface
/// providing a common basis for every class which represents a
/// virtual coordinate system within the virtual world, in which its
/// origin corresponds to a physical location. Spatial data in WebXR
/// is always expressed relative to an object based upon one of the
/// descendant interfaces of , at the time at which a given [XRFrame]
/// takes place.
///
///  Numeric values such as pose positions are thus coordinates in
/// the corresponding , relative to that space's origin.
///  Note: The interface is never used directly; instead, all spaces
/// are created using one of the interfaces based on . At this time,
/// those are [XRReferenceSpace] and [XRBoundedReferenceSpace].
///
@experimental
@JS()
class XRSpace extends EventTarget {
  external factory XRSpace();
}

@JS()
enum XRReferenceSpaceType {
  viewer,
  local,
  @JS('local-floor')
  localFloor,
  @JS('bounded-floor')
  boundedFloor,
  unbounded
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's [XRReferenceSpace] interface describes
/// the coordinate system for a specific tracked entity or object
/// within the virtual world using a specified tracking behavior. The
/// tracking behavior is defined by the selected reference space
/// type. It expands upon the base class, [XRSpace], by adding
/// support for several different tracking behaviors as well as to
/// request a new reference space which describes the offset
/// transform between the tracked object and another location in the
/// world.
///
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
class XRReferenceSpace extends XRSpace {
  ///  Creates and returns a new reference space object as the same
  /// type as the one on which you call the method (so, either
  /// [XRReferenceSpace] or [XRBoundedReferenceSpace]). The new
  /// reference space can be used to transform a coordinate from the
  /// reference space of the object on which the method is called into
  /// a different coordinate space. This is useful for positioning
  /// objects while rendering, and to perform the needed transforms
  /// when changing the viewer's position and/or orientation in 3D
  /// space.
  /// offsetReferenceSpace = xrReferenceSpace.getOffsetReferenceSpace(originOffset);
  external XRReferenceSpace getOffsetReferenceSpace(
      XRRigidTransform originOffset);
  external EventHandlerNonNull? get onreset;
  external set onreset(EventHandlerNonNull? newValue);

  external factory XRReferenceSpace();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's [XRBoundedReferenceSpace] interface
/// describes a virtual world reference space which has preset
/// boundaries. This extends [XRReferenceSpace], which describes an
/// essentially unrestricted space around the viewer's position.
/// These bounds are defined using an array of points, each of which
/// defines a vertex in a polygon inside which the user is allowed to
/// move.
///
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
class XRBoundedReferenceSpace extends XRReferenceSpace {
  ///  An array of [DOMPointReadOnly] objects, each of which defines a
  /// vertex in the polygon defining the boundaries within which the
  /// user will be required to remain. These vertices must be sorted
  /// such that they move clockwise around the viewer's position.
  external Iterable<DOMPointReadOnly> get boundsGeometry;

  external factory XRBoundedReferenceSpace();
}

@JS()
enum XREye { none, left, right }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's [XRView] interface provides information
/// describing a single view into the XR scene for a specific frame,
/// providing orientation and position information for the viewpoint.
/// You can think of it as a description of a specific eye or camera
/// and how it views the world. A 3D frame will involve two views,
/// one for each eye, separated by an appropriate distance which
/// approximates the distance between the viewer's eyes. This allows
/// the two views, when projected in isolation into the appropriate
/// eyes, to simulate a 3D world.
@JS()
class XRView {
  ///  Which of the two eyes ([left]) or ([right]) for which this
  /// [XRView] represents the perspective. This value is used to ensure
  /// that any content which is pre-rendered for presenting to a
  /// specific eye is distributed or positioned correctly. The value
  /// can also be [none] if the [XRView] is presenting monoscopic data
  /// (such as a 2D image, a full-screen view of text. or a close-up
  /// view of something that doesn't need to appear in 3D).
  external XREye get eye;

  ///  The projection matrix that will transform the scene to appear
  /// correctly given the point-of-view indicated by [eye]. This matrix
  /// should be used directly in order to avoid presentation
  /// distortions that may lead to potentially serious user discomfort.
  external Float32List get projectionMatrix;

  ///  An [XRRigidTransform] which describes the current position and
  /// orientation of the viewpoint in relation to the
  /// [XRReferenceSpace] specified when [getViewerPose()] was called on
  /// the [XRFrame] being rendered.
  external XRRigidTransform get transform;
  external double? get recommendedViewportScale;
  external Object requestViewportScale(double? scale);
  external bool get isFirstPersonObserver;

  external factory XRView();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's [XRViewport] interface provides
/// properties used to describe the size and position of the current
/// viewport within the [XRWebGLLayer] being used to render the 3D
/// scene.
@JS()
class XRViewport {
  ///  The offset from the origin of the destination graphics surface
  /// (typically a [XRWebGLLayer]) to the left edge of the viewport, in
  /// pixels.
  external int get x;

  ///  The offset from the origin of the viewport to the bottom edge of
  /// the viewport; WebGL's coordinate system places (0, 0) at the
  /// bottom left corner of the surface.
  external int get y;

  /// The width, in pixels, of the viewport.
  external int get width;

  /// The height, in pixels, of the viewport.
  external int get height;

  external factory XRViewport();
}

///
///
///  The is a WebXR API interface that represents the 3D geometric
/// transform described by a position and orientation.
///
///   is used to specify transforms throughout the WebXR APIs,
/// including:
///   The offset and orientation relative to the parent reference
/// space to use when creating a new reference space with
/// [getOffsetReferenceSpace()].
///  The [transform] of an [XRView].
///  The [transform] of an [XRPose].
///   The [XRReferenceSpaceEvent] event's [transform] property, as
/// found in the [reset] event received by an [XRReferenceSpace].
///  Using in these places rather than bare arrays that provide the
/// matrix data has an advantage. It automatically computes the
/// inverse of the transform and even caches it making subsequent
/// requests significantly faster.
@JS()
class XRRigidTransform {
  external factory XRRigidTransform(
      {DOMPointInit? position, DOMPointInit? orientation});

  ///  A [DOMPointReadOnly] specifying a 3-dimensional point, expressed
  /// in meters, describing the translation component of the transform.
  /// The [w] property is always [1.0].
  @experimental
  external DOMPointReadOnly get position;

  ///  A [DOMPointReadOnly] which contains a unit quaternion describing
  /// the rotational component of the transform. As a unit quaternion,
  /// its length is always normalized to [1.0].
  @experimental
  external DOMPointReadOnly get orientation;

  ///  Returns the transform matrix in the form of a 16-member
  /// [Float32Array]. See the section Matrix format for how the array
  /// is used to represent a matrix.
  @experimental
  external Float32List get matrix;

  ///  Returns a [XRRigidTransform] which is the inverse of this
  /// transform. That is, if applied to an object that had been
  /// previously transformed by the original transform, it will undo
  /// the transform and return the original object.
  @experimental
  external XRRigidTransform get inverse;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Draft
///   This page is not complete.
///
///   is a WebXR API interface representing a position and
/// orientation in the 3D space, relative to the [XRSpace] within
/// which it resides. The [XRSpace]—which is either an
/// [XRReferenceSpace] or an [XRBoundedReferenceSpace]—defines the
/// coordinate system used for the pose and, in the case of an
/// [XRViewerPose], its underlying views.
///
///  To obtain the for the [XRSpace] used as the local coordinate
/// system of an object, call [XRFrame.getPose()], specifying that
/// local [XRSpace] and the space to which you wish to convert:
///
/// [thePose = xrFrame.getPose(localSpace, baseSpace);]
///
///  The pose for a viewer (or camera) is represented by the
/// [XRViewerPose] subclass of . This is obtained using
/// [XRFrame.getViewerPose()] instead of [getPose()], specifying a
/// reference space which has been adjusted to position and orient
/// the node to provide the desired viewing position and angle:
///
/// [viewerPose = xrFrame.getViewerPose(adjReferenceSpace);]
///
///  Here, [adjReferenceSpace] is a reference space which has been
/// updated using the base frame of reference for the frame and any
/// adjustments needed to position the viewer based on movement or
/// rotation which is being supplied from a source other than the XR
/// device, such as keyboard or mouse inputs.
///
///  See the article Movement, orientation, and motion for further
/// details and an example with thorough explanations of what's going
/// on.
@JS()
class XRPose {
  ///  A [XRRigidTransform] which provides the position and orientation
  /// of the pose relative to the base [XRSpace].
  external XRRigidTransform get transform;
  external DOMPointReadOnly? get linearVelocity;
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
  external bool get emulatedPosition;

  external factory XRPose();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API interface [XRViewerPose] represents the
/// pose (the position and orientation) of a viewer's point of view
/// on the scene. Each can have multiple views to represent, for
/// example, the slight separation between the left and right eye.
/// This view can represent anything from the point-of-view of a
/// user's XR headset to the viewpoint represented by a player's
/// movement of an avatar using mouse and keyboard, presented on the
/// screen, to a virtual camera capturing the scene for a spectator.
@JS()
class XRViewerPose extends XRPose {
  ///  An array of [XRView] objects, one for each viewpoint on the
  /// scene which is needed to represent the scene to the user. A
  /// typical headset provides a viewer pose with two views whose [eye]
  /// property is either [left] or [right], indicating which eye that
  /// view represents. Taken together, these views can reproduce the 3D
  /// effect when displayed on the XR device.
  external Iterable<XRView> get views;

  external factory XRViewerPose();
}

@JS()
enum XRHandedness { none, left, right }

@JS()
enum XRTargetRayMode {
  gaze,
  @JS('tracked-pointer')
  trackedPointer,
  screen
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's interface describes a single source of
/// control input which is part of the user's WebXR-compatible
/// virtual or augmented reality system. The device is specific to
/// the platform being used, but provides the direction in which it
/// is being aimed and optionally may generate events if the user
/// triggers performs actions using the device.
@experimental
@JS()
class XRInputSource {
  ///  A [DOMString] that indicates which hand the device represented
  /// by this [XRInputSource] is being used in, if any. The value will
  /// be [left], [right], or [none].
  external XRHandedness get handedness;

  ///  A [DOMString] indicating the methodology used to produce the
  /// target ray: [gaze], [tracked-pointer], or [screen].
  ///
  external XRTargetRayMode get targetRayMode;

  ///  An [XRSpace] object defining the origin of the target ray and
  /// the direciton in which it extends. This space is established
  /// using the method defined by [targetRayMode].
  external XRSpace get targetRaySpace;

  ///  An [XRSpace] whose origin tracks the pose which is used to
  /// render objects which should appear as if they're held in the hand
  /// indicated by [handedness]. The orientation of this space
  /// indicates the angle at which the hand is gripping the object.
  /// Read on in the main article on for more details on how to use
  /// this space.
  external XRSpace? get gripSpace;

  ///  An array of [DOMString] objects, each specifying the name of an
  /// input profile describing the preferred visual representation and
  /// behavior of this input source.
  external Iterable<String> get profiles;
  external XRHand? get hand;
  external Gamepad? get gamepad;

  external factory XRInputSource();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface [XRInputSourceArray] represents a live list of
/// WebXR input sources, and is used as the return value of the
/// [XRSession] property [inputSources]. Each entry is an
/// [XRInputSource] representing one input device connected to the
/// WebXR system.
///
///  In addition to being able to access the input sources in the
/// list using standard array notation (that is, with index numbers
/// insize square brackets), methods are available to allow the use
/// of iterators and the [forEach()] method is also available.
@JS()
class XRInputSourceArray {
  external XRInputSource operator [](int index);

  /// The number of [XRInputSource] objects in the list.
  external int get length;

  external factory XRInputSourceArray();
}

@JS()
class XRLayer extends EventTarget {
  external factory XRLayer();
}

///
///
///  The WebXR Device API's [XRWebGLLayerInit] dictionary is used to
/// provide configuration options when creating a new [XRWebGLLayer]
/// object with the [XRWebGLLayer()] constructor. The constructor's
/// optional [layerInit] parameter takes an object which must conform
/// to this dictionary.
@anonymous
@JS()
class XRWebGLLayerInit {
  ///  A Boolean value which is [true] if anti-aliasing is to be used
  /// when rendering in the context; otherwise [false]. The browser
  /// selects the anti-aliasing method to use; there is no support for
  /// requesting a specific mode yet. The default value is [true].
  external bool get antialias;
  external set antialias(bool newValue);

  ///  A Boolean value which, if [true], requests that the new layer
  /// have a depth buffer; otherwise, no depth layer is allocated. The
  /// default is [true].
  external bool get depth;
  external set depth(bool newValue);

  ///  A Boolean value which, if [true], requests that the new layer
  /// include a stencil buffer. Otherwise, no stencil buffer is
  /// allocated. The default is [false].
  external bool get stencil;
  external set stencil(bool newValue);

  ///  The frame buffer's color buffer will be established with an
  /// alpha channel if the Boolean property is [true]. Otherwise, the
  /// color buffer will not have an alpha channel. The default value is
  /// [true].
  external bool get alpha;
  external set alpha(bool newValue);

  ///  A Boolean value which indicates whether or not to ignore the
  /// contents of the depth buffer while compositing the scene. The
  /// default is [false].
  external bool get ignoreDepthValues;
  external set ignoreDepthValues(bool newValue);

  ///  A floating-point value which is used to scale the image during
  /// compositing, with a value of 1.0 represents the default pixel
  /// size for the frame buffer. The static [XRWebGLLayer] function
  /// [XRWebGLLayer.getNativeFramebufferScaleFactor()] returns the
  /// scale that would result in a 1:1 pixel ratio, thereby ensuring
  /// that the rendering is occurring at the device's native
  /// resolution. The default is 1.0.
  external double get framebufferScaleFactor;
  external set framebufferScaleFactor(double newValue);

  external factory XRWebGLLayerInit(
      {bool antialias = true,
      bool depth = true,
      bool stencil = false,
      bool alpha = true,
      bool ignoreDepthValues = false,
      double framebufferScaleFactor = 1.0});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebXR Device API provides a linkage between
/// the WebXR device (or simulated XR device, in the case of an
/// inline session) and a WebGL context used to render the scene for
/// display on the device. In particular, it provides access to the
/// WebGL framebuffer and viewport to ease access to the context.
///
///  Although is currently the only type of framebuffer layer
/// supported by WebGL, it's entirely possible that future updates to
/// the WebXR specification may allow for other layer types and
/// corresponding image sources.
@experimental
@JS()
class XRWebGLLayer extends XRLayer {
  external factory XRWebGLLayer(
      {XRSession session, dynamic context, XRWebGLLayerInit? layerInit});

  ///  A Boolean value indicating whether or not the WebGL context's
  /// framebuffer supports anti-aliasing. The specific type of
  /// anti-aliasing is determined by the user agent.
  external bool get antialias;

  ///  A Boolean which Indicates whether or not the WebXR compositor
  /// should make use of the contents of the layer's depth buffer while
  /// compositing the scene.
  external bool get ignoreDepthValues;
  external double? get fixedFoveation;
  external set fixedFoveation(double? newValue);

  ///  Returns a [WebGLFramebuffer] suitable for passing into the
  /// [bindFrameBuffer()] method.
  external WebGLFramebuffer? get framebuffer;

  /// Returns the width of the [XRWebGLLayer]'s framebuffer.
  external int get framebufferWidth;

  /// Returns the height of the layer's framebuffer.
  external int get framebufferHeight;

  ///  Returns a new [XRViewport] instance representing the position,
  /// width, and height to which the WebGL context's viewport must be
  /// set to contain drawing to the area of the framebuffer designated
  /// for the specified view's contents. In this way, for example, the
  /// rendering of the left eye's point of view and of the right eye's
  /// point of view are each placed into the correct parts of the
  /// framebuffer.
  /// let viewport = xrWebGLLayer.getViewport(view);
  /// This example demonstrates in part what the callback for the
  ///  requestAnimationFrame() function might
  ///  look like, using getViewport() to get the viewport so that drawing can be
  ///  constrained to the area set aside for the eye whose viewpoint is currently being
  ///  rendered.
  ///
  /// This works because the set of views returned by an XRViewerPose each
  ///  represent one eye's perspective on the scene. Since the framebuffer is split in half,
  ///  one half for each eye, setting the WebGL viewport to match the WebXR layer's viewport
  ///  will ensure that when rendering the scene for the current eye's pose, it is rendered
  ///  into the correct half of the framebuffer.
  ///
  /// <<<--- add link to appropriate section in the Cameras and views
  ///   article --->>>
  ///
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

///
///
///  The WebXR Device API's [XRSessionEvent] interface describes an
/// event which indicates the change of the state of an [XRSession].
/// These events occur, for example, when the session ends or the
/// visibility of its context changes.
@JS()
class XRSessionEvent extends Event {
  external factory XRSessionEvent(
      {String type, XRSessionEventInit eventInitDict});

  /// The [XRSession] to which the event refers.
  external XRSession get session;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [XRSessionEventInit] dictionary is used when calling the
/// [XRSessionEvent()] constructor to provide the new event's initial
/// values. You're unlikely to need to create these events yourself,
/// however, as they're created by the XR system.
@anonymous
@JS()
class XRSessionEventInit extends EventInit {
  /// The [XRSession] to which the event is to be delivered.
  external XRSession get session;
  external set session(XRSession newValue);

  external factory XRSessionEventInit({XRSession session});
}

///   Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API's [XRInputSourceEvent] interface describes
/// an event which has occurred on a WebXR user input device such as
/// a hand controller, gaze tracking system, or motion tracking
/// system. More specifically, they represent a change in the state
/// of an [XRInputSource].
///
///  To learn more about handling inputs in a WebXR project, see the
/// article Inputs and input sources.
@JS()
class XRInputSourceEvent extends Event {
  external factory XRInputSourceEvent(
      {String type, XRInputSourceEventInit eventInitDict});

  ///  An [XRFrame] object providing the needed information about the
  /// event frame during which the event occurred. This frame may have
  /// been rendered in the past rather than being a current frame.
  /// Because this is an event frame, not an animation frame, you
  /// cannot call the [XRFrame] method [getViewerPose()] on it;
  /// instead, use [getPose()].
  external XRFrame get frame;

  ///  An [XRInputSource] object indicating which input source
  /// generated the input event.
  external XRInputSource get inputSource;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [XRInputSourceEventInit] dictionary is used when calling the
/// [XRInputSourceEvent()] constructor to provide configuration
/// options for the newly-created [XRInputSourceEvent] object to take
/// on.
@anonymous
@JS()
class XRInputSourceEventInit extends EventInit {
  ///  An [XRFrame] object representing the event frame during which
  /// the event took place. This event is not associated with the
  /// animation process, and has no viewer information contained within
  /// it.
  external XRFrame get frame;
  external set frame(XRFrame newValue);

  ///  An [XRInputSource] object representing the input device from
  /// which the event is being sent.
  external XRInputSource get inputSource;
  external set inputSource(XRInputSource newValue);

  external factory XRInputSourceEventInit(
      {XRFrame frame, XRInputSource inputSource});
}

///   Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API interface [XRInputSourcesChangeEvent] is
/// used to represent the [inputsourceschange] event sent to an
/// [XRSession] when the set of available WebXR input controllers
/// changes.
@JS()
class XRInputSourcesChangeEvent extends Event {
  external factory XRInputSourcesChangeEvent(
      {String type, XRInputSourcesChangeEventInit eventInitDict});

  ///  The [XRSession] to which this input source change event is being
  /// directed.
  external XRSession get session;

  ///  An array of zero or more [XRInputSource] objects, each
  /// representing an input device which has been newly connected or
  /// enabled for use.
  external Iterable<XRInputSource> get added;

  ///  An array of zero or more [XRInputSource] objects representing
  /// the input devices newly connected or enabled for use.
  external Iterable<XRInputSource> get removed;
}

///   Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [XRInputSourcesChangeEventInit] dictionary is used to
/// provide options to the [XRInputSourcesChangeEvent()] constructor
/// in order to set the initial state of the new
/// [XRInputSourcesChangeEvent] object.
@anonymous
@JS()
class XRInputSourcesChangeEventInit extends EventInit {
  /// The [XRSession] to which the event applies.
  external XRSession get session;
  external set session(XRSession newValue);

  ///  An array of zero or more [XRInputSource] objects, each
  /// representing one input device which is newly available to use.
  external Iterable<XRInputSource> get added;
  external set added(Iterable<XRInputSource> newValue);

  ///  An array of zero or more [XRInputSource] objects representing
  /// the input devices which are no longer available.
  external Iterable<XRInputSource> get removed;
  external set removed(Iterable<XRInputSource> newValue);

  external factory XRInputSourcesChangeEventInit(
      {XRSession session,
      Iterable<XRInputSource> added,
      Iterable<XRInputSource> removed});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The WebXR Device API interface [XRReferenceSpaceEvent]
/// represents an event sent to an [XRReferenceSpace]. Currently, the
/// only event that uses this type is the [reset] event.
@JS()
class XRReferenceSpaceEvent extends Event {
  external factory XRReferenceSpaceEvent(
      {String type, XRReferenceSpaceEventInit eventInitDict});

  ///  An [XRReferenceSpace] indicating the reference space that
  /// generated the event.
  external XRReferenceSpace get referenceSpace;

  ///  An [XRRigidTransform] object indicating the position and
  /// orientation of the specified [referenceSpace]'s native origin
  /// after the event, defined relative to the coordinate system before
  /// the event.
  external XRRigidTransform? get transform;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [XRReferenceSpaceEventInit] dictionary is used when calling
/// the [XRReferenceSpaceEvent()] constructor to provide the values
/// for its properties. Since the properties are read-only, this is
/// the only opportunity available to set their values.
///
///  You will not usually need to use this, since these events are
/// created by the WebXR infrastructure.
@anonymous
@JS()
class XRReferenceSpaceEventInit extends EventInit {
  /// The [XRReferenceSpace] from which the event originated.
  external XRReferenceSpace get referenceSpace;
  external set referenceSpace(XRReferenceSpace newValue);

  ///  An [XRRigidTransform] which maps the old coordinate system (from
  /// before the changes indicated by this event) to the new coordiante
  /// system.
  external XRRigidTransform? get transform;
  external set transform(XRRigidTransform? newValue);

  external factory XRReferenceSpaceEventInit(
      {XRReferenceSpace referenceSpace, XRRigidTransform? transform});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  User permissions in the WebXR Device API are managed using the
/// Permissions API. To that end, the [XRPermissionDescriptor]
/// dictionary is used to describe the WebXR features the app needs
/// to use, as well as those features it would like ot use if
/// permision is granted.
///
///  The 's [name] must be set to [xr] in order to direct the
/// Permissions API to correctly handle the request as applying to
/// WebXR.
@anonymous
@JS()
class XRPermissionDescriptor extends PermissionDescriptor {
  ///  An [XRSessionMode] value indicating the XR mode ([inline],
  /// [immersive-vr], or [immersive-ar]) for which the permissions are
  /// requested.
  external XRSessionMode get mode;
  external set mode(XRSessionMode newValue);

  ///  An array of strings giving the names of the WebXR features for
  /// which permission must be obtained in order to use your app or
  /// site.
  external Iterable<dynamic> get requiredFeatures;
  external set requiredFeatures(Iterable<dynamic> newValue);

  ///  An array of strings, each specifying the name of a WebXR feature
  /// which is requested but not required for the app to function. The
  /// available features are the same as those used by [XRSessionInit];
  /// see Default features in XRSessionInit for further information.
  external Iterable<dynamic> get optionalFeatures;
  external set optionalFeatures(Iterable<dynamic> newValue);

  external factory XRPermissionDescriptor(
      {XRSessionMode mode,
      Iterable<dynamic> requiredFeatures,
      Iterable<dynamic> optionalFeatures});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Draft
///   This page is not complete.
///
///  The [XRPermissionStatus] interface defines the object returned
/// by calling [navigator.permissions.query()] for the [xr]
/// permission name; it indicates whether or not the app or site has
/// permission to use WebXR, an may be monitored over time for
/// changes to that permissions tate.
@JS()
class XRPermissionStatus extends PermissionStatus {
  ///  An array of strings listing the names of the features for which
  /// permission has been granted as of the time at which
  /// [navigator.permissions.query()] was called. Any feature which was
  /// specified in either the [optionalFeatures] or [requiredFeatures]
  /// when calling [navigator.permissions.query()] are listed in if and
  /// only if permission to use them is granted.
  external Iterable<dynamic> get granted;
  external set granted(Iterable<dynamic> newValue);

  external factory XRPermissionStatus();
}

@anonymous
@JS()
class XRSessionSupportedPermissionDescriptor extends PermissionDescriptor {
  external XRSessionMode get mode;
  external set mode(XRSessionMode newValue);

  external factory XRSessionSupportedPermissionDescriptor({XRSessionMode mode});
}
