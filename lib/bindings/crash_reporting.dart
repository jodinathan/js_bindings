/// Crash Reporting
///
/// https://wicg.github.io/crash-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library crash_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Reporting API represents the body of a
/// crash report (the return value of its [Report.body] property).
///  A crash report is generated when a document becomes unusable due
/// to the browser (or one of its processes) crashing. For security
/// reasons, no details of the crash are communicated in the body
/// except for a general crash reason.
///
///
///
///    ReportBody
///
///
///
///
///
///    CrashReportBody
///
///
@experimental
@JS()
@staticInterop
class CrashReportBody implements ReportBody {
  external factory CrashReportBody();
}

extension PropsCrashReportBody on CrashReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String? get reason => js_util.getProperty(this, 'reason');
}
