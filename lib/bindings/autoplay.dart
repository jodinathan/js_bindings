/// Autoplay Policy Detection
///
/// https://w3c.github.io/autoplay/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library autoplay;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum AutoplayPolicy { allowed, allowedMuted, disallowed }

enum AutoplayPolicyMediaType { mediaelement, audiocontext }
