/// Intervention Reporting
///
/// https://wicg.github.io/intervention-reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library intervention_reporting;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class InterventionReportBody implements ReportBody {
  external InterventionReportBody();
}

extension PropsInterventionReportBody on InterventionReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get id => js_util.getProperty(this, 'id');
  String get message => js_util.getProperty(this, 'message');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}
