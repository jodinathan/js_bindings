/// Intervention Reporting
///
/// https://wicg.github.io/intervention-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library intervention_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
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
///
///
///
///    ReportBody
///
///
///
///
///
///
///
///    InterventionReportBody
///
///
@experimental
@JS()
@staticInterop
class InterventionReportBody implements ReportBody {
  external factory InterventionReportBody();
}

extension PropsInterventionReportBody on InterventionReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get id => js_util.getProperty(this, 'id');
  String get message => js_util.getProperty(this, 'message');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}
