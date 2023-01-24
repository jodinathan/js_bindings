/// Test Utils Standard
///
/// https://testutils.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library testutils;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class TestUtils {
  external factory TestUtils();
}

extension PropsTestUtils on TestUtils {
  Future<void> gc() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'gc', []));
}
