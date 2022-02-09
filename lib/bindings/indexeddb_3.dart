/// Indexed Database API 3.0
///
/// https://w3c.github.io/IndexedDB/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library indexeddb_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class IDBRequest implements EventTarget {
  external IDBRequest();
}

extension PropsIDBRequest on IDBRequest {
  dynamic get result => js_util.getProperty(this, 'result');
  Exception? get error => js_util.getProperty(this, 'error');
  dynamic get source => js_util.getProperty(this, 'source');
  IDBTransaction? get transaction => js_util.getProperty(this, 'transaction');
  IDBRequestReadyState get readyState => IDBRequestReadyState.values
      .byName(js_util.getProperty(this, 'readyState'));
  EventHandlerNonNull? get onsuccess => js_util.getProperty(this, 'onsuccess');
  set onsuccess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsuccess', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

enum IDBRequestReadyState { pending, done }

@JS()
@staticInterop
class IDBOpenDBRequest implements IDBRequest {
  external IDBOpenDBRequest();
}

extension PropsIDBOpenDBRequest on IDBOpenDBRequest {
  EventHandlerNonNull? get onblocked => js_util.getProperty(this, 'onblocked');
  set onblocked(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onblocked', newValue);
  }

  EventHandlerNonNull? get onupgradeneeded =>
      js_util.getProperty(this, 'onupgradeneeded');
  set onupgradeneeded(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupgradeneeded', newValue);
  }
}

@JS()
@staticInterop
class IDBVersionChangeEvent implements Event {
  external IDBVersionChangeEvent(String type,
      [IDBVersionChangeEventInit? eventInitDict]);
}

extension PropsIDBVersionChangeEvent on IDBVersionChangeEvent {
  int get oldVersion => js_util.getProperty(this, 'oldVersion');
  int? get newVersion => js_util.getProperty(this, 'newVersion');
}

@anonymous
@JS()
@staticInterop
class IDBVersionChangeEventInit implements EventInit {
  external factory IDBVersionChangeEventInit(
      {int? oldVersion = 0, int? newVersion});
}

extension PropsIDBVersionChangeEventInit on IDBVersionChangeEventInit {
  int get oldVersion => js_util.getProperty(this, 'oldVersion');
  set oldVersion(int newValue) {
    js_util.setProperty(this, 'oldVersion', newValue);
  }

  int? get newVersion => js_util.getProperty(this, 'newVersion');
  set newVersion(int? newValue) {
    js_util.setProperty(this, 'newVersion', newValue);
  }
}

@JS()
@staticInterop
class IDBFactory {
  external IDBFactory();
}

extension PropsIDBFactory on IDBFactory {
  IDBOpenDBRequest open(String name, [int? version]) =>
      js_util.callMethod(this, 'open', [name, version]);

  IDBOpenDBRequest deleteDatabase(String name) =>
      js_util.callMethod(this, 'deleteDatabase', [name]);

  Future<Iterable<IDBDatabaseInfo>> databases() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'databases', []));

  int cmp(dynamic first, dynamic second) =>
      js_util.callMethod(this, 'cmp', [first, second]);
}

@anonymous
@JS()
@staticInterop
class IDBDatabaseInfo {
  external factory IDBDatabaseInfo(
      {required String name, required int version});
}

extension PropsIDBDatabaseInfo on IDBDatabaseInfo {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  int get version => js_util.getProperty(this, 'version');
  set version(int newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}

@JS()
@staticInterop
class IDBDatabase implements EventTarget {
  external IDBDatabase();
}

extension PropsIDBDatabase on IDBDatabase {
  String get name => js_util.getProperty(this, 'name');
  int get version => js_util.getProperty(this, 'version');
  DOMStringList get objectStoreNames =>
      js_util.getProperty(this, 'objectStoreNames');
  IDBTransaction transaction(dynamic storeNames,
          [IDBTransactionMode? mode = IDBTransactionMode.readonly,
          IDBTransactionOptions? options]) =>
      js_util
          .callMethod(this, 'transaction', [storeNames, mode?.name, options]);

  Object close() => js_util.callMethod(this, 'close', []);

  IDBObjectStore createObjectStore(String name,
          [IDBObjectStoreParameters? options]) =>
      js_util.callMethod(this, 'createObjectStore', [name, options]);

  Object deleteObjectStore(String name) =>
      js_util.callMethod(this, 'deleteObjectStore', [name]);

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onversionchange =>
      js_util.getProperty(this, 'onversionchange');
  set onversionchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onversionchange', newValue);
  }
}

enum IDBTransactionDurability { valueDefault, strict, relaxed }

@anonymous
@JS()
@staticInterop
class IDBTransactionOptions {
  external factory IDBTransactionOptions._({String? durability});

  factory IDBTransactionOptions(
          {IDBTransactionDurability? durability =
              IDBTransactionDurability.valueDefault}) =>
      IDBTransactionOptions._(durability: durability?.name);
}

extension PropsIDBTransactionOptions on IDBTransactionOptions {
  IDBTransactionDurability get durability => IDBTransactionDurability.values
      .byName(js_util.getProperty(this, 'durability'));
  set durability(IDBTransactionDurability newValue) {
    js_util.setProperty(this, 'durability', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class IDBObjectStoreParameters {
  external factory IDBObjectStoreParameters(
      {dynamic keyPath, bool? autoIncrement = false});
}

extension PropsIDBObjectStoreParameters on IDBObjectStoreParameters {
  dynamic get keyPath => js_util.getProperty(this, 'keyPath');
  set keyPath(dynamic newValue) {
    js_util.setProperty(this, 'keyPath', newValue);
  }

  bool get autoIncrement => js_util.getProperty(this, 'autoIncrement');
  set autoIncrement(bool newValue) {
    js_util.setProperty(this, 'autoIncrement', newValue);
  }
}

@JS()
@staticInterop
class IDBObjectStore {
  external IDBObjectStore();
}

extension PropsIDBObjectStore on IDBObjectStore {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  dynamic get keyPath => js_util.getProperty(this, 'keyPath');
  DOMStringList get indexNames => js_util.getProperty(this, 'indexNames');
  IDBTransaction get transaction => js_util.getProperty(this, 'transaction');
  bool get autoIncrement => js_util.getProperty(this, 'autoIncrement');
  IDBRequest put(dynamic value, [dynamic key]) =>
      js_util.callMethod(this, 'put', [value, key]);

  IDBRequest add(dynamic value, [dynamic key]) =>
      js_util.callMethod(this, 'add', [value, key]);

  IDBRequest delete(dynamic query) =>
      js_util.callMethod(this, 'delete', [query]);

  IDBRequest clear() => js_util.callMethod(this, 'clear', []);

  @JS('get')
  @staticInterop
  IDBRequest mGet(dynamic query) => js_util.callMethod(this, 'get', [query]);

  IDBRequest getKey(dynamic query) =>
      js_util.callMethod(this, 'getKey', [query]);

  IDBRequest getAll([dynamic query, int? count]) =>
      js_util.callMethod(this, 'getAll', [query, count]);

  IDBRequest getAllKeys([dynamic query, int? count]) =>
      js_util.callMethod(this, 'getAllKeys', [query, count]);

  IDBRequest count([dynamic query]) =>
      js_util.callMethod(this, 'count', [query]);

  IDBRequest openCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openCursor', [query, direction?.name]);

  IDBRequest openKeyCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openKeyCursor', [query, direction?.name]);

  IDBIndex index(String name) => js_util.callMethod(this, 'index', [name]);

  IDBIndex createIndex(String name, dynamic keyPath,
          [IDBIndexParameters? options]) =>
      js_util.callMethod(this, 'createIndex', [name, keyPath, options]);

  Object deleteIndex(String name) =>
      js_util.callMethod(this, 'deleteIndex', [name]);
}

@anonymous
@JS()
@staticInterop
class IDBIndexParameters {
  external factory IDBIndexParameters(
      {bool? unique = false, bool? multiEntry = false});
}

extension PropsIDBIndexParameters on IDBIndexParameters {
  bool get unique => js_util.getProperty(this, 'unique');
  set unique(bool newValue) {
    js_util.setProperty(this, 'unique', newValue);
  }

  bool get multiEntry => js_util.getProperty(this, 'multiEntry');
  set multiEntry(bool newValue) {
    js_util.setProperty(this, 'multiEntry', newValue);
  }
}

@JS()
@staticInterop
class IDBIndex {
  external IDBIndex();
}

extension PropsIDBIndex on IDBIndex {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  IDBObjectStore get objectStore => js_util.getProperty(this, 'objectStore');
  dynamic get keyPath => js_util.getProperty(this, 'keyPath');
  bool get multiEntry => js_util.getProperty(this, 'multiEntry');
  bool get unique => js_util.getProperty(this, 'unique');
  @JS('get')
  @staticInterop
  IDBRequest mGet(dynamic query) => js_util.callMethod(this, 'get', [query]);

  IDBRequest getKey(dynamic query) =>
      js_util.callMethod(this, 'getKey', [query]);

  IDBRequest getAll([dynamic query, int? count]) =>
      js_util.callMethod(this, 'getAll', [query, count]);

  IDBRequest getAllKeys([dynamic query, int? count]) =>
      js_util.callMethod(this, 'getAllKeys', [query, count]);

  IDBRequest count([dynamic query]) =>
      js_util.callMethod(this, 'count', [query]);

  IDBRequest openCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openCursor', [query, direction?.name]);

  IDBRequest openKeyCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openKeyCursor', [query, direction?.name]);
}

@JS()
@staticInterop
class IDBKeyRange {
  external IDBKeyRange();
}

extension PropsIDBKeyRange on IDBKeyRange {
  dynamic get lower => js_util.getProperty(this, 'lower');
  dynamic get upper => js_util.getProperty(this, 'upper');
  bool get lowerOpen => js_util.getProperty(this, 'lowerOpen');
  bool get upperOpen => js_util.getProperty(this, 'upperOpen');
  static IDBKeyRange only(dynamic value) =>
      js_util.callMethod(IDBKeyRange, 'only', [value]);

  static IDBKeyRange lowerBound(dynamic lower, [bool? open = false]) =>
      js_util.callMethod(IDBKeyRange, 'lowerBound', [lower, open]);

  static IDBKeyRange upperBound(dynamic upper, [bool? open = false]) =>
      js_util.callMethod(IDBKeyRange, 'upperBound', [upper, open]);

  static IDBKeyRange bound(dynamic lower, dynamic upper,
          [bool? lowerOpen = false, bool? upperOpen = false]) =>
      js_util.callMethod(
          IDBKeyRange, 'bound', [lower, upper, lowerOpen, upperOpen]);

  bool includes(dynamic key) => js_util.callMethod(this, 'includes', [key]);
}

@JS()
@staticInterop
class IDBCursor {
  external IDBCursor();
}

extension PropsIDBCursor on IDBCursor {
  dynamic get source => js_util.getProperty(this, 'source');
  IDBCursorDirection get direction =>
      IDBCursorDirection.values.byName(js_util.getProperty(this, 'direction'));
  dynamic get key => js_util.getProperty(this, 'key');
  dynamic get primaryKey => js_util.getProperty(this, 'primaryKey');
  IDBRequest get request => js_util.getProperty(this, 'request');
  Object advance(int count) => js_util.callMethod(this, 'advance', [count]);

  @JS('continue')
  @staticInterop
  Object mContinue([dynamic key]) =>
      js_util.callMethod(this, 'continue', [key]);

  Object continuePrimaryKey(dynamic key, dynamic primaryKey) =>
      js_util.callMethod(this, 'continuePrimaryKey', [key, primaryKey]);

  IDBRequest update(dynamic value) =>
      js_util.callMethod(this, 'update', [value]);

  IDBRequest delete() => js_util.callMethod(this, 'delete', []);
}

enum IDBCursorDirection { next, nextunique, prev, prevunique }

@JS()
@staticInterop
class IDBCursorWithValue implements IDBCursor {
  external IDBCursorWithValue();
}

extension PropsIDBCursorWithValue on IDBCursorWithValue {
  dynamic get value => js_util.getProperty(this, 'value');
}

@JS()
@staticInterop
class IDBTransaction implements EventTarget {
  external IDBTransaction();
}

extension PropsIDBTransaction on IDBTransaction {
  DOMStringList get objectStoreNames =>
      js_util.getProperty(this, 'objectStoreNames');
  IDBTransactionMode get mode =>
      IDBTransactionMode.values.byName(js_util.getProperty(this, 'mode'));
  IDBTransactionDurability get durability => IDBTransactionDurability.values
      .byName(js_util.getProperty(this, 'durability'));
  IDBDatabase get db => js_util.getProperty(this, 'db');
  Exception? get error => js_util.getProperty(this, 'error');
  IDBObjectStore objectStore(String name) =>
      js_util.callMethod(this, 'objectStore', [name]);

  Object commit() => js_util.callMethod(this, 'commit', []);

  Object abort() => js_util.callMethod(this, 'abort', []);

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  EventHandlerNonNull? get oncomplete =>
      js_util.getProperty(this, 'oncomplete');
  set oncomplete(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncomplete', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

enum IDBTransactionMode { readonly, readwrite, versionchange }
