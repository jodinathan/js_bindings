/// WebRTC Priority Control API
///
/// https://w3c.github.io/webrtc-priority/
@JS('window')
library webrtc_priority;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webrtc.dart';

@JS()
enum RTCPriorityType {
  @JS('very-low')
  veryLow,
  low,
  medium,
  high
}
