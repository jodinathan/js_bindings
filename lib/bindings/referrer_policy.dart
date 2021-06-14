/// Referrer Policy
///
/// https://w3c.github.io/webappsec-referrer-policy/
@JS('window')
library referrer_policy;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
enum ReferrerPolicy {
  @JS('')
  empty,
  @JS('no-referrer')
  noReferrer,
  @JS('no-referrer-when-downgrade')
  noReferrerWhenDowngrade,
  @JS('same-origin')
  sameOrigin,
  origin,
  @JS('strict-origin')
  strictOrigin,
  @JS('origin-when-cross-origin')
  originWhenCrossOrigin,
  @JS('strict-origin-when-cross-origin')
  strictOriginWhenCrossOrigin,
  @JS('unsafe-url')
  unsafeUrl
}
