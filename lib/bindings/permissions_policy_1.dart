/// Permissions Policy
///
/// https://w3c.github.io/webappsec-permissions-policy/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library permissions_policy_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PermissionsPolicy {
  external PermissionsPolicy();
}

extension PropsPermissionsPolicy on PermissionsPolicy {
  bool allowsFeature(String feature, [String? origin]) =>
      js_util.callMethod(this, 'allowsFeature', [feature, origin]);

  Iterable<String> features() => js_util.callMethod(this, 'features', []);

  Iterable<String> allowedFeatures() =>
      js_util.callMethod(this, 'allowedFeatures', []);

  Iterable<String> getAllowlistForFeature(String feature) =>
      js_util.callMethod(this, 'getAllowlistForFeature', [feature]);
}

@JS()
@staticInterop
class PermissionsPolicyViolationReportBody implements ReportBody {
  external PermissionsPolicyViolationReportBody();
}

extension PropsPermissionsPolicyViolationReportBody
    on PermissionsPolicyViolationReportBody {
  String get featureId => js_util.getProperty(this, 'featureId');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
  String get disposition => js_util.getProperty(this, 'disposition');
}
