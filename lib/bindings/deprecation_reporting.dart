/// Deprecation Reporting
///
/// https://wicg.github.io/deprecation-reporting/
@JS('window')
@staticInterop
library deprecation_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: reporting_1 */

///  The interface of the Reporting API represents the body of a
/// deprecation report.
///  A deprecation report is generated when a deprecated feature (for
/// example a deprecated API method) is used on a document being
/// observed by a [ReportingObserver]. In addition to the support of
/// this API, receiving useful deprecation warnings relies on browser
/// vendors adding these warnings for deprecated features.
@experimental
@JS()
@staticInterop
class DeprecationReportBody implements ReportBody {
  external DeprecationReportBody();
}

extension PropsDeprecationReportBody on DeprecationReportBody {
  ///  A serializer which returns a JSON representation of the
  /// [InterventionReportBody] object.
  ///
  /// DeprecationReportBody.toJSON();
  ///
  @override
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  ///  A string representing the feature or API that is deprecated, for
  /// example [NavigatorGetUserMedia]. This can be used to group
  /// reports by deprecated feature.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  A [Date] object (rendered as a string) representing the date
  /// when the feature is expected to be removed from the current
  /// browser. If the date is not known, this property will return
  /// [null].
  ///
  dynamic get anticipatedRemoval =>
      js_util.getProperty(this, 'anticipatedRemoval');

  ///  A string containing a human-readable description of the
  /// deprecation, including information such as what newer feature has
  /// superseded it, if any. This typically matches the message a
  /// browser will display in its DevTools console when a deprecated
  /// feature is used, if one is available.
  ///
  String get message => js_util.getProperty(this, 'message');

  ///  A string containing the path to the source file where the
  /// deprecated feature was used, if known, or [null] otherwise.
  ///
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');

  ///  A number representing the line in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  ///
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');

  ///  A number representing the column in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  ///
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}
