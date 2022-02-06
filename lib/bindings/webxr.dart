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
@experimental
@JS()
@staticInterop
class XRSystem implements EventTarget {
  external XRSystem();
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
  Future<bool> isSessionSupported(

          ///
          ///     A [String] specifying the WebXR session mode for which
          /// support is to
          ///    be checked. Possible modes to check for:
          ///
          ///
          ///    [immersive-ar]
          ///
          ///
          ///    [immersive-vr]
          ///    [inline]
          ///
          ///
          XRSessionMode mode) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'isSessionSupported', [mode.name]));

  ///  Returns a promise that resolves to a new [XRSession] with the
  /// specified session mode.
  ///
  /// requestSession(mode)
  /// requestSession(mode, options)
  ///
  @experimental
  Future<XRSession> requestSession(

          ///  A [String] defining the XR session mode. The supported modes
          /// are:
          ///
          ///
          ///
          ///
          ///   [immersive-ar]: The session's output will be given exclusive
          /// access to the immersive device,
          ///      but the rendered content will be blended with the real-world
          /// environment.
          ///     The session's [environmentBlendMode] indicates the method
          ///     to be used to blend the content together.
          ///
          ///
          ///      [immersive-vr]: Indicates that the rendered session will be
          /// displayed using an immersive XR device
          ///      in VR mode; it is not intended to be overlaid or integrated
          /// into the surrounding environment.
          ///     The [environmentBlendMode] is expected to be
          ///      [opaque] if possible, but might be [additive] if the
          /// hardware requires it.
          ///
          ///
          ///      [inline]: The output is presented inline within the context
          /// of an element in a standard HTML document,
          ///      rather than occupying the full visual space. Inline sessions
          /// can be presented in either mono or stereo mode,
          ///      and may or may not have viewer tracking available. Inline
          /// sessions don't require special hardware and should be
          ///     available on any user agent offering WebXR API support.
          ///
          ///
          ///
          XRSessionMode mode,
          [

          ///  An object to configure the [XRSession]. If none are included,
          /// the device will use a default feature configuration for all
          /// options.
          ///
          ///
          ///      [requiredFeatures] Optional: An array of values which the
          /// returned [XRSession]
          ///     must support. See Session features below.
          ///
          ///
          ///      [optionalFeatures] Optional: An array of values identifying
          /// features which the returned
          ///      [XRSession] may optionally support. See Session features
          /// below.
          ///
          ///     [domOverlay] Optional: An object with a required [root]
          /// property that specifies the overlay element that will be
          /// displayed to the user as the content of the DOM overlay. See the
          /// example below.
          ///     [depthSensing] Optional: An object with two required
          /// properties [usagePreference] and [dataFormatPreference] to
          /// configure how to perform depth sensing. See the example below.
          ///
          ///
          XRSessionInit? options]) =>
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
  external XRSession();
}

extension PropsXRSession on XRSession {
  ///  A string indicating whether or not the session's imagery is
  /// visible to the user, and if so, if it's being visible but not
  /// currently the target for user events.
  ///
  @experimental
  XRVisibilityState get visibilityState => XRVisibilityState.values
      .byName(js_util.getProperty(this, 'visibilityState'));

  ///  An [XRRenderState] object which contains options affecting how
  /// the imagery is rendered. This includes things such as the near
  /// and far clipping planes (distances defining how close and how far
  /// away objects can be and still get rendered), as well as field of
  /// view information.
  ///
  @experimental
  XRRenderState get renderState => js_util.getProperty(this, 'renderState');

  ///  Returns a list of this session's [XRInputSource]s, each
  /// representing an input device used to control the camera and/or
  /// scene.
  ///
  @experimental
  XRInputSourceArray get inputSources =>
      js_util.getProperty(this, 'inputSources');

  /// Updates the properties of the session's render state.
  ///
  /// updateRenderState()
  /// updateRenderState(state)
  ///
  Object updateRenderState(
          [

          ///  An optional object to configure the [XRRenderState]. If none is
          /// provided, a default configuration will be used.
          ///
          ///     [baseLayer] Optional: An [XRWebGLLayer] object from which the
          /// WebXR compositor will obtain imagery. This is [null] by default.
          /// To specify other (or multiple) layers, see the [layers] option.
          ///     [depthFar] Optional: A floating-point value specifying the
          /// distance in meters from the viewer to the far clip plane, which
          /// is a plane parallel to the display surface beyond which no
          /// further rendering will occur. All rendering will take place
          /// between the distances specified by [depthNear] and [depthFar].
          /// This is 1000 meters (1 kilometer) by default.
          ///     [depthNear] Optional: A floating-point value indicating the
          /// distance in meters from the viewer to a plane parallel to the
          /// display surface to be the near clip plane. No part of the scene
          /// on the viewer's side of this plane will be rendered. This is 0.1
          /// meters (10 centimeters) by default.
          ///     [inlineVerticalFieldOfView] Optional: A floating-point value
          /// indicating the default field of view, in radians, to be used when
          /// computing the projection matrix for an [inline] [XRSession]. The
          /// projection matrix calculation also takes into account the output
          /// canvas's aspect ratio. This property must not be specified for
          /// immersive sessions, so the value is [null] by default for
          /// immersive sessions. The default value is otherwise π * 0.5 (half
          /// of the value of pi).
          ///     [layers] Optional: An ordered array of [XRLayer] objects
          /// specifying the layers that should be presented to the XR device.
          /// Setting [layers] will override the [baseLayer] if one is present,
          /// with [baseLayer] reporting [null]. The order of the layers given
          /// is "back-to-front". For alpha blending of layers, see the
          /// [XRCompositionLayer.blendTextureSourceAlpha] property.
          ///
          ///
          XRRenderStateInit? state]) =>
      js_util.callMethod(this, 'updateRenderState', [state]);

  ///  Requests that a new [XRReferenceSpace] of the specified type be
  /// created. Returns a promise which resolves with the
  /// [XRReferenceSpace] or [XRBoundedReferenceSpace] which was
  /// requested, or throws a [NotSupportedError] [Exception] if the
  /// requested space type isn't supported by the device.
  ///
  /// requestReferenceSpace(referenceSpaceType)
  ///
  Future<XRReferenceSpace> requestReferenceSpace(

          ///
          ///     A string specifying the type of reference space for which an
          /// instance is to be returned.
          ///    The string must be one of the values below.
          ///
          ///
          XRReferenceSpaceType type) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestReferenceSpace', [type.name]));

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
  int requestAnimationFrame(XRFrameRequestCallback callback) => js_util
      .callMethod(this, 'requestAnimationFrame', [allowInterop(callback)]);

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
  Object cancelAnimationFrame(

          ///
          ///    The unique value returned by the call
          ///    to [requestAnimationFrame()] that
          ///    previously scheduled the animation callback.
          ///
          ///
          int handle) =>
      js_util.callMethod(this, 'cancelAnimationFrame', [handle]);

  ///  Ends the WebXR session. Returns a [promise] which resolves when
  /// the session has been shut down.
  ///
  /// end()
  ///
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

  XREnvironmentBlendMode get environmentBlendMode =>
      XREnvironmentBlendMode.values
          .byName(js_util.getProperty(this, 'environmentBlendMode'));
  XRInteractionMode get interactionMode => XRInteractionMode.values
      .byName(js_util.getProperty(this, 'interactionMode'));
  Future<XRHitTestSource> requestHitTestSource(XRHitTestOptionsInit options) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestHitTestSource', [options]));

  Future<XRTransientInputHitTestSource> requestHitTestSourceForTransientInput(
          XRTransientInputHitTestOptionsInit options) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'requestHitTestSourceForTransientInput', [options]));

  XRDepthUsage get depthUsage =>
      XRDepthUsage.values.byName(js_util.getProperty(this, 'depthUsage'));
  XRDepthDataFormat get depthDataFormat => XRDepthDataFormat.values
      .byName(js_util.getProperty(this, 'depthDataFormat'));
  Future<XRLightProbe> requestLightProbe([XRLightProbeInit? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestLightProbe', [options]));

  XRReflectionFormat get preferredReflectionFormat => XRReflectionFormat.values
      .byName(js_util.getProperty(this, 'preferredReflectionFormat'));
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
  external XRRenderState();
}

extension PropsXRRenderState on XRRenderState {
  ///  The distance, in meters, of the near clip plane from the viewer.
  /// The near clip plane is the plane, parallel to the display, at
  /// which rendering of the scene begins. Any closer to the viewer
  /// than this, and no portions of the scene are drawn.
  ///
  double get depthNear => js_util.getProperty(this, 'depthNear');

  ///  The distance, in meters, of the far clip plane from the viewer.
  /// The far clip plane is the plane which is parallel to the display
  /// beyond which rendering of the scene no longer takes place. This,
  /// essentially, specifies the maximum distance the user can see.
  ///
  double get depthFar => js_util.getProperty(this, 'depthFar');

  ///  The default vertical field of view, defined in radians, to use
  /// when the session is in [inline] mode. [null] for all immersive
  /// sessions.
  ///
  double? get inlineVerticalFieldOfView =>
      js_util.getProperty(this, 'inlineVerticalFieldOfView');

  ///  The [XRWebGLLayer] from which the browser's compositing system
  /// obtains the image for the XR session.
  ///
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
  external XRFrame();
}

extension PropsXRFrame on XRFrame {
  ///  The [XRSession] that for which this [XRFrame] describes the
  /// tracking details for all objects. The information about a
  /// specific object can be obtained by calling one of the methods on
  /// the object.
  ///
  XRSession get session => js_util.getProperty(this, 'session');

  ///  Returns an [XRViewerPose] describing the viewer's position and
  /// orientation in a given [XRReferenceSpace].
  ///
  /// getViewerPose(referenceSpace)
  ///
  XRViewerPose? getViewerPose(

          ///
          ///     An [XRReferenceSpace] object specifying the space to use as
          /// the
          ///     reference point or base for the computation of the viewer's
          /// current pose.
          ///
          ///
          XRReferenceSpace referenceSpace) =>
      js_util.callMethod(this, 'getViewerPose', [referenceSpace]);

  ///  Returns an [XRPose] object representing the spatial relationship
  /// between the two specified [XRSpace] objects.
  ///
  /// getPose(space, baseSpace)
  ///
  XRPose? getPose(

          ///
          ///    An [XRSpace] specifying the space for which to obtain an
          ///    [XRPose] describing the item's position and orientation.
          ///
          ///
          XRSpace space,

          ///
          ///     An [XRSpace] to use as the base or origin for the purposes of
          /// computing
          ///    the relative position and orientation.
          ///
          ///
          XRSpace baseSpace) =>
      js_util.callMethod(this, 'getPose', [space, baseSpace]);

  Future<XRAnchor> createAnchor(XRRigidTransform pose, XRSpace space) => js_util
      .promiseToFuture(js_util.callMethod(this, 'createAnchor', [pose, space]));

  XRAnchorSet get trackedAnchors => js_util.getProperty(this, 'trackedAnchors');
  Iterable<XRHitTestResult> getHitTestResults(XRHitTestSource hitTestSource) =>
      js_util.callMethod(this, 'getHitTestResults', [hitTestSource]);

  Iterable<XRTransientInputHitTestResult> getHitTestResultsForTransientInput(
          XRTransientInputHitTestSource hitTestSource) =>
      js_util.callMethod(
          this, 'getHitTestResultsForTransientInput', [hitTestSource]);

  XRCPUDepthInformation? getDepthInformation(XRView view) =>
      js_util.callMethod(this, 'getDepthInformation', [view]);

  XRLightEstimate? getLightEstimate(XRLightProbe lightProbe) =>
      js_util.callMethod(this, 'getLightEstimate', [lightProbe]);

  XRJointPose? getJointPose(XRJointSpace joint, XRSpace baseSpace) =>
      js_util.callMethod(this, 'getJointPose', [joint, baseSpace]);

  bool fillJointRadii(Iterable<XRJointSpace> jointSpaces, Float32List radii) =>
      js_util.callMethod(this, 'fillJointRadii', [jointSpaces, radii]);

  bool fillPoses(Iterable<XRSpace> spaces, XRSpace baseSpace,
          Float32List transforms) =>
      js_util.callMethod(this, 'fillPoses', [spaces, baseSpace, transforms]);
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
  external XRSpace();
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
  external XRReferenceSpace();
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
  XRReferenceSpace getOffsetReferenceSpace(

          ///
          ///     An [XRRigidTransform] specifying the offset to the origin of
          /// the new
          ///     reference space. These values are added to the position and
          /// orientation of the current
          ///     reference space and then the result is used as the position
          /// and orientation of the
          ///    newly created [XRReferenceSpace].
          ///
          ///
          XRRigidTransform originOffset) =>
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
@JS()
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {
  external XRBoundedReferenceSpace();
}

extension PropsXRBoundedReferenceSpace on XRBoundedReferenceSpace {
  ///  An array of [DOMPointReadOnly] objects, each of which defines a
  /// vertex in the polygon defining the boundaries within which the
  /// user will be required to remain. These vertices must be sorted
  /// such that they move clockwise around the viewer's position.
  ///
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
  external XRView();
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
  XREye get eye => XREye.values.byName(js_util.getProperty(this, 'eye'));

  ///  The projection matrix that will transform the scene to appear
  /// correctly given the point-of-view indicated by [eye]. This matrix
  /// should be used directly in order to avoid presentation
  /// distortions that may lead to potentially serious user discomfort.
  ///
  Float32List get projectionMatrix =>
      js_util.getProperty(this, 'projectionMatrix');

  ///  An [XRRigidTransform] which describes the current position and
  /// orientation of the viewpoint in relation to the
  /// [XRReferenceSpace] specified when [getViewerPose()] was called on
  /// the [XRFrame] being rendered.
  ///
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');

  ///  The recommended viewport scale value that you can use for
  /// [requestViewportScale()] if the user agent has such a
  /// recommendation; [null] otherwise.
  ///
  double? get recommendedViewportScale =>
      js_util.getProperty(this, 'recommendedViewportScale');

  ///  Requests that the user agent should set the requested viewport
  /// scale for this viewport to the requested value.
  ///
  /// requestViewportScale(scale)
  ///
  Object requestViewportScale(

          ///  A number greater than 0.0 and less than or equal to 1.0
          /// representing the scale factor.
          ///
          double? scale) =>
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
  external XRViewport();
}

extension PropsXRViewport on XRViewport {
  ///  The offset from the origin of the destination graphics surface
  /// (typically a [XRWebGLLayer]) to the left edge of the viewport, in
  /// pixels.
  ///
  int get x => js_util.getProperty(this, 'x');

  ///  The offset from the origin of the viewport to the bottom edge of
  /// the viewport; WebGL's coordinate system places (0, 0) at the
  /// bottom left corner of the surface.
  ///
  int get y => js_util.getProperty(this, 'y');

  /// The width, in pixels, of the viewport.
  ///
  int get width => js_util.getProperty(this, 'width');

  /// The height, in pixels, of the viewport.
  ///
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
  external XRRigidTransform(
      [DOMPointInit? position, DOMPointInit? orientation]);
}

extension PropsXRRigidTransform on XRRigidTransform {
  ///  A [DOMPointReadOnly] specifying a 3-dimensional point, expressed
  /// in meters, describing the translation component of the transform.
  /// The [w] property is always [1.0].
  ///
  @experimental
  DOMPointReadOnly get position => js_util.getProperty(this, 'position');

  ///  A [DOMPointReadOnly] which contains a unit quaternion describing
  /// the rotational component of the transform. As a unit quaternion,
  /// its length is always normalized to [1.0].
  ///
  @experimental
  DOMPointReadOnly get orientation => js_util.getProperty(this, 'orientation');

  ///  Returns the transform matrix in the form of a 16-member
  /// [Float32Array]. See the section Matrix format for how the array
  /// is used to represent a matrix.
  ///
  @experimental
  Float32List get matrix => js_util.getProperty(this, 'matrix');

  ///  Returns a [XRRigidTransform] which is the inverse of this
  /// transform. That is, if applied to an object that had been
  /// previously transformed by the original transform, it will undo
  /// the transform and return the original object.
  ///
  @experimental
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
  external XRPose();
}

extension PropsXRPose on XRPose {
  ///  A [XRRigidTransform] which provides the position and orientation
  /// of the pose relative to the base [XRSpace].
  ///
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');

  ///  A [DOMPointReadOnly] describing the linear velocity in meters
  /// per second relative to the base [XRSpace].
  ///
  DOMPointReadOnly? get linearVelocity =>
      js_util.getProperty(this, 'linearVelocity');

  ///  A [DOMPointReadOnly] describing the angular velocity in radians
  /// per second relative to the base [XRSpace].
  ///
  DOMPointReadOnly? get angularVelocity =>
      js_util.getProperty(this, 'angularVelocity');

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
@JS()
@staticInterop
class XRViewerPose implements XRPose {
  external XRViewerPose();
}

extension PropsXRViewerPose on XRViewerPose {
  ///  An array of [XRView] objects, one for each viewpoint on the
  /// scene which is needed to represent the scene to the user. A
  /// typical headset provides a viewer pose with two views whose [eye]
  /// property is either [left] or [right], indicating which eye that
  /// view represents. Taken together, these views can reproduce the 3D
  /// effect when displayed on the XR device.
  ///
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
  external XRInputSource();
}

extension PropsXRInputSource on XRInputSource {
  ///  A [String] that indicates which hand the device represented by
  /// this [XRInputSource] is being used in, if any. The value will be
  /// [left], [right], or [none].
  ///
  XRHandedness get handedness =>
      XRHandedness.values.byName(js_util.getProperty(this, 'handedness'));

  ///  A [String] indicating the methodology used to produce the target
  /// ray: [gaze], [tracked-pointer], or [screen].
  ///
  XRTargetRayMode get targetRayMode =>
      XRTargetRayMode.values.byName(js_util.getProperty(this, 'targetRayMode'));

  ///  An [XRSpace] object defining the origin of the target ray and
  /// the direction in which it extends. This space is established
  /// using the method defined by [targetRayMode].
  ///
  XRSpace get targetRaySpace => js_util.getProperty(this, 'targetRaySpace');

  ///  An [XRSpace] whose origin tracks the pose which is used to
  /// render objects which should appear as if they're held in the hand
  /// indicated by [handedness]. The orientation of this space
  /// indicates the angle at which the hand is gripping the object.
  /// Read on in the main article on for more details on how to use
  /// this space.
  ///
  XRSpace? get gripSpace => js_util.getProperty(this, 'gripSpace');

  ///  An array of [String] objects, each specifying the name of an
  /// input profile describing the preferred visual representation and
  /// behavior of this input source.
  ///
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
/// insize square brackets), methods are available to allow the use
/// of iterators and the [forEach()] method is also available.
@JS()
@staticInterop
class XRInputSourceArray extends JsArray<XRInputSource> {
  external XRInputSourceArray();
}

extension PropsXRInputSourceArray on XRInputSourceArray {
  /// The number of [XRInputSource] objects in the list.
  ///
  int get length => js_util.getProperty(this, 'length');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebXR Device API is the base class for
/// WebXR layer types. It inherits methods from [EventTarget].
@JS()
@staticInterop
class XRLayer implements EventTarget {
  external XRLayer();
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
@experimental
@JS()
@staticInterop
class XRWebGLLayer implements XRLayer {
  external XRWebGLLayer(XRSession session, dynamic context,
      [XRWebGLLayerInit? layerInit]);
}

extension PropsXRWebGLLayer on XRWebGLLayer {
  ///  A Boolean value indicating whether or not the WebGL context's
  /// framebuffer supports anti-aliasing. The specific type of
  /// anti-aliasing is determined by the user agent.
  ///
  bool get antialias => js_util.getProperty(this, 'antialias');

  ///  A Boolean which Indicates whether or not the WebXR compositor
  /// should make use of the contents of the layer's depth buffer while
  /// compositing the scene.
  ///
  bool get ignoreDepthValues => js_util.getProperty(this, 'ignoreDepthValues');

  ///  A number indicating the amount of foveation used by the XR
  /// compositor. Fixed Foveated Rendering (FFR) renders the edges of
  /// the eye textures at a lower resolution than the center and
  /// reduces the GPU load.
  ///
  double? get fixedFoveation => js_util.getProperty(this, 'fixedFoveation');
  set fixedFoveation(double? newValue) {
    js_util.setProperty(this, 'fixedFoveation', newValue);
  }

  ///  Returns a [WebGLFramebuffer] suitable for passing into the
  /// [bindFrameBuffer()] method.
  ///
  WebGLFramebuffer? get framebuffer => js_util.getProperty(this, 'framebuffer');

  /// Returns the width of the [XRWebGLLayer]'s framebuffer.
  ///
  int get framebufferWidth => js_util.getProperty(this, 'framebufferWidth');

  /// Returns the height of the layer's framebuffer.
  ///
  int get framebufferHeight => js_util.getProperty(this, 'framebufferHeight');

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
  XRViewport? getViewport(

          ///
          ///     An [XRView] object indicating the view for which the viewport
          /// is to be
          ///    returned.
          ///
          ///
          XRView view) =>
      js_util.callMethod(this, 'getViewport', [view]);

  static double getNativeFramebufferScaleFactor(XRSession session) => js_util
      .callMethod(XRWebGLLayer, 'getNativeFramebufferScaleFactor', [session]);
}

///  The WebXR Device API's interface describes an event which
/// indicates the change of the state of an [XRSession]. These events
/// occur, for example, when the session ends or the visibility of
/// its context changes.
@JS()
@staticInterop
class XRSessionEvent implements Event {
  external XRSessionEvent(String type, XRSessionEventInit eventInitDict);
}

extension PropsXRSessionEvent on XRSessionEvent {
  /// The [XRSession] to which the event refers.
  ///
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
@JS()
@staticInterop
class XRInputSourceEvent implements Event {
  external XRInputSourceEvent(
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
  XRFrame get frame => js_util.getProperty(this, 'frame');

  ///  An [XRInputSource] object indicating which input source
  /// generated the input event.
  ///
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
@JS()
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external XRInputSourcesChangeEvent(
      String type, XRInputSourcesChangeEventInit eventInitDict);
}

extension PropsXRInputSourcesChangeEvent on XRInputSourcesChangeEvent {
  ///  The [XRSession] to which this input source change event is being
  /// directed.
  ///
  XRSession get session => js_util.getProperty(this, 'session');

  ///  An array of zero or more [XRInputSource] objects, each
  /// representing an input device which has been newly connected or
  /// enabled for use.
  ///
  Iterable<XRInputSource> get added => js_util.getProperty(this, 'added');

  ///  An array of zero or more [XRInputSource] objects representing
  /// the input devices newly connected or enabled for use.
  ///
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
@JS()
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external XRReferenceSpaceEvent(
      String type, XRReferenceSpaceEventInit eventInitDict);
}

extension PropsXRReferenceSpaceEvent on XRReferenceSpaceEvent {
  ///  An [XRReferenceSpace] indicating the reference space that
  /// generated the event.
  ///
  XRReferenceSpace get referenceSpace =>
      js_util.getProperty(this, 'referenceSpace');

  ///  An [XRRigidTransform] object indicating the position and
  /// orientation of the specified [referenceSpace]'s native origin
  /// after the event, defined relative to the coordinate system before
  /// the event.
  ///
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
@JS()
@staticInterop
class XRPermissionStatus implements PermissionStatus {
  external XRPermissionStatus();
}

extension PropsXRPermissionStatus on XRPermissionStatus {
  ///  An array of strings listing the names of the features for which
  /// permission has been granted as of the time at which
  /// [navigator.permissions.query()] was called. Any feature which was
  /// specified in either [optionalFeatures] or [requiredFeatures] when
  /// calling [navigator.permissions.query()] are listed in if and only
  /// if permission to use them is granted.
  ///
  Iterable<dynamic> get granted => js_util.getProperty(this, 'granted');
  set granted(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'granted', newValue);
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
