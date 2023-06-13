/// Service Workers Nightly
///
/// https://w3c.github.io/ServiceWorker/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library service_workers;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Service Worker API provides a reference to
/// a service worker. Multiple browsing contexts (e.g. pages,
/// workers, etc.) can be associated with the same service worker,
/// each through a unique object.
///  A object is available in the [ServiceWorkerRegistration.active]
/// property, and the [ServiceWorkerContainer.controller] property —
/// this is a service worker that has been activated and is
/// controlling the page (the service worker has been successfully
/// registered, and the controlled page has been reloaded.)
///  The interface is dispatched a set of lifecycle events —
/// [install] and [activate] — and functional events including
/// [fetch]. A object has an associated [ServiceWorker.state],
/// related to its lifecycle.
///
///
///
///    EventTarget
///
///
///
///
///
///    ServiceWorker
///
///
@JS()
@staticInterop
class ServiceWorker implements EventTarget, AbstractWorker {
  external factory ServiceWorker();
}

extension PropsServiceWorker on ServiceWorker {
  String get scriptURL => js_util.getProperty(this, 'scriptURL');
  ServiceWorkerState get state =>
      ServiceWorkerState.fromValue(js_util.getProperty(this, 'state'));
  void postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }
}

enum ServiceWorkerState {
  parsed('parsed'),
  installing('installing'),
  installed('installed'),
  activating('activating'),
  activated('activated'),
  redundant('redundant');

  final String value;
  static ServiceWorkerState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ServiceWorkerState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ServiceWorkerState(this.value);
}

///  The interface of the Service Worker API represents the service
/// worker registration. You register a service worker to control one
/// or more pages that share the same origin.
///  The lifetime of a service worker registration is beyond that of
/// the objects that represent them within the lifetime of their
/// corresponding service worker clients. The browser maintains a
/// persistent list of active objects.
///
///  Note: This feature is available in Web Workers.
///
///
///
///
///    EventTarget
///
///
///
///
///
///    ServiceWorkerRegistration
///
///
@JS()
@staticInterop
class ServiceWorkerRegistration implements EventTarget {
  external factory ServiceWorkerRegistration();
}

extension PropsServiceWorkerRegistration on ServiceWorkerRegistration {
  ServiceWorker? get installing => js_util.getProperty(this, 'installing');
  ServiceWorker? get waiting => js_util.getProperty(this, 'waiting');
  ServiceWorker? get active => js_util.getProperty(this, 'active');
  NavigationPreloadManager get navigationPreload =>
      js_util.getProperty(this, 'navigationPreload');
  String get scope => js_util.getProperty(this, 'scope');
  ServiceWorkerUpdateViaCache get updateViaCache =>
      ServiceWorkerUpdateViaCache.fromValue(
          js_util.getProperty(this, 'updateViaCache'));
  Future<void> update() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'update', []));

  Future<bool> unregister() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unregister', []));

  EventHandlerNonNull? get onupdatefound =>
      js_util.getProperty(this, 'onupdatefound');
  set onupdatefound(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdatefound', newValue);
  }

  ContentIndex get index => js_util.getProperty(this, 'index');
  BackgroundFetchManager get backgroundFetch =>
      js_util.getProperty(this, 'backgroundFetch');
  PushManager get pushManager => js_util.getProperty(this, 'pushManager');
  PaymentManager get paymentManager =>
      js_util.getProperty(this, 'paymentManager');
  Future<void> showNotification(String title, [NotificationOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'showNotification', [title, options]));

  Future<Iterable<Notification>> getNotifications(
          [GetNotificationOptions? filter]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getNotifications', [filter]));

  CookieStoreManager get cookies => js_util.getProperty(this, 'cookies');
  SyncManager get sync => js_util.getProperty(this, 'sync');
  PeriodicSyncManager get periodicSync =>
      js_util.getProperty(this, 'periodicSync');
}

enum ServiceWorkerUpdateViaCache {
  imports('imports'),
  all('all'),
  none('none');

  final String value;
  static ServiceWorkerUpdateViaCache fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ServiceWorkerUpdateViaCache> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const ServiceWorkerUpdateViaCache(this.value);
}

///  The interface of the Service Worker API provides an object
/// representing the service worker as an overall unit in the network
/// ecosystem, including facilities to register, unregister and
/// update service workers, and access the state of service workers
/// and their registrations.
///  Most importantly, it exposes the
/// [ServiceWorkerContainer.register()] method used to register
/// service workers, and the [ServiceWorkerContainer.controller]
/// property used to determine whether or not the current page is
/// actively controlled.
///
///
///
///    EventTarget
///
///
///
///
///
///    ServiceWorkerContainer
///
///
@JS()
@staticInterop
class ServiceWorkerContainer implements EventTarget {
  external factory ServiceWorkerContainer();
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

  void startMessages() => js_util.callMethod(this, 'startMessages', []);

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
      {String? scope, String? type, String? updateViaCache});

  factory RegistrationOptions(
          {String? scope,
          WorkerType? type,
          ServiceWorkerUpdateViaCache? updateViaCache}) =>
      RegistrationOptions._(
          scope: scope ?? undefined,
          type: type?.value ?? WorkerType.classic.value,
          updateViaCache: updateViaCache?.value ??
              ServiceWorkerUpdateViaCache.imports.value);
}

extension PropsRegistrationOptions on RegistrationOptions {
  String get scope => js_util.getProperty(this, 'scope');
  set scope(String newValue) {
    js_util.setProperty(this, 'scope', newValue);
  }

  WorkerType get type =>
      WorkerType.fromValue(js_util.getProperty(this, 'type'));
  set type(WorkerType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  ServiceWorkerUpdateViaCache get updateViaCache =>
      ServiceWorkerUpdateViaCache.fromValue(
          js_util.getProperty(this, 'updateViaCache'));
  set updateViaCache(ServiceWorkerUpdateViaCache newValue) {
    js_util.setProperty(this, 'updateViaCache', newValue.value);
  }
}

///  The interface of the Service Worker API provides methods for
/// managing the preloading of resources with a service worker.
@JS()
@staticInterop
class NavigationPreloadManager {
  external factory NavigationPreloadManager();
}

extension PropsNavigationPreloadManager on NavigationPreloadManager {
  Future<void> enable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'enable', []));

  Future<void> disable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'disable', []));

  Future<void> setHeaderValue(String value) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setHeaderValue', [value]));

  Future<NavigationPreloadState> getState() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getState', []));
}

@anonymous
@JS()
@staticInterop
class NavigationPreloadState {
  external factory NavigationPreloadState._(
      {bool? enabled, String? headerValue});

  factory NavigationPreloadState({bool? enabled, String? headerValue}) =>
      NavigationPreloadState._(
          enabled: enabled ?? false, headerValue: headerValue ?? undefined);
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

///  The interface of the Service Worker API represents the global
/// execution context of a service worker.
///  Developers should keep in mind that the ServiceWorker state is
/// not persisted across the termination/restart cycle, so each event
/// handler should assume it's being invoked with a bare, default
/// global state.
///  Once successfully registered, a service worker can and will be
/// terminated when idle to conserve memory and processor power. An
/// active service worker is automatically restarted to respond to
/// events, such as [ServiceWorkerGlobalScope.onfetch] or
/// [ServiceWorkerGlobalScope.onmessage].
///  Additionally, synchronous requests are not allowed from within a
/// service worker — only asynchronous requests, like those initiated
/// via the [fetch()] method, can be used.
///  This interface inherits from the [WorkerGlobalScope] interface,
/// and its parent [EventTarget].
///
///
///
///    EventTarget
///
///
///
///
///
///    WorkerGlobalScope
///
///
///
///
///
///    ServiceWorkerGlobalScope
///
///
@JS()
@staticInterop
class ServiceWorkerGlobalScope implements WorkerGlobalScope {
  external factory ServiceWorkerGlobalScope();
}

extension PropsServiceWorkerGlobalScope on ServiceWorkerGlobalScope {
  Clients get clients => js_util.getProperty(this, 'clients');
  ServiceWorkerRegistration get registration =>
      js_util.getProperty(this, 'registration');
  ServiceWorker get serviceWorker => js_util.getProperty(this, 'serviceWorker');
  Future<void> skipWaiting() =>
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

  EventHandlerNonNull? get onpush => js_util.getProperty(this, 'onpush');
  set onpush(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpush', newValue);
  }

  EventHandlerNonNull? get onpushsubscriptionchange =>
      js_util.getProperty(this, 'onpushsubscriptionchange');
  set onpushsubscriptionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpushsubscriptionchange', newValue);
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

  CookieStore get cookieStore => js_util.getProperty(this, 'cookieStore');
  EventHandlerNonNull? get oncookiechange =>
      js_util.getProperty(this, 'oncookiechange');
  set oncookiechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncookiechange', newValue);
  }

  EventHandlerNonNull? get onsync => js_util.getProperty(this, 'onsync');
  set onsync(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsync', newValue);
  }

  EventHandlerNonNull? get onperiodicsync =>
      js_util.getProperty(this, 'onperiodicsync');
  set onperiodicsync(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onperiodicsync', newValue);
  }
}

///  The interface represents an executable context such as a
/// [Worker], or a [SharedWorker]. [Window] clients are represented
/// by the more-specific [WindowClient]. You can get /[WindowClient]
/// objects from methods such as [Clients.matchAll()] and
/// [Clients.get()].
@experimental
@JS()
@staticInterop
class Client {
  external factory Client();
}

extension PropsClient on Client {
  String get url => js_util.getProperty(this, 'url');
  FrameType get frameType =>
      FrameType.fromValue(js_util.getProperty(this, 'frameType'));
  String get id => js_util.getProperty(this, 'id');
  ClientType get type =>
      ClientType.fromValue(js_util.getProperty(this, 'type'));
  void postMessage(dynamic message, Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  ClientLifecycleState get lifecycleState => ClientLifecycleState.fromValue(
      js_util.getProperty(this, 'lifecycleState'));
}

///  The interface of the ServiceWorker API represents the scope of a
/// service worker client that is a document in a browsing context,
/// controlled by an active worker. The service worker client
/// independently selects and uses a service worker for its own
/// loading and sub-resources.
///
///
///
///    Client
///
///
///
///
///
///    WindowClient
///
///
@experimental
@JS()
@staticInterop
class WindowClient implements Client {
  external factory WindowClient();
}

extension PropsWindowClient on WindowClient {
  DocumentVisibilityState get visibilityState =>
      DocumentVisibilityState.fromValue(
          js_util.getProperty(this, 'visibilityState'));
  bool get focused => js_util.getProperty(this, 'focused');
  Iterable<String> get ancestorOrigins =>
      js_util.getProperty(this, 'ancestorOrigins');
  Future<WindowClient> focus() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'focus', []));

  Future<WindowClient> navigate(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'navigate', [url]));
}

enum FrameType {
  auxiliary('auxiliary'),
  topLevel('top-level'),
  nested('nested'),
  none('none');

  final String value;
  static FrameType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FrameType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FrameType(this.value);
}

///  The interface provides access to [Client] objects. Access it via
/// [[self].clients] within a service worker.
@experimental
@JS()
@staticInterop
class Clients {
  external factory Clients();
}

extension PropsClients on Clients {
  dynamic get(String id) => js_util.callMethod(this, 'get', [id]);

  Future<Iterable<Client>> matchAll([ClientQueryOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'matchAll', [options]));

  Future<WindowClient> openWindow(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'openWindow', [url]));

  Future<void> claim() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'claim', []));
}

@anonymous
@JS()
@staticInterop
class ClientQueryOptions {
  external factory ClientQueryOptions._(
      {bool? includeUncontrolled, String? type});

  factory ClientQueryOptions({bool? includeUncontrolled, ClientType? type}) =>
      ClientQueryOptions._(
          includeUncontrolled: includeUncontrolled ?? false,
          type: type?.value ?? ClientType.window.value);
}

extension PropsClientQueryOptions on ClientQueryOptions {
  bool get includeUncontrolled =>
      js_util.getProperty(this, 'includeUncontrolled');
  set includeUncontrolled(bool newValue) {
    js_util.setProperty(this, 'includeUncontrolled', newValue);
  }

  ClientType get type =>
      ClientType.fromValue(js_util.getProperty(this, 'type'));
  set type(ClientType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }
}

enum ClientType {
  window('window'),
  worker('worker'),
  sharedworker('sharedworker'),
  all('all');

  final String value;
  static ClientType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ClientType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ClientType(this.value);
}

///  The interface extends the lifetime of the [install] and
/// [activate] events dispatched on the global scope as part of the
/// service worker lifecycle. This ensures that any functional events
/// (like [FetchEvent]) are not dispatched until it upgrades database
/// schemas and deletes the outdated cache entries.
///  If [waitUntil()] is called outside of the handler, the browser
/// should throw an [InvalidStateError]; note also that multiple
/// calls will stack up, and the resulting promises will be added to
/// the list of extend lifetime promises.
///
///   Note: The behavior described in the above paragraph was fixed
/// in Firefox 43 (see bug 1180274.)
///
/// This interface inherits from the [Event] interface.
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
///   Note: This interface is only available when the global scope is
/// a [ServiceWorkerGlobalScope]. It is not available when it is a
/// [Window], or the scope of another kind of worker.
///
@experimental
@JS()
@staticInterop
class ExtendableEvent implements Event {
  external factory ExtendableEvent._(String type,
      [ExtendableEventInit? eventInitDict]);

  factory ExtendableEvent(String type, [ExtendableEventInit? eventInitDict]) =>
      ExtendableEvent._(type, eventInitDict ?? undefined);
}

extension PropsExtendableEvent on ExtendableEvent {
  void waitUntil(Future<dynamic> f) =>
      js_util.callMethod(this, 'waitUntil', [f]);
}

@anonymous
@JS()
@staticInterop
class ExtendableEventInit implements EventInit {
  external factory ExtendableEventInit();
}

///  This is the event type for [fetch] events dispatched on the
/// service worker global scope. It contains information about the
/// fetch, including the request and how the receiver will treat the
/// response. It provides the [event.respondWith()] method, which
/// allows us to provide a response to this fetch.
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
///    FetchEvent
///
///
@JS()
@staticInterop
class FetchEvent implements ExtendableEvent {
  external factory FetchEvent(String type, FetchEventInit eventInitDict);
}

extension PropsFetchEvent on FetchEvent {
  Request get request => js_util.getProperty(this, 'request');
  Future<dynamic> get preloadResponse =>
      js_util.promiseToFuture(js_util.getProperty(this, 'preloadResponse'));
  String get clientId => js_util.getProperty(this, 'clientId');
  String get resultingClientId =>
      js_util.getProperty(this, 'resultingClientId');
  String get replacesClientId => js_util.getProperty(this, 'replacesClientId');
  Future<void> get handled =>
      js_util.promiseToFuture(js_util.getProperty(this, 'handled'));
  void respondWith(Future<Response> r) =>
      js_util.callMethod(this, 'respondWith', [r]);
}

@anonymous
@JS()
@staticInterop
class FetchEventInit implements ExtendableEventInit {
  external factory FetchEventInit._(
      {required Request request,
      Future<dynamic>? preloadResponse,
      String? clientId,
      String? resultingClientId,
      String? replacesClientId,
      Future<void>? handled});

  factory FetchEventInit(
          {required Request request,
          Future<dynamic>? preloadResponse,
          String? clientId,
          String? resultingClientId,
          String? replacesClientId,
          Future<void>? handled}) =>
      FetchEventInit._(
          request: request,
          preloadResponse: preloadResponse ?? undefined,
          clientId: clientId ?? '',
          resultingClientId: resultingClientId ?? '',
          replacesClientId: replacesClientId ?? '',
          handled: handled ?? undefined);
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

  Future<void> get handled =>
      js_util.promiseToFuture(js_util.getProperty(this, 'handled'));
  set handled(Future<void> newValue) {
    js_util.setProperty(this, 'handled', newValue);
  }
}

///  The interface of the Service Worker API represents the event
/// object of a [message] event fired on a service worker (when a
/// message is received on the [ServiceWorkerGlobalScope] from
/// another context) — extends the lifetime of such events.
/// This interface inherits from the [ExtendableEvent] interface.
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
///    ExtendableMessageEvent
///
///
@experimental
@JS()
@staticInterop
class ExtendableMessageEvent implements ExtendableEvent {
  external factory ExtendableMessageEvent._(String type,
      [ExtendableMessageEventInit? eventInitDict]);

  factory ExtendableMessageEvent(String type,
          [ExtendableMessageEventInit? eventInitDict]) =>
      ExtendableMessageEvent._(type, eventInitDict ?? undefined);
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
  external factory ExtendableMessageEventInit._(
      {dynamic data,
      String? origin,
      String? lastEventId,
      dynamic source,
      Iterable<MessagePort>? ports});

  factory ExtendableMessageEventInit(
          {dynamic data,
          String? origin,
          String? lastEventId,
          dynamic source,
          Iterable<MessagePort>? ports}) =>
      ExtendableMessageEventInit._(
          data: data ?? undefined,
          origin: origin ?? '',
          lastEventId: lastEventId ?? '',
          source: source ?? undefined,
          ports: ports ?? const []);
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

///  The interface provides a persistent storage mechanism for
/// [[Request]] / [[Response]] object pairs that are cached in long
/// lived memory. How long a Cache lives is browser dependent, but a
/// single origin's scripts can typically rely on the presence of a
/// previously populated Cache. Note that the interface is exposed to
/// windowed scopes as well as workers. You don't have to use it in
/// conjunction with service workers, even though it is defined in
/// the service worker spec.
///  An origin can have multiple, named objects. You are responsible
/// for implementing how your script (e.g. in a [ServiceWorker])
/// handles updates. Items in a do not get updated unless explicitly
/// requested; they don’t expire unless deleted. Use
/// [CacheStorage.open()] to open a specific named object and then
/// call any of the methods to maintain the .
///  You are also responsible for periodically purging cache entries.
/// Each browser has a hard limit on the amount of cache storage that
/// a given origin can use. Cache quota usage estimates are available
/// via the [StorageManager.estimate()] method. The browser does its
/// best to manage disk space, but it may delete the Cache storage
/// for an origin. The browser will generally delete all of the data
/// for an origin or none of the data for an origin. Make sure to
/// version caches by name and use the caches only from the version
/// of the script that they can safely operate on. See Deleting old
/// caches for more information.
///
///   Note: The key matching algorithm depends on the VARY header in
/// the value. So matching a new key requires looking at both key and
/// value for entries in the Cache.
///  Note: The caching API doesn't honor HTTP caching headers.
///
///  Note: This feature is available in Web Workers
///
///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
@experimental
@JS()
@staticInterop
class Cache {
  external factory Cache();
}

extension PropsCache on Cache {
  dynamic match(dynamic request, [CacheQueryOptions? options]) =>
      js_util.callMethod(this, 'match', [request, options]);

  Future<Iterable<Response>> matchAll(
          [dynamic request, CacheQueryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'matchAll', [request, options]));

  Future<void> add(dynamic request) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'add', [request]));

  Future<void> addAll(Iterable<dynamic> requests) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'addAll', [requests]));

  Future<void> put(dynamic request, Response response) => js_util
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
  external factory CacheQueryOptions._(
      {bool? ignoreSearch, bool? ignoreMethod, bool? ignoreVary});

  factory CacheQueryOptions(
          {bool? ignoreSearch, bool? ignoreMethod, bool? ignoreVary}) =>
      CacheQueryOptions._(
          ignoreSearch: ignoreSearch ?? false,
          ignoreMethod: ignoreMethod ?? false,
          ignoreVary: ignoreVary ?? false);
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

/// The interface represents the storage for [Cache] objects.
/// The interface:
///
///   Provides a master directory of all the named caches that can be
/// accessed by a [ServiceWorker] or other type of worker or [window]
/// scope (you’re not limited to only using it with service workers).
///
///     Note: Chrome and Safari only expose `CacheStorage` to the
/// windowed context over HTTPS. [caches] will be undefined unless an
/// SSL certificate is configured.
///
///
///   Maintains a mapping of string names to corresponding [Cache]
/// objects.
///
/// Use [CacheStorage.open()] to obtain a [Cache] instance.
///  Use [CacheStorage.match()] to check if a given [Request] is a
/// key in any of the [Cache] objects that the object tracks.
/// You can access through the global [caches] property.
///
///   Note: always rejects with a [SecurityError] on untrusted
/// origins (i.e. those that aren't using HTTPS, although this
/// definition will likely become more complex in the future.) When
/// testing on Firefox, you can get around this by checking the
/// Enable Service Workers over HTTP (when toolbox is open) option in
/// the Firefox Devtools options/gear menu. Furthermore, because
/// requires file-system access, it may be unavailable in private
/// mode in Firefox.
///   Note: [CacheStorage.match()] is a convenience method.
/// Equivalent functionality to match a cache entry can be
/// implemented by returning an array of cache names from
/// [CacheStorage.keys()], opening each cache with
/// [CacheStorage.open()], and matching the one you want with
/// [Cache.match()].
///
///  Note: This feature is available in Web Workers
///
///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
@experimental
@JS()
@staticInterop
class CacheStorage {
  external factory CacheStorage();
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
  external factory MultiCacheQueryOptions({String? cacheName});
}

extension PropsMultiCacheQueryOptions on MultiCacheQueryOptions {
  String get cacheName => js_util.getProperty(this, 'cacheName');
  set cacheName(String newValue) {
    js_util.setProperty(this, 'cacheName', newValue);
  }
}
