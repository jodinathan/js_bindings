/// Crash Reporting
///
/// https://wicg.github.io/crash-reporting/
@JS('window')
@staticInterop
library crash_reporting;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: reporting_1 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Reporting API represents the body of a
/// crash report (the return value of its [Report.body] property).
///  A crash report is generated when a document becomes unusable due
/// to the browser (or one of its processes) crashing. For security
/// reasons, no details of the crash are communicated in the body
/// except for a general crash reason.
@experimental
@JS()
@staticInterop
class CrashReportBody implements ReportBody {
  external factory CrashReportBody();
}

extension PropsCrashReportBody on CrashReportBody {
  @override
  external dynamic toJSON();

  ///  A string representing the reason for the crash. Current possible
  /// reasons are:
  ///
  ///    [oom]: The browser ran out of memory.
  ///     [unresponsive]: The page was killed due to being
  /// unresponsive.
  ///
  ///
  external String? get reason;
}
