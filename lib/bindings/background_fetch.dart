/// Background Fetch
///
/// https://wicg.github.io/background-fetch/

// ignore_for_file: unused_import

@JS('self')
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
  external factory BackgroundFetchManager();
}

extension PropsBackgroundFetchManager on BackgroundFetchManager {
  Future<BackgroundFetchRegistration> fetch(String id, dynamic requests,
          [BackgroundFetchOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'fetch', [id, requests, options]));

  Future<BackgroundFetchRegistration> get(String id) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [id]));

  Future<Iterable<String>> getIds() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getIds', []));
}

@anonymous
@JS()
@staticInterop
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions(
      {Iterable<ImageResource>? icons, String? title});
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
  external factory BackgroundFetchOptions._({int? downloadTotal});

  factory BackgroundFetchOptions({int? downloadTotal}) =>
      BackgroundFetchOptions._(downloadTotal: downloadTotal ?? 0);
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
///
///
///
///    EventTarget
///
///
///
///
///
///    BackgroundFetchRegistration
///
///
@JS()
@staticInterop
class BackgroundFetchRegistration implements EventTarget {
  external factory BackgroundFetchRegistration();
}

extension PropsBackgroundFetchRegistration on BackgroundFetchRegistration {
  String get id => js_util.getProperty(this, 'id');
  int get uploadTotal => js_util.getProperty(this, 'uploadTotal');
  int get uploaded => js_util.getProperty(this, 'uploaded');
  int get downloadTotal => js_util.getProperty(this, 'downloadTotal');
  int get downloaded => js_util.getProperty(this, 'downloaded');
  BackgroundFetchResult get result =>
      BackgroundFetchResult.fromValue(js_util.getProperty(this, 'result'));
  BackgroundFetchFailureReason get failureReason =>
      BackgroundFetchFailureReason.fromValue(
          js_util.getProperty(this, 'failureReason'));
  bool get recordsAvailable => js_util.getProperty(this, 'recordsAvailable');
  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  Future<bool> abort() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', []));

  Future<BackgroundFetchRecord> match(dynamic request,
          [CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'match', [request, options]));

  Future<Iterable<BackgroundFetchRecord>> matchAll(
          [dynamic request, CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'matchAll', [request, options]));
}

enum BackgroundFetchResult {
  empty(''),
  success('success'),
  failure('failure');

  final String value;
  static BackgroundFetchResult fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<BackgroundFetchResult> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const BackgroundFetchResult(this.value);
}

enum BackgroundFetchFailureReason {
  empty(''),
  aborted('aborted'),
  badStatus('bad-status'),
  fetchError('fetch-error'),
  quotaExceeded('quota-exceeded'),
  downloadTotalExceeded('download-total-exceeded');

  final String value;
  static BackgroundFetchFailureReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<BackgroundFetchFailureReason> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const BackgroundFetchFailureReason(this.value);
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
  Request get request => js_util.getProperty(this, 'request');
  Future<Response> get responseReady =>
      js_util.promiseToFuture(js_util.getProperty(this, 'responseReady'));
}

///  The interface of the Background Fetch API is the event type for
/// background fetch events dispatched on the [service worker global
/// scope].
///  It is the event type passed to [onbackgroundfetchabort] and
/// [onbackgroundfetchclick].
///
///
///
///    Event
///
///
///
///
///
///    ExtendableEvent
///
///
///
///
///
///    BackgroundFetchEvent
///
///
@JS()
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external factory BackgroundFetchEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchEvent on BackgroundFetchEvent {
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
///
///
///
///    Event
///
///
///
///
///
///    ExtendableEvent
///
///
///
///
///
///    BackgroundFetchEvent
///
///
///
///
///
///    BackgroundFetchUpdateUIEvent
///
///
@JS()
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchUpdateUIEvent on BackgroundFetchUpdateUIEvent {
  Future<void> updateUI([BackgroundFetchUIOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'updateUI', [options]));
}
