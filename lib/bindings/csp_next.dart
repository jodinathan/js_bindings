/// Scripting Policy
///
/// https://wicg.github.io/csp-next/scripting-policy.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library csp_next;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ScriptingPolicyViolationType {
  externalScript('externalScript'),
  inlineScript('inlineScript'),
  inlineEventHandler('inlineEventHandler'),
  eval('eval');

  final String value;
  static ScriptingPolicyViolationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ScriptingPolicyViolationType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const ScriptingPolicyViolationType(this.value);
}

@JS()
@staticInterop
class ScriptingPolicyReportBody implements ReportBody {
  external factory ScriptingPolicyReportBody();
}

extension PropsScriptingPolicyReportBody on ScriptingPolicyReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get violationType => js_util.getProperty(this, 'violationType');
  String? get violationURL => js_util.getProperty(this, 'violationURL');
  String? get violationSample => js_util.getProperty(this, 'violationSample');
  int get lineno => js_util.getProperty(this, 'lineno');
  int get colno => js_util.getProperty(this, 'colno');
}
