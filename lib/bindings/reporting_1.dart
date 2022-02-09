/// Reporting API 1
///
/// https://w3c.github.io/reporting/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library reporting_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ReportBody {
  external ReportBody();
}

extension PropsReportBody on ReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class Report {
  external Report();
}

extension PropsReport on Report {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get type => js_util.getProperty(this, 'type');
  String get url => js_util.getProperty(this, 'url');
  ReportBody? get body => js_util.getProperty(this, 'body');
}

@JS()
@staticInterop
class ReportingObserver {
  external ReportingObserver(ReportingObserverCallback callback,
      [ReportingObserverOptions? options]);
}

extension PropsReportingObserver on ReportingObserver {
  Object observe() => js_util.callMethod(this, 'observe', []);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<Report> takeRecords() => js_util.callMethod(this, 'takeRecords', []);
}

@anonymous
@JS()
@staticInterop
class ReportingObserverOptions {
  external factory ReportingObserverOptions(
      {required Iterable<String> types, bool? buffered = false});
}

extension PropsReportingObserverOptions on ReportingObserverOptions {
  Iterable<String> get types => js_util.getProperty(this, 'types');
  set types(Iterable<String> newValue) {
    js_util.setProperty(this, 'types', newValue);
  }

  bool get buffered => js_util.getProperty(this, 'buffered');
  set buffered(bool newValue) {
    js_util.setProperty(this, 'buffered', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters(
      {required String message, String? group = 'default'});
}

extension PropsGenerateTestReportParameters on GenerateTestReportParameters {
  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }

  String get group => js_util.getProperty(this, 'group');
  set group(String newValue) {
    js_util.setProperty(this, 'group', newValue);
  }
}
