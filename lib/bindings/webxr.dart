/// WebXR Device API
///
/// https://immersive-web.github.io/webxr/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class XRSystem implements EventTarget {
  external XRSystem();
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

@JS()
@staticInterop
class XRSession implements EventTarget {
  external XRSession();
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

@JS()
@staticInterop
class XRRenderState {
  external XRRenderState();
}

extension PropsXRRenderState on XRRenderState {
  double get depthNear => js_util.getProperty(this, 'depthNear');
  double get depthFar => js_util.getProperty(this, 'depthFar');
  double? get inlineVerticalFieldOfView =>
      js_util.getProperty(this, 'inlineVerticalFieldOfView');
  XRWebGLLayer? get baseLayer => js_util.getProperty(this, 'baseLayer');
  Iterable<XRLayer> get layers => js_util.getProperty(this, 'layers');
}

@JS()
@staticInterop
class XRFrame {
  external XRFrame();
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

@JS()
@staticInterop
class XRSpace implements EventTarget {
  external XRSpace();
}

enum XRReferenceSpaceType { viewer, local, localFloor, boundedFloor, unbounded }

@JS()
@staticInterop
class XRReferenceSpace implements XRSpace {
  external XRReferenceSpace();
}

extension PropsXRReferenceSpace on XRReferenceSpace {
  XRReferenceSpace getOffsetReferenceSpace(XRRigidTransform originOffset) =>
      js_util.callMethod(this, 'getOffsetReferenceSpace', [originOffset]);

  EventHandlerNonNull? get onreset => js_util.getProperty(this, 'onreset');
  set onreset(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreset', newValue);
  }
}

@JS()
@staticInterop
class XRBoundedReferenceSpace implements XRReferenceSpace {
  external XRBoundedReferenceSpace();
}

extension PropsXRBoundedReferenceSpace on XRBoundedReferenceSpace {
  Iterable<DOMPointReadOnly> get boundsGeometry =>
      js_util.getProperty(this, 'boundsGeometry');
}

enum XREye { none, left, right }

@JS()
@staticInterop
class XRView {
  external XRView();
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

@JS()
@staticInterop
class XRViewport {
  external XRViewport();
}

extension PropsXRViewport on XRViewport {
  int get x => js_util.getProperty(this, 'x');
  int get y => js_util.getProperty(this, 'y');
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
}

@JS()
@staticInterop
class XRRigidTransform {
  external XRRigidTransform(
      [DOMPointInit? position, DOMPointInit? orientation]);
}

extension PropsXRRigidTransform on XRRigidTransform {
  DOMPointReadOnly get position => js_util.getProperty(this, 'position');
  DOMPointReadOnly get orientation => js_util.getProperty(this, 'orientation');
  Float32List get matrix => js_util.getProperty(this, 'matrix');
  XRRigidTransform get inverse => js_util.getProperty(this, 'inverse');
}

@JS()
@staticInterop
class XRPose {
  external XRPose();
}

extension PropsXRPose on XRPose {
  XRRigidTransform get transform => js_util.getProperty(this, 'transform');
  DOMPointReadOnly? get linearVelocity =>
      js_util.getProperty(this, 'linearVelocity');
  DOMPointReadOnly? get angularVelocity =>
      js_util.getProperty(this, 'angularVelocity');
  bool get emulatedPosition => js_util.getProperty(this, 'emulatedPosition');
}

@JS()
@staticInterop
class XRViewerPose implements XRPose {
  external XRViewerPose();
}

extension PropsXRViewerPose on XRViewerPose {
  Iterable<XRView> get views => js_util.getProperty(this, 'views');
}

enum XRHandedness { none, left, right }

enum XRTargetRayMode { gaze, trackedPointer, screen }

@JS()
@staticInterop
class XRInputSource {
  external XRInputSource();
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

@JS()
@staticInterop
class XRInputSourceArray extends JsArray<XRInputSource> {
  external XRInputSourceArray();
}

extension PropsXRInputSourceArray on XRInputSourceArray {
  int get length => js_util.getProperty(this, 'length');
}

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

@JS()
@staticInterop
class XRWebGLLayer implements XRLayer {
  external XRWebGLLayer(XRSession session, dynamic context,
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

@JS()
@staticInterop
class XRSessionEvent implements Event {
  external XRSessionEvent(String type, XRSessionEventInit eventInitDict);
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

@JS()
@staticInterop
class XRInputSourceEvent implements Event {
  external XRInputSourceEvent(
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

@JS()
@staticInterop
class XRInputSourcesChangeEvent implements Event {
  external XRInputSourcesChangeEvent(
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

@JS()
@staticInterop
class XRReferenceSpaceEvent implements Event {
  external XRReferenceSpaceEvent(
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

@JS()
@staticInterop
class XRPermissionStatus implements PermissionStatus {
  external XRPermissionStatus();
}

extension PropsXRPermissionStatus on XRPermissionStatus {
  Iterable<dynamic> get granted => js_util.getProperty(this, 'granted');
  set granted(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'granted', newValue);
  }
}
