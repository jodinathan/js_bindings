/// Intervention Reporting
///
/// https://wicg.github.io/intervention-reporting/
@JS('window')
library intervention_reporting;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'reporting_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API represents the body of an
/// intervention report (the return value of its [Report.body]
/// property).
///
///  An intervention report is generated when usage of a feature in a
/// web document has been blocked by the browser for reasons such as
/// security, performance, or user annoyance. So for example, a
/// script was been stopped because it was significantly slowing down
/// the browser, or the browser's autoplay policy blocked audio from
/// playing without a user gesture to trigger it.
@experimental
@JS()
class InterventionReportBody extends ReportBody {
  @override
  external dynamic toJSON();

  ///  A string representing the intervention that generated the
  /// report. This can be used to group reports by deprecated feature.
  external String get id;

  ///  A string containing a human-readable description of the
  /// intervention, including information such how the intervention
  /// could be avoided. This typically matches the message a browser
  /// will display in its DevTools console when an intervention is
  /// imposed, if one is available.
  external String get message;

  ///  A string containing the path to the source file where the
  /// intervention occurred, if known, or [null] otherwise.
  external String? get sourceFile;

  ///  A number representing the line in the source file in which the
  /// intervention occurred, if known, or [null] otherwise.
  external int? get lineNumber;

  ///  A number representing the column in the source file in which the
  /// intervention occurred, if known, or [null] otherwise.
  external int? get columnNumber;

  external factory InterventionReportBody();
}
