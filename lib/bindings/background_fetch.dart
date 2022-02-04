/// Background Fetch
///
/// https://wicg.github.io/background-fetch/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library background_fetch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Background Fetch API is a map where the
/// keys are background fetch IDs and the values are
/// [BackgroundFetchRegistration] objects.
@experimental
@JS()
@staticInterop
class BackgroundFetchManager {
  external BackgroundFetchManager();
}

extension PropsBackgroundFetchManager on BackgroundFetchManager {
  ///  Returns a [Future] that resolves with a
  /// [BackgroundFetchRegistration] object for a supplied array of URLs
  /// and [Request] objects.
  ///
  /// let backgroundFetchRegistration = BackgroundFetchManager.fetch(id, requests [,options]);
  ///
  Future<BackgroundFetchRegistration> fetch(

          ///  A developer-defined identifier that can be passed to the other
          /// methods to retrieve a [backgroundFetchRegistration].
          ///
          String id,

          /// A [RequestInfo] object or an array of such objects.
          ///
          dynamic requests,
          [

          /// A [BackgroundFetchOptions] object.
          ///
          BackgroundFetchOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'fetch', [id, requests, options]));

  ///  Returns a [Future] that resolves with the
  /// [BackgroundFetchRegistration] associated with the provided [id]
  /// or [Object] if the [id] is not found.
  ///
  /// let backgroundFetchRegistration = BackgroundFetchManager.get(id);
  ///
  @JS('get')
  @staticInterop
  Future<BackgroundFetchRegistration> mGet(

          ///  the ID of a [backgroundFetchRegistration] defined by calling
          /// [fetch()].
          ///
          String id) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [id]));

  Future<Iterable<String>> getIds() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getIds', []));
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions(
      {required Iterable<ImageResource> icons, required String title});
}

extension PropsBackgroundFetchUIOptions on BackgroundFetchUIOptions {
  Iterable<ImageResource> get icons => js_util.getProperty(this, 'icons');
  set icons(Iterable<ImageResource> newValue) {
    js_util.setProperty(this, 'icons', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchOptions implements BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions({int? downloadTotal = 0});
}

extension PropsBackgroundFetchOptions on BackgroundFetchOptions {
  int get downloadTotal => js_util.getProperty(this, 'downloadTotal');
  set downloadTotal(int newValue) {
    js_util.setProperty(this, 'downloadTotal', newValue);
  }
}

///  The interface of the Background Fetch API represents an
/// individual background fetch.
///  A instance is returned by the [BackgroundFetchManager.fetch()]
/// or [BackgroundFetchManager.get()] methods, and therefore there
/// has no constructor.
@JS()
@staticInterop
class BackgroundFetchRegistration implements EventTarget {
  external BackgroundFetchRegistration();
}

extension PropsBackgroundFetchRegistration on BackgroundFetchRegistration {
  /// A [string] containing the background fetch's ID.
  ///
  String get id => js_util.getProperty(this, 'id');

  /// A [number] containing the total number of bytes to be uploaded.
  ///
  int get uploadTotal => js_util.getProperty(this, 'uploadTotal');

  ///  A [number] containing the size in bytes successfully sent,
  /// initially [0].
  ///
  int get uploaded => js_util.getProperty(this, 'uploaded');

  ///  A [number] containing the total size in bytes of this download.
  /// This is the value set when the background fetch was registered,
  /// or [0].
  ///
  int get downloadTotal => js_util.getProperty(this, 'downloadTotal');

  ///  A [number] containing the size in bytes that has been
  /// downloaded, initially [0].
  ///
  int get downloaded => js_util.getProperty(this, 'downloaded');

  ///  Returns an empty string initially, on completion either the
  /// string ["success"] or ["failure"].
  ///
  BackgroundFetchResult get result =>
      BackgroundFetchResult.values.byName(js_util.getProperty(this, 'result'));

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
  BackgroundFetchFailureReason get failureReason =>
      BackgroundFetchFailureReason.values
          .byName(js_util.getProperty(this, 'failureReason'));

  /// A [bool] indicating whether the flag is set.
  ///
  bool get recordsAvailable => js_util.getProperty(this, 'recordsAvailable');
  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  ///  Aborts the background fetch. Returns a [Future] that resolves
  /// with [true] if the fetch was successfully aborted.
  ///
  /// let status = BackgroundFetchRegistration.abort();
  ///
  Future<bool> abort() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', []));

  ///  Returns a single [BackgroundFetchRecord] object which is the
  /// first match for the arguments.
  ///
  /// let record = BackgroundFetchRegistration.match(request, options);
  ///
  Future<BackgroundFetchRecord> match(

          ///
          ///    The [Request] for which you are attempting to find records.
          ///    This can be a [Request] object or a URL.
          ///
          ///
          dynamic request,
          [

          ///
          ///     An object that sets options for the [match] operation. The
          /// available
          ///    options are:
          ///
          ///
          ///    [ignoreSearch]
          ///
          ///
          ///      A boolean value that specifies whether to
          ///      ignore the query string in the URL. For example, if set to
          ///      [true] the [?value=bar] part of
          ///       [http://foo.com/?value=bar] would be ignored when
          /// performing a match.
          ///      It defaults to [false].
          ///
          ///
          ///    [ignoreMethod]
          ///
          ///
          ///      A boolean value. When [true],
          ///       prevents matching operations from validating the [Request]
          /// [http] method.
          ///      If [false] (the default) only [GET] and [HEAD] are allowed.
          ///
          ///
          ///    [ignoreVary]
          ///
          ///
          ///      A boolean value. When [true] indicates that the [VARY]
          ///      header should be ignored.
          ///      It defaults to [false].
          ///
          ///
          ///
          ///
          CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'match', [request, options]));

  ///  Returns a [Future] that resolves with an array of
  /// [BackgroundFetchRecord] objects containing requests and
  /// responses.
  ///
  /// let records = BackgroundFetchRegistration.matchAll(request,options);
  ///
  Future<Iterable<BackgroundFetchRecord>> matchAll(
          [

          ///
          ///    The [Request] for which you are attempting to find records.
          ///    This can be a [Request] object or a URL.
          ///
          ///
          dynamic request,

          ///
          ///     An object that sets options for the [match] operation. The
          /// available
          ///    options are:
          ///
          ///
          ///    [ignoreSearch]
          ///
          ///
          ///      A boolean value that specifies whether to
          ///      ignore the query string in the URL. For example, if set to
          ///      [true] the [?value=bar] part of
          ///       [http://foo.com/?value=bar] would be ignored when
          /// performing a match.
          ///      It defaults to [false].
          ///
          ///
          ///    [ignoreMethod]
          ///
          ///
          ///      A boolean value. When [true],
          ///       prevents matching operations from validating the [Request]
          /// [http] method.
          ///      If [false] (the default) only [GET] and [HEAD] are allowed.
          ///
          ///
          ///    [ignoreVary]
          ///
          ///
          ///      A boolean value. When [true] indicates that the [VARY]
          ///      header should be ignored.
          ///      It defaults to [false].
          ///
          ///
          ///
          ///
          CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'matchAll', [request, options]));
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
  external BackgroundFetchRecord();
}

extension PropsBackgroundFetchRecord on BackgroundFetchRecord {
  /// Returns a [Request].
  ///
  Request get request => js_util.getProperty(this, 'request');

  /// Returns a promise that resolves with a [Response].
  ///
  Future<Response> get responseReady =>
      js_util.promiseToFuture(js_util.getProperty(this, 'responseReady'));
}

///  The interface of the Background Fetch API is the event type for
/// background fetch events dispatched on the [service worker global
/// scope].
///  It is the event type passed to [onbackgroundfetchabort] and
/// [onbackgroundfetchclick].
@JS()
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external BackgroundFetchEvent(String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchEvent on BackgroundFetchEvent {
  ///  Returns the [BackgroundFetchRegistration] that the event was
  /// initialized to.
  ///
  BackgroundFetchRegistration get registration =>
      js_util.getProperty(this, 'registration');
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchEventInit implements ExtendableEventInit {
  external factory BackgroundFetchEventInit(
      {required BackgroundFetchRegistration registration});
}

extension PropsBackgroundFetchEventInit on BackgroundFetchEventInit {
  BackgroundFetchRegistration get registration =>
      js_util.getProperty(this, 'registration');
  set registration(BackgroundFetchRegistration newValue) {
    js_util.setProperty(this, 'registration', newValue);
  }
}

///  The interface of the Background Fetch API is an event type
/// passed to [ServiceWorkerGlobalScope.onbackgroundfetchsuccess] and
/// [ServiceWorkerGlobalScope.onbackgroundfetchfail], and provides a
/// method for updating the title and icon of the app to inform a
/// user of the success or failure of a background fetch.
@JS()
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external BackgroundFetchUpdateUIEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchUpdateUIEvent on BackgroundFetchUpdateUIEvent {
  ///  Updates the title and icon in the user interface to show the
  /// status of a background fetch. Resolves with a [Future].
  ///
  /// let updateUI = BackgroundFetchUpdateUIEvent.updateUI(options);
  ///
  Future<Object> updateUI(
          [

          /// An object containing any of the following:
          ///
          ///    [icons]Optional
          ///
          ///      A list of one or more image resources, containing icons for
          /// use in the user interface. An image resource is an object
          /// containing:
          ///
          ///      [src]
          ///
          ///       A [string] which is a URL of an image.
          ///
          ///      [sizes]Optional
          ///
          ///        A [string] which is equivalent to a [<link>] [sizes]
          /// attribute.
          ///
          ///      [type]Optional
          ///
          ///       A [string] containing an image MIME type.
          ///
          ///      [label]Optional
          ///
          ///       A [string] providing a name for the associated image.
          ///
          ///
          ///
          BackgroundFetchUIOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'updateUI', [options]));
}
