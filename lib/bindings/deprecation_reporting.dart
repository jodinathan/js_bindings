/// Deprecation Reporting
///
/// https://wicg.github.io/deprecation-reporting/
@JS('window')
library deprecation_reporting;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'reporting_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API represents the body of a
/// deprecation report (the return value of its [Report.body]
/// property).
///
///  A deprecation report is generated when a deprecated feature
/// (e.g. a deprecated API method) is used on a document being
/// observed by a [ReportingObserver].
@experimental
@JS()
class DeprecationReportBody extends ReportBody {
  @override
  external dynamic toJSON();

  ///  A string representing the deprecated feature that generated the
  /// report, for example [NavigatorGetUserMedia]. This can be used to
  /// group reports by deprecated feature.
  external String get id;

  ///  A [Date] object (rendered as a string) representing the date
  /// when the feature is expected to be removed from the current
  /// browser. If the date is not known, this property will return
  /// [null].
  external dynamic get anticipatedRemoval;

  ///  A string containing a human-readable description of the
  /// deprecation, including information such as what newer feature has
  /// superseded it, if any. This typically matches the message a
  /// browser will display in its DevTools console when a deprecated
  /// feature is used, if one is available.
  external String get message;

  ///  A string containing the path to the source file where the
  /// deprecated feature was used, if known, or [null] otherwise.
  external String? get sourceFile;

  ///  A number representing the line in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  external int? get lineNumber;

  ///  A number representing the column in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  external int? get columnNumber;

  external factory DeprecationReportBody();
}
