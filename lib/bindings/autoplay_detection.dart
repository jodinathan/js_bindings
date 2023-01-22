/// Autoplay Policy Detection
///
/// https://w3c.github.io/autoplay/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library autoplay_detection;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum AutoplayPolicy {
  allowed('allowed'),
  allowedMuted('allowed-muted'),
  disallowed('disallowed');

  final String value;
  static AutoplayPolicy fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const AutoplayPolicy(this.value);
}

enum AutoplayPolicyMediaType {
  mediaelement('mediaelement'),
  audiocontext('audiocontext');

  final String value;
  static AutoplayPolicyMediaType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const AutoplayPolicyMediaType(this.value);
}
