/// Content Security Policy Level 3
///
/// https://w3c.github.io/webappsec-csp/
@JS('window')
@staticInterop
library csp3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: reporting_1
dom */

@JS()
@staticInterop
class CSPViolationReportBody implements ReportBody {
  external CSPViolationReportBody();
}

extension PropsCSPViolationReportBody on CSPViolationReportBody {
  String get documentURL => js_util.getProperty(this, 'documentURL');
  String? get referrer => js_util.getProperty(this, 'referrer');
  String? get blockedURL => js_util.getProperty(this, 'blockedURL');
  String get effectiveDirective =>
      js_util.getProperty(this, 'effectiveDirective');
  String get originalPolicy => js_util.getProperty(this, 'originalPolicy');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  String? get sample => js_util.getProperty(this, 'sample');
  SecurityPolicyViolationEventDisposition get disposition =>
      js_util.getProperty(this, 'disposition');
  int get statusCode => js_util.getProperty(this, 'statusCode');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}

enum SecurityPolicyViolationEventDisposition { enforce, report }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface inherits from [Event], and represents the event
/// object of an event sent on a document or worker when its content
/// security policy is violated.
@experimental
@JS()
@staticInterop
class SecurityPolicyViolationEvent implements Event {
  external SecurityPolicyViolationEvent(String type,
      [SecurityPolicyViolationEventInit? eventInitDict]);
}

extension PropsSecurityPolicyViolationEvent on SecurityPolicyViolationEvent {
  String get documentURL => js_util.getProperty(this, 'documentURL');

  ///  A [USVString] representing the URI of the document or worker in
  /// which the violation was found.
  ///
  String get documentURI => js_util.getProperty(this, 'documentURI');

  ///  A [USVString] representing the referrer of the resources whose
  /// policy was violated. This will be a URL or [null].
  ///
  String get referrer => js_util.getProperty(this, 'referrer');
  String get blockedURL => js_util.getProperty(this, 'blockedURL');

  ///  A [USVString] representing the URI of the resource that was
  /// blocked because it violates a policy.
  ///
  String get blockedURI => js_util.getProperty(this, 'blockedURI');

  ///  A [DOMString] representing the directive whose enforcement
  /// uncovered the violation.
  ///
  String get effectiveDirective =>
      js_util.getProperty(this, 'effectiveDirective');

  ///  A [DOMString] representing the directive whose enforcement
  /// uncovered the violation.
  ///
  String get violatedDirective =>
      js_util.getProperty(this, 'violatedDirective');

  ///  A [DOMString] containing the policy whose enforcement uncovered
  /// the violation.
  ///
  String get originalPolicy => js_util.getProperty(this, 'originalPolicy');

  ///  A [USVString] representing the URI of the document or worker in
  /// which the violation was found.
  ///
  String get sourceFile => js_util.getProperty(this, 'sourceFile');

  ///  A [DOMString] representing a sample of the resource that caused
  /// the violation, usually the first 40 characters. This will only be
  /// populated if the resource is an inline script, event handler, or
  /// style — external resources causing a violation will not generate
  /// a sample.
  ///
  String get sample => js_util.getProperty(this, 'sample');

  ///  Indicates how the violated policy is configured to be treated by
  /// the user agent. This will be ["enforce"] or ["report"].
  ///
  SecurityPolicyViolationEventDisposition get disposition =>
      js_util.getProperty(this, 'disposition');

  ///  A number representing the HTTP status code of the document or
  /// worker in which the violation occurred.
  ///
  int get statusCode => js_util.getProperty(this, 'statusCode');
  int get lineno => js_util.getProperty(this, 'lineno');

  ///  The line number in the document or worker at which the violation
  /// occurred.
  ///
  int get lineNumber => js_util.getProperty(this, 'lineNumber');
  int get colno => js_util.getProperty(this, 'colno');

  ///  The column number in the document or worker at which the
  /// violation occurred.
  ///
  int get columnNumber => js_util.getProperty(this, 'columnNumber');
}

@anonymous
@JS()
@staticInterop
class SecurityPolicyViolationEventInit implements EventInit {
  external factory SecurityPolicyViolationEventInit(
      {String documentURL,
      String referrer = '',
      String blockedURL = '',
      String effectiveDirective,
      String originalPolicy,
      String sourceFile = '',
      String sample = '',
      SecurityPolicyViolationEventDisposition disposition,
      int statusCode,
      int lineno = 0,
      int colno = 0});
}

extension PropsSecurityPolicyViolationEventInit
    on SecurityPolicyViolationEventInit {
  String get documentURL => js_util.getProperty(this, 'documentURL');
  set documentURL(String newValue) {
    js_util.setProperty(this, 'documentURL', newValue);
  }

  String get referrer => js_util.getProperty(this, 'referrer');
  set referrer(String newValue) {
    js_util.setProperty(this, 'referrer', newValue);
  }

  String get blockedURL => js_util.getProperty(this, 'blockedURL');
  set blockedURL(String newValue) {
    js_util.setProperty(this, 'blockedURL', newValue);
  }

  String get effectiveDirective =>
      js_util.getProperty(this, 'effectiveDirective');
  set effectiveDirective(String newValue) {
    js_util.setProperty(this, 'effectiveDirective', newValue);
  }

  String get originalPolicy => js_util.getProperty(this, 'originalPolicy');
  set originalPolicy(String newValue) {
    js_util.setProperty(this, 'originalPolicy', newValue);
  }

  String get sourceFile => js_util.getProperty(this, 'sourceFile');
  set sourceFile(String newValue) {
    js_util.setProperty(this, 'sourceFile', newValue);
  }

  String get sample => js_util.getProperty(this, 'sample');
  set sample(String newValue) {
    js_util.setProperty(this, 'sample', newValue);
  }

  SecurityPolicyViolationEventDisposition get disposition =>
      js_util.getProperty(this, 'disposition');
  set disposition(SecurityPolicyViolationEventDisposition newValue) {
    js_util.setProperty(this, 'disposition', newValue);
  }

  int get statusCode => js_util.getProperty(this, 'statusCode');
  set statusCode(int newValue) {
    js_util.setProperty(this, 'statusCode', newValue);
  }

  int get lineno => js_util.getProperty(this, 'lineno');
  set lineno(int newValue) {
    js_util.setProperty(this, 'lineno', newValue);
  }

  int get colno => js_util.getProperty(this, 'colno');
  set colno(int newValue) {
    js_util.setProperty(this, 'colno', newValue);
  }
}
