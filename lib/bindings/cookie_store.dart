/// Cookie Store API
///
/// https://wicg.github.io/cookie-store/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library cookie_store;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Cookie Store API] provides methods for
/// getting and setting cookies asynchronously from either a page or
/// a service worker.
///  The is accessed via attributes in the global scope in a [Window]
/// or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
///
///
///
///    EventTarget
///
///
///
///
///
///    CookieStore
///
///
@JS()
@staticInterop
class CookieStore implements EventTarget {
  external factory CookieStore();
}

extension PropsCookieStore on CookieStore {
  Future<CookieListItem> get(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [name]));

  Future<Iterable<CookieListItem>> getAll(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAll', [name]));

  Future<void> set([String? name, String? value]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'set', [name, value]));

  Future<void> delete(String name) =>
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
  external factory CookieStoreGetOptions({String? name, String? url});
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

enum CookieSameSite {
  strict('strict'),
  lax('lax'),
  none('none');

  final String value;
  static CookieSameSite fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CookieSameSite> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const CookieSameSite(this.value);
}

@anonymous
@JS()
@staticInterop
class CookieInit {
  external factory CookieInit._(
      {required String name,
      required String value,
      int? expires,
      String? domain,
      String? path,
      String? sameSite});

  factory CookieInit(
          {required String name,
          required String value,
          int? expires,
          String? domain,
          String? path,
          CookieSameSite? sameSite}) =>
      CookieInit._(
          name: name,
          value: value,
          expires: expires ?? undefined,
          domain: domain ?? undefined,
          path: path ?? '/',
          sameSite: sameSite?.value ?? CookieSameSite.strict.value);
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

  CookieSameSite get sameSite =>
      CookieSameSite.fromValue(js_util.getProperty(this, 'sameSite'));
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions._(
      {required String name, String? domain, String? path});

  factory CookieStoreDeleteOptions(
          {required String name, String? domain, String? path}) =>
      CookieStoreDeleteOptions._(
          name: name, domain: domain ?? undefined, path: path ?? '/');
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
  external factory CookieListItem._(
      {String? name,
      String? value,
      String? domain,
      String? path,
      int? expires,
      bool? secure,
      String? sameSite});

  factory CookieListItem(
          {String? name,
          String? value,
          String? domain,
          String? path,
          int? expires,
          bool? secure,
          CookieSameSite? sameSite}) =>
      CookieListItem._(
          name: name ?? undefined,
          value: value ?? undefined,
          domain: domain ?? undefined,
          path: path ?? undefined,
          expires: expires ?? undefined,
          secure: secure ?? undefined,
          sameSite: sameSite?.value ?? undefined);
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

  CookieSameSite get sameSite =>
      CookieSameSite.fromValue(js_util.getProperty(this, 'sameSite'));
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue.value);
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
  external factory CookieStoreManager();
}

extension PropsCookieStoreManager on CookieStoreManager {
  Future<void> subscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'subscribe', [subscriptions]));

  Future<Iterable<CookieStoreGetOptions>> getSubscriptions() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSubscriptions', []));

  Future<void> unsubscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
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
///
///
///
///    Event
///
///
///
///
///
///    CookieChangeEvent
///
///
@JS()
@staticInterop
class CookieChangeEvent implements Event {
  external factory CookieChangeEvent._(String type,
      [CookieChangeEventInit? eventInitDict]);

  factory CookieChangeEvent(String type,
          [CookieChangeEventInit? eventInitDict]) =>
      CookieChangeEvent._(type, eventInitDict ?? undefined);
}

extension PropsCookieChangeEvent on CookieChangeEvent {
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');
  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
}

@anonymous
@JS()
@staticInterop
class CookieChangeEventInit implements EventInit {
  external factory CookieChangeEventInit(
      {Iterable<CookieListItem>? changed, Iterable<CookieListItem>? deleted});
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
///    ExtendableCookieChangeEvent
///
///
@JS()
@staticInterop
class ExtendableCookieChangeEvent implements ExtendableEvent {
  external factory ExtendableCookieChangeEvent._(String type,
      [ExtendableCookieChangeEventInit? eventInitDict]);

  factory ExtendableCookieChangeEvent(String type,
          [ExtendableCookieChangeEventInit? eventInitDict]) =>
      ExtendableCookieChangeEvent._(type, eventInitDict ?? undefined);
}

extension PropsExtendableCookieChangeEvent on ExtendableCookieChangeEvent {
  Iterable<CookieListItem> get changed => js_util.getProperty(this, 'changed');
  Iterable<CookieListItem> get deleted => js_util.getProperty(this, 'deleted');
}

@anonymous
@JS()
@staticInterop
class ExtendableCookieChangeEventInit implements ExtendableEventInit {
  external factory ExtendableCookieChangeEventInit(
      {Iterable<CookieListItem>? changed, Iterable<CookieListItem>? deleted});
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
