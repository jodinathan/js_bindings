/// WebRTC Priority Control API
///
/// https://w3c.github.io/webrtc-priority/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webrtc_priority;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum RTCPriorityType { veryLow, low, medium, high }
