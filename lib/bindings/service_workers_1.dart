/// Service Workers Nightly
///
/// https://w3c.github.io/ServiceWorker/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library service_workers_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ServiceWorker implements EventTarget, AbstractWorker {
  external ServiceWorker();
}

extension PropsServiceWorker on ServiceWorker {
  String get scriptURL => js_util.getProperty(this, 'scriptURL');
  ServiceWorkerState get state =>
      ServiceWorkerState.values.byName(js_util.getProperty(this, 'state'));
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }
}

enum ServiceWorkerState {
  parsed,
  installing,
  installed,
  activating,
  activated,
  redundant
}

@JS()
@staticInterop
class ServiceWorkerRegistration implements EventTarget {
  external ServiceWorkerRegistration();
}

extension PropsServiceWorkerRegistration on ServiceWorkerRegistration {
  ServiceWorker? get installing => js_util.getProperty(this, 'installing');
  ServiceWorker? get waiting => js_util.getProperty(this, 'waiting');
  ServiceWorker? get active => js_util.getProperty(this, 'active');
  NavigationPreloadManager get navigationPreload =>
      js_util.getProperty(this, 'navigationPreload');
  String get scope => js_util.getProperty(this, 'scope');
  ServiceWorkerUpdateViaCache get updateViaCache =>
      ServiceWorkerUpdateViaCache.values
          .byName(js_util.getProperty(this, 'updateViaCache'));
  Future<Object> update() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'update', []));

  Future<bool> unregister() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unregister', []));

  EventHandlerNonNull? get onupdatefound =>
      js_util.getProperty(this, 'onupdatefound');
  set onupdatefound(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdatefound', newValue);
  }

  ContentIndex get index => js_util.getProperty(this, 'index');
  PeriodicSyncManager get periodicSync =>
      js_util.getProperty(this, 'periodicSync');
  PaymentManager get paymentManager =>
      js_util.getProperty(this, 'paymentManager');
  CookieStoreManager get cookies => js_util.getProperty(this, 'cookies');
  BackgroundFetchManager get backgroundFetch =>
      js_util.getProperty(this, 'backgroundFetch');
  Future<Object> showNotification(String title,
          [NotificationOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'showNotification', [title, options]));

  Future<Iterable<Notification>> getNotifications(
          [GetNotificationOptions? filter]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getNotifications', [filter]));

  PushManager get pushManager => js_util.getProperty(this, 'pushManager');
  @JS('sync')
  @staticInterop
  SyncManager get mSync => js_util.getProperty(this, 'sync');
}

enum ServiceWorkerUpdateViaCache { imports, all, none }

@JS()
@staticInterop
class ServiceWorkerContainer implements EventTarget {
  external ServiceWorkerContainer();
}

extension PropsServiceWorkerContainer on ServiceWorkerContainer {
  ServiceWorker? get controller => js_util.getProperty(this, 'controller');
  Future<ServiceWorkerRegistration> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<ServiceWorkerRegistration> register(String scriptURL,
          [RegistrationOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'register', [scriptURL, options]));

  dynamic getRegistration([String? clientURL = '']) =>
      js_util.callMethod(this, 'getRegistration', [clientURL]);

  Future<Iterable<ServiceWorkerRegistration>> getRegistrations() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getRegistrations', []));

  Object startMessages() => js_util.callMethod(this, 'startMessages', []);

  EventHandlerNonNull? get oncontrollerchange =>
      js_util.getProperty(this, 'oncontrollerchange');
  set oncontrollerchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontrollerchange', newValue);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RegistrationOptions {
  external factory RegistrationOptions._(
      {required String scope, String? type, String? updateViaCache});

  factory RegistrationOptions(
          {required String scope,
          WorkerType? type = WorkerType.classic,
          ServiceWorkerUpdateViaCache? updateViaCache =
              ServiceWorkerUpdateViaCache.imports}) =>
      RegistrationOptions._(
          scope: scope, type: type?.name, updateViaCache: updateViaCache?.name);
}

extension PropsRegistrationOptions on RegistrationOptions {
  String get scope => js_util.getProperty(this, 'scope');
  set scope(String newValue) {
    js_util.setProperty(this, 'scope', newValue);
  }

  WorkerType get type =>
      WorkerType.values.byName(js_util.getProperty(this, 'type'));
  set type(WorkerType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  ServiceWorkerUpdateViaCache get updateViaCache =>
      ServiceWorkerUpdateViaCache.values
          .byName(js_util.getProperty(this, 'updateViaCache'));
  set updateViaCache(ServiceWorkerUpdateViaCache newValue) {
    js_util.setProperty(this, 'updateViaCache', newValue.name);
  }
}

@JS()
@staticInterop
class NavigationPreloadManager {
  external NavigationPreloadManager();
}

extension PropsNavigationPreloadManager on NavigationPreloadManager {
  Future<Object> enable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'enable', []));

  Future<Object> disable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'disable', []));

  Future<Object> setHeaderValue(String value) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setHeaderValue', [value]));

  Future<NavigationPreloadState> getState() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getState', []));
}

@anonymous
@JS()
@staticInterop
class NavigationPreloadState {
  external factory NavigationPreloadState(
      {bool? enabled = false, String? headerValue});
}

extension PropsNavigationPreloadState on NavigationPreloadState {
  bool get enabled => js_util.getProperty(this, 'enabled');
  set enabled(bool newValue) {
    js_util.setProperty(this, 'enabled', newValue);
  }

  String get headerValue => js_util.getProperty(this, 'headerValue');
  set headerValue(String newValue) {
    js_util.setProperty(this, 'headerValue', newValue);
  }
}

@JS()
@staticInterop
class ServiceWorkerGlobalScope implements WorkerGlobalScope {
  external ServiceWorkerGlobalScope();
}

extension PropsServiceWorkerGlobalScope on ServiceWorkerGlobalScope {
  Clients get clients => js_util.getProperty(this, 'clients');
  ServiceWorkerRegistration get registration =>
      js_util.getProperty(this, 'registration');
  ServiceWorker get serviceWorker => js_util.getProperty(this, 'serviceWorker');
  Future<Object> skipWaiting() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'skipWaiting', []));

  EventHandlerNonNull? get oninstall => js_util.getProperty(this, 'oninstall');
  set oninstall(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninstall', newValue);
  }

  EventHandlerNonNull? get onactivate =>
      js_util.getProperty(this, 'onactivate');
  set onactivate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onactivate', newValue);
  }

  EventHandlerNonNull? get onfetch => js_util.getProperty(this, 'onfetch');
  set onfetch(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfetch', newValue);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }

  EventHandlerNonNull? get oncontentdelete =>
      js_util.getProperty(this, 'oncontentdelete');
  set oncontentdelete(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncontentdelete', newValue);
  }

  EventHandlerNonNull? get onperiodicsync =>
      js_util.getProperty(this, 'onperiodicsync');
  set onperiodicsync(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onperiodicsync', newValue);
  }

  EventHandlerNonNull? get oncanmakepayment =>
      js_util.getProperty(this, 'oncanmakepayment');
  set oncanmakepayment(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncanmakepayment', newValue);
  }

  EventHandlerNonNull? get onpaymentrequest =>
      js_util.getProperty(this, 'onpaymentrequest');
  set onpaymentrequest(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpaymentrequest', newValue);
  }

  CookieStore get cookieStore => js_util.getProperty(this, 'cookieStore');
  EventHandlerNonNull? get oncookiechange =>
      js_util.getProperty(this, 'oncookiechange');
  set oncookiechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncookiechange', newValue);
  }

  EventHandlerNonNull? get onbackgroundfetchsuccess =>
      js_util.getProperty(this, 'onbackgroundfetchsuccess');
  set onbackgroundfetchsuccess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbackgroundfetchsuccess', newValue);
  }

  EventHandlerNonNull? get onbackgroundfetchfail =>
      js_util.getProperty(this, 'onbackgroundfetchfail');
  set onbackgroundfetchfail(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbackgroundfetchfail', newValue);
  }

  EventHandlerNonNull? get onbackgroundfetchabort =>
      js_util.getProperty(this, 'onbackgroundfetchabort');
  set onbackgroundfetchabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbackgroundfetchabort', newValue);
  }

  EventHandlerNonNull? get onbackgroundfetchclick =>
      js_util.getProperty(this, 'onbackgroundfetchclick');
  set onbackgroundfetchclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbackgroundfetchclick', newValue);
  }

  EventHandlerNonNull? get onnotificationclick =>
      js_util.getProperty(this, 'onnotificationclick');
  set onnotificationclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnotificationclick', newValue);
  }

  EventHandlerNonNull? get onnotificationclose =>
      js_util.getProperty(this, 'onnotificationclose');
  set onnotificationclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnotificationclose', newValue);
  }

  EventHandlerNonNull? get onpush => js_util.getProperty(this, 'onpush');
  set onpush(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpush', newValue);
  }

  EventHandlerNonNull? get onpushsubscriptionchange =>
      js_util.getProperty(this, 'onpushsubscriptionchange');
  set onpushsubscriptionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpushsubscriptionchange', newValue);
  }

  EventHandlerNonNull? get onsync => js_util.getProperty(this, 'onsync');
  set onsync(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsync', newValue);
  }
}

@JS()
@staticInterop
class Client {
  external Client();
}

extension PropsClient on Client {
  String get url => js_util.getProperty(this, 'url');
  FrameType get frameType =>
      FrameType.values.byName(js_util.getProperty(this, 'frameType'));
  String get id => js_util.getProperty(this, 'id');
  ClientType get type =>
      ClientType.values.byName(js_util.getProperty(this, 'type'));
  Object postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  ClientLifecycleState get lifecycleState => ClientLifecycleState.values
      .byName(js_util.getProperty(this, 'lifecycleState'));
}

@JS()
@staticInterop
class WindowClient implements Client {
  external WindowClient();
}

extension PropsWindowClient on WindowClient {
  DocumentVisibilityState get visibilityState => DocumentVisibilityState.values
      .byName(js_util.getProperty(this, 'visibilityState'));
  bool get focused => js_util.getProperty(this, 'focused');
  Iterable<String> get ancestorOrigins =>
      js_util.getProperty(this, 'ancestorOrigins');
  Future<WindowClient> focus() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'focus', []));

  Future<WindowClient> navigate(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'navigate', [url]));
}

enum FrameType { auxiliary, topLevel, nested, none }

@JS()
@staticInterop
class Clients {
  external Clients();
}

extension PropsClients on Clients {
  @JS('get')
  @staticInterop
  dynamic mGet(String id) => js_util.callMethod(this, 'get', [id]);

  Future<Iterable<Client>> matchAll([ClientQueryOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'matchAll', [options]));

  Future<WindowClient> openWindow(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'openWindow', [url]));

  Future<Object> claim() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'claim', []));
}

@anonymous
@JS()
@staticInterop
class ClientQueryOptions {
  external factory ClientQueryOptions._(
      {bool? includeUncontrolled = false, String? type});

  factory ClientQueryOptions(
          {bool? includeUncontrolled = false,
          ClientType? type = ClientType.window}) =>
      ClientQueryOptions._(
          includeUncontrolled: includeUncontrolled, type: type?.name);
}

extension PropsClientQueryOptions on ClientQueryOptions {
  bool get includeUncontrolled =>
      js_util.getProperty(this, 'includeUncontrolled');
  set includeUncontrolled(bool newValue) {
    js_util.setProperty(this, 'includeUncontrolled', newValue);
  }

  ClientType get type =>
      ClientType.values.byName(js_util.getProperty(this, 'type'));
  set type(ClientType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }
}

enum ClientType { window, worker, sharedworker, all }

@JS()
@staticInterop
class ExtendableEvent implements Event {
  external ExtendableEvent(String type, [ExtendableEventInit? eventInitDict]);
}

extension PropsExtendableEvent on ExtendableEvent {
  Object waitUntil(Future<dynamic> f) =>
      js_util.callMethod(this, 'waitUntil', [f]);
}

@anonymous
@JS()
@staticInterop
class ExtendableEventInit implements EventInit {
  external factory ExtendableEventInit();
}

@JS()
@staticInterop
class FetchEvent implements ExtendableEvent {
  external FetchEvent(String type, FetchEventInit eventInitDict);
}

extension PropsFetchEvent on FetchEvent {
  Request get request => js_util.getProperty(this, 'request');
  Future<dynamic> get preloadResponse =>
      js_util.promiseToFuture(js_util.getProperty(this, 'preloadResponse'));
  String get clientId => js_util.getProperty(this, 'clientId');
  String get resultingClientId =>
      js_util.getProperty(this, 'resultingClientId');
  String get replacesClientId => js_util.getProperty(this, 'replacesClientId');
  Future<Object> get handled =>
      js_util.promiseToFuture(js_util.getProperty(this, 'handled'));
  Object respondWith(Future<Response> r) =>
      js_util.callMethod(this, 'respondWith', [r]);
}

@anonymous
@JS()
@staticInterop
class FetchEventInit implements ExtendableEventInit {
  external factory FetchEventInit(
      {required Request request,
      required Future<dynamic> preloadResponse,
      String? clientId = '',
      String? resultingClientId = '',
      String? replacesClientId = '',
      Future<Object>? handled});
}

extension PropsFetchEventInit on FetchEventInit {
  Request get request => js_util.getProperty(this, 'request');
  set request(Request newValue) {
    js_util.setProperty(this, 'request', newValue);
  }

  Future<dynamic> get preloadResponse =>
      js_util.promiseToFuture(js_util.getProperty(this, 'preloadResponse'));
  set preloadResponse(Future<dynamic> newValue) {
    js_util.setProperty(this, 'preloadResponse', newValue);
  }

  String get clientId => js_util.getProperty(this, 'clientId');
  set clientId(String newValue) {
    js_util.setProperty(this, 'clientId', newValue);
  }

  String get resultingClientId =>
      js_util.getProperty(this, 'resultingClientId');
  set resultingClientId(String newValue) {
    js_util.setProperty(this, 'resultingClientId', newValue);
  }

  String get replacesClientId => js_util.getProperty(this, 'replacesClientId');
  set replacesClientId(String newValue) {
    js_util.setProperty(this, 'replacesClientId', newValue);
  }

  Future<Object> get handled =>
      js_util.promiseToFuture(js_util.getProperty(this, 'handled'));
  set handled(Future<Object> newValue) {
    js_util.setProperty(this, 'handled', newValue);
  }
}

@JS()
@staticInterop
class ExtendableMessageEvent implements ExtendableEvent {
  external ExtendableMessageEvent(String type,
      [ExtendableMessageEventInit? eventInitDict]);
}

extension PropsExtendableMessageEvent on ExtendableMessageEvent {
  dynamic get data => js_util.getProperty(this, 'data');
  String get origin => js_util.getProperty(this, 'origin');
  String get lastEventId => js_util.getProperty(this, 'lastEventId');
  dynamic get source => js_util.getProperty(this, 'source');
  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');
}

@anonymous
@JS()
@staticInterop
class ExtendableMessageEventInit implements ExtendableEventInit {
  external factory ExtendableMessageEventInit(
      {dynamic data,
      String? origin = '',
      String? lastEventId = '',
      dynamic source,
      Iterable<MessagePort>? ports = const []});
}

extension PropsExtendableMessageEventInit on ExtendableMessageEventInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  String get lastEventId => js_util.getProperty(this, 'lastEventId');
  set lastEventId(String newValue) {
    js_util.setProperty(this, 'lastEventId', newValue);
  }

  dynamic get source => js_util.getProperty(this, 'source');
  set source(dynamic newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  Iterable<MessagePort> get ports => js_util.getProperty(this, 'ports');
  set ports(Iterable<MessagePort> newValue) {
    js_util.setProperty(this, 'ports', newValue);
  }
}

@JS()
@staticInterop
class Cache {
  external Cache();
}

extension PropsCache on Cache {
  dynamic match(dynamic request, [CacheQueryOptions? options]) =>
      js_util.callMethod(this, 'match', [request, options]);

  Future<Iterable<Response>> matchAll(
          [dynamic request, CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'matchAll', [request, options]));

  Future<Object> add(dynamic request) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'add', [request]));

  Future<Object> addAll(Iterable<dynamic> requests) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'addAll', [requests]));

  Future<Object> put(dynamic request, Response response) => js_util
      .promiseToFuture(js_util.callMethod(this, 'put', [request, response]));

  Future<bool> delete(dynamic request, [CacheQueryOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'delete', [request, options]));

  Future<Iterable<Request>> keys(
          [dynamic request, CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'keys', [request, options]));
}

@anonymous
@JS()
@staticInterop
class CacheQueryOptions {
  external factory CacheQueryOptions(
      {bool? ignoreSearch = false,
      bool? ignoreMethod = false,
      bool? ignoreVary = false});
}

extension PropsCacheQueryOptions on CacheQueryOptions {
  bool get ignoreSearch => js_util.getProperty(this, 'ignoreSearch');
  set ignoreSearch(bool newValue) {
    js_util.setProperty(this, 'ignoreSearch', newValue);
  }

  bool get ignoreMethod => js_util.getProperty(this, 'ignoreMethod');
  set ignoreMethod(bool newValue) {
    js_util.setProperty(this, 'ignoreMethod', newValue);
  }

  bool get ignoreVary => js_util.getProperty(this, 'ignoreVary');
  set ignoreVary(bool newValue) {
    js_util.setProperty(this, 'ignoreVary', newValue);
  }
}

@JS()
@staticInterop
class CacheStorage {
  external CacheStorage();
}

extension PropsCacheStorage on CacheStorage {
  dynamic match(dynamic request, [MultiCacheQueryOptions? options]) =>
      js_util.callMethod(this, 'match', [request, options]);

  Future<bool> has(String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'has', [cacheName]));

  Future<Cache> open(String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', [cacheName]));

  Future<bool> delete(String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'delete', [cacheName]));

  Future<Iterable<String>> keys() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'keys', []));
}

@anonymous
@JS()
@staticInterop
class MultiCacheQueryOptions implements CacheQueryOptions {
  external factory MultiCacheQueryOptions({required String cacheName});
}

extension PropsMultiCacheQueryOptions on MultiCacheQueryOptions {
  String get cacheName => js_util.getProperty(this, 'cacheName');
  set cacheName(String newValue) {
    js_util.setProperty(this, 'cacheName', newValue);
  }
}
