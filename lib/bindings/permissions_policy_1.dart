/// Permissions Policy
///
/// https://w3c.github.io/webappsec-permissions-policy/
@JS('window')
@staticInterop
library permissions_policy_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
reporting_1 */

@JS()
@staticInterop
class PermissionsPolicy {
  external factory PermissionsPolicy();
}

extension PropsPermissionsPolicy on PermissionsPolicy {
  external bool allowsFeature(String feature, [String? origin]);
  external Iterable<String> features();
  external Iterable<String> allowedFeatures();
  external Iterable<String> getAllowlistForFeature(String feature);
}

@JS()
@staticInterop
class PermissionsPolicyViolationReportBody implements ReportBody {
  external factory PermissionsPolicyViolationReportBody();
}

extension PropsPermissionsPolicyViolationReportBody
    on PermissionsPolicyViolationReportBody {
  external String get featureId;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
  external String get disposition;
}
