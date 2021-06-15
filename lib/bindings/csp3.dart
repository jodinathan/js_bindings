/// Content Security Policy Level 3
///
/// https://w3c.github.io/webappsec-csp/
@JS('window')
library csp3;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'reporting_1.dart';
import 'dom.dart';

@JS()
class CSPViolationReportBody // null -> {} -> ReportBody
    with
        ReportBody {
  external String get documentURL;
  external String? get referrer;
  external String? get blockedURL;
  external String get effectiveDirective;
  external String get originalPolicy;
  external String? get sourceFile;
  external String? get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external int get statusCode;
  external int? get lineNumber;
  external int? get columnNumber;

  external factory CSPViolationReportBody();
}

@JS()
enum SecurityPolicyViolationEventDisposition { enforce, report }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface inherits from [Event], and represents the event
/// object of an event sent on a document or worker when its content
/// security policy is violated.
@experimental
@JS()
class SecurityPolicyViolationEvent // null -> {} -> Event
    with
        Event {
  external factory SecurityPolicyViolationEvent(String type,
      [SecurityPolicyViolationEventInit? eventInitDict]);
  external String get documentURL;

  ///  A [USVString] representing the URI of the document or worker in
  /// which the violation was found.
  external String get documentURI;

  ///  A [USVString] representing the referrer of the resources whose
  /// policy was violated. This will be a URL or [null].
  external String get referrer;
  external String get blockedURL;

  ///  A [USVString] representing the URI of the resource that was
  /// blocked because it violates a policy.
  external String get blockedURI;

  ///  A [DOMString] representing the directive whose enforcement
  /// uncovered the violation.
  external String get effectiveDirective;

  ///  A [DOMString] representing the directive whose enforcement
  /// uncovered the violation.
  external String get violatedDirective;

  ///  A [DOMString] containing the policy whose enforcement uncovered
  /// the violation.
  external String get originalPolicy;

  ///  A [USVString] representing the URI of the document or worker in
  /// which the violation was found.
  external String get sourceFile;

  ///  A [DOMString] representing a sample of the resource that caused
  /// the violation, usually the first 40 characters. This will only be
  /// populated if the resource is an inline script, event handler, or
  /// style — external resources causing a violation will not generate
  /// a sample.
  external String get sample;

  ///  Indicates how the violated policy is configured to be treated by
  /// the user agent. This will be ["enforce"] or ["report"].
  external SecurityPolicyViolationEventDisposition get disposition;

  ///  A number representing the HTTP status code of the document or
  /// worker in which the violation occurred.
  external int get statusCode;
  external int get lineno;

  ///  The line number in the document or worker at which the violation
  /// occurred.
  external int get lineNumber;
  external int get colno;

  ///  The column number in the document or worker at which the
  /// violation occurred.
  external int get columnNumber;
}

@anonymous
@JS()
class SecurityPolicyViolationEventInit // null -> {} -> EventInit
    with
        EventInit {
  external String get documentURL;
  external set documentURL(String newValue);
  external String get referrer;
  external set referrer(String newValue);
  external String get blockedURL;
  external set blockedURL(String newValue);
  external String get effectiveDirective;
  external set effectiveDirective(String newValue);
  external String get originalPolicy;
  external set originalPolicy(String newValue);
  external String get sourceFile;
  external set sourceFile(String newValue);
  external String get sample;
  external set sample(String newValue);
  external SecurityPolicyViolationEventDisposition get disposition;
  external set disposition(SecurityPolicyViolationEventDisposition newValue);
  external int get statusCode;
  external set statusCode(int newValue);
  external int get lineno;
  external set lineno(int newValue);
  external int get colno;
  external set colno(int newValue);

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
