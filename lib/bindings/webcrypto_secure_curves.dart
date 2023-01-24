/// Secure Curves in the Web Cryptography API
///
/// https://wicg.github.io/webcrypto-secure-curves/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcrypto_secure_curves;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class Ed448Params implements Algorithm {
  external factory Ed448Params({dynamic context});
}

extension PropsEd448Params on Ed448Params {
  dynamic get context => js_util.getProperty(this, 'context');
  set context(dynamic newValue) {
    js_util.setProperty(this, 'context', newValue);
  }
}
