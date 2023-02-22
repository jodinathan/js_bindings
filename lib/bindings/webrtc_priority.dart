/// WebRTC Priority Control API
///
/// https://w3c.github.io/webrtc-priority/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webrtc_priority;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum RTCPriorityType {
  veryLow('very-low'),
  low('low'),
  medium('medium'),
  high('high');

  final String value;
  static RTCPriorityType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCPriorityType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCPriorityType(this.value);
}
