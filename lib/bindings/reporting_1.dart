/// Reporting API 1
///
/// https://w3c.github.io/reporting/
@JS('window')
@staticInterop
library reporting_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The interface of the Reporting API represents the body of a
/// report. Individual report types inherit from this interface,
/// adding specific attributes relevant to the particular report.
@JS()
@staticInterop
class ReportBody {
  external ReportBody();
}

extension PropsReportBody on ReportBody {
  ///  A serializer which returns a JSON representation of the
  /// [ReportBody] object.
  ///
  /// ReportBody.toJSON();
  ///
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
  external Report();
}

extension PropsReport on Report {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  ///  The type of report generated, e.g. [deprecation] or
  /// [intervention].
  ///
  String get type => js_util.getProperty(this, 'type');

  /// The URL of the document that generated the report.
  ///
  String get url => js_util.getProperty(this, 'url');

  ///  The body of the report, which is a [ReportBody] object
  /// containing the detailed report information.
  ///
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
  external ReportingObserver(ReportingObserverCallback callback,
      [ReportingObserverOptions? options]);
}

extension PropsReportingObserver on ReportingObserver {
  ///  Instructs a reporting observer to start collecting reports in
  /// its report queue.
  ///
  /// reportingObserverInstance.observe()
  ///
  Object observe() => js_util.callMethod(this, 'observe', []);

  ///  Stops a reporting observer that had previously started observing
  /// from collecting reports.
  ///
  /// reportingObserverInstance.disconnect()
  ///
  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  ///  Returns the current list of reports contained in the observer's
  /// report queue, and empties the queue.
  ///
  /// reportingObserverInstance.takeRecords()
  ///
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
      {Iterable<String> types, bool buffered = false});
}

extension PropsReportingObserverOptions on ReportingObserverOptions {
  ///  An array of strings representing the types of report to be
  /// collected by this observer. Available types include
  /// [deprecation], [intervention], and [crash].
  ///
  Iterable<String> get types => js_util.getProperty(this, 'types');
  set types(Iterable<String> newValue) {
    js_util.setProperty(this, 'types', newValue);
  }

  ///  A boolean that defines whether the reports that were generated
  /// before the observer was able to be created should be observable
  /// ([true]) or not ([false]).
  ///
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
      {String message, String group = 'default'});
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
