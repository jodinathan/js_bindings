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

///  The interface is pair iterator (an ordered map) with the key
/// being the hand joints and the value being an [XRJointSpace].
///  is returned by [XRInputSource.hand].
@JS()
@staticInterop
class XRHand {
  external XRHand();
}

extension PropsXRHand on XRHand {
  XRJointSpace operator [](XRHandJoint index) =>
      js_util.getProperty(this, index);
  operator []=(XRHandJoint index, XRJointSpace value) {
    js_util.setProperty(this, index, value);
  }

  /// Returns [25], the size of the pair iterator.
  ///
  int get size => js_util.getProperty(this, 'size');

  ///
  ///     Returns a [XRJointSpace] for a given hand joint or [Object]
  /// if no such hand joint key is in the map.
  ///    See [Map.prototype.get()] for more details.
  ///
  ///
  @JS('get')
  @staticInterop
  XRJointSpace mGet(XRHandJoint key) =>
      js_util.callMethod(this, 'get', [key.name]);
}

///  The interface is an [XRSpace] and represents the position and
/// orientation of an [XRHand] joint.
@JS()
@staticInterop
class XRJointSpace implements XRSpace {
  external XRJointSpace();
}

extension PropsXRJointSpace on XRJointSpace {
  ///  The name of the joint that is tracked. See [XRHand] for possible
  /// hand joint names.
  ///
  XRHandJoint get jointName =>
      XRHandJoint.values.byName(js_util.getProperty(this, 'jointName'));
}

///  The interface is an [XRPose] with additional information about
/// the size of the skeleton joint it represents.
@JS()
@staticInterop
class XRJointPose implements XRPose {
  external XRJointPose();
}

extension PropsXRJointPose on XRJointPose {
  /// The radius (distance from skin) for a joint.
  ///
  double get radius => js_util.getProperty(this, 'radius');
}

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
