/// Indexed Database API 3.0
///
/// https://w3c.github.io/IndexedDB/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library indexeddb_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the IndexedDB API provides access to results of
/// asynchronous requests to databases and database objects using
/// event handler attributes. Each reading and writing operation on a
/// database is done using a request.
///  The request object does not initially contain any information
/// about the result of the operation, but once information becomes
/// available, an event is fired on the request, and the information
/// becomes available through the properties of the instance.
///  All asynchronous operations immediately return an instance. Each
/// request has a [readyState] that is set to the ['pending'] state;
/// this changes to ['done'] when the request is completed or fails.
/// When the state is set to [done], every request returns a [result]
/// and an [error], and an event is fired on the request. When the
/// state is still [pending], any attempt to access the [result] or
/// [error] raises an [InvalidStateError] exception.
///  In plain words, all asynchronous methods return a request
/// object. If the request has been completed successfully, the
/// result is made available through the [result] property and an
/// event indicating success is fired at the request
/// ([IDBRequest.onsuccess]). If an error occurs while performing the
/// operation, the exception is made available through the [result]
/// property and an error event is fired ([IDBRequest.onerror]).
/// The interface [IDBOpenDBRequest] is derived from .
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    IDBRequest
///
///
@JS()
@staticInterop
class IDBRequest implements EventTarget {
  external factory IDBRequest();
}

extension PropsIDBRequest on IDBRequest {
  dynamic get result => js_util.getProperty(this, 'result');
  Exception? get error => js_util.getProperty(this, 'error');
  dynamic get source => js_util.getProperty(this, 'source');
  IDBTransaction? get transaction => js_util.getProperty(this, 'transaction');
  IDBRequestReadyState get readyState =>
      IDBRequestReadyState.fromValue(js_util.getProperty(this, 'readyState'));
  EventHandlerNonNull? get onsuccess => js_util.getProperty(this, 'onsuccess');
  set onsuccess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsuccess', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }
}

enum IDBRequestReadyState {
  pending('pending'),
  done('done');

  final String value;
  static IDBRequestReadyState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<IDBRequestReadyState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const IDBRequestReadyState(this.value);
}

///  The interface of the IndexedDB API provides access to the
/// results of requests to open or delete databases (performed using
/// [IDBFactory.open] and [IDBFactory.deleteDatabase]), using
/// specific event handler attributes.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    IDBRequest
///
///
///
///
///
///    IDBOpenDBRequest
///
///
@JS()
@staticInterop
class IDBOpenDBRequest implements IDBRequest {
  external factory IDBOpenDBRequest();
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

///  The interface of the IndexedDB API indicates that the version of
/// the database has changed, as the result of an
/// [IDBOpenDBRequest.onupgradeneeded] event handler function.
///  Note: This feature is available in Web Workers
///
///
///
///    Event
///
///
///
///
///
///    IDBVersionChangeEvent
///
///
@JS()
@staticInterop
class IDBVersionChangeEvent implements Event {
  external factory IDBVersionChangeEvent(String type,
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

///  The interface of the IndexedDB API lets applications
/// asynchronously access the indexed databases. The object that
/// implements the interface is [window.indexedDB]. You open — that
/// is, create and access — and delete a database with this object,
/// and not directly with .
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBFactory {
  external factory IDBFactory();
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
  external factory IDBDatabaseInfo({String? name, int? version});
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

///  The interface of the IndexedDB API provides a connection to a
/// database; you can use an object to open a transaction on your
/// database then create, manipulate, and delete objects (data) in
/// that database. The interface provides the only way to get and
/// manage versions of the database.
///  Note: This feature is available in Web Workers
///   Note: Everything you do in IndexedDB always happens in the
/// context of a transaction, representing interactions with data in
/// the database. All objects in IndexedDB — including object stores,
/// indexes, and cursors — are tied to a particular transaction.
/// Thus, you cannot execute commands, access data, or open anything
/// outside of a transaction.
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
///    IDBDatabase
///
///
@JS()
@staticInterop
class IDBDatabase implements EventTarget {
  external factory IDBDatabase();
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
          .callMethod(this, 'transaction', [storeNames, mode?.value, options]);

  void close() => js_util.callMethod(this, 'close', []);

  IDBObjectStore createObjectStore(String name,
          [IDBObjectStoreParameters? options]) =>
      js_util.callMethod(this, 'createObjectStore', [name, options]);

  void deleteObjectStore(String name) =>
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

enum IDBTransactionDurability {
  valueDefault('default'),
  strict('strict'),
  relaxed('relaxed');

  final String value;
  static IDBTransactionDurability fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<IDBTransactionDurability> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const IDBTransactionDurability(this.value);
}

@anonymous
@JS()
@staticInterop
class IDBTransactionOptions {
  external factory IDBTransactionOptions._({String? durability});

  factory IDBTransactionOptions(
          {IDBTransactionDurability? durability =
              IDBTransactionDurability.valueDefault}) =>
      IDBTransactionOptions._(durability: durability?.value);
}

extension PropsIDBTransactionOptions on IDBTransactionOptions {
  IDBTransactionDurability get durability => IDBTransactionDurability.fromValue(
      js_util.getProperty(this, 'durability'));
  set durability(IDBTransactionDurability newValue) {
    js_util.setProperty(this, 'durability', newValue.value);
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

///  The interface of the IndexedDB API represents an object store in
/// a database. Records within an object store are sorted according
/// to their keys. This sorting enables fast insertion, look-up, and
/// ordered retrieval.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBObjectStore {
  external factory IDBObjectStore();
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

  IDBRequest get(dynamic query) => js_util.callMethod(this, 'get', [query]);

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
      js_util.callMethod(this, 'openCursor', [query, direction?.value]);

  IDBRequest openKeyCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openKeyCursor', [query, direction?.value]);

  IDBIndex index(String name) => js_util.callMethod(this, 'index', [name]);

  IDBIndex createIndex(String name, dynamic keyPath,
          [IDBIndexParameters? options]) =>
      js_util.callMethod(this, 'createIndex', [name, keyPath, options]);

  void deleteIndex(String name) =>
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

///   interface of the IndexedDB API provides asynchronous access to
/// an index in a database. An index is a kind of object store for
/// looking up records in another object store, called the referenced
/// object store. You use this interface to retrieve data.
///  You can retrieve records in an object store through the primary
/// key or by using an index. An index lets you look up records in an
/// object store using properties of the values in the object stores
/// records other than the primary key
///  The index is a persistent key-value storage where the value part
/// of its records is the key part of a record in the referenced
/// object store. The records in an index are automatically populated
/// whenever records in the referenced object store are inserted,
/// updated, or deleted. Each record in an index can point to only
/// one record in its referenced object store, but several indexes
/// can reference the same object store. When the object store
/// changes, all indexes that refers to the object store are
/// automatically updated.
///  You can grab a set of keys within a range. To learn more, see
/// [IDBKeyRange].
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBIndex {
  external factory IDBIndex();
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
  IDBRequest get(dynamic query) => js_util.callMethod(this, 'get', [query]);

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
      js_util.callMethod(this, 'openCursor', [query, direction?.value]);

  IDBRequest openKeyCursor(
          [dynamic query,
          IDBCursorDirection? direction = IDBCursorDirection.next]) =>
      js_util.callMethod(this, 'openKeyCursor', [query, direction?.value]);
}

///  The interface of the IndexedDB API represents a continuous
/// interval over some data type that is used for keys. Records can
/// be retrieved from [IDBObjectStore] and [IDBIndex] objects using
/// keys or a range of keys. You can limit the range using lower and
/// upper bounds. For example, you can iterate over all values of a
/// key in the value range A–Z.
///  A key range can be a single value or a range with upper and
/// lower bounds or endpoints. If the key range has both upper and
/// lower bounds, then it is bounded; if it has no bounds, it is
/// unbounded. A bounded key range can either be open (the endpoints
/// are excluded) or closed (the endpoints are included). To retrieve
/// all keys within a certain range, you can use the following code
/// constructs:
///
///
///
///    Range
///    Code
///
///
///
///
///    All keys ≥ x
///    [IDBKeyRange.lowerBound][(x)]
///
///
///    All keys > x
///    [IDBKeyRange.lowerBound][(x, true)]
///
///
///    All keys ≤ y
///    [IDBKeyRange.upperBound][(y)]
///
///
///    All keys < y
///    [IDBKeyRange.upperBound][(y, true)]
///
///
///    All keys ≥ x && ≤ y
///    [IDBKeyRange.bound][(x, y)]
///
///
///    All keys > x &&< y
///    [IDBKeyRange.bound][(x, y, true, true)]
///
///
///    All keys > x && ≤ y
///    [IDBKeyRange.bound][(x, y, true, false)]
///
///
///    All keys ≥ x &&< y
///    [IDBKeyRange.bound][(x, y, false, true)]
///
///
///    The key = z
///    [IDBKeyRange.only][(z)]
///
///
///
/// A key is in a key range if the following conditions are true:
///
///  The lower value of the key range is one of the following:
///
///    [void]
///    Less than key value
///    Equal to key value if [lowerOpen] is [false].
///
///
///  The upper value of the key range is one of the following:
///
///    [void]
///    Greater than key value
///    Equal to key value if [upperOpen] is [false].
///
///
///
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBKeyRange {
  external static IDBKeyRange only(dynamic value);
  external static IDBKeyRange lowerBound(dynamic lower, [bool? open = false]);
  external static IDBKeyRange upperBound(dynamic upper, [bool? open = false]);
  external static IDBKeyRange bound(dynamic lower, dynamic upper,
      [bool? lowerOpen = false, bool? upperOpen = false]);
  external factory IDBKeyRange();
}

extension PropsIDBKeyRange on IDBKeyRange {
  dynamic get lower => js_util.getProperty(this, 'lower');
  dynamic get upper => js_util.getProperty(this, 'upper');
  bool get lowerOpen => js_util.getProperty(this, 'lowerOpen');
  bool get upperOpen => js_util.getProperty(this, 'upperOpen');
  bool includes(dynamic key) => js_util.callMethod(this, 'includes', [key]);
}

///
///   Note: Not to be confused with [IDBCursorWithValue] which is
/// just an interface with an additional [value] property.
///
///  The interface of the IndexedDB API represents a cursor for
/// traversing or iterating over multiple records in a database.
///  The cursor has a source that indicates which index or object
/// store it is iterating over. It has a position within the range,
/// and moves in a direction that is increasing or decreasing in the
/// order of record keys. The cursor enables an application to
/// asynchronously process all the records in the cursor's range.
///  You can have an unlimited number of cursors at the same time.
/// You always get the same object representing a given cursor.
/// Operations are performed on the underlying index or object store.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBCursor {
  external factory IDBCursor();
}

extension PropsIDBCursor on IDBCursor {
  dynamic get source => js_util.getProperty(this, 'source');
  IDBCursorDirection get direction =>
      IDBCursorDirection.fromValue(js_util.getProperty(this, 'direction'));
  dynamic get key => js_util.getProperty(this, 'key');
  dynamic get primaryKey => js_util.getProperty(this, 'primaryKey');
  IDBRequest get request => js_util.getProperty(this, 'request');
  void advance(int count) => js_util.callMethod(this, 'advance', [count]);

  @JS('continue')
  @staticInterop
  void mContinue([dynamic key]) => js_util.callMethod(this, 'continue', [key]);

  void continuePrimaryKey(dynamic key, dynamic primaryKey) =>
      js_util.callMethod(this, 'continuePrimaryKey', [key, primaryKey]);

  IDBRequest update(dynamic value) =>
      js_util.callMethod(this, 'update', [value]);

  IDBRequest delete() => js_util.callMethod(this, 'delete', []);
}

enum IDBCursorDirection {
  next('next'),
  nextunique('nextunique'),
  prev('prev'),
  prevunique('prevunique');

  final String value;
  static IDBCursorDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<IDBCursorDirection> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const IDBCursorDirection(this.value);
}

///  The interface of the IndexedDB API represents a cursor for
/// traversing or iterating over multiple records in a database. It
/// is the same as the [IDBCursor], except that it includes the
/// [value] property.
///  The cursor has a source that indicates which index or object
/// store it is iterating over. It has a position within the range,
/// and moves in a direction that is increasing or decreasing in the
/// order of record keys. The cursor enables an application to
/// asynchronously process all the records in the cursor's range.
///  You can have an unlimited number of cursors at the same time.
/// You always get the same object representing a given cursor.
/// Operations are performed on the underlying index or object store.
///  Note: This feature is available in Web Workers
///
///
///
///    IDBCursor
///
///
///
///
///
///    IDBCursorWithValue
///
///
@JS()
@staticInterop
class IDBCursorWithValue implements IDBCursor {
  external factory IDBCursorWithValue();
}

extension PropsIDBCursorWithValue on IDBCursorWithValue {
  dynamic get value => js_util.getProperty(this, 'value');
}

///  The interface of the IndexedDB API provides a static,
/// asynchronous transaction on a database using event handler
/// attributes. All reading and writing of data is done within
/// transactions. You use [IDBDatabase] to start transactions, to set
/// the mode of the transaction (e.g. is it [readonly] or
/// [readwrite]), and you access an [IDBObjectStore] to make a
/// request. You can also use an object to abort transactions.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///    IDBTransaction
///
///
///  Transactions are started when the transaction is created, not
/// when the first request is placed; for example consider this:
/// [var trans1 = db.transaction("foo", "readwrite");
/// var trans2 = db.transaction("foo", "readwrite");
/// var objectStore2 = trans2.objectStore("foo")
/// var objectStore1 = trans1.objectStore("foo")
/// objectStore2.put("2", "key");
/// objectStore1.put("1", "key");
/// ]
///  After the code is executed the object store should contain the
/// value "2", since [trans2] should run after [trans1].
@JS()
@staticInterop
class IDBTransaction implements EventTarget {
  external factory IDBTransaction();
}

extension PropsIDBTransaction on IDBTransaction {
  DOMStringList get objectStoreNames =>
      js_util.getProperty(this, 'objectStoreNames');
  IDBTransactionMode get mode =>
      IDBTransactionMode.fromValue(js_util.getProperty(this, 'mode'));
  IDBTransactionDurability get durability => IDBTransactionDurability.fromValue(
      js_util.getProperty(this, 'durability'));
  IDBDatabase get db => js_util.getProperty(this, 'db');
  Exception? get error => js_util.getProperty(this, 'error');
  IDBObjectStore objectStore(String name) =>
      js_util.callMethod(this, 'objectStore', [name]);

  void commit() => js_util.callMethod(this, 'commit', []);

  void abort() => js_util.callMethod(this, 'abort', []);

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

enum IDBTransactionMode {
  readonly('readonly'),
  readwrite('readwrite'),
  versionchange('versionchange');

  final String value;
  static IDBTransactionMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<IDBTransactionMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const IDBTransactionMode(this.value);
}
