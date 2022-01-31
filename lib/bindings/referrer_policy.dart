/// Referrer Policy
///
/// https://w3c.github.io/webappsec-referrer-policy/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library referrer_policy;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ReferrerPolicy {
  empty,
  noReferrer,
  noReferrerWhenDowngrade,
  sameOrigin,
  origin,
  strictOrigin,
  originWhenCrossOrigin,
  strictOriginWhenCrossOrigin,
  unsafeUrl
}
