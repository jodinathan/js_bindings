/// Service Workers Nightly
///
/// https://w3c.github.io/ServiceWorker/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library service_workers_1;

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
@JS()
@staticInterop
class ServiceWorker implements EventTarget, AbstractWorker {
  external ServiceWorker();
}

extension PropsServiceWorker on ServiceWorker {
  ///  Returns the [ServiceWorker] serialized script URL defined as
  /// part of [ServiceWorkerRegistration]. The URL must be on the same
  /// origin as the document that registers the [ServiceWorker].
  ///
  String get scriptURL => js_util.getProperty(this, 'scriptURL');

  ///  Returns the state of the service worker. It returns one of the
  /// following values: [installing], [installed,] [activating],
  /// [activated], or [redundant].
  ///
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
@JS()
@staticInterop
class ServiceWorkerRegistration implements EventTarget {
  external ServiceWorkerRegistration();
}

extension PropsServiceWorkerRegistration on ServiceWorkerRegistration {
  ///  Returns a service worker whose state is . This is initially set
  /// to [null].
  ///
  ServiceWorker? get installing => js_util.getProperty(this, 'installing');

  ///  Returns a service worker whose state is [installed]. This is
  /// initially set to [null].
  ///
  ServiceWorker? get waiting => js_util.getProperty(this, 'waiting');

  ///  Returns a service worker whose state is [activating] or
  /// [activated]. This is initially set to [null]. An active worker
  /// will control a [Client] if the client's URL falls within the
  /// scope of the registration (the [scope] option set when
  /// [ServiceWorkerContainer.register] is first called.)
  ///
  ServiceWorker? get active => js_util.getProperty(this, 'active');

  ///  Returns the instance of [NavigationPreloadManager] associated
  /// with the current service worker registration.
  ///
  NavigationPreloadManager get navigationPreload =>
      js_util.getProperty(this, 'navigationPreload');

  ///  Returns a unique identifier for a service worker registration.
  /// This must be on the same origin as the document that registers
  /// the [ServiceWorker].
  ///
  String get scope => js_util.getProperty(this, 'scope');
  ServiceWorkerUpdateViaCache get updateViaCache =>
      ServiceWorkerUpdateViaCache.values
          .byName(js_util.getProperty(this, 'updateViaCache'));

  ///  Checks the server for an updated version of the service worker
  /// without consulting caches.
  ///
  /// serviceWorkerRegistration.update();
  ///
  ///
  ///  The following simple example registers a service worker example then adds an event
  ///  handler to a button so you can explicitly update the service worker whenever desired:
  ///
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
  ///
  Future<Object> update() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'update', []));

  ///  Unregisters the service worker registration and returns a
  /// [Future]. The service worker will finish any ongoing operations
  /// before it is unregistered.
  ///
  /// serviceWorkerRegistration.unregister().then(function(boolean) {
  /// });
  ///
  ///
  ///  The following simple example registers a service worker example, but then immediately
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
  ///
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
@JS()
@staticInterop
class ServiceWorkerContainer implements EventTarget {
  external ServiceWorkerContainer();
}

extension PropsServiceWorkerContainer on ServiceWorkerContainer {
  ///  Returns a [ServiceWorker] object if its state is [activating] or
  /// [activated] (the same object returned by
  /// [ServiceWorkerRegistration.active]). This property returns [null]
  /// during a force-refresh request (Shift + refresh) or if there is
  /// no active worker.
  ///
  ServiceWorker? get controller => js_util.getProperty(this, 'controller');

  ///  Provides a way of delaying code execution until a service worker
  /// is active. It returns a [Future] that will never reject, and
  /// which waits indefinitely until the [ServiceWorkerRegistration]
  /// associated with the current page has an
  /// [ServiceWorkerRegistration.active] worker. Once that condition is
  /// met, it resolves with the [ServiceWorkerRegistration].
  ///
  Future<ServiceWorkerRegistration> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));

  ///  Creates or updates a [ServiceWorkerRegistration] for the given
  /// [scriptURL].
  ///
  /// serviceWorkerContainer.register(scriptURL, options)
  ///  .then(function(serviceWorkerRegistration) { /* ... */ });
  ///
  Future<ServiceWorkerRegistration> register(

          ///
          ///     The URL of the service worker script. The registered service
          /// worker file needs to
          ///    have a valid JavaScript
          /// MIME type.
          ///
          ///
          String scriptURL,
          [

          ///  An object containing registration options. Currently available
          /// options are:
          ///
          ///
          ///     [scope]: A [String] representing a URL that defines a
          ///      service worker's registration scope; that is, what range of
          /// URLs a service worker
          ///      can control. This is usually a relative URL. It is relative
          /// to the base URL of the
          ///      application. By default, the [scope] value for a service
          /// worker
          ///      registration is set to the directory where the service
          /// worker script is located.
          ///     See the Examples section for more information on how it
          ///     works.
          ///
          ///
          ///     [type]: A [String]
          ///     specifying the type of worker to create. Valid values are:
          ///
          ///       ['classic']: The loaded service worker is in a standard
          /// script. This is the default.
          ///
          ///       [module]: The loaded service worker is in an
          ///       ES module
          ///       and the import statement is available on
          ///       worker contexts.
          ///
          ///
          ///
          ///     [updateViaCache]: A string indicating how much of a service
          /// worker's resources will be updated when a call is made to
          /// [ServiceWorkerRegistration.updateViaCache]. Valid values are:
          ///
          ///       ['all']: The service worker script and all of its imports
          /// will be updated.
          ///       ['imports']: Only imports referenced by the service worker
          /// script will be updated. This is the default.
          ///       ['none']: Neither the service worker, nor its imports will
          /// be updated.
          ///
          ///
          ///
          ///
          RegistrationOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'register', [scriptURL, options]));

  ///  Gets a [ServiceWorkerRegistration] object whose scope matches
  /// the provided document URL. The method returns a [Future] that
  /// resolves to a [ServiceWorkerRegistration] or [Object].
  ///
  /// serviceWorkerContainer.getRegistration(clientURL).then(function(serviceWorkerRegistration) { /* ... */ });
  ///
  /// navigator.serviceWorker.getRegistration('/app').then(function(registration) {
  ///  if(registration){
  ///   document.querySelector('#status').textContent = 'ServiceWorkerRegistration found.';
  ///  }
  /// });
  ///
  dynamic getRegistration(
          [

          ///  The registration whose scope matches this URL will be returned.
          /// Relative URLs are resolved with the current client as the base.
          /// If this parameter is not provided, the current client's URL will
          /// be used by default.
          ///
          String? clientURL = '']) =>
      js_util.callMethod(this, 'getRegistration', [clientURL]);

  ///  Returns all [ServiceWorkerRegistration] objects associated with
  /// a [ServiceWorkerContainer] in an array. The method returns a
  /// [Future] that resolves to an array of
  /// [ServiceWorkerRegistration].
  ///
  /// serviceWorkerContainer.getRegistrations().then(function(serviceWorkerRegistrations) { /* ... */ });
  ///
  /// navigator.serviceWorker.getRegistrations().then(function(registrations) {
  ///  document.querySelector('#status').textContent = 'ServiceWorkerRegistrations found.';
  /// });
  ///
  Future<Iterable<ServiceWorkerRegistration>> getRegistrations() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getRegistrations', []));

  ///  explicitly starts the flow of messages being dispatched from a
  /// service worker to pages under its control (e.g. sent via
  /// [Client.postMessage()]). This can be used to react to sent
  /// messages earlier, even before that page's content has finished
  /// loading.
  ///
  /// serviceWorkerContainer.startMessages();
  ///
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
  external ServiceWorkerGlobalScope();
}

extension PropsServiceWorkerGlobalScope on ServiceWorkerGlobalScope {
  ///  Contains the [Clients] object associated with the service
  /// worker.
  ///
  Clients get clients => js_util.getProperty(this, 'clients');

  ///  Contains the [ServiceWorkerRegistration] object that represents
  /// the service worker's registration.
  ///
  ServiceWorkerRegistration get registration =>
      js_util.getProperty(this, 'registration');
  ServiceWorker get serviceWorker => js_util.getProperty(this, 'serviceWorker');

  ///  Allows the current service worker registration to progress from
  /// waiting to active state while service worker clients are using
  /// it.
  ///
  /// ServiceWorkerGlobalScope.skipWaiting().then(function() {
  ///  //Do something
  /// });
  ///
  /// While self.skipWaiting() can be called at any point during the service worker's execution, it will only have an effect if there's a newly installed service worker that might otherwise remain in the waiting state. Therefore, it's common to call self.skipWaiting() from inside of an InstallEvent handler.
  /// The following example causes a newly installed service worker to progress into the activating state, regardless of whether there is already an active service worker.
  /// self.addEventListener('install', function(event) {
  ///  // The promise that skipWaiting() returns can be safely ignored.
  ///  self.skipWaiting();
  ///
  ///  // Perform any other actions required for your
  ///  // service worker to install, potentially inside
  ///  // of event.waitUntil();
  /// });
  ///
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

///  The interface represents an executable context such as a
/// [Worker], or a [SharedWorker]. [Window] clients are represented
/// by the more-specific [WindowClient]. You can get /[WindowClient]
/// objects from methods such as [Clients.matchAll()] and
/// [Clients.get()].
@experimental
@JS()
@staticInterop
class Client {
  external Client();
}

extension PropsClient on Client {
  /// The URL of the client as a string.
  ///
  String get url => js_util.getProperty(this, 'url');
  FrameType get frameType =>
      FrameType.values.byName(js_util.getProperty(this, 'frameType'));

  /// The universally unique identifier of the client as a string.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  The client's type as a string. It can be "[window"], "[worker"],
  /// or "[sharedworker"].
  ///
  ClientType get type =>
      ClientType.values.byName(js_util.getProperty(this, 'type'));

  /// Sends a message to the client.
  ///
  /// client.postMessage(message[, transfer]);
  /// client.postMessage(message[, { transfer }]);
  ///
  Object postMessage(

          ///  The message to send to the client. This can be any
          /// structured-clonable
          /// type.
          ///
          dynamic message,

          ///
          ///     A sequence of objects that are transferred with the message.
          /// The
          ///     ownership of these objects is given to the destination side
          /// and they are no longer
          ///    usable on the sending side.
          ///
          ///
          Iterable<dynamic> transfer) =>
      js_util.callMethod(this, 'postMessage', [message, transfer]);

  ClientLifecycleState get lifecycleState => ClientLifecycleState.values
      .byName(js_util.getProperty(this, 'lifecycleState'));
}

///  The interface of the ServiceWorker API represents the scope of a
/// service worker client that is a document in a browsing context,
/// controlled by an active worker. The service worker client
/// independently selects and uses a service worker for its own
/// loading and sub-resources.
@experimental
@JS()
@staticInterop
class WindowClient implements Client {
  external WindowClient();
}

extension PropsWindowClient on WindowClient {
  ///  Indicates the visibility of the current client. This value can
  /// be one of ["hidden"], ["visible"], or ["prerender"].
  ///
  VisibilityState get visibilityState => VisibilityState.values
      .byName(js_util.getProperty(this, 'visibilityState'));

  /// A boolean that indicates whether the current client has focus.
  ///
  bool get focused => js_util.getProperty(this, 'focused');
  Iterable<String> get ancestorOrigins =>
      js_util.getProperty(this, 'ancestorOrigins');

  /// Gives user input focus to the current client.
  ///
  /// windowClient.focus().then(function(windowClient) {
  ///  // do something with your WindowClient once it has been focused
  /// });
  ///
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
  ///
  Future<WindowClient> focus() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'focus', []));

  /// Loads a specified URL into a controlled client page.
  ///
  /// windowClient.navigate(url).then(function(windowClient) {
  ///  // do something with your WindowClient after navigation
  /// });
  ///
  Future<WindowClient> navigate(

          /// The location to navigate to.
          ///
          String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'navigate', [url]));
}

enum FrameType { auxiliary, topLevel, nested, none }

///  The interface provides access to [Client] objects. Access it via
/// [[self].clients] within a service worker.
@experimental
@JS()
@staticInterop
class Clients {
  external Clients();
}

extension PropsClients on Clients {
  /// Returns a [Future] for a [Client] matching a given [id].
  ///
  /// self.clients.get(id).then(function(client) {
  ///  // do something with your returned client
  /// });
  ///
  @JS('get')
  @staticInterop
  dynamic mGet(

          /// A [String] representing the id of the client you want to get.
          ///
          String id) =>
      js_util.callMethod(this, 'get', [id]);

  ///  Returns a [Future] for an array of [Client] objects. An options
  /// argument allows you to control the types of clients returned.
  ///
  /// self.clients.matchAll(options).then(function(clients) {
  ///  // do something with your clients list
  /// });
  ///
  Future<Iterable<Client>> matchAll(
          [

          ///
          ///     An options object allowing you to set options for the
          /// matching operation. Available
          ///    options are:
          ///
          ///
          ///
          ///     [includeUncontrolled]: A boolean value — if set to
          ///      [true], the matching operation will return all service
          /// worker clients
          ///      who share the same origin as the current service worker.
          /// Otherwise, it returns
          ///      only the service worker clients controlled by the current
          /// service worker. The
          ///     default is [false].
          ///
          ///
          ///      [type]: Sets the type of clients you want matched. Available
          /// values
          ///     are ["window"], ["worker"], ["sharedworker"], and
          ///     ["all"]. The default is ["window"].
          ///
          ///
          ///
          ClientQueryOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'matchAll', [options]));

  ///  Opens a new browser window for a given url and returns a
  /// [Future] for the new [WindowClient].
  ///
  /// self.clients.openWindow(url).then(function(windowClient) {
  ///  // Do something with your WindowClient
  /// });
  ///
  Future<WindowClient> openWindow(

          ///
          ///     A [String] representing the URL of the client you want to
          /// open in
          ///     the window. Generally this value must be a URL from the same
          /// origin as the calling
          ///    script.
          ///
          ///
          String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'openWindow', [url]));

  ///  Allows an active service worker to set itself as the
  /// [controller] for all clients within its [scope].
  ///
  /// await clients.claim();
  ///
  /// The following example uses claim() inside service worker's "activate" event listener so that clients loaded in the same scope do not need to be reloaded before their fetches will go through this service worker.
  /// self.addEventListener('activate', event => {
  ///  event.waitUntil(clients.claim());
  /// });
  ///
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
  external ExtendableEvent(String type, [ExtendableEventInit? eventInitDict]);
}

extension PropsExtendableEvent on ExtendableEvent {
  ///  Extends the lifetime of the event. It is intended to be called
  /// in the [install] event handler for the [installing] worker and on
  /// the [activate] event handler for the [active] worker.
  ///
  /// extendableEvent.waitUntil(promise);
  ///
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
  ///
  Object waitUntil(Future<dynamic> f) =>
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
@JS()
@staticInterop
class FetchEvent implements ExtendableEvent {
  external FetchEvent(String type, FetchEventInit eventInitDict);
}

extension PropsFetchEvent on FetchEvent {
  /// The [Request] the browser intends to make.
  ///
  Request get request => js_util.getProperty(this, 'request');

  ///  A [Future] for a [Response], or [Object] if this fetch is not a
  /// navigation, or navigation preload is not enabled.
  ///
  Future<dynamic> get preloadResponse =>
      js_util.promiseToFuture(js_util.getProperty(this, 'preloadResponse'));

  /// The [id] of the same-origin [client] that initiated the fetch.
  ///
  String get clientId => js_util.getProperty(this, 'clientId');

  ///  The [id] of the [client] that replaces the previous client
  /// during a page navigation.
  ///
  String get resultingClientId =>
      js_util.getProperty(this, 'resultingClientId');

  ///  The [id] of the [client] that is being replaced during a page
  /// navigation.
  ///
  String get replacesClientId => js_util.getProperty(this, 'replacesClientId');
  Future<Object> get handled =>
      js_util.promiseToFuture(js_util.getProperty(this, 'handled'));

  ///  Prevent the browser's default fetch handling, and provide (a
  /// promise for) a response yourself.
  ///
  /// fetchEvent.respondWith(
  ///  // Promise that resolves to a Response.
  /// );
  ///
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

///  The interface of the Service Worker API represents the event
/// object of a [message] event fired on a service worker (when a
/// message is received on the [ServiceWorkerGlobalScope] from
/// another context) — extends the lifetime of such events.
/// This interface inherits from the [ExtendableEvent] interface.
@experimental
@JS()
@staticInterop
class ExtendableMessageEvent implements ExtendableEvent {
  external ExtendableMessageEvent(String type,
      [ExtendableMessageEventInit? eventInitDict]);
}

extension PropsExtendableMessageEvent on ExtendableMessageEvent {
  /// Returns the event's data. It can be any data type.
  ///
  dynamic get data => js_util.getProperty(this, 'data');

  /// Returns the origin of the [Client] that sent the message.
  ///
  String get origin => js_util.getProperty(this, 'origin');

  ///  Represents, in server-sent events, the last event ID of the
  /// event source. This is an empty string.
  ///
  String get lastEventId => js_util.getProperty(this, 'lastEventId');

  ///  Returns a reference to the [Client] object that sent the
  /// message.
  ///
  dynamic get source => js_util.getProperty(this, 'source');

  ///  Returns the array containing the [MessagePort] objects
  /// representing the ports of the associated message channel.
  ///
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
  external CacheStorage();
}

extension PropsCacheStorage on CacheStorage {
  ///  Checks if a given [Request] is a key in any of the [Cache]
  /// objects that the [CacheStorage] object tracks, and returns a
  /// [Future] that resolves to that match.
  ///
  /// caches.match(request, options).then(function(response) {
  ///  // Do something with the response
  /// });
  ///
  dynamic match(dynamic request, [MultiCacheQueryOptions? options]) =>
      js_util.callMethod(this, 'match', [request, options]);

  ///  Returns a [Future] that resolves to [true] if a [Cache] object
  /// matching the [cacheName] exists.
  ///
  /// caches.has(cacheName).then(function(boolean) {
  ///  // true: your cache exists!
  /// });
  ///
  Future<bool> has(

          ///
          ///    A [String] representing the name of the [Cache] object
          ///    you are looking for in the [CacheStorage].
          ///
          ///
          String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'has', [cacheName]));

  ///  Returns a [Future] that resolves to the [Cache] object matching
  /// the [cacheName] (a new cache is created if it doesn't already
  /// exist.)
  ///
  /// caches.open(cacheName).then(function(cache) {
  ///  // Do something with your cache
  /// });
  ///
  Future<Cache> open(String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', [cacheName]));

  ///  Finds the [Cache] object matching the [cacheName], and if found,
  /// deletes the [Cache] object and returns a [Future] that resolves
  /// to [true]. If no [Cache] object is found, it resolves to [false].
  ///
  /// caches.delete(cacheName).then(function(boolean) {
  ///  // your cache is now deleted
  /// });
  ///
  Future<bool> delete(

          /// The name of the cache you want to delete.
          ///
          String cacheName) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'delete', [cacheName]));

  ///  Returns a [Future] that will resolve with an array containing
  /// strings corresponding to all of the named [Cache] objects tracked
  /// by the [CacheStorage]. Use this method to iterate over a list of
  /// all the [Cache] objects.
  ///
  /// caches.keys().then(function(keyList) {
  ///  //do something with your keyList
  /// });
  ///
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

///  The interface of the Service Worker API provides methods for
/// managing the preloading of resources with a service worker.
@JS()
@staticInterop
class NavigationPreloadManager {
  external NavigationPreloadManager();
}

extension PropsNavigationPreloadManager on NavigationPreloadManager {
  ///  Enables navigation preloading and returns a [Future] that
  /// resolves.
  ///
  Future<Object> enable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'enable', []));

  ///  Disables navigation preloading and returns a [Future] that
  /// resolves.
  ///
  Future<Object> disable() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'disable', []));

  ///  Sets the value of the [Service-Worker-Navigation-Preload] header
  /// and returns an empty [Future].
  ///
  Future<Object> setHeaderValue(String value) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setHeaderValue', [value]));

  ///  Returns a [Future] that resolves to an object with properties
  /// indicating whether preload is enabled and the contents of the
  /// [Service-Worker-Navigation-Preload].
  ///
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
