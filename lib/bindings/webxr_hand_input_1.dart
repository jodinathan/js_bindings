/// WebXR Hand Input Module - Level 1
///
/// https://immersive-web.github.io/webxr-hand-input/
@JS('window')
library webxr_hand_input_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webxr.dart';

@JS()
class XRHand {
  external XRJointSpace operator [](XRHandJoint index);
  external int get size;
  @JS('get')
  external XRJointSpace mGet(XRHandJoint key);

  external factory XRHand();
}

@JS()
class XRJointSpace // EventTarget -> {} -> XRSpace
    extends XRSpace {
  external XRHandJoint get jointName;

  external factory XRJointSpace();
}

@JS()
class XRJointPose // null -> {} -> XRPose
    with
        XRPose {
  external double get radius;

  external factory XRJointPose();
}

@JS()
enum XRHandJoint {
  wrist,
  @JS('thumb-metacarpal')
  thumbMetacarpal,
  @JS('thumb-phalanx-proximal')
  thumbPhalanxProximal,
  @JS('thumb-phalanx-distal')
  thumbPhalanxDistal,
  @JS('thumb-tip')
  thumbTip,
  @JS('index-finger-metacarpal')
  indexFingerMetacarpal,
  @JS('index-finger-phalanx-proximal')
  indexFingerPhalanxProximal,
  @JS('index-finger-phalanx-intermediate')
  indexFingerPhalanxIntermediate,
  @JS('index-finger-phalanx-distal')
  indexFingerPhalanxDistal,
  @JS('index-finger-tip')
  indexFingerTip,
  @JS('middle-finger-metacarpal')
  middleFingerMetacarpal,
  @JS('middle-finger-phalanx-proximal')
  middleFingerPhalanxProximal,
  @JS('middle-finger-phalanx-intermediate')
  middleFingerPhalanxIntermediate,
  @JS('middle-finger-phalanx-distal')
  middleFingerPhalanxDistal,
  @JS('middle-finger-tip')
  middleFingerTip,
  @JS('ring-finger-metacarpal')
  ringFingerMetacarpal,
  @JS('ring-finger-phalanx-proximal')
  ringFingerPhalanxProximal,
  @JS('ring-finger-phalanx-intermediate')
  ringFingerPhalanxIntermediate,
  @JS('ring-finger-phalanx-distal')
  ringFingerPhalanxDistal,
  @JS('ring-finger-tip')
  ringFingerTip,
  @JS('pinky-finger-metacarpal')
  pinkyFingerMetacarpal,
  @JS('pinky-finger-phalanx-proximal')
  pinkyFingerPhalanxProximal,
  @JS('pinky-finger-phalanx-intermediate')
  pinkyFingerPhalanxIntermediate,
  @JS('pinky-finger-phalanx-distal')
  pinkyFingerPhalanxDistal,
  @JS('pinky-finger-tip')
  pinkyFingerTip
}
