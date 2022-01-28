/// WebRTC Priority Control API
///
/// https://w3c.github.io/webrtc-priority/
@JS('window')
@staticInterop
library webrtc_priority;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webrtc */

enum RTCPriorityType { veryLow, low, medium, high }
