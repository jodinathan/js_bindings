/// WebXR Hand Input Module - Level 1
///
/// https://immersive-web.github.io/webxr-hand-input/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webxr_hand_input_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum XRHandJoint {
  wrist,
  thumbMetacarpal,
  thumbPhalanxProximal,
  thumbPhalanxDistal,
  thumbTip,
  indexFingerMetacarpal,
  indexFingerPhalanxProximal,
  indexFingerPhalanxIntermediate,
  indexFingerPhalanxDistal,
  indexFingerTip,
  middleFingerMetacarpal,
  middleFingerPhalanxProximal,
  middleFingerPhalanxIntermediate,
  middleFingerPhalanxDistal,
  middleFingerTip,
  ringFingerMetacarpal,
  ringFingerPhalanxProximal,
  ringFingerPhalanxIntermediate,
  ringFingerPhalanxDistal,
  ringFingerTip,
  pinkyFingerMetacarpal,
  pinkyFingerPhalanxProximal,
  pinkyFingerPhalanxIntermediate,
  pinkyFingerPhalanxDistal,
  pinkyFingerTip
}

///  The interface is pair iterator (an ordered map) with the key
/// being the hand joints and the value being an [XRJointSpace].
///  is returned by [XRInputSource.hand].
@JS()
@staticInterop
class XRHand extends JsArray<XRJointSpace> {
  external factory XRHand();
}

extension PropsXRHand on XRHand {
  int get size => js_util.getProperty(this, 'size');
  @JS('get')
  @staticInterop
  XRJointSpace mGet(XRHandJoint key) =>
      js_util.callMethod(this, 'get', [key.name]);
}

///  The interface is an [XRSpace] and represents the position and
/// orientation of an [XRHand] joint.
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
///    XRJointSpace
///
///
@JS()
@staticInterop
class XRJointSpace implements XRSpace {
  external factory XRJointSpace();
}

extension PropsXRJointSpace on XRJointSpace {
  XRHandJoint get jointName =>
      XRHandJoint.values.byName(js_util.getProperty(this, 'jointName'));
}

///  The interface is an [XRPose] with additional information about
/// the size of the skeleton joint it represents.
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
///    XRJointPose
///
///
@JS()
@staticInterop
class XRJointPose implements XRPose {
  external factory XRJointPose();
}

extension PropsXRJointPose on XRJointPose {
  double get radius => js_util.getProperty(this, 'radius');
}
