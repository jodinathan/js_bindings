/// Service Workers Nightly
///
/// https://w3c.github.io/ServiceWorker/
@JS('window')
library service_workers_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'page_visibility_2.dart';
import 'fetch.dart';
import 'content_index.dart';
import 'periodic_background_sync.dart';
import 'payment_handler.dart';
import 'cookie_store.dart';
import 'page_lifecycle.dart';
import 'background_fetch.dart';
import 'notifications.dart';
import 'push_api.dart';
import 'background_sync.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Service Worker API provides a reference to
/// a service worker. Multiple browsing contexts (e.g. pages,
/// workers, etc.) can be associated with the same service worker,
/// each through a unique object.
///
///  A object is available in the [ServiceWorkerRegistration.active]
/// property, and the [ServiceWorkerContainer.controller] property —
/// this is a service worker that has been activated and is
/// controlling the page (the service worker has been successfully
/// registered, and the controlled page has been reloaded.)
///
///  The interface is dispatched a set of lifecycle events —
/// [install] and [activate] — and functional events including
/// [fetch]. A object has an associated [ServiceWorker.state],
/// related to its lifecycle.
@JS()
class ServiceWorker // null -> {} -> EventTarget
    with
        EventTarget,
        AbstractWorker {
  ///  Returns the [ServiceWorker] serialized script URL defined as
  /// part of [ServiceWorkerRegistration]. The URL must be on the same
  /// origin as the document that registers the [ServiceWorker].
  external String get scriptURL;

  ///  Returns the state of the service worker. It returns one of the
  /// following values: [installing], [installed,] [activating],
  /// [activated], or [redundant].
  external ServiceWorkerState get state;
  external Object postMessage(dynamic message, Iterable<dynamic> transfer);
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  external factory ServiceWorker();
}

@JS()
enum ServiceWorkerState {
  parsed,
  installing,
  installed,
  activating,
  activated,
  redundant
}

///
///
///  The interface of the Service Worker API represents the service
/// worker registration. You register a service worker to control one
/// or more pages that share the same origin.
///
///  The lifetime of a service worker registration is beyond that of
/// the objects that represent them within the lifetime of their
/// corresponding service worker clients. The browser maintains a
/// persistent list of active objects.
/// Note: This feature is available in Web Workers.
///
@JS()
class ServiceWorkerRegistration // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns a service worker whose state is . This is initially set
  /// to [null].
  external ServiceWorker? get installing;

  ///  Returns a service worker whose state is [installed]. This is
  /// initially set to [null].
  external ServiceWorker? get waiting;

  ///  Returns a service worker whose state is [activating] or
  /// [activated]. This is initially set to [null]. An active worker
  /// will control a [Client] if the client's URL falls within the
  /// scope of the registration (the [scope] option set when
  /// [ServiceWorkerContainer.register] is first called.)
  external ServiceWorker? get active;

  ///  Returns the instance of [NavigationPreloadManager] associated
  /// with the current service worker registration.
  external NavigationPreloadManager get navigationPreload;

  ///  Returns a unique identifier for a service worker registration.
  /// This must be on the same origin as the document that registers
  /// the [ServiceWorker].
  external String get scope;
  external ServiceWorkerUpdateViaCache get updateViaCache;

  ///  Checks the server for an updated version of the service worker
  /// without consulting caches.
  /// serviceWorkerRegistration.update();
  /// The following simple example registers a service worker example then adds an event
  ///  handler to a button so you can explicitly update the service worker whenever desired:
  /// if ('serviceWorker' in navigator) {
  ///  navigator.serviceWorker.register('/sw-test/sw.js', {scope: 'sw-test'}).then(function(registration) {
  ///   // registration worked
  ///   console.log('Registration succeeded.');
  ///   button.onclick = function() {
  ///    registration.update();
  ///   }
  ///  }).catch(function(error) {
  ///   // registration failed
  ///   console.log('Registration failed with ' + error);
  ///  });
  /// };
  external Promise<Object> update();

  ///  Unregisters the service worker registration and returns a
  /// [Promise]. The service worker will finish any ongoing operations
  /// before it is unregistered.
  /// serviceWorkerRegistration.unregister().then(function(boolean) {
  /// });
  /// The following simple example registers a service worker example, but then immediately
  ///  unregisters it again:
  ///
  /// if ('serviceWorker' in navigator) {
  ///  navigator.serviceWorker.register('/sw-test/sw.js', {scope: 'sw-test'}).then(function(registration) {
  ///   // registration worked
  ///   console.log('Registration succeeded.');
  ///   registration.unregister().then(function(boolean) {
  ///    // if boolean = true, unregister is successful
  ///   });
  ///  }).catch(function(error) {
  ///   // registration failed
  ///   console.log('Registration failed with ' + error);
  ///  });
  /// };
  external Promise<bool> unregister();
  external EventHandlerNonNull? get onupdatefound;
  external set onupdatefound(EventHandlerNonNull? newValue);
  external ContentIndex get index;
  external PeriodicSyncManager get periodicSync;
  external PaymentManager get paymentManager;
  external CookieStoreManager get cookies;
  external BackgroundFetchManager get backgroundFetch;
  external Promise<Object> showNotification(String title,
      [NotificationOptions? options]);
  external Iterable<Promise<Notification>> getNotifications(
      [GetNotificationOptions? filter]);
  external PushManager get pushManager;
  @JS('sync')
  external SyncManager get mSync;

  external factory ServiceWorkerRegistration();
}

@JS()
enum ServiceWorkerUpdateViaCache { imports, all, none }

///
///
///  The interface of the Service Worker API provides an object
/// representing the service worker as an overall unit in the network
/// ecosystem, including facilities to register, unregister and
/// update service workers, and access the state of service workers
/// and their registrations.
///
///  Most importantly, it exposes the
/// [ServiceWorkerContainer.register()] method used to register
/// service workers, and the [ServiceWorkerContainer.controller]
/// property used to determine whether or not the current page is
/// actively controlled.
@JS()
class ServiceWorkerContainer // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns a [ServiceWorker] object if its state is [activating] or
  /// [activated] (the same object returned by
  /// [ServiceWorkerRegistration.active]). This property returns [null]
  /// during a force-refresh request (Shift + refresh) or if there is
  /// no active worker.
  external ServiceWorker? get controller;

  ///  Provides a way of delaying code execution until a service worker
  /// is active. It returns a [Promise] that will never reject, and
  /// which waits indefinitely until the [ServiceWorkerRegistration]
  /// associated with the current page has an
  /// [ServiceWorkerRegistration.active] worker. Once that condition is
  /// met, it resolves with the [ServiceWorkerRegistration].
  external Promise<ServiceWorkerRegistration> get ready;

  ///  Creates or updates a [ServiceWorkerRegistration] for the given
  /// [scriptURL].
  /// serviceWorkerContainer.register(scriptURL, options)
  ///  .then(function(serviceWorkerRegistration) { ... });
  external Promise<ServiceWorkerRegistration> register(String scriptURL,
      [RegistrationOptions? options]);

  ///  Gets a [ServiceWorkerRegistration] object whose scope matches
  /// the provided document URL. The method returns a [Promise] that
  /// resolves to a [ServiceWorkerRegistration] or [undefined].
  /// serviceWorkerContainer.getRegistration(scope).then(function(serviceWorkerRegistration) { ... });
  /// navigator.serviceWorker.getRegistration('/app').then(function(registration) {
  ///  if(registration){
  ///   document.querySelector('#status').textContent = 'ServiceWorkerRegistration found.';
  ///  }
  /// });
  ///
  external dynamic getRegistration([String? clientURL = '']);

  ///  Returns all [ServiceWorkerRegistration] objects associated with
  /// a [ServiceWorkerContainer] in an array. The method returns a
  /// [Promise] that resolves to an array of
  /// [ServiceWorkerRegistration].
  /// serviceWorkerContainer.getRegistrations().then(function(serviceWorkerRegistrations) { ... });
  /// navigator.serviceWorker.getRegistrations().then(function(registrations) {
  ///  document.querySelector('#status').textContent = 'ServiceWorkerRegistrations found.';
  /// });
  external Iterable<Promise<ServiceWorkerRegistration>> getRegistrations();

  ///  explicitly starts the flow of messages being dispatched from a
  /// service worker to pages under its control (e.g. sent via
  /// [Client.postMessage()]). This can be used to react to sent
  /// messages earlier, even before that page's content has finished
  /// loading.
  /// serviceWorkerContainer.startMessages();
  external Object startMessages();
  external EventHandlerNonNull? get oncontrollerchange;
  external set oncontrollerchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);

  external factory ServiceWorkerContainer();
}

@anonymous
@JS()
class RegistrationOptions {
  external String get scope;
  external set scope(String newValue);
  external WorkerType get type;
  external set type(WorkerType newValue);
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external set updateViaCache(ServiceWorkerUpdateViaCache newValue);

  external factory RegistrationOptions(
      {String scope,
      WorkerType type = WorkerType.classic,
      ServiceWorkerUpdateViaCache updateViaCache =
          ServiceWorkerUpdateViaCache.imports});
}

///
///
///  The interface of the Service Worker API represents the global
/// execution context of a service worker.
///
///  Developers should keep in mind that the ServiceWorker state is
/// not persisted across the termination/restart cycle, so each event
/// handler should assume it's being invoked with a bare, default
/// global state.
///
///  Once successfully registered, a service worker can and will be
/// terminated when idle to conserve memory and processor power. An
/// active service worker is automatically restarted to respond to
/// events, such as [ServiceWorkerGlobalScope.onfetch] or
/// [ServiceWorkerGlobalScope.onmessage].
///
///  Additionally, synchronous requests are not allowed from within a
/// service worker — only asynchronous requests, like those initiated
/// via the [fetch()] method, can be used.
///
///  This interface inherits from the [WorkerGlobalScope] interface,
/// and its parent [EventTarget], and therefore implements properties
/// from [WindowTimers], [WindowBase64], and [WindowEventHandlers].
///
///
@JS()
class ServiceWorkerGlobalScope // EventTarget -> {css_font_loading_3: {FontFaceSource}, html: {WindowOrWorkerGlobalScope}} -> WorkerGlobalScope
    extends WorkerGlobalScope {
  ///  Contains the [Clients] object associated with the service
  /// worker.
  external Clients get clients;

  ///  Contains the [ServiceWorkerRegistration] object that represents
  /// the service worker's registration.
  external ServiceWorkerRegistration get registration;
  external ServiceWorker get serviceWorker;

  ///  Allows the current service worker registration to progress from
  /// waiting to active state while service worker clients are using
  /// it.
  /// ServiceWorkerGlobalScope.skipWaiting().then(function() {
  ///  //Do something
  /// });
  /// While self.skipWaiting() can be called at any point during the service worker's execution, it will only have an effect if there's a newly installed service worker that might otherwise remain in the waiting state. Therefore, it's common to call self.skipWaiting() from inside of an InstallEvent handler.
  ///
  /// The following example causes a newly installed service worker to progress into the activating state, regardless of whether there is already an active service worker.
  ///
  /// self.addEventListener('install', function(event) {
  ///  // The promise that skipWaiting() returns can be safely ignored.
  ///  self.skipWaiting();
  ///
  ///  // Perform any other actions required for your
  ///  // service worker to install, potentially inside
  ///  // of event.waitUntil();
  /// });
  ///
  external Promise<Object> skipWaiting();
  external EventHandlerNonNull? get oninstall;
  external set oninstall(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onactivate;
  external set onactivate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onfetch;
  external set onfetch(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncontentdelete;
  external set oncontentdelete(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onperiodicsync;
  external set onperiodicsync(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncanmakepayment;
  external set oncanmakepayment(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpaymentrequest;
  external set onpaymentrequest(EventHandlerNonNull? newValue);
  external CookieStore get cookieStore;
  external EventHandlerNonNull? get oncookiechange;
  external set oncookiechange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbackgroundfetchsuccess;
  external set onbackgroundfetchsuccess(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbackgroundfetchfail;
  external set onbackgroundfetchfail(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbackgroundfetchabort;
  external set onbackgroundfetchabort(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onbackgroundfetchclick;
  external set onbackgroundfetchclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onnotificationclick;
  external set onnotificationclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onnotificationclose;
  external set onnotificationclose(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpush;
  external set onpush(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpushsubscriptionchange;
  external set onpushsubscriptionchange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsync;
  external set onsync(EventHandlerNonNull? newValue);

  external factory ServiceWorkerGlobalScope();
}

///
///
///  The interface represents an executable context such as a
/// [Worker], or a [SharedWorker]. [Window] clients are represented
/// by the more-specific [WindowClient]. You can get /[WindowClient]
/// objects from methods such as [Clients.matchAll()] and
/// [Clients.get()].
@experimental
@JS()
class Client {
  /// The URL of the client as a string.
  external String get url;
  external FrameType get frameType;

  /// The universally unique identifier of the client as a string.
  external String get id;

  ///  The client's type as a string. It can be "[window"], "[worker"],
  /// or "[sharedworker"].
  external ClientType get type;

  /// Sends a message to the client.
  /// client.postMessage(message[, transfer]);
  /// client.postMessage(message[, { transfer }]);
  ///
  external Object postMessage(dynamic message, Iterable<dynamic> transfer);
  external ClientLifecycleState get lifecycleState;

  external factory Client();
}

///
///
///  The interface of the ServiceWorker API represents the scope of a
/// service worker client that is a document in a browsing context,
/// controlled by an active worker. The service worker client
/// independently selects and uses a service worker for its own
/// loading and sub-resources.
@experimental
@JS()
class WindowClient // null -> {} -> Client
    with
        Client {
  ///  Indicates the visibility of the current client. This value can
  /// be one of ["hidden"], ["visible"], or ["prerender"].
  external VisibilityState get visibilityState;

  /// A boolean that indicates whether the current client has focus.
  external bool get focused;
  external Iterable<String> get ancestorOrigins;

  /// Gives user input focus to the current client.
  /// windowClient.focus().then(function(windowClient) {
  ///  // do something with your WindowClient once it has been focused
  /// });
  /// self.addEventListener('notificationclick', function(event) {
  ///  console.log('On notification click: ', event.notification.tag);
  ///  event.notification.close();
  ///
  ///  // This looks to see if the current is already open and
  ///  // focuses if it is
  ///  event.waitUntil(clients.matchAll({
  ///   type: "window"
  ///  }).then(function(clientList) {
  ///   for (var i = 0; i < clientList.length; i++) {
  ///    var client = clientList[i];
  ///    if (client.url == '/' && 'focus' in client)
  ///     return client.focus();
  ///   }
  ///   if (clients.openWindow)
  ///    return clients.openWindow('/');
  ///  }));
  /// });
  external Promise<WindowClient> focus();

  /// Loads a specified URL into a controlled client page.
  /// windowClient.navigate(url).then(function(windowClient) {
  ///  // do something with your WindowClient after navigation
  /// });
  external Promise<WindowClient> navigate(String url);

  external factory WindowClient();
}

@JS()
enum FrameType {
  auxiliary,
  @JS('top-level')
  topLevel,
  nested,
  none
}

///
///
///  The interface provides access to [Client] objects. Access it via
/// [[self].clients] within a service worker.
@experimental
@JS()
class Clients {
  /// Returns a [Promise] for a [Client] matching a given [id].
  /// self.clients.get(id).then(function(client) {
  ///  // do something with your returned client
  /// });
  @JS('get')
  external dynamic mGet(String id);

  ///  Returns a [Promise] for an array of [Client] objects. An options
  /// argument allows you to control the types of clients returned.
  /// self.clients.matchAll(options).then(function(clients) {
  ///  // do something with your clients list
  /// });
  external Iterable<Promise<Client>> matchAll([ClientQueryOptions? options]);

  ///  Opens a new browser window for a given url and returns a
  /// [Promise] for the new [WindowClient].
  /// self.clients.openWindow(url).then(function(windowClient) {
  ///  // Do something with your WindowClient
  /// });
  external Promise<WindowClient> openWindow(String url);

  ///  Allows an active service worker to set itself as the
  /// [controller] for all clients within its [scope].
  /// await clients.claim();
  ///
  /// The following example uses claim() inside service worker's
  ///  "activate" event listener so that clients loaded in the same scope do not
  ///  need to be reloaded before their fetches will go through this service worker.
  ///
  /// self.addEventListener('activate', event => {
  ///  event.waitUntil(clients.claim());
  /// });
  external Promise<Object> claim();

  external factory Clients();
}

@anonymous
@JS()
class ClientQueryOptions {
  external bool get includeUncontrolled;
  external set includeUncontrolled(bool newValue);
  external ClientType get type;
  external set type(ClientType newValue);

  external factory ClientQueryOptions(
      {bool includeUncontrolled = false, ClientType type = ClientType.window});
}

@JS()
enum ClientType { window, worker, sharedworker, all }

///
///
///  The interface extends the lifetime of the [install] and
/// [activate] events dispatched on the global scope as part of the
/// service worker lifecycle. This ensures that any functional events
/// (like [FetchEvent]) are not dispatched until it upgrades database
/// schemas and deletes the outdated cache entries.
///
///  If [waitUntil()] is called outside of the handler, the browser
/// should throw an [InvalidStateError]; note also that multiple
/// calls will stack up, and the resulting promises will be added to
/// the list of extend lifetime promises.
///  Note: The behavior described in the above paragraph was fixed in
/// Firefox 43 (see bug 1180274.)
/// This interface inherits from the [Event] interface.
///
///
///  Note: This interface is only available when the global scope is
/// a [ServiceWorkerGlobalScope]. It is not available when it is a
/// [Window], or the scope of another kind of worker.
///
@experimental
@JS()
class ExtendableEvent // null -> {} -> Event
    with
        Event {
  external factory ExtendableEvent(String type,
      [ExtendableEventInit? eventInitDict]);

  ///  Extends the lifetime of the event. It is intended to be called
  /// in the [install] [event handler] for the [installing] worker and
  /// on the [activate] [event handler] for the [active] worker.
  ///
  /// extendableEvent.waitUntil(promise);
  /// Using waitUntil() within a service worker's install event:
  /// addEventListener('install', event => {
  ///  const preCache = async () => {
  ///   const cache = await caches.open('static-v1');
  ///   return cache.addAll([
  ///    '/',
  ///    '/about/',
  ///    '/static/styles.css'
  ///   ]);
  ///  };
  ///  event.waitUntil(preCache());
  /// });
  external Object waitUntil(Promise<dynamic> f);
}

@anonymous
@JS()
class ExtendableEventInit // null -> {} -> EventInit
    with
        EventInit {
  external factory ExtendableEventInit();
}

///
///
///  This is the event type for [fetch] events dispatched on the
/// service worker global scope. It contains information about the
/// fetch, including the request and how the receiver will treat the
/// response. It provides the [event.respondWith()] method, which
/// allows us to provide a response to this fetch.
@JS()
class FetchEvent // Event -> {} -> ExtendableEvent
    extends ExtendableEvent {
  external factory FetchEvent(String type, FetchEventInit eventInitDict);

  /// The [Request] the browser intends to make.
  external Request get request;

  ///  A [Promise] for a [Response], or [undefined] if this fetch is
  /// not a navigation, or navigation preload is not enabled.
  external Promise<dynamic> get preloadResponse;

  /// The [id] of the same-origin [client] that initiated the fetch.
  external String get clientId;

  ///  The [id] of the [client] that replaces the previous client
  /// during a page navigation.
  external String get resultingClientId;

  ///  The [id] of the [client] that is being replaced during a page
  /// navigation.
  external String get replacesClientId;
  external Promise<Object> get handled;

  ///  Prevent the browser's default fetch handling, and provide (a
  /// promise for) a response yourself.
  /// fetchEvent.respondWith(
  ///  // Promise that resolves to a Response.
  /// );
  external Object respondWith(Promise<Response> r);
}

@anonymous
@JS()
class FetchEventInit // EventInit -> {} -> ExtendableEventInit
    extends ExtendableEventInit {
  external Request get request;
  external set request(Request newValue);
  external Promise<dynamic> get preloadResponse;
  external set preloadResponse(Promise<dynamic> newValue);
  external String get clientId;
  external set clientId(String newValue);
  external String get resultingClientId;
  external set resultingClientId(String newValue);
  external String get replacesClientId;
  external set replacesClientId(String newValue);
  external Promise<Object> get handled;
  external set handled(Promise<Object> newValue);

  external factory FetchEventInit(
      {Request request,
      Promise<dynamic> preloadResponse,
      String clientId = '',
      String resultingClientId = '',
      String replacesClientId = '',
      Promise<Object> handled});
}

///
///
///  The interface of the Service Worker API represents the event
/// object of a [message] event fired on a service worker (when a
/// message is received on the [ServiceWorkerGlobalScope] from
/// another context) — extends the lifetime of such events.
///
/// This interface inherits from the [ExtendableEvent] interface.
@experimental
@JS()
class ExtendableMessageEvent // Event -> {} -> ExtendableEvent
    extends ExtendableEvent {
  external factory ExtendableMessageEvent(String type,
      [ExtendableMessageEventInit? eventInitDict]);

  /// Returns the event's data. It can be any data type.
  external dynamic get data;

  /// Returns the origin of the [Client] that sent the message.
  external String get origin;

  ///  Represents, in server-sent events, the last event ID of the
  /// event source. This is an empty string.
  external String get lastEventId;

  ///  Returns a reference to the [Client] object that sent the
  /// message.
  external dynamic get source;

  ///  Returns the array containing the [MessagePort] objects
  /// representing the ports of the associated message channel.
  external Iterable<MessagePort> get ports;
}

@anonymous
@JS()
class ExtendableMessageEventInit // EventInit -> {} -> ExtendableEventInit
    extends ExtendableEventInit {
  external dynamic get data;
  external set data(dynamic newValue);
  external String get origin;
  external set origin(String newValue);
  external String get lastEventId;
  external set lastEventId(String newValue);
  external dynamic get source;
  external set source(dynamic newValue);
  external Iterable<MessagePort> get ports;
  external set ports(Iterable<MessagePort> newValue);

  external factory ExtendableMessageEventInit(
      {dynamic data,
      String origin = '',
      String lastEventId = '',
      dynamic source,
      Iterable<MessagePort> ports = const []});
}

///
///
///  The interface provides a persistent storage mechanism for
/// [[Request]] / [[Response]] object pairs that are cached in long
/// lived memory. How long a Cache lives is browser dependent, but a
/// single origin's scripts can typically rely on the presence of a
/// previously populated Cache. Note that the interface is exposed to
/// windowed scopes as well as workers. You don't have to use it in
/// conjunction with service workers, even though it is defined in
/// the service worker spec.
///
///  An origin can have multiple, named objects. You are responsible
/// for implementing how your script (e.g. in a [ServiceWorker])
/// handles updates. Items in a do not get updated unless explicitly
/// requested; they don’t expire unless deleted. Use
/// [CacheStorage.open()] to open a specific named object and then
/// call any of the methods to maintain the .
///
///  You are also responsible for periodically purging cache entries.
/// Each browser has a hard limit on the amount of cache storage that
/// a given origin can use. Cache quota usage estimates are available
/// via the [StorageEstimate] API. The browser does its best to
/// manage disk space, but it may delete the Cache storage for an
/// origin. The browser will generally delete all of the data for an
/// origin or none of the data for an origin. Make sure to version
/// caches by name and use the caches only from the version of the
/// script that they can safely operate on. See Deleting old caches
/// for more information.
///  Note
///   The key matching algorithm depends on the VARY header in the
/// value. So matching a new key requires looking at both key and
/// value for entries in the Cache.
///
///  Note
///  The caching API doesn't honor HTTP caching headers.
///
///  Note: This feature is available in Web Workers
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
@experimental
@JS()
class Cache {
  external dynamic match(dynamic request, [CacheQueryOptions? options]);
  external Iterable<Promise<Response>> matchAll(
      [dynamic request, CacheQueryOptions? options]);
  external Promise<Object> add(dynamic request);
  external Promise<Object> addAll(Iterable<dynamic> requests);
  external Promise<Object> put(dynamic request, Response response);
  external Promise<bool> delete(dynamic request, [CacheQueryOptions? options]);
  external Iterable<Promise<Request>> keys(
      [dynamic request, CacheQueryOptions? options]);

  external factory Cache();
}

@anonymous
@JS()
class CacheQueryOptions {
  external bool get ignoreSearch;
  external set ignoreSearch(bool newValue);
  external bool get ignoreMethod;
  external set ignoreMethod(bool newValue);
  external bool get ignoreVary;
  external set ignoreVary(bool newValue);

  external factory CacheQueryOptions(
      {bool ignoreSearch = false,
      bool ignoreMethod = false,
      bool ignoreVary = false});
}

///
///
/// The interface represents the storage for [Cache] objects.
///
/// The interface:
///   Provides a master directory of all the named caches that can be
/// accessed by a [ServiceWorker] or other type of worker or [window]
/// scope (you’re not limited to only using it with service workers,
/// even though the Service Workers spec defines it).
///
///   Note
///    Chrome and Safari only expose `CacheStorage` to the windowed
/// context over HTTPS. [WorkerGlobalScope.caches] will be undefined
/// unless an SSL certificate is configured.
///
///
///   Maintains a mapping of string names to corresponding [Cache]
/// objects.
/// Use [CacheStorage.open()] to obtain a [Cache] instance.
///
///  Use [CacheStorage.match()] to check if a given [Request] is a
/// key in any of the [Cache] objects that the object tracks.
///
/// You can access through the global [caches] property.
///  Note
///   CacheStorage always rejects with a [SecurityError] on untrusted
/// origins (i.e. those that aren't using HTTPS, although this
/// definition will likely become more complex in the future.) When
/// testing on Firefox, you can get around this by checking the
/// Enable Service Workers over HTTP (when toolbox is open) option in
/// the Firefox Devtools options/gear menu.
///
///  Note
///   [CacheStorage.match()] is a convenience method. Equivalent
/// functionality to match a cache entry can be implemented by
/// returning an array of cache names from [CacheStorage.keys()],
/// opening each cache with [CacheStorage.open()], and matching the
/// one you want with [Cache.match()].
///
///  Note: This feature is available in Web Workers
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
@experimental
@JS()
class CacheStorage {
  ///  Checks if a given [Request] is a key in any of the [Cache]
  /// objects that the [CacheStorage] object tracks, and returns a
  /// [Promise] that resolves to that match.
  /// caches.match(request, options).then(function(response) {
  ///  // Do something with the response
  /// });
  ///
  external dynamic match(dynamic request, [MultiCacheQueryOptions? options]);

  ///  Returns a [Promise] that resolves to [true] if a [Cache] object
  /// matching the [cacheName] exists.
  /// caches.has(cacheName).then(function(boolean) {
  ///  // true: your cache exists!
  /// });
  ///
  external Promise<bool> has(String cacheName);

  ///  Returns a [Promise] that resolves to the [Cache] object matching
  /// the [cacheName] (a new cache is created if it doesn't already
  /// exist.)
  /// caches.open(cacheName).then(function(cache) {
  ///  // Do something with your cache
  /// });
  ///
  external Promise<Cache> open(String cacheName);

  ///  Finds the [Cache] object matching the [cacheName], and if found,
  /// deletes the [Cache] object and returns a [Promise] that resolves
  /// to [true]. If no [Cache] object is found, it resolves to [false].
  /// caches.delete(cacheName).then(function(boolean) {
  ///  // your cache is now deleted
  /// });
  ///
  external Promise<bool> delete(String cacheName);

  ///  Returns a [Promise] that will resolve with an array containing
  /// strings corresponding to all of the named [Cache] objects tracked
  /// by the [CacheStorage]. Use this method to iterate over a list of
  /// all the [Cache] objects.
  /// caches.keys().then(function(keyList) {
  ///  //do something with your keyList
  /// });
  ///
  external Iterable<Promise<String>> keys();

  external factory CacheStorage();
}

@anonymous
@JS()
class MultiCacheQueryOptions // null -> {} -> CacheQueryOptions
    with
        CacheQueryOptions {
  external String get cacheName;
  external set cacheName(String newValue);

  external factory MultiCacheQueryOptions({String cacheName});
}

///
///
///  The interface of the Service Worker API provides methods for
/// managing the preloading of resources with a service worker.
@JS()
class NavigationPreloadManager {
  ///  Enables navigation preloading and returns a [Promise] that
  /// resolves.
  external Promise<Object> enable();

  ///  Disables navigation preloading and returns a [Promise] that
  /// resolves.
  external Promise<Object> disable();

  ///  Sets the value of the [Service-Worker-Navigation-Preload] header
  /// and returns an empty [Promise].
  external Promise<Object> setHeaderValue(String value);

  ///  Returns a [Promise] that resolves to an object with properties
  /// indicating whether preload is enabled and the contents of the
  /// [Service-Worker-Navigation-Preload].
  external Promise<NavigationPreloadState> getState();

  external factory NavigationPreloadManager();
}

@anonymous
@JS()
class NavigationPreloadState {
  external bool get enabled;
  external set enabled(bool newValue);
  external String get headerValue;
  external set headerValue(String newValue);

  external factory NavigationPreloadState(
      {bool enabled = false, String headerValue});
}
