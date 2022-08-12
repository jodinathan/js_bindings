/// Deprecation Reporting
///
/// https://wicg.github.io/deprecation-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library deprecation_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Reporting API represents the body of a
/// deprecation report.
///  A deprecation report is generated when a deprecated feature (for
/// example a deprecated API method) is used on a document being
/// observed by a [ReportingObserver]. In addition to the support of
/// this API, receiving useful deprecation warnings relies on browser
/// vendors adding these warnings for deprecated features.
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
///    DeprecationReportBody
///
///
@experimental
@JS()
@staticInterop
class DeprecationReportBody implements ReportBody {
  external factory DeprecationReportBody();
}

extension PropsDeprecationReportBody on DeprecationReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get id => js_util.getProperty(this, 'id');
  dynamic get anticipatedRemoval =>
      js_util.getProperty(this, 'anticipatedRemoval');
  String get message => js_util.getProperty(this, 'message');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}
