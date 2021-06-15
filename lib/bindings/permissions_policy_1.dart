/// Permissions Policy
///
/// https://w3c.github.io/webappsec-permissions-policy/
@JS('window')
library permissions_policy_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'reporting_1.dart';

@JS()
class PermissionsPolicy {
  external bool allowsFeature(String feature, [String? origin]);
  external Iterable<String> features();
  external Iterable<String> allowedFeatures();
  external Iterable<String> getAllowlistForFeature(String feature);

  external factory PermissionsPolicy();
}

@JS()
class PermissionsPolicyViolationReportBody // null -> {} -> ReportBody
    with
        ReportBody {
  external String get featureId;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
  external String get disposition;

  external factory PermissionsPolicyViolationReportBody();
}
