/// Referrer Policy
///
/// https://w3c.github.io/webappsec-referrer-policy/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library referrer_policy;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ReferrerPolicy {
  empty(''),
  noReferrer('no-referrer'),
  noReferrerWhenDowngrade('no-referrer-when-downgrade'),
  sameOrigin('same-origin'),
  origin('origin'),
  strictOrigin('strict-origin'),
  originWhenCrossOrigin('origin-when-cross-origin'),
  strictOriginWhenCrossOrigin('strict-origin-when-cross-origin'),
  unsafeUrl('unsafe-url');

  final String value;
  static ReferrerPolicy fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ReferrerPolicy> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ReferrerPolicy(this.value);
}
