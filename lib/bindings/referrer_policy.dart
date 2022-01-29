/// Referrer Policy
///
/// https://w3c.github.io/webappsec-referrer-policy/
@JS('window')
@staticInterop
library referrer_policy;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

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
