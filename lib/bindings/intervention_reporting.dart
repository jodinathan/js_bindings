/// Intervention Reporting
///
/// https://wicg.github.io/intervention-reporting/
@JS('window')
@staticInterop
library intervention_reporting;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: reporting_1 */

///  The interface of the Reporting API represents the body of an
/// intervention report.
///  An intervention report is generated when usage of a feature in a
/// web document has been blocked by the browser for reasons such as
/// security, performance, or user annoyance. So for example, a
/// script was been stopped because it was significantly slowing down
/// the browser, or the browser's autoplay policy blocked audio from
/// playing without a user gesture to trigger it.
///  A deprecation report is generated when a deprecated feature (for
/// example a deprecated API method) is used on a document being
/// observed by a [ReportingObserver]. In addition to the support of
/// this API, receiving useful intervention warnings relies on
/// browser vendors adding these warnings for the relevant features.
@experimental
@JS()
@staticInterop
class InterventionReportBody implements ReportBody {
  external factory InterventionReportBody();
}

extension PropsInterventionReportBody on InterventionReportBody {
  ///  A serializer which returns a JSON representation of the
  /// [InterventionReportBody] object.
  ///
  /// InterventionReportBody.toJSON();
  ///
  @override
  external dynamic toJSON();

  ///  A [string] representing the intervention that generated the
  /// report. This can be used to group reports.
  ///
  external String get id;

  ///  A [string] containing a human-readable description of the
  /// intervention, including information such how the intervention
  /// could be avoided. This typically matches the message a browser
  /// will display in its DevTools console when an intervention is
  /// imposed, if one is available.
  ///
  external String get message;

  ///  A [string] containing the path to the source file where the
  /// intervention occurred, if known, or [null] otherwise.
  ///
  external String? get sourceFile;

  ///  A [string] representing the line in the source file in which the
  /// intervention occurred, if known, or [null] otherwise.
  ///
  external int? get lineNumber;

  ///  A [string] representing the column in the source file in which
  /// the intervention occurred, if known, or [null] otherwise.
  ///
  external int? get columnNumber;
}
