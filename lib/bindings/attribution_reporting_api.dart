/// Attribution Reporting
///
/// https://wicg.github.io/attribution-reporting-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library attribution_reporting_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class HTMLAttributionSrcElementUtils {
  external factory HTMLAttributionSrcElementUtils();
}

extension PropsHTMLAttributionSrcElementUtils
    on HTMLAttributionSrcElementUtils {
  String get attributionSrc => js_util.getProperty(this, 'attributionSrc');
  set attributionSrc(String newValue) {
    js_util.setProperty(this, 'attributionSrc', newValue);
  }
}
