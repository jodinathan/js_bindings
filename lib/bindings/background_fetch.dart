/// Background Fetch
///
/// https://wicg.github.io/background-fetch/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library background_fetch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class BackgroundFetchManager {
  external BackgroundFetchManager();
}

extension PropsBackgroundFetchManager on BackgroundFetchManager {
  Future<BackgroundFetchRegistration> fetch(String id, dynamic requests,
          [BackgroundFetchOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'fetch', [id, requests, options]));

  @JS('get')
  @staticInterop
  Future<BackgroundFetchRegistration> mGet(String id) =>
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

@JS()
@staticInterop
class BackgroundFetchRegistration implements EventTarget {
  external BackgroundFetchRegistration();
}

extension PropsBackgroundFetchRegistration on BackgroundFetchRegistration {
  String get id => js_util.getProperty(this, 'id');
  int get uploadTotal => js_util.getProperty(this, 'uploadTotal');
  int get uploaded => js_util.getProperty(this, 'uploaded');
  int get downloadTotal => js_util.getProperty(this, 'downloadTotal');
  int get downloaded => js_util.getProperty(this, 'downloaded');
  BackgroundFetchResult get result =>
      BackgroundFetchResult.values.byName(js_util.getProperty(this, 'result'));
  BackgroundFetchFailureReason get failureReason =>
      BackgroundFetchFailureReason.values
          .byName(js_util.getProperty(this, 'failureReason'));
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

enum BackgroundFetchResult { empty, success, failure }

enum BackgroundFetchFailureReason {
  empty,
  aborted,
  badStatus,
  fetchError,
  quotaExceeded,
  downloadTotalExceeded
}

@JS()
@staticInterop
class BackgroundFetchRecord {
  external BackgroundFetchRecord();
}

extension PropsBackgroundFetchRecord on BackgroundFetchRecord {
  Request get request => js_util.getProperty(this, 'request');
  Future<Response> get responseReady =>
      js_util.promiseToFuture(js_util.getProperty(this, 'responseReady'));
}

@JS()
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external BackgroundFetchEvent(String type, BackgroundFetchEventInit init);
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

@JS()
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external BackgroundFetchUpdateUIEvent(
      String type, BackgroundFetchEventInit init);
}

extension PropsBackgroundFetchUpdateUIEvent on BackgroundFetchUpdateUIEvent {
  Future<Object> updateUI([BackgroundFetchUIOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'updateUI', [options]));
}
