/// Reporting API 1
///
/// https://w3c.github.io/reporting/
@JS('window')
@staticInterop
library reporting_1;

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
  external factory ReportBody();
}

extension PropsReportBody on ReportBody {
  ///  A serializer which returns a JSON representation of the
  /// [ReportBody] object.
  ///
  /// ReportBody.toJSON();
  ///
  external dynamic toJSON();
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
  external dynamic toJSON();

  ///  The type of report generated, e.g. [deprecation] or
  /// [intervention].
  ///
  external String get type;

  /// The URL of the document that generated the report.
  ///
  external String get url;

  ///  The body of the report, which is a [ReportBody] object
  /// containing the detailed report information.
  ///
  external ReportBody? get body;
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
  ///  Instructs a reporting observer to start collecting reports in
  /// its report queue.
  ///
  /// reportingObserverInstance.observe()
  ///
  external Object observe();

  ///  Stops a reporting observer that had previously started observing
  /// from collecting reports.
  ///
  /// reportingObserverInstance.disconnect()
  ///
  external Object disconnect();

  ///  Returns the current list of reports contained in the observer's
  /// report queue, and empties the queue.
  ///
  /// reportingObserverInstance.takeRecords()
  ///
  external Iterable<Report> takeRecords();
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
  external Iterable<String> get types;
  external set types(Iterable<String> newValue);

  ///  A boolean that defines whether the reports that were generated
  /// before the observer was able to be created should be observable
  /// ([true]) or not ([false]).
  ///
  external bool get buffered;
  external set buffered(bool newValue);
}

@anonymous
@JS()
@staticInterop
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters(
      {String message, String group = 'default'});
}

extension PropsGenerateTestReportParameters on GenerateTestReportParameters {
  external String get message;
  external set message(String newValue);
  external String get group;
  external set group(String newValue);
}
