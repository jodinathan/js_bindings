/// Navigation Timing Level 2
///
/// https://w3c.github.io/navigation-timing/
@JS('window')
@staticInterop
library navigation_timing_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: resource_timing_2
hr_time_3 */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides methods and properties to store and
/// retrieve metrics regarding the browser's document navigation
/// events. For example, this interface can be used to determine how
/// much time it takes to load or unload a document.
///
///
///
///    PerformanceEntry
///
///
///
///
///
///    PerformanceResourceTiming
///
///
///
///
///
///    PerformanceNavigationTiming
///
///
@JS()
@staticInterop
class PerformanceNavigationTiming implements PerformanceResourceTiming {
  external factory PerformanceNavigationTiming();
}

extension PropsPerformanceNavigationTiming on PerformanceNavigationTiming {
  ///  A [DOMHighResTimeStamp] representing the time value equal to the
  /// time immediately before the user agent starts the unload event of
  /// the previous document.
  ///
  external double get unloadEventStart;

  ///  A [DOMHighResTimeStamp] representing the time value equal to the
  /// time immediately after the user agent finishes the unload event
  /// of the previous document.
  ///
  external double get unloadEventEnd;

  ///  A [DOMHighResTimeStamp] representing a [timestamp] representing
  /// the time value equal to the time immediately before the user
  /// agent sets the current document readiness of the current document
  /// to interactive.
  ///
  external double get domInteractive;

  ///  A [DOMHighResTimeStamp] representing the time value equal to the
  /// time immediately before the user agent fires the DOMContentLoaded
  /// event at the current document.
  ///
  external double get domContentLoadedEventStart;

  ///  A [DOMHighResTimeStamp] representing the time value equal to the
  /// time immediately after the current document's DOMContentLoaded
  /// event completes.
  ///
  external double get domContentLoadedEventEnd;

  ///  A [DOMHighResTimeStamp] representing a time value equal to the
  /// time immediately before the browser sets the current document
  /// readiness of the current document to complete.
  ///
  external double get domComplete;

  ///  A [DOMHighResTimeStamp] representing the time value equal to the
  /// time immediately before the load event of the current document is
  /// fired.
  ///
  external double get loadEventStart;

  ///  A [DOMHighResTimeStamp] representing the time when the load
  /// event of the current document is completed.
  ///
  external double get loadEventEnd;

  ///  A [string] representing the navigation type. Must be:
  /// "[navigate]", "[reload]", "[back_forward]" or "[prerender]".
  ///
  external NavigationType get type;

  ///  A number representing the number of redirects since the last
  /// non-redirect navigation under the current browsing context.
  ///    If there was no redirect, or if the redirect was from another
  /// origin, and that origin does not permit it's timing information
  /// to be exposed to the current origin then the value will be 0.
  ///
  external int get redirectCount;

  ///  Returns a [DOMString] that is the JSON representation of the
  /// [PerformanceNavigationTiming] object.
  ///
  /// json = resourcePerfEntry.toJSON();
  ///
  /// // Get a resource performance entry
  /// var perfEntries = performance.getEntriesByType("navigation");
  /// var entry = perfEntries[0];
  ///
  /// // Get the JSON and log it
  /// var json = entry.toJSON();
  /// var s = JSON.stringify(json);
  /// console.log("PerformanceNavigationTiming.toJSON() = " + s);
  ///
  @override
  external dynamic toJSON();
}

enum NavigationType { navigate, reload, backForward, prerender }

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///   Warning: This interface is deprecated in the Navigation Timing
/// Level 2 specification. Please use the
/// [PerformanceNavigationTiming] interface instead.
///
///  The interface is a legacy interface kept for backwards
/// compatibility and contains properties that offer performance
/// timing information for various events which occur during the
/// loading and use of the current page. You get a object describing
/// your page using the [window.performance.timing] property.
@deprecated
@JS()
@staticInterop
class PerformanceTiming {
  external factory PerformanceTiming();
}

extension PropsPerformanceTiming on PerformanceTiming {
  ///  When the prompt for unload terminates on the previous document
  /// in the same browsing context. If there is no previous document,
  /// this value will be the same as [PerformanceTiming.fetchStart].
  ///
  @deprecated
  external int get navigationStart;

  ///  When the [unload] event has been thrown, indicating the time at
  /// which the previous document in the window began to unload. If
  /// there is no previous document, or if the previous document or one
  /// of the needed redirects is not of the same origin, the value
  /// returned is [0].
  ///
  @deprecated
  external int get unloadEventStart;

  ///  When the [unload] event handler finishes. If there is no
  /// previous document, or if the previous document, or one of the
  /// needed redirects, is not of the same origin, the value returned
  /// is [0].
  ///
  @deprecated
  external int get unloadEventEnd;

  ///  When the first HTTP redirect starts. If there is no redirect, or
  /// if one of the redirects is not of the same origin, the value
  /// returned is [0].
  ///
  @deprecated
  external int get redirectStart;

  ///  When the last HTTP redirect is completed, that is when the last
  /// byte of the HTTP response has been received. If there is no
  /// redirect, or if one of the redirects is not of the same origin,
  /// the value returned is [0].
  ///
  @deprecated
  external int get redirectEnd;

  ///  When the browser is ready to fetch the document using an HTTP
  /// request. This moment is before the check to any application
  /// cache.
  ///
  @deprecated
  external int get fetchStart;

  ///  When the domain lookup starts. If a persistent connection is
  /// used, or the information is stored in a cache or a local
  /// resource, the value will be the same as
  /// [PerformanceTiming.fetchStart].
  ///
  @deprecated
  external int get domainLookupStart;

  ///  When the domain lookup is finished. If a persistent connection
  /// is used, or the information is stored in a cache or a local
  /// resource, the value will be the same as
  /// [PerformanceTiming.fetchStart].
  ///
  @deprecated
  external int get domainLookupEnd;

  ///  When the request to open a connection is sent to the network. If
  /// the transport layer reports an error and the connection
  /// establishment is started again, the last connection establishment
  /// start time is given. If a persistent connection is used, the
  /// value will be the same as [PerformanceTiming.fetchStart].
  ///
  @deprecated
  external int get connectStart;

  ///  When the connection is opened network. If the transport layer
  /// reports an error and the connection establishment is started
  /// again, the last connection establishment end time is given. If a
  /// persistent connection is used, the value will be the same as
  /// [PerformanceTiming.fetchStart]. A connection is considered as
  /// opened when all secure connection handshake, or SOCKS
  /// authentication, is terminated.
  ///
  @deprecated
  external int get connectEnd;

  ///  When the secure connection handshake starts. If no such
  /// connection is requested, it returns [0].
  ///
  @deprecated
  external int get secureConnectionStart;

  ///  When the browser sent the request to obtain the actual document,
  /// from the server or from a cache. If the transport layer fails
  /// after the start of the request and the connection is reopened,
  /// this property will be set to the time corresponding to the new
  /// request.
  ///
  @deprecated
  external int get requestStart;

  ///  When the browser received the first byte of the response, from
  /// the server from a cache, or from a local resource.
  ///
  @deprecated
  external int get responseStart;

  ///  When the browser received the last byte of the response, or when
  /// the connection is closed if this happened first, from the server,
  /// the cache, or from a local resource.
  ///
  @deprecated
  external int get responseEnd;

  ///  When the parser started its work, that is when its
  /// [Document.readyState] changes to ['loading'] and the
  /// corresponding [readystatechange] event is thrown.
  ///
  @deprecated
  external int get domLoading;

  ///  When the parser finished its work on the main document, that is
  /// when its [Document.readyState] changes to ['interactive'] and the
  /// corresponding [readystatechange] event is thrown.
  ///
  @deprecated
  external int get domInteractive;

  ///  Right before the parser sent the [DOMContentLoaded] event, that
  /// is right after all the scripts that need to be executed right
  /// after parsing have been executed.
  ///
  @deprecated
  external int get domContentLoadedEventStart;

  ///  Right after all the scripts that need to be executed as soon as
  /// possible, in order or not, have been executed.
  ///
  @deprecated
  external int get domContentLoadedEventEnd;

  ///  When the parser finished its work on the main document, that is
  /// when its [Document.readyState] changes to ['complete'] and the
  /// corresponding [readystatechange] event is thrown.
  ///
  @deprecated
  external int get domComplete;

  ///  When the [load] event was sent for the current document. If this
  /// event has not yet been sent, it returns [0.]
  ///
  @deprecated
  external int get loadEventStart;

  ///  When the [load] event handler terminated, that is when the load
  /// event is completed. If this event has not yet been sent, or is
  /// not yet completed, it returns [0.]
  ///
  @deprecated
  external int get loadEventEnd;

  ///  Returns a JSON object representing this [PerformanceTiming]
  /// object.
  ///
  @deprecated
  external dynamic toJSON();
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The legacy interface represents information about how the
/// navigation to the current document was done.
///
///
///    Warning: This interface is deprecated in the Navigation Timing
/// Level 2 specification.
///    Please use the [PerformanceNavigationTiming] interface
/// instead.
///
///
///  An object of this type can be obtained by calling the
/// [Performance.navigation] read-only attribute.
@deprecated
@JS()
@staticInterop
class PerformanceNavigation {
  external static int get TYPE_NAVIGATE;
  external static int get TYPE_RELOAD;
  external static int get TYPE_BACK_FORWARD;
  external static int get TYPE_RESERVED;
  external factory PerformanceNavigation();
}

extension PropsPerformanceNavigation on PerformanceNavigation {
  ///  An [unsigned short] which indicates how the navigation to this
  /// page was done. Possible values are:
  ///
  ///    [TYPE_NAVIGATE] (0)
  ///
  ///      The page was accessed by following a link, a bookmark, a
  /// form submission, or a script, or by typing the URL in the address
  /// bar.
  ///
  ///    [TYPE_RELOAD] (1)
  ///
  ///      The page was accessed by clicking the Reload button or via
  /// the [Location.reload()] method.
  ///
  ///    [TYPE_BACK_FORWARD] (2)
  ///
  ///     The page was accessed by navigating into the history.
  ///
  ///    [TYPE_RESERVED] (255)
  ///
  ///     Any other way.
  ///
  ///
  ///
  @deprecated
  external int get type;

  ///  An [unsigned short] representing the number of REDIRECTs done
  /// before reaching the page.
  ///
  @deprecated
  external int get redirectCount;

  ///  Is a jsonizer returning a json object representing the
  /// [PerformanceNavigation] object.
  ///
  @deprecated
  external dynamic toJSON();
}
