/// Background Fetch
///
/// https://wicg.github.io/background-fetch/
@JS('window')
@staticInterop
library background_fetch;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: service_workers_1
html
fetch
image_resource
dom */

///  The interface of the Background Fetch API is a map where the
/// keys are background fetch IDs and the values are
/// [BackgroundFetchRegistration] objects.
@experimental
@JS()
@staticInterop
class BackgroundFetchManager {
  external factory BackgroundFetchManager();
}

extension PropsBackgroundFetchManager on BackgroundFetchManager {
  ///  Returns a [Promise] that resolves with a
  /// [BackgroundFetchRegistration] object for a supplied array of URLs
  /// and [Request] objects.
  ///
  /// let backgroundFetchRegistration = BackgroundFetchManager.fetch(id, requests [,options]);
  ///
  external Promise<BackgroundFetchRegistration> fetch(
      String id, dynamic requests,
      [BackgroundFetchOptions? options]);

  ///  Returns a [Promise] that resolves with the
  /// [BackgroundFetchRegistration] associated with the provided [id]
  /// or [undefined] if the [id] is not found.
  ///
  /// let backgroundFetchRegistration = BackgroundFetchManager.get(id);
  ///
  @JS('get')
  @staticInterop
  external Promise<BackgroundFetchRegistration> mGet(String id);
  external Iterable<Promise<String>> getIds();
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions(
      {Iterable<ImageResource> icons, String title});
}

extension PropsBackgroundFetchUIOptions on BackgroundFetchUIOptions {
  external Iterable<ImageResource> get icons;
  external set icons(Iterable<ImageResource> newValue);
  external String get title;
  external set title(String newValue);
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchOptions implements BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions({int downloadTotal = 0});
}

extension PropsBackgroundFetchOptions on BackgroundFetchOptions {
  external int get downloadTotal;
  external set downloadTotal(int newValue);
}

///  The interface of the Background Fetch API represents an
/// individual background fetch.
///  A instance is returned by the [BackgroundFetchManager.fetch()]
/// or [BackgroundFetchManager.get()] methods, and therefore there
/// has no constructor.
@JS()
@staticInterop
class BackgroundFetchRegistration implements EventTarget {
  external factory BackgroundFetchRegistration();
}

extension PropsBackgroundFetchRegistration on BackgroundFetchRegistration {
  /// A [string] containing the background fetch's ID.
  ///
  external String get id;

  /// A [number] containing the total number of bytes to be uploaded.
  ///
  external int get uploadTotal;

  ///  A [number] containing the size in bytes successfully sent,
  /// initially [0].
  ///
  external int get uploaded;

  ///  A [number] containing the total size in bytes of this download.
  /// This is the value set when the background fetch was registered,
  /// or [0].
  ///
  external int get downloadTotal;

  ///  A [number] containing the size in bytes that has been
  /// downloaded, initially [0].
  ///
  external int get downloaded;

  ///  Returns an empty string initially, on completion either the
  /// string ["success"] or ["failure"].
  ///
  external BackgroundFetchResult get result;

  /// One of the following strings:
  ///
  ///    [""]
  ///
  ///     The background fetch has not completed, or was successful.
  ///
  ///    ["aborted"]
  ///
  ///      The operation was cancelled by the user, or [abort()] was
  /// called.
  ///
  ///    ["bad-status"]
  ///
  ///      A response had a not-ok status (a status outside the range
  /// 200-299).
  ///
  ///    ["fetch-error"]
  ///
  ///      A fetch failed for other reasons, for example CORS, or a
  /// network failure.
  ///
  ///    ["quota-exceeded"]
  ///
  ///     Storage quota was reached during the operation.
  ///
  ///    ["download-total-exceeded"]
  ///
  ///      The provided [downloadTotal] was exceeded. This value was
  /// set when the background fetch was registered.
  ///
  ///
  ///
  external BackgroundFetchFailureReason get failureReason;

  /// A [boolean] indicating whether the flag is set.
  ///
  external bool get recordsAvailable;
  external EventHandlerNonNull? get onprogress;
  external set onprogress(EventHandlerNonNull? newValue);

  ///  Aborts the background fetch. Returns a [Promise] that resolves
  /// with [true] if the fetch was successfully aborted.
  ///
  /// let status = BackgroundFetchRegistration.abort();
  ///
  external Promise<bool> abort();

  ///  Returns a single [BackgroundFetchRecord] object which is the
  /// first match for the arguments.
  ///
  /// let record = BackgroundFetchRegistration.match(request, options);
  ///
  external Promise<BackgroundFetchRecord> match(dynamic request,
      [CacheQueryOptions? options]);

  ///  Returns a [Promise] that resolves with an array of
  /// [BackgroundFetchRecord] objects containing requests and
  /// responses.
  ///
  /// let records = BackgroundFetchRegistration.matchAll(request,options);
  ///
  external Iterable<Promise<BackgroundFetchRecord>> matchAll(
      [dynamic request, CacheQueryOptions? options]);
}

enum BackgroundFetchResult { empty, success, failure }

enum BackgroundFetchFailureReason {
  empty,
  aborted,
  badStatus,
  fetchError,
  quotaExceeded,
  downloadTotalExceeded
}

///  The interface of the Background Fetch API represents an
/// individual request and response.
///  A is created by the [BackgroundFetchManager.fetch()] method,
/// therefore there is no constructor for this interface.
/// There will be one for each resource requested by [fetch()].
@JS()
@staticInterop
class BackgroundFetchRecord {
  external factory BackgroundFetchRecord();
}

extension PropsBackgroundFetchRecord on BackgroundFetchRecord {
  /// Returns a [Request].
  ///
  external Request get request;

  /// Returns a promise that resolves with a [Response].
  ///
  external Promise<Response> get responseReady;
}

///  The interface of the Background Fetch API is the event type for
/// background fetch events dispatched on the [service worker global
/// scope].
///  It is the event type passed to [onbackgroundfetchabort] and
/// [onbackgroundfetchclick].
@JS()
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external factory BackgroundFetchEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchEvent on BackgroundFetchEvent {
  ///  Returns the [BackgroundFetchRegistration] that the event was
  /// initialized to.
  ///
  external BackgroundFetchRegistration get registration;
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchEventInit implements ExtendableEventInit {
  external factory BackgroundFetchEventInit(
      {BackgroundFetchRegistration registration});
}

extension PropsBackgroundFetchEventInit on BackgroundFetchEventInit {
  external BackgroundFetchRegistration get registration;
  external set registration(BackgroundFetchRegistration newValue);
}

///  The interface of the Background Fetch API is an event type
/// passed to [ServiceWorkerGlobalScope.onbackgroundfetchsuccess] and
/// [ServiceWorkerGlobalScope.onbackgroundfetchfail], and provides a
/// method for updating the title and icon of the app to inform a
/// user of the success or failure of a background fetch.
@JS()
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchUpdateUIEvent on BackgroundFetchUpdateUIEvent {
  ///  Updates the title and icon in the user interface to show the
  /// status of a background fetch. Resolves with a [Promise].
  ///
  /// let updateUI = BackgroundFetchUpdateUIEvent.updateUI(options);
  ///
  external Promise<Object> updateUI([BackgroundFetchUIOptions? options]);
}
