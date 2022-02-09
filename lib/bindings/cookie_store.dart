/// Cookie Store API
///
/// https://wicg.github.io/cookie-store/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cookie_store;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CookieStore implements EventTarget {
  external CookieStore();
}

extension PropsCookieStore on CookieStore {
  @JS('get')
  @staticInterop
  Future<CookieListItem> mGet(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [name]));

  Future<Iterable<CookieListItem>> getAll(String name) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAll', [name]));

  @JS('set')
  @staticInterop
  Future<Object> mSet([String? name, String? value]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'set', [name, value]));

  Future<Object> delete(String name) =>
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
  external factory CookieStoreGetOptions(
      {required String name, required String url});
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
  external factory CookieInit._(
      {required String name,
      required String value,
      int? expires,
      String? domain,
      String? path = '/',
      String? sameSite});

  factory CookieInit(
          {required String name,
          required String value,
          int? expires,
          String? domain,
          String? path = '/',
          CookieSameSite? sameSite = CookieSameSite.strict}) =>
      CookieInit._(
          name: name,
          value: value,
          expires: expires,
          domain: domain,
          path: path,
          sameSite: sameSite?.name);
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
      CookieSameSite.values.byName(js_util.getProperty(this, 'sameSite'));
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions(
      {required String name, String? domain, String? path = '/'});
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
      {required String name,
      required String value,
      String? domain,
      required String path,
      int? expires,
      required bool secure,
      required String sameSite});

  factory CookieListItem(
          {required String name,
          required String value,
          String? domain,
          required String path,
          int? expires,
          required bool secure,
          required CookieSameSite sameSite}) =>
      CookieListItem._(
          name: name,
          value: value,
          domain: domain,
          path: path,
          expires: expires,
          secure: secure,
          sameSite: sameSite.name);
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
      CookieSameSite.values.byName(js_util.getProperty(this, 'sameSite'));
  set sameSite(CookieSameSite newValue) {
    js_util.setProperty(this, 'sameSite', newValue.name);
  }
}

@JS()
@staticInterop
class CookieStoreManager {
  external CookieStoreManager();
}

extension PropsCookieStoreManager on CookieStoreManager {
  Future<Object> subscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'subscribe', [subscriptions]));

  Future<Iterable<CookieStoreGetOptions>> getSubscriptions() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSubscriptions', []));

  Future<Object> unsubscribe(Iterable<CookieStoreGetOptions> subscriptions) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'unsubscribe', [subscriptions]));
}

@JS()
@staticInterop
class CookieChangeEvent implements Event {
  external CookieChangeEvent(String type,
      [CookieChangeEventInit? eventInitDict]);
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
      {required Iterable<CookieListItem> changed,
      required Iterable<CookieListItem> deleted});
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

@JS()
@staticInterop
class ExtendableCookieChangeEvent implements ExtendableEvent {
  external ExtendableCookieChangeEvent(String type,
      [ExtendableCookieChangeEventInit? eventInitDict]);
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
      {required Iterable<CookieListItem> changed,
      required Iterable<CookieListItem> deleted});
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
