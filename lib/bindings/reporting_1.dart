/// Reporting API
///
/// https://w3c.github.io/reporting/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library reporting_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Reporting API represents the body of a
/// report. Individual report types inherit from this interface,
/// adding specific attributes relevant to the particular report.
@JS()
@staticInterop
class ReportBody {
  external factory ReportBody();
}

extension PropsReportBody on ReportBody {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
/// The interface of the Reporting API represents a single report.
/// Reports can be accessed in a number of ways:
///
///   Via the [ReportingObserver.takeRecords()] method — this returns
/// all reports in an observer's report queue, and then empties the
/// queue.
///   Via the [reports] parameter of the callback function passed
/// into the [ReportingObserver()] constructor upon creation of a new
/// observer instance. This contains the list of reports currently
/// contained in the observer's report queue.
///   By sending requests to the endpoints defined via the
/// [Report-To] HTTP header.
///
@experimental
@JS()
@staticInterop
class Report {
  external factory Report();
}

extension PropsReport on Report {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get type => js_util.getProperty(this, 'type');
  String get url => js_util.getProperty(this, 'url');
  ReportBody? get body => js_util.getProperty(this, 'body');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Reporting API allows you to collect and
/// access reports.
@experimental
@JS()
@staticInterop
class ReportingObserver {
  external factory ReportingObserver(ReportingObserverCallback callback,
      [ReportingObserverOptions? options]);
}

extension PropsReportingObserver on ReportingObserver {
  void observe() => js_util.callMethod(this, 'observe', []);

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<Report> takeRecords() => js_util.callMethod(this, 'takeRecords', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The dictionary of the Reporting API allows options to be set in
/// the constructor when creating a [ReportingObserver].
@experimental
@anonymous
@JS()
@staticInterop
class ReportingObserverOptions {
  external factory ReportingObserverOptions(
      {Iterable<String>? types, bool? buffered = false});
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
