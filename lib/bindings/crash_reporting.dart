/// Crash Reporting
///
/// https://wicg.github.io/crash-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library crash_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CrashReportBody implements ReportBody {
  external factory CrashReportBody();
}

extension PropsCrashReportBody on CrashReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String? get reason => js_util.getProperty(this, 'reason');
}
