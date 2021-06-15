/// Reporting API 1
///
/// https://w3c.github.io/reporting/
@JS('window')
library reporting_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'reporting_1.dart';

@JS()
class ReportBody {
  external dynamic toJSON();

  external factory ReportBody();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
/// The interface of the Reporting API represents a single report.
///
/// Reports can be accessed in a number of ways:
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
class Report {
  external dynamic toJSON();

  ///  The type of report generated, e.g. [deprecation] or
  /// [intervention].
  external String get type;

  /// The URL of the document that generated the report.
  external String get url;

  ///  The body of the report, which is a [ReportBody] object
  /// containing the detailed report information.
  external ReportBody? get body;

  external factory Report();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API allows you to collect and
/// access reports.
@experimental
@JS()
class ReportingObserver {
  external factory ReportingObserver(ReportingObserverCallback callback,
      [ReportingObserverOptions? options]);

  ///  Instructs a reporting observer to start collecting reports in
  /// its report queue.
  /// reportingObserverInstance.observe()
  ///
  external Object observe();

  ///  Stops a reporting observer that had previously started observing
  /// from collecting reports.
  /// reportingObserverInstance.disconnect()
  ///
  external Object disconnect();

  ///  Returns the current list of reports contained in the observer's
  /// report queue, and empties the queue.
  /// reportingObserverInstance.takeRecords()
  ///
  external Iterable<Report> takeRecords();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The dictionary of the Reporting API allows options to be set in
/// the constructor when creating a [ReportingObserver].
@experimental
@anonymous
@JS()
class ReportingObserverOptions {
  ///  An array of strings representing the types of report to be
  /// collected by this observer. Available types include
  /// [deprecation], [intervention], and [crash].
  external Iterable<String> get types;
  external set types(Iterable<String> newValue);

  ///  A boolean that defines whether the reports that were generated
  /// before the observer was able to be created should be observable
  /// ([true]) or not ([false]).
  external bool get buffered;
  external set buffered(bool newValue);

  external factory ReportingObserverOptions(
      {Iterable<String> types, bool buffered = false});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API represents the body of a
/// deprecation report (the return value of its [Report.body]
/// property).
///
///  A deprecation report is generated when a deprecated feature
/// (e.g. a deprecated API method) is used on a document being
/// observed by a [ReportingObserver].
@experimental
@JS()
class DeprecationReportBody // null -> {} -> ReportBody
    with
        ReportBody {
  ///  A string representing the deprecated feature that generated the
  /// report, for example [NavigatorGetUserMedia]. This can be used to
  /// group reports by deprecated feature.
  external String get id;

  ///  A [Date] object (rendered as a string) representing the date
  /// when the feature is expected to be removed from the current
  /// browser. If the date is not known, this property will return
  /// [null].
  external DateTime? get anticipatedRemoval;

  ///  A string containing a human-readable description of the
  /// deprecation, including information such as what newer feature has
  /// superseded it, if any. This typically matches the message a
  /// browser will display in its DevTools console when a deprecated
  /// feature is used, if one is available.
  external String get message;

  ///  A string containing the path to the source file where the
  /// deprecated feature was used, if known, or [null] otherwise.
  external String? get sourceFile;

  ///  A number representing the line in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  external int? get lineNumber;

  ///  A number representing the column in the source file in which the
  /// deprecated feature was used, if known, or [null] otherwise.
  external int? get columnNumber;

  external factory DeprecationReportBody();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API represents the body of an
/// intervention report (the return value of its [Report.body]
/// property).
///
///  An intervention report is generated when usage of a feature in a
/// web document has been blocked by the browser for reasons such as
/// security, performance, or user annoyance. So for example, a
/// script was been stopped because it was significantly slowing down
/// the browser, or the browser's autoplay policy blocked audio from
/// playing without a user gesture to trigger it.
@experimental
@JS()
class InterventionReportBody // null -> {} -> ReportBody
    with
        ReportBody {
  ///  A string representing the intervention that generated the
  /// report. This can be used to group reports by deprecated feature.
  external String get id;

  ///  A string containing a human-readable description of the
  /// intervention, including information such how the intervention
  /// could be avoided. This typically matches the message a browser
  /// will display in its DevTools console when an intervention is
  /// imposed, if one is available.
  external String get message;

  ///  A string containing the path to the source file where the
  /// intervention occurred, if known, or [null] otherwise.
  external String? get sourceFile;

  ///  A number representing the line in the source file in which the
  /// intervention occurred, if known, or [null] otherwise.
  external int? get lineNumber;

  ///  A number representing the column in the source file in which the
  /// intervention occurred, if known, or [null] otherwise.
  external int? get columnNumber;

  external factory InterventionReportBody();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Reporting API represents the body of a
/// crash report (the return value of its [Report.body] property).
///
///  A crash report is generated when a document becomes unusable due
/// to the browser (or one of its processes) crashing. For security
/// reasons, no details of the crash are communicated in the body
/// except for a general crash reason.
@experimental
@JS()
class CrashReportBody // null -> {} -> ReportBody
    with
        ReportBody {
  external String get crashId;

  ///  A string representing the reason for the crash. Current possible
  /// reasons are:
  ///
  ///  [oom]: The browser ran out of memory.
  ///  [unresponsive]: The page was killed due to being unresponsive.
  ///
  ///
  external String? get reason;

  external factory CrashReportBody();
}

@anonymous
@JS()
class GenerateTestReportParameters {
  external String get message;
  external set message(String newValue);
  external String get group;
  external set group(String newValue);

  external factory GenerateTestReportParameters(
      {String message, String group = 'default'});
}
