/// Cookie Store API
///
/// https://wicg.github.io/cookie-store/
@JS('window')
@staticInterop
library cookie_store;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
service_workers_1 */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Cookie Store API] provides methods for
/// getting and setting cookies asynchronously from either a page or
/// a service worker.
///  The is accessed via attributes in the global scope in a [Window]
/// or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
@JS()
@staticInterop
class CookieStore implements EventTarget {
  external CookieStore();
}

extension PropsCookieStore on CookieStore {
  ///  The [get()] method gets a single cookie with the given name or
  /// options object, it returns a [Future] that resolves with details
  /// of a single cookie.
  ///
  /// var cookie = CookieStore.get(name);
  /// var cookie = CookieStore.get(options);
  ///
  @JS('get')
  @staticInterop
  Future<CookieListItem> mGet(

          /// A [String] with the name of a cookie.
          ///
          String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [name]));

  ///  The [getAll()] method gets all matching cookies, it returns a
  /// [Future] that resolves with a list of cookies.
  ///
  /// var list = cookieStore.getAll(name);
  /// var list = cookieStore.getAll(options);
  ///
  Future<Iterable<CookieListItem>> getAll(

          /// A [String] with the name of a cookie.
          ///
          String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAll', [name]));

  ///  The [set()] method sets a cookie with the given name and value
  /// or options object, it returns a [Future] that resolves when the
  /// cookie is set.
  ///
  /// var promise = cookieStore.set(name,value);
  /// var promise = cookieStore.set(options);
  ///
  @JS('set')
  @staticInterop
  Future<Object> mSet(
          [

          /// A [String] with the name of a cookie.
          ///
          String? name,

          /// A [String] with the value of the cookie.
          ///
          String? value]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'set', [name, value]));

  ///  The [delete()] method deletes a cookie with the given name or
  /// options object, it returns a [Future] that resolves when the
  /// deletion completes.
  ///
  /// var promise = cookieStore.delete(name);
  /// var promise = cookieStore.delete(options);
  ///
  Future<Object> delete(

          /// A [String] with the name of a cookie.
          ///
          String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'delete', [name]));

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CookieStoreGetOptions {
  external factory CookieStoreGetOptions({String name, String url});
}

extension PropsCookieStoreGetOptions on CookieStoreGetOptions {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }
}

enum CookieSameSite { strict, lax, none }

@anonymous
@JS()
@staticInterop
class CookieInit {
  external factory CookieInit(
      {String name,
      String value,
      int? expires,
      String? domain,
      String path = '/',
      CookieSameSite? sameSite = CookieSameSite.strict});
}

extension PropsCookieInit on CookieInit {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  int? get expires => js_util.getProperty(this, 'expires');
  set expires(int? newValue) {
    js_util.setProperty(this, 'expires', newValue);
  }

  String? get domain => js_util.getProperty(this, 'domain');
  set domain(String? newValue) {
    js_util.setProperty(this, 'domain', newValue);
  }

  String get path => js_util.getProperty(this, 'path');
  set path(String newValue) {
    js_util.setProperty(this, 'path', newValue);
  }

  CookieSameSite get sameSite => js_util.getProperty(this, 'sameSite');
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions(
      {String name, String? domain, String path = '/'});
}

extension PropsCookieStoreDeleteOptions on CookieStoreDeleteOptions {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String? get domain => js_util.getProperty(this, 'domain');
  set domain(String? newValue) {
    js_util.setProperty(this, 'domain', newValue);
  }

  String get path => js_util.getProperty(this, 'path');
  set path(String newValue) {
    js_util.setProperty(this, 'path', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CookieListItem {
  external factory CookieListItem(
      {String name,
      String value,
      String? domain,
      String path,
      int? expires,
      bool secure,
      CookieSameSite sameSite});
}

extension PropsCookieListItem on CookieListItem {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String? get domain => js_util.getProperty(this, 'domain');
  set domain(String? newValue) {
    js_util.setProperty(this, 'domain', newValue);
  }

  String get path => js_util.getProperty(this, 'path');
  set path(String newValue) {
    js_util.setProperty(this, 'path', newValue);
  }

  int? get expires => js_util.getProperty(this, 'expires');
  set expires(int? newValue) {
    js_util.setProperty(this, 'expires', newValue);
  }

  bool get secure => js_util.getProperty(this, 'secure');
  set secure(bool newValue) {
    js_util.setProperty(this, 'secure', newValue);
  }

  CookieSameSite get sameSite => js_util.getProperty(this, 'sameSite');
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Cookie Store] API allows service workers
/// to subscribe to events for cookie changes. By using the
/// [subscribe()] method a particular service worker registration can
/// indicate that it is interested in change events.
///  A has an associated [ServiceWorkerRegistration]. Each service
/// worker registration has a cookie change subscription list, which
/// is a list of cookie change subscriptions each containing a name
/// and url. The methods in this interface allow the service worker
/// to add and remove subscriptions from this list, and to get a list
/// of all subscriptions.
/// To get a , call [ServiceWorkerRegistration.cookies].
@JS()
@staticInterop
class CookieStoreManager {
  external CookieStoreManager();
}

extension PropsCookieStoreManager on CookieStoreManager {
  ///  Subscribes to changes to cookies. It returns a [promise] which
  /// resolves when the subscription is successful.
  ///
  /// let promise = registration.cookies.subscribe(subscriptions);
  ///
  Future<Object> subscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'subscribe', [subscriptions]));

  ///  Returns a [promise] which resolves to a list of the cookie
  /// change subscriptions for this service worker registration.
  ///
  /// let promise = registration.cookies.getSubscriptions();
  ///
  Future<Iterable<CookieStoreGetOptions>> getSubscriptions() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSubscriptions', []));

  ///  Unsubscribes the registered service worker from changes to
  /// cookies. It returns a [promise] which resolves when the operation
  /// is successful.
  ///
  /// let promise = registration.cookies.unsubscribe(subscriptions);
  ///
  Future<Object> unsubscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'unsubscribe', [subscriptions]));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Cookie Store API] is the event type passed
/// to [CookieStore.onchange()] when any cookie changes have
/// occurred. A cookie change consists of a cookie and a type (either
/// "changed" or "deleted").
/// Cookie changes that will cause the to be dispatched are:
///
///   A cookie is newly created and not immediately removed. In this
/// case [type] is "changed".
///   A cookie is newly created and immediately removed. In this case
/// [type] is "deleted"
///  A cookie is removed. In this case [type] is "deleted".
///   Note: A cookie that is replaced due to the insertion of another
/// cookie with the same name, domain, and path, is ignored and does
/// not trigger a change event.
///
@JS()
@staticInterop
class CookieChangeEvent implements Event {
  external CookieChangeEvent(String type,
      [CookieChangeEventInit? eventInitDict]);
}

extension PropsCookieChangeEvent on CookieChangeEvent {
  /// Returns an array containing one or more changed cookies.
  ///
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');

  /// Returns an array containing one or more deleted cookies.
  ///
  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
}

@anonymous
@JS()
@staticInterop
class CookieChangeEventInit implements EventInit {
  external factory CookieChangeEventInit(
      {Iterable<CookieListItem> changed, Iterable<CookieListItem> deleted});
}

extension PropsCookieChangeEventInit on CookieChangeEventInit {
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');
  set changed(Iterable<CookieListItem> newValue) {
    js_util.setProperty(this, 'changed', newValue);
  }

  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
  set deleted(Iterable<CookieListItem> newValue) {
    js_util.setProperty(this, 'deleted', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Cookie Store API] is the event type passed
/// to [ServiceWorkerRegistration.oncookiechange()] when any cookie
/// changes have occurred. A cookie change event consists of a cookie
/// and a type (either "changed" or "deleted".)
/// Cookie changes that cause the to be dispatched are:
///
///   A cookie is newly created and not immediately removed. In this
/// case [type] is "changed".
///   A cookie is newly created and immediately removed. In this case
/// [type] is "deleted"
///  A cookie is removed. In this case [type] is "deleted".
///   Note: A cookie that is replaced due to the insertion of another
/// cookie with the same name, domain, and path, is ignored and does
/// not trigger a change event.
///
@JS()
@staticInterop
class ExtendableCookieChangeEvent implements ExtendableEvent {
  external ExtendableCookieChangeEvent(String type,
      [ExtendableCookieChangeEventInit? eventInitDict]);
}

extension PropsExtendableCookieChangeEvent on ExtendableCookieChangeEvent {
  /// Returns an array containing the changed cookies.
  ///
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');

  /// Returns an array containing the deleted cookies.
  ///
  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
}

@anonymous
@JS()
@staticInterop
class ExtendableCookieChangeEventInit implements ExtendableEventInit {
  external factory ExtendableCookieChangeEventInit(
      {Iterable<CookieListItem> changed, Iterable<CookieListItem> deleted});
}

extension PropsExtendableCookieChangeEventInit
    on ExtendableCookieChangeEventInit {
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');
  set changed(Iterable<CookieListItem> newValue) {
    js_util.setProperty(this, 'changed', newValue);
  }

  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
  set deleted(Iterable<CookieListItem> newValue) {
    js_util.setProperty(this, 'deleted', newValue);
  }
}
