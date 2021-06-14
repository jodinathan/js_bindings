/// Cookie Store API
///
/// https://wicg.github.io/cookie-store/
@JS('window')
library cookie_store;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'service_workers_1.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Cookie Store API] provides methods for
/// getting and setting cookies asynchronously from either a page or
/// a service worker.
///
///  The is accessed via attributes in the global scope in a [Window]
/// or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
@JS()
class CookieStore extends EventTarget {
  ///  The [get()] method gets a single cookie with the given name or
  /// options object, it returns a [Promise] that resolves with details
  /// of a single cookie.
  /// var cookie = CookieStore.get(name);
  /// var cookie = CookieStore.get(options);
  @JS('get')
  external Promise<CookieListItem> mGet(String name);

  ///  The [getAll()] method gets all matching cookies, it returns a
  /// [Promise] that resolves with a list of cookies.
  /// var list = cookieStore.getAll(name);
  /// var list = cookieStore.getAll(options);
  external Promise<Iterable<CookieListItem>> getAll(String name);

  ///  The [set()] method sets a cookie with the given name and value
  /// or options object, it returns a [Promise] that resolves when the
  /// cookie is set.
  /// var promise = cookieStore.set(name,value);
  /// var promise = cookieStore.set(options);
  @JS('set')
  external Promise<Object> mSet(String name, String value);

  ///  The [delete()] method deletes a cookie with the given name or
  /// options object, it returns a [Promise] that resolves when the
  /// deletion completes.
  /// var promise = cookieStore.delete(name);
  /// var promise = cookieStore.delete(options);
  external Promise<Object> delete(String name);
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory CookieStore();
}

@anonymous
@JS()
class CookieStoreGetOptions {
  external String get name;
  external set name(String newValue);
  external String get url;
  external set url(String newValue);

  external factory CookieStoreGetOptions({String name, String url});
}

@JS()
enum CookieSameSite { strict, lax, none }

@anonymous
@JS()
class CookieInit {
  external String get name;
  external set name(String newValue);
  external String get value;
  external set value(String newValue);
  external int? get expires;
  external set expires(int? newValue);
  external String? get domain;
  external set domain(String? newValue);
  external String get path;
  external set path(String newValue);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite newValue);

  external factory CookieInit(
      {String name,
      String value,
      int? expires,
      String? domain,
      String path = '/',
      CookieSameSite sameSite = CookieSameSite.strict});
}

@anonymous
@JS()
class CookieStoreDeleteOptions {
  external String get name;
  external set name(String newValue);
  external String? get domain;
  external set domain(String? newValue);
  external String get path;
  external set path(String newValue);

  external factory CookieStoreDeleteOptions(
      {String name, String? domain, String path = '/'});
}

@anonymous
@JS()
class CookieListItem {
  external String get name;
  external set name(String newValue);
  external String get value;
  external set value(String newValue);
  external String? get domain;
  external set domain(String? newValue);
  external String get path;
  external set path(String newValue);
  external int? get expires;
  external set expires(int? newValue);
  external bool get secure;
  external set secure(bool newValue);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite newValue);

  external factory CookieListItem(
      {String name,
      String value,
      String? domain,
      String path,
      int? expires,
      bool secure,
      CookieSameSite sameSite});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Cookie Store] API allows service workers
/// to subscribe to events for cookie changes. By using the
/// [subscribe()] method a particular service worker registration can
/// indicate that it is interested in change events.
///
///  A has an associated [ServiceWorkerRegistration]. Each service
/// worker registration has a cookie change subscription list, which
/// is a list of cookie change subscriptions each containing a name
/// and url. The methods in this interface allow the service worker
/// to add and remove subscriptions from this list, and to get a list
/// of all subscriptions.
///
/// To get a , call [ServiceWorkerRegistration.cookies].
@JS()
class CookieStoreManager {
  ///  Subscribes to changes to cookies. It returns a [promise] which
  /// resolves when the subscription is successful.
  /// let promise = registration.cookies.subscribe(subscriptions);
  external Promise<Object> subscribe(
      Iterable<CookieStoreGetOptions> subscriptions);

  ///  Returns a [promise] which resolves to a list of the cookie
  /// change subscriptions for this service worker registration.
  /// let promise = registration.cookies.getSubscriptions();
  external Iterable<Promise<CookieStoreGetOptions>> getSubscriptions();

  ///  Unsubscribes the registered service worker from changes to
  /// cookies. It returns a [promise] which resolves when the operation
  /// is successful.
  /// let promise = registration.cookies.unsubscribe(subscriptions);
  external Promise<Object> unsubscribe(
      Iterable<CookieStoreGetOptions> subscriptions);

  external factory CookieStoreManager();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Cookie Store API] is the event type passed
/// to [CookieStore.onchange()] when any cookie changes have
/// occurred. A cookie change consists of a cookie and a type (either
/// "changed" or "deleted").
///
/// Cookie changes that will cause the to be dispatched are:
///   A cookie is newly created and not immediately removed. In this
/// case [type] is "changed".
///   A cookie is newly created and immediately removed. In this case
/// [type] is "deleted"
///  A cookie is removed. In this case [type] is "deleted".
///
///  Note
///   A cookie that is replaced due to the insertion of another
/// cookie with the same name, domain, and path, is ignored and does
/// not trigger a change event.
///
@JS()
class CookieChangeEvent extends Event {
  external factory CookieChangeEvent(
      {String type, CookieChangeEventInit? eventInitDict});

  /// Returns an array containing one or more changed cookies.
  external Iterable<CookieListItem> get changed;

  /// Returns an array containing one or more deleted cookies.
  external Iterable<CookieListItem> get deleted;
}

@anonymous
@JS()
class CookieChangeEventInit extends EventInit {
  external Iterable<CookieListItem> get changed;
  external set changed(Iterable<CookieListItem> newValue);
  external Iterable<CookieListItem> get deleted;
  external set deleted(Iterable<CookieListItem> newValue);

  external factory CookieChangeEventInit(
      {Iterable<CookieListItem> changed, Iterable<CookieListItem> deleted});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Cookie Store API] is the event type passed
/// to [ServiceWorkerRegistration.oncookiechange()] when any cookie
/// changes have occurred. A cookie change event consists of a cookie
/// and a type (either "changed" or "deleted".)
///
/// Cookie changes that cause the to be dispatched are:
///   A cookie is newly created and not immediately removed. In this
/// case [type] is "changed".
///   A cookie is newly created and immediately removed. In this case
/// [type] is "deleted"
///  A cookie is removed. In this case [type] is "deleted".
///
///  Note
///   A cookie that is replaced due to the insertion of another
/// cookie with the same name, domain, and path, is ignored and does
/// not trigger a change event.
///
@JS()
class ExtendableCookieChangeEvent extends ExtendableEvent {
  external factory ExtendableCookieChangeEvent(
      {String type, ExtendableCookieChangeEventInit? eventInitDict});

  /// Returns an array containing the changed cookies.
  external Iterable<CookieListItem> get changed;

  /// Returns an array containing the deleted cookies.
  external Iterable<CookieListItem> get deleted;
}

@anonymous
@JS()
class ExtendableCookieChangeEventInit extends ExtendableEventInit {
  external Iterable<CookieListItem> get changed;
  external set changed(Iterable<CookieListItem> newValue);
  external Iterable<CookieListItem> get deleted;
  external set deleted(Iterable<CookieListItem> newValue);

  external factory ExtendableCookieChangeEventInit(
      {Iterable<CookieListItem> changed, Iterable<CookieListItem> deleted});
}
