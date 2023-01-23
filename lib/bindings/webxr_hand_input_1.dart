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
  wrist('wrist'),
  thumbMetacarpal('thumb-metacarpal'),
  thumbPhalanxProximal('thumb-phalanx-proximal'),
  thumbPhalanxDistal('thumb-phalanx-distal'),
  thumbTip('thumb-tip'),
  indexFingerMetacarpal('index-finger-metacarpal'),
  indexFingerPhalanxProximal('index-finger-phalanx-proximal'),
  indexFingerPhalanxIntermediate('index-finger-phalanx-intermediate'),
  indexFingerPhalanxDistal('index-finger-phalanx-distal'),
  indexFingerTip('index-finger-tip'),
  middleFingerMetacarpal('middle-finger-metacarpal'),
  middleFingerPhalanxProximal('middle-finger-phalanx-proximal'),
  middleFingerPhalanxIntermediate('middle-finger-phalanx-intermediate'),
  middleFingerPhalanxDistal('middle-finger-phalanx-distal'),
  middleFingerTip('middle-finger-tip'),
  ringFingerMetacarpal('ring-finger-metacarpal'),
  ringFingerPhalanxProximal('ring-finger-phalanx-proximal'),
  ringFingerPhalanxIntermediate('ring-finger-phalanx-intermediate'),
  ringFingerPhalanxDistal('ring-finger-phalanx-distal'),
  ringFingerTip('ring-finger-tip'),
  pinkyFingerMetacarpal('pinky-finger-metacarpal'),
  pinkyFingerPhalanxProximal('pinky-finger-phalanx-proximal'),
  pinkyFingerPhalanxIntermediate('pinky-finger-phalanx-intermediate'),
  pinkyFingerPhalanxDistal('pinky-finger-phalanx-distal'),
  pinkyFingerTip('pinky-finger-tip');

  final String value;
  static XRHandJoint fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<XRHandJoint> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const XRHandJoint(this.value);
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
      js_util.callMethod(this, 'get', [key.value]);
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
      XRHandJoint.fromValue(js_util.getProperty(this, 'jointName'));
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
