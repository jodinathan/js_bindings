/// Deprecation Reporting
///
/// https://wicg.github.io/deprecation-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library deprecation_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class DeprecationReportBody implements ReportBody {
  external DeprecationReportBody();
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
