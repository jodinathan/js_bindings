/// Content Security Policy Level 3
///
/// https://w3c.github.io/webappsec-csp/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library csp3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CSPViolationReportBody implements ReportBody {
  external factory CSPViolationReportBody();
}

extension PropsCSPViolationReportBody on CSPViolationReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get documentURL => js_util.getProperty(this, 'documentURL');
  String? get referrer => js_util.getProperty(this, 'referrer');
  String? get blockedURL => js_util.getProperty(this, 'blockedURL');
  String get effectiveDirective =>
      js_util.getProperty(this, 'effectiveDirective');
  String get originalPolicy => js_util.getProperty(this, 'originalPolicy');
  String? get sourceFile => js_util.getProperty(this, 'sourceFile');
  String? get sample => js_util.getProperty(this, 'sample');
  SecurityPolicyViolationEventDisposition get disposition =>
      SecurityPolicyViolationEventDisposition.fromValue(
          js_util.getProperty(this, 'disposition'));
  int get statusCode => js_util.getProperty(this, 'statusCode');
  int? get lineNumber => js_util.getProperty(this, 'lineNumber');
  int? get columnNumber => js_util.getProperty(this, 'columnNumber');
}

enum SecurityPolicyViolationEventDisposition {
  enforce('enforce'),
  report('report');

  final String value;
  static SecurityPolicyViolationEventDisposition fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SecurityPolicyViolationEventDisposition> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const SecurityPolicyViolationEventDisposition(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface inherits from [Event], and represents the event
/// object of an event sent on a document or worker when its content
/// security policy is violated.
///
///
///
///    Event
///
///
///
///
///
///    SecurityPolicyViolationEvent
///
///
@experimental
@JS()
@staticInterop
class SecurityPolicyViolationEvent implements Event {
  external factory SecurityPolicyViolationEvent._(String type,
      [SecurityPolicyViolationEventInit? eventInitDict]);

  factory SecurityPolicyViolationEvent(String type,
          [SecurityPolicyViolationEventInit? eventInitDict]) =>
      SecurityPolicyViolationEvent._(type, eventInitDict ?? undefined);
}

extension PropsSecurityPolicyViolationEvent on SecurityPolicyViolationEvent {
  String get documentURI => js_util.getProperty(this, 'documentURI');
  String get referrer => js_util.getProperty(this, 'referrer');
  String get blockedURI => js_util.getProperty(this, 'blockedURI');
  String get effectiveDirective =>
      js_util.getProperty(this, 'effectiveDirective');
  String get violatedDirective =>
      js_util.getProperty(this, 'violatedDirective');
  String get originalPolicy => js_util.getProperty(this, 'originalPolicy');
  String get sourceFile => js_util.getProperty(this, 'sourceFile');
  String get sample => js_util.getProperty(this, 'sample');
  SecurityPolicyViolationEventDisposition get disposition =>
      SecurityPolicyViolationEventDisposition.fromValue(
          js_util.getProperty(this, 'disposition'));
  int get statusCode => js_util.getProperty(this, 'statusCode');
  int get lineNumber => js_util.getProperty(this, 'lineNumber');
  int get columnNumber => js_util.getProperty(this, 'columnNumber');
}

@anonymous
@JS()
@staticInterop
class SecurityPolicyViolationEventInit implements EventInit {
  external factory SecurityPolicyViolationEventInit._(
      {required String documentURI,
      String? referrer,
      String? blockedURI,
      String? violatedDirective,
      String? effectiveDirective,
      String? originalPolicy,
      String? sourceFile,
      String? sample,
      String? disposition,
      int? statusCode,
      int? lineNumber,
      int? columnNumber});

  factory SecurityPolicyViolationEventInit(
          {required String documentURI,
          String? referrer,
          String? blockedURI,
          String? violatedDirective,
          String? effectiveDirective,
          String? originalPolicy,
          String? sourceFile,
          String? sample,
          SecurityPolicyViolationEventDisposition? disposition,
          int? statusCode,
          int? lineNumber,
          int? columnNumber}) =>
      SecurityPolicyViolationEventInit._(
          documentURI: documentURI,
          referrer: referrer ?? '',
          blockedURI: blockedURI ?? '',
          violatedDirective: violatedDirective ?? undefined,
          effectiveDirective: effectiveDirective ?? undefined,
          originalPolicy: originalPolicy ?? undefined,
          sourceFile: sourceFile ?? '',
          sample: sample ?? '',
          disposition: disposition?.value ?? undefined,
          statusCode: statusCode ?? undefined,
          lineNumber: lineNumber ?? 0,
          columnNumber: columnNumber ?? 0);
}

extension PropsSecurityPolicyViolationEventInit
    on SecurityPolicyViolationEventInit {
  String get documentURI => js_util.getProperty(this, 'documentURI');
  set documentURI(String newValue) {
    js_util.setProperty(this, 'documentURI', newValue);
  }

  String get referrer => js_util.getProperty(this, 'referrer');
  set referrer(String newValue) {
    js_util.setProperty(this, 'referrer', newValue);
  }

  String get blockedURI => js_util.getProperty(this, 'blockedURI');
  set blockedURI(String newValue) {
    js_util.setProperty(this, 'blockedURI', newValue);
  }

  String get violatedDirective =>
      js_util.getProperty(this, 'violatedDirective');
  set violatedDirective(String newValue) {
    js_util.setProperty(this, 'violatedDirective', newValue);
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
      SecurityPolicyViolationEventDisposition.fromValue(
          js_util.getProperty(this, 'disposition'));
  set disposition(SecurityPolicyViolationEventDisposition newValue) {
    js_util.setProperty(this, 'disposition', newValue.value);
  }

  int get statusCode => js_util.getProperty(this, 'statusCode');
  set statusCode(int newValue) {
    js_util.setProperty(this, 'statusCode', newValue);
  }

  int get lineNumber => js_util.getProperty(this, 'lineNumber');
  set lineNumber(int newValue) {
    js_util.setProperty(this, 'lineNumber', newValue);
  }

  int get columnNumber => js_util.getProperty(this, 'columnNumber');
  set columnNumber(int newValue) {
    js_util.setProperty(this, 'columnNumber', newValue);
  }
}
