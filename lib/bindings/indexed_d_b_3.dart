/// Indexed Database API 3.0
///
/// https://w3c.github.io/IndexedDB/
@JS('window')
@staticInterop
library indexed_d_b_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

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
  ///  Returns the result of the request. If the request failed and the
  /// result is not available, an InvalidStateError exception is
  /// thrown.
  ///
  external dynamic get result;

  ///  Returns a [DOMException] in the event of an unsuccessful
  /// request, indicating what went wrong.
  ///
  external Exception? get error;

  ///  The source of the request, such as an [IDBIndex] or an
  /// [IDBObjectStore]. If no source exists (such as when calling
  /// [IDBFactory.open]), it returns null.
  ///
  external dynamic get source;

  ///  The transaction for the request. This property can be null for
  /// certain requests, for example those returned from
  /// [IDBFactory.open] unless an upgrade is needed. (You're just
  /// connecting to a database, so there is no transaction to return).
  ///
  external IDBTransaction? get transaction;

  ///  The state of the request. Every request starts in the [pending]
  /// state. The state changes to [done] when the request completes
  /// successfully or when an error occurs.
  ///
  external IDBRequestReadyState get readyState;
  external EventHandlerNonNull? get onsuccess;
  external set onsuccess(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
}

enum IDBRequestReadyState { pending, done }

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
  external EventHandlerNonNull? get onblocked;
  external set onblocked(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onupgradeneeded;
  external set onupgradeneeded(EventHandlerNonNull? newValue);
}

///  The interface of the IndexedDB API indicates that the version of
/// the database has changed, as the result of an
/// [IDBOpenDBRequest.onupgradeneeded] event handler function.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class IDBVersionChangeEvent implements Event {
  external factory IDBVersionChangeEvent(String type,
      [IDBVersionChangeEventInit? eventInitDict]);
}

extension PropsIDBVersionChangeEvent on IDBVersionChangeEvent {
  /// Returns the old version of the database.
  ///
  external int get oldVersion;

  /// Returns the new version of the database.
  ///
  external int? get newVersion;
}

@anonymous
@JS()
@staticInterop
class IDBVersionChangeEventInit implements EventInit {
  external factory IDBVersionChangeEventInit(
      {int oldVersion = 0, int? newVersion});
}

extension PropsIDBVersionChangeEventInit on IDBVersionChangeEventInit {
  external int get oldVersion;
  external set oldVersion(int newValue);
  external int? get newVersion;
  external set newVersion(int? newValue);
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
  ///  The current method to request opening a connection to a
  /// database.
  ///
  /// For the current standard:
  /// var IDBOpenDBRequest = indexedDB.open(name);
  /// var IDBOpenDBRequest = indexedDB.open(name, version);
  ///
  ///
  ///  Example of calling open with the current specification's
  ///  version parameter:
  ///
  /// var request = window.indexedDB.open("toDoList", 4);
  ///  In the following code snippet, we make a request to open a database, and include
  ///  handlers for the success and error cases. For a full working example, see our To-do
  /// Notifications app (view example live.)
  ///
  /// var note = document.querySelector("ul");
  ///
  /// // In the following line, you should include the prefixes
  /// // of implementations you want to test.
  /// window.indexedDB = window.indexedDB || window.mozIndexedDB || window.webkitIndexedDB || window.msIndexedDB;
  /// // DON'T use "var indexedDB = ..." if you're not in a function.
  /// // Moreover, you may need references to some window.IDB* objects:
  /// window.IDBTransaction = window.IDBTransaction || window.webkitIDBTransaction || window.msIDBTransaction;
  /// window.IDBKeyRange = window.IDBKeyRange || window.webkitIDBKeyRange || window.msIDBKeyRange;
  /// // (Mozilla has never prefixed these objects, so we don't
  /// // need window.mozIDB*)
  ///
  /// // Let us open version 4 of our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// // these two event handlers act on the database being opened
  /// // successfully, or not
  /// DBOpenRequest.onerror = function(event) {
  ///  note.innerHTML += '<li>Error loading database.</li>';
  /// };
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db
  ///  // variable. This is used a lot later on, for opening
  ///  // transactions and suchlike.
  ///  db = DBOpenRequest.result;
  /// };
  ///
  external IDBOpenDBRequest open(String name, [int? version]);

  /// A method to request the deletion of a database.
  ///
  /// For the current standard:
  /// var request = indexedDB.deleteDatabase(name);
  ///
  /// For the experimental version with options (see below):
  /// var request = indexedDB.deleteDatabase(name, options);
  ///
  /// var DBDeleteRequest = window.indexedDB.deleteDatabase("toDoList");
  ///
  /// DBDeleteRequest.onerror = function(event) {
  ///  console.log("Error deleting database.");
  /// };
  ///
  /// DBDeleteRequest.onsuccess = function(event) {
  ///  console.log("Database deleted successfully");
  ///
  ///  console.log(event.result); // should be undefined
  /// };
  ///
  external IDBOpenDBRequest deleteDatabase(String name);

  ///  A method that returns a list of all available databases,
  /// including their names and versions.
  ///
  /// const promise = indexedDB.databases()
  ///
  /// const promise = indexedDB.databases()
  /// promise.then(databases => {
  ///  console.log(databases)
  /// })
  ///
  external Iterable<Promise<IDBDatabaseInfo>> databases();

  ///  A method that compares two keys and returns a result indicating
  /// which one is greater in value.
  ///
  /// var result = indexedDB.cmp(first, second);
  ///
  /// var a = 1;
  /// var b = 2;
  /// var result = window.indexedDB.cmp(a, b);
  /// console.log( "Comparison results: " + result );
  ///
  external int cmp(dynamic first, dynamic second);
}

@anonymous
@JS()
@staticInterop
class IDBDatabaseInfo {
  external factory IDBDatabaseInfo({String name, int version});
}

extension PropsIDBDatabaseInfo on IDBDatabaseInfo {
  external String get name;
  external set name(String newValue);
  external int get version;
  external set version(int newValue);
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
  /// A [DOMString] that contains the name of the connected database.
  ///
  external String get name;

  ///  A 64-bit integer that contains the version of the connected
  /// database. When a database is first created, this attribute is an
  /// empty string.
  ///
  external int get version;

  ///  A [DOMStringList] that contains a list of the names of the
  /// object stores currently in the connected database.
  ///
  external DOMStringList get objectStoreNames;

  ///  Immediately returns a transaction object ([IDBTransaction])
  /// containing the [IDBTransaction.objectStore] method, which you can
  /// use to access your object store. Runs in a separate thread.
  ///
  /// IDBDatabase.transaction(storeNames);
  /// IDBDatabase.transaction(storeNames, mode);
  /// IDBDatabase.transaction(storeNames, mode, options);
  ///
  ///
  ///  In this example we open a database connection, then use transaction() to open a
  ///  transaction on the database. For a complete example, see our
  ///  To-do Notifications app (view
  /// example live.)
  ///
  /// var db;
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Run the displayData() function to populate the task list with
  ///  // all the to-do list data already in the IDB
  ///  displayData();
  ///
  /// };
  ///
  /// // open a read/write db transaction, ready for adding the data
  /// var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  /// // report on the success of opening the transaction
  /// transaction.oncomplete = function(event) {
  ///  note.innerHTML += '<li>Transaction completed: database modification finished.</li>';
  /// };
  ///
  /// transaction.onerror = function(event) {
  ///  note.innerHTML += '<li>Transaction not opened due to error. Duplicate items not allowed.</li>';
  /// };
  ///
  /// // you would then go on to do something to this database
  /// // via an object store
  /// var objectStore = transaction.objectStore("toDoList");
  /// // etc.
  ///
  external IDBTransaction transaction(dynamic storeNames,
      [IDBTransactionMode? mode = IDBTransactionMode.readonly,
      IDBTransactionOptions? options]);

  ///  Returns immediately and closes the connection to a database in a
  /// separate thread.
  ///
  /// IDBDatabase.close();
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4); // opening a database.
  ///
  /// // Create event handlers for both success and failure of
  /// DBOpenRequest.onerror = function(event) {
  ///  note.innerHTML += "<li>Error loading database.</li>";
  /// };
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += "<li>Database initialised.</li>";
  ///
  ///  // store the result of opening the database in the db variable.
  ///  db = DBOpenRequest.result;
  ///
  ///  // now let"s close the database again!
  ///  db.close();
  /// };
  ///
  external Object close();

  /// Creates and returns a new object store or index.
  ///
  /// IDBDatabase.createObjectStore(name);
  /// IDBDatabase.createObjectStore(name, options);
  ///
  /// // Let us open our database
  /// var request = window.indexedDB.open("toDoList", 4);
  ///
  /// // This handler is called when a new version of the database
  /// // is created, either when one has not been created before
  /// // or when a new version number is submitted by calling
  /// // window.indexedDB.open().
  /// // This handler is only supported in recent browsers.
  /// request.onupgradeneeded = function(event) {
  ///  var db = event.target.result;
  ///
  ///  db.onerror = function(event) {
  ///   note.innerHTML += "<li>Error loading database.</li>";
  ///  };
  ///
  ///  // Create an objectStore for this database
  ///
  ///  var objectStore = db.createObjectStore("toDoList", { keyPath: "taskTitle" });
  ///
  ///  // define what data items the objectStore will contain
  ///
  ///  objectStore.createIndex("hours", "hours", { unique: false });
  ///  objectStore.createIndex("minutes", "minutes", { unique: false });
  ///  objectStore.createIndex("day", "day", { unique: false });
  ///  objectStore.createIndex("month", "month", { unique: false });
  ///  objectStore.createIndex("year", "year", { unique: false });
  ///
  ///  objectStore.createIndex("notified", "notified", { unique: false });
  ///
  ///  note.innerHTML += "<li>Object store created.</li>";
  /// };
  ///
  external IDBObjectStore createObjectStore(String name,
      [IDBObjectStoreParameters? options]);

  ///  Destroys the object store with the given name in the connected
  /// database, along with any indexes that reference it.
  ///
  /// dbInstance.deleteObjectStore(name);
  ///
  /// var dbName = "sampleDB";
  /// var dbVersion = 2;
  /// var request = indexedDB.open(dbName, dbVersion);
  ///
  /// request.onupgradeneeded = function(e) {
  ///  var db = request.result;
  ///  if (e.oldVersion < 1) {
  ///   db.createObjectStore("store1");
  ///  }
  ///
  ///  if (e.oldVersion < 2) {
  ///   db.deleteObjectStore("store1");
  ///   db.createObjectStore("store2");
  ///  }
  ///
  ///  // etc. for version < 3, 4...
  /// };
  ///
  external Object deleteObjectStore(String name);
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onversionchange;
  external set onversionchange(EventHandlerNonNull? newValue);
}

enum IDBTransactionDurability { valueDefault, strict, relaxed }

@anonymous
@JS()
@staticInterop
class IDBTransactionOptions {
  external factory IDBTransactionOptions(
      {IDBTransactionDurability durability =
          IDBTransactionDurability.valueDefault});
}

extension PropsIDBTransactionOptions on IDBTransactionOptions {
  external IDBTransactionDurability get durability;
  external set durability(IDBTransactionDurability newValue);
}

@anonymous
@JS()
@staticInterop
class IDBObjectStoreParameters {
  external factory IDBObjectStoreParameters(
      {dynamic keyPath, bool autoIncrement = false});
}

extension PropsIDBObjectStoreParameters on IDBObjectStoreParameters {
  external dynamic get keyPath;
  external set keyPath(dynamic newValue);
  external bool get autoIncrement;
  external set autoIncrement(bool newValue);
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
  /// The name of this object store.
  ///
  external String get name;
  external set name(String newValue);

  ///  The key path of this object store. If this attribute is [null],
  /// the application must provide a key for each modification
  /// operation.
  ///
  external dynamic get keyPath;

  /// A list of the names of indexes on objects in this object store.
  ///
  external DOMStringList get indexNames;

  /// The [IDBTransaction] object to which this object store belongs.
  ///
  external IDBTransaction get transaction;

  /// The value of the auto increment flag for this object store.
  ///
  external bool get autoIncrement;

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// creates a structured clone of the [value], and stores the cloned
  /// value in the object store. This is for updating existing records
  /// in an object store when the transaction's mode is [readwrite].
  ///
  /// let request = objectStore.put(item);
  /// let request = objectStore.put(item, key);
  ///
  ///
  ///  The following example requests a given record title; when that request is successful
  ///  the onsuccess function gets the associated record from the
  ///  IDBObjectStore (made available
  ///  as objectStoreTitleRequest.result), updates
  ///  one property of the record, and then puts the updated record back into the object
  ///  store in another request with put(). For a full working example, see
  ///  our To-do Notifications app
  ///  (view example live.)
  ///
  /// const title = "Walk dog";
  ///
  /// // Open up a transaction as usual
  /// const objectStore = db.transaction(['toDoList'], "readwrite").objectStore('toDoList');
  ///
  /// // Get the to-do list object that has this title as it's title
  /// const objectStoreTitleRequest = objectStore.get(title);
  ///
  /// objectStoreTitleRequest.onsuccess = () => {
  ///  // Grab the data object returned as the result
  ///  const data = objectStoreTitleRequest.result;
  ///
  ///  // Update the notified value in the object to "yes"
  ///  data.notified = "yes";
  ///
  ///  // Create another request that inserts the item back into the database
  ///  const updateTitleRequest = objectStore.put(data);
  ///
  ///  // Log the transaction that originated this request
  ///  console.log("The transaction that originated this request is " + updateTitleRequest.transaction);
  ///
  ///  // When this new request succeeds, run the displayData() function again to update the display
  ///  updateTitleRequest.onsuccess = () => {
  ///   displayData();
  ///  };
  /// };
  ///
  external IDBRequest put(dynamic value, [dynamic key]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// creates a structured clone of the [value], and stores the cloned
  /// value in the object store. This is for adding new records to an
  /// object store.
  ///
  /// var request = objectStore.add(value);
  /// var request = objectStore.add(value, key);
  ///
  ///
  ///  In the following code snippet, we open a read/write transaction on our database and add
  ///  some data to an object store using add(). Note also the functions attached
  ///  to transaction event handlers to report on the outcome of the transaction opening in the
  ///  event of success or failure. For a full working example, see our To-do
  /// Notifications app (view
  /// example live.)
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Run the addData() function to add the data to the database
  ///  addData();
  /// };
  ///
  /// function addData() {
  ///  // Create a new object ready to insert into the IDB
  ///  var newItem = [ { taskTitle: "Walk dog", hours: 19, minutes: 30, day: 24, month: "December", year: 2013, notified: "no" } ];
  ///
  ///  // open a read/write db transaction, ready for adding the data
  ///  var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  ///  // report on the success of the transaction completing, when everything is done
  ///  transaction.oncomplete = function(event) {
  ///   note.innerHTML += '<li>Transaction completed.</li>';
  ///  };
  ///
  ///  transaction.onerror = function(event) {
  ///  note.innerHTML += '<li>Transaction not opened due to error. Duplicate items not allowed.</li>';
  ///  };
  ///
  ///  // create an object store on the transaction
  ///  var objectStore = transaction.objectStore("toDoList");
  ///
  ///  // Make a request to add our newItem object to the object store
  ///  var objectStoreRequest = objectStore.add(newItem[0]);
  ///
  ///  objectStoreRequest.onsuccess = function(event) {
  ///   // report the success of our request
  ///   note.innerHTML += '<li>Request successful.</li>';
  ///  };
  /// };
  ///
  external IDBRequest add(dynamic value, [dynamic key]);

  ///  returns an [IDBRequest] object, and, in a separate thread,
  /// deletes the store object selected by the specified key. This is
  /// for deleting individual records out of an object store.
  ///
  /// var request = objectStore.delete(Key);
  ///
  /// var request = objectStore.delete(KeyRange);
  ///
  external IDBRequest delete(dynamic query);

  ///  Creates and immediately returns an [IDBRequest] object, and
  /// clears this object store in a separate thread. This is for
  /// deleting all current records out of an object store.
  ///
  /// var request = objectStore.clear();
  ///
  ///
  ///  In the following code snippet, we open a read/write transaction on our database and
  ///  clear all the current data out of the object store using clear(). For a
  ///  full working example, see our To-do Notifications app
  ///  (view example live.)
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Clear all the data form the object store
  ///  clearData();
  /// };
  ///
  /// function clearData() {
  ///  // open a read/write db transaction, ready for clearing the data
  ///  var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  ///  // report on the success of the transaction completing, when everything is done
  ///  transaction.oncomplete = function(event) {
  ///   note.innerHTML += '<li>Transaction completed.</li>';
  ///  };
  ///
  ///  transaction.onerror = function(event) {
  ///   note.innerHTML += '<li>Transaction not opened due to error: ' + transaction.error + '</li>';
  ///  };
  ///
  ///  // create an object store on the transaction
  ///  var objectStore = transaction.objectStore("toDoList");
  ///
  ///  // Make a request to clear all the data out of the object store
  ///  var objectStoreRequest = objectStore.clear();
  ///
  ///  objectStoreRequest.onsuccess = function(event) {
  ///   // report the success of our request
  ///   note.innerHTML += '<li>Request successful.</li>';
  ///  };
  /// };
  ///
  external IDBRequest clear();

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// returns the store object store selected by the specified key.
  /// This is for retrieving specific records from an object store.
  ///
  /// var request = objectStore.get(key);
  ///
  ///
  ///  In the following code snippet, we open a read/write transaction on our database and get
  ///  one specific record from object store using get() — a sample record with
  ///  the key "Walk dog". Once this data object is retrieved, you could then update it using
  ///  normal JavaScript, then put it back into the database using a
  ///  IDBObjectStore.put operation. For a full working example, see our To-do Notifications app
  ///  (view
  /// example live.)
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Run the getData() function to get the data from the database
  ///  getData();
  /// };
  ///
  /// function getData() {
  ///  // open a read/write db transaction, ready for retrieving the data
  ///  var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  ///  // report on the success of the transaction completing, when everything is done
  ///  transaction.oncomplete = function(event) {
  ///   note.innerHTML += '<li>Transaction completed.</li>';
  ///  };
  ///
  ///  transaction.onerror = function(event) {
  ///   note.innerHTML += '<li>Transaction not opened due to error: ' + transaction.error + '</li>';
  ///  };
  ///
  ///  // create an object store on the transaction
  ///  var objectStore = transaction.objectStore("toDoList");
  ///
  ///  // Make a request to get a record by key from the object store
  ///  var objectStoreRequest = objectStore.get("Walk dog");
  ///
  ///  objectStoreRequest.onsuccess = function(event) {
  ///   // report the success of our request
  ///   note.innerHTML += '<li>Request successful.</li>';
  ///
  ///   var myRecord = objectStoreRequest.result;
  ///  };
  ///
  /// };
  ///
  @JS('get')
  @staticInterop
  external IDBRequest mGet(dynamic query);

  ///  Returns an [IDBRequest] object, and, in a separate thread
  /// retrieves and returns the record key for the object in the object
  /// stored matching the specified parameter.
  ///
  /// var request = objectStore.getKey(key);
  ///
  /// let openRequest = indexedDB.open("telemetry");
  /// openRequest.onsuccess = (event) => {
  ///  let db = event.target.result;
  ///  let store = db.transaction("netlogs").objectStore("netlogs");
  ///
  ///  let today = new Date();
  ///  let yesterday = new Date(today);
  ///  yesterday.setDate(today.getDate() - 1);
  ///  let request = store.getKey(IDBKeyRange(yesterday, today));
  ///  request.onsuccess = (event) => {
  ///   let when = event.target.result;
  ///   alert("The 1st activity in last 24 hours was occurred at " + when);
  ///  };
  /// };
  ///
  external IDBRequest getKey(dynamic query);

  ///  Returns an [IDBRequest] object retrieves all objects in the
  /// object store matching the specified parameter or all objects in
  /// the store if no parameters are given.
  ///
  /// var request = objectStore.getAll();
  /// var request = objectStore.getAll(query);
  /// var request = objectStore.getAll(query, count);
  ///
  external IDBRequest getAll([dynamic query, int? count]);

  ///  Returns an [IDBRequest] object retrieves record keys for all
  /// objects in the object store matching the specified parameter or
  /// all objects in the store if no parameters are given.
  ///
  /// var request = objectStore.getAllKeys();
  /// var request = objectStore.getAllKeys(query);
  /// var request = objectStore.getAllKeys(query, count);
  ///
  external IDBRequest getAllKeys([dynamic query, int? count]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// returns the total number of records that match the provided key
  /// or [IDBKeyRange]. If no arguments are provided, it returns the
  /// total number of records in the store.
  ///
  /// var request = ObjectStore.count();
  /// var request = ObjectStore.count(query);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then count
  ///  the number of records in the store using count() — when the success handler
  ///  fires, we log the count value (an integer) to the console.
  ///
  /// var transaction = db.transaction(['fThings'], 'readonly');
  /// var objectStore = transaction.objectStore('fThings');
  ///
  /// var countRequest = objectStore.count();
  /// countRequest.onsuccess = function() {
  ///  console.log(countRequest.result);
  /// }
  ///
  external IDBRequest count([dynamic query]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// returns a new [IDBCursorWithValue] object. Used for iterating
  /// through an object store by primary key with a cursor.
  ///
  /// var request = ObjectStore.openCursor();
  /// var request = ObjectStore.openCursor(query);
  /// var request = ObjectStore.openCursor(query, direction);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through all the records in the object store:
  ///
  /// var transaction = db.transaction("name", "readonly");
  /// var objectStore = transaction.objectStore("name");
  /// var request = objectStore.openCursor();
  /// request.onsuccess = function(event) {
  ///  var cursor = event.target.result;
  ///  if(cursor) {
  ///   // cursor.value contains the current record being iterated through
  ///   // this is where you'd do something with the result
  ///   cursor.continue();
  ///  } else {
  ///   // no more results
  ///  }
  /// };
  ///
  external IDBRequest openCursor(
      [dynamic query, IDBCursorDirection? direction = IDBCursorDirection.next]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// returns a new [IDBCursor]. Used for iterating through an object
  /// store with a key.
  ///
  /// var request = objectStore.openKeyCursor();
  /// var request = objectStore.openKeyCursor(query);
  /// var request = objectStore.openKeyCursor(query, direction);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through all the records in the object store:
  ///
  /// var transaction = db.transaction("name", "readonly");
  /// var objectStore = transaction.objectStore("name");
  /// var request = objectStore.openKeyCursor();
  /// request.onsuccess = function(event) {
  ///  var cursor = event.target.result;
  ///  if(cursor) {
  ///   // cursor.key contains the key of the current record being iterated through
  ///   // note that there is no cursor.value, unlike for openCursor
  ///   // this is where you'd do something with the result
  ///   cursor.continue();
  ///  } else {
  ///   // no more results
  ///  }
  /// };
  ///
  external IDBRequest openKeyCursor(
      [dynamic query, IDBCursorDirection? direction = IDBCursorDirection.next]);

  ///  Opens an index from this object store after which it can, for
  /// example, be used to return a sequence of records sorted by that
  /// index using a cursor.
  ///
  /// var index = objectStore.index(name);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the index
  ///  lName from a simple contacts database. We then open a basic cursor on the
  ///  index using IDBIndex.openCursor — this works the same as opening a cursor
  ///  directly on an ObjectStore using IDBObjectStore.openCursor
  ///  except that the returned records are sorted based on the index, not the primary key.
  ///  Finally, we iterate through each record, and insert the data into an HTML table. For a
  ///  complete working example, see our IDBIndex example
  /// in IndexedDB-examples demo repo (View the example live.)
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///  myIndex.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.value.id + '</td>'
  ///               + '<td>' + cursor.value.lName + '</td>'
  ///               + '<td>' + cursor.value.fName + '</td>'
  ///               + '<td>' + cursor.value.jTitle + '</td>'
  ///               + '<td>' + cursor.value.company + '</td>'
  ///               + '<td>' + cursor.value.eMail + '</td>'
  ///               + '<td>' + cursor.value.phone + '</td>'
  ///               + '<td>' + cursor.value.age + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBIndex index(String name);

  ///  Creates a new index during a version upgrade, returning a new
  /// [IDBIndex] object in the connected database.
  ///
  /// var myIDBIndex = objectStore.createIndex(indexName, keyPath);
  /// var myIDBIndex = objectStore.createIndex(indexName, keyPath, objectParameters);
  ///
  ///
  ///  In the following example you can see
  ///  the IDBOpenDBRequest.onupgradeneeded handler being used to update the
  ///  database structure if a database with a higher version number is loaded.
  ///  createIndex() is used to create new indexes on the object store. For a
  ///  full working example, see our To-do
  /// Notifications app (view example live.)
  ///
  /// var db;
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// // Two event handlers for opening the database.
  /// DBOpenRequest.onerror = function(event) {
  ///  note.innerHTML += '<li>Error loading database.</li>';
  /// };
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below.
  ///  db = request.result;
  ///
  ///  // Run the displayData() function to populate the task list with
  ///  // all the to-do list data already in the IDB
  ///  displayData();
  /// };
  ///
  /// // This handler fires when a new database is created and indicates
  /// // either that one has not been created before, or a new version
  /// // was submitted with window.indexedDB.open(). (See above.)
  /// // It is only implemented in recent browsers.
  /// DBOpenRequest.onupgradeneeded = function(event) {
  ///  var db = event.target.result;
  ///
  ///  db.onerror = function(event) {
  ///   note.innerHTML += '<li>Error loading database.</li>';
  ///  };
  ///
  ///  // Create an objectStore for this database
  ///  var objectStore = db.createObjectStore("toDoList", { keyPath: "taskTitle" });
  ///
  ///  // define what data items the objectStore will contain
  ///
  ///  objectStore.createIndex("hours", "hours", { unique: false });
  ///  objectStore.createIndex("minutes", "minutes", { unique: false });
  ///  objectStore.createIndex("day", "day", { unique: false });
  ///  objectStore.createIndex("month", "month", { unique: false });
  ///  objectStore.createIndex("year", "year", { unique: false });
  ///  objectStore.createIndex("notified", "notified", { unique: false });
  /// };
  ///
  external IDBIndex createIndex(String name, dynamic keyPath,
      [IDBIndexParameters? options]);

  ///  Destroys the specified index in the connected database, used
  /// during a version upgrade.
  ///
  /// objectStore.deleteIndex(indexName);
  ///
  ///
  ///  In the following example you can see
  ///  the IDBOpenDBRequest.onupgradeneeded handler being used to update the
  ///  database structure if a database with a higher version number is loaded.
  ///  IDBObjectStore.createIndex is used to create new indexes on the object
  ///  store, after which we delete the unneeded old indexes with deleteIndex().
  ///  For a full working example, see our
  ///  To-do Notifications app (view example live.)
  ///
  /// var db;
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// // these two event handlers act on the database being opened successfully, or not
  /// DBOpenRequest.onerror = function(event) {
  ///  note.innerHTML += '<li>Error loading database.</li>';
  /// };
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable. This is used a lot below
  ///  db = this.result;
  ///
  ///  // Run the displayData() function to populate the task list with all the to-do list data already in the IDB
  ///  displayData();
  /// };
  ///
  /// // This event handles the event whereby a new version of the database needs to be created
  /// // Either one has not been created before, or a new version number has been submitted via the
  /// // window.indexedDB.open line above
  /// //it is only implemented in recent browsers
  /// DBOpenRequest.onupgradeneeded = function(event) {
  ///  var db = this.result;
  ///
  ///  db.onerror = function(event) {
  ///   note.innerHTML += '<li>Error loading database.</li>';
  ///  };
  ///
  ///  // Create an objectStore for this database
  ///  var objectStore = db.createObjectStore("toDoList", { keyPath: "taskTitle" });
  ///
  ///  // define what data items the objectStore will contain
  ///
  ///  objectStore.createIndex("hours", "hours", { unique: false });
  ///  objectStore.createIndex("minutes", "minutes", { unique: false });
  ///  objectStore.createIndex("day", "day", { unique: false });
  ///  objectStore.createIndex("month", "month", { unique: false });
  ///  objectStore.createIndex("year", "year", { unique: false });
  ///  objectStore.createIndex("notified", "notified", { unique: false });
  ///
  ///  objectStore.deleteIndex("seconds");
  ///  objectStore.deleteIndex("contact");
  ///
  /// };
  ///
  external Object deleteIndex(String name);
}

@anonymous
@JS()
@staticInterop
class IDBIndexParameters {
  external factory IDBIndexParameters(
      {bool unique = false, bool multiEntry = false});
}

extension PropsIDBIndexParameters on IDBIndexParameters {
  external bool get unique;
  external set unique(bool newValue);
  external bool get multiEntry;
  external set multiEntry(bool newValue);
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
  /// The name of this index.
  ///
  external String get name;
  external set name(String newValue);

  /// The name of the object store referenced by this index.
  ///
  external IDBObjectStore get objectStore;

  ///  The key path of this index. If null, this index is not
  /// auto-populated.
  ///
  external dynamic get keyPath;

  ///  Affects how the index behaves when the result of evaluating the
  /// index's key path yields an array. If [true], there is one record
  /// in the index for each item in an array of keys. If [false], then
  /// there is one record for each key that is an array.
  ///
  external bool get multiEntry;

  /// If [true], this index does not allow duplicate values for a key.
  ///
  external bool get unique;

  ///  Returns an [IDBRequest] object, and, in a separate thread, finds
  /// either the value in the referenced object store that corresponds
  /// to the given key or the first corresponding value, if [key] is an
  /// [IDBKeyRange].
  ///
  /// var request = myIndex.get(key);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the
  ///  index lName from a simple contacts database. We then open a basic cursor on
  ///  the index using IDBIndex.openCursor — this works the same as opening a
  ///  cursor directly on an ObjectStore using
  ///  IDBObjectStore.openCursor except that the returned records are sorted
  ///  based on the index, not the primary key.
  ///  myIndex.get('Bungle') is then used to retrieve the record with an
  ///  lName of Bungle, and the result of that request is logged to
  ///  the console when its success callback returns.
  ///  Finally, we iterate through each record, and insert the data into an HTML table. For a
  ///  complete working example, see our IndexedDB-examples
  /// demo repo (View the
  /// example live.)
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///  var getRequest = myIndex.get('Bungle');
  ///  getRequest.onsuccess = function() {
  ///   console.log(getRequest.result);
  ///  }
  ///
  ///  myIndex.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.value.id + '</td>'
  ///               + '<td>' + cursor.value.lName + '</td>'
  ///               + '<td>' + cursor.value.fName + '</td>'
  ///               + '<td>' + cursor.value.jTitle + '</td>'
  ///               + '<td>' + cursor.value.company + '</td>'
  ///               + '<td>' + cursor.value.eMail + '</td>'
  ///               + '<td>' + cursor.value.phone + '</td>'
  ///               + '<td>' + cursor.value.age + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  @JS('get')
  @staticInterop
  external IDBRequest mGet(dynamic query);

  ///  Returns an [IDBRequest] object, and, in a separate thread, finds
  /// either the given key or the primary key, if [key] is an
  /// [IDBKeyRange].
  ///
  /// var request = myIndex.getKey(key);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the
  ///  index lName from a simple contacts database. We then open a basic cursor on
  ///  the index using IDBIndex.openCursor — this works the same as opening a
  ///  cursor directly on an ObjectStore using
  ///  IDBObjectStore.openCursor except that the returned records are sorted
  ///  based on the index, not the primary key.
  ///  myIndex.getKey('Bungle') is then used to retrieve the primary key of the
  ///  record with an lName of Bungle, and the result of that request
  ///  is logged to the console when its success callback returns.
  ///  Finally, we iterate through each record, and insert the data into an HTML table. For a
  ///  complete working example, see our IndexedDB-examples
  /// demo repo (View the
  /// example live.)
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///  var getKeyRequest = myIndex.getKey('Bungle');
  ///  getKeyRequest.onsuccess = function() {
  ///   console.log(getKeyRequest.result);
  ///  }
  ///
  ///  myIndex.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.value.id + '</td>'
  ///               + '<td>' + cursor.value.lName + '</td>'
  ///               + '<td>' + cursor.value.fName + '</td>'
  ///               + '<td>' + cursor.value.jTitle + '</td>'
  ///               + '<td>' + cursor.value.company + '</td>'
  ///               + '<td>' + cursor.value.eMail + '</td>'
  ///               + '<td>' + cursor.value.phone + '</td>'
  ///               + '<td>' + cursor.value.age + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest getKey(dynamic query);

  ///  Returns an [IDBRequest] object, in a separate thread, finds all
  /// matching values in the referenced object store that correspond to
  /// the given key or are in range, if [key] is an [IDBKeyRange].
  ///
  /// var getAllKeysRequest = IDBIndex.getAll();
  /// var getAllKeysRequest = IDBIndex.getAll(query);
  /// var getAllKeysRequest = IDBIndex.getAll(query, count);
  ///
  /// var myIndex = objectStore.index('index');
  /// var getAllRequest = myIndex.getAll();
  /// getAllRequest.onsuccess = function() {
  ///  console.log(getAllRequest.result);
  /// }
  ///
  external IDBRequest getAll([dynamic query, int? count]);

  ///  Returns an [IDBRequest] object, in a separate thread, finds all
  /// matching keys in the referenced object store that correspond to
  /// the given key or are in range, if [key] is an [IDBKeyRange].
  ///
  /// var allKeysRequest = IDBIndex.getAllKeys();
  /// var allKeysRequest = IDBIndex.getAllKeys(query);
  /// var allKeysRequest = IDBIndex.getAllKeys(query, count);
  ///
  /// var myIndex = objectStore.index('index');
  /// var getAllKeysRequest = myIndex.getAllKeys();
  /// getAllKeysRequest.onsuccess = function() {
  ///  console.log(getAllKeysRequest.result);
  /// }
  ///
  external IDBRequest getAllKeys([dynamic query, int? count]);

  ///  Returns an [IDBRequest] object, and in a separate thread,
  /// returns the number of records within a key range.
  ///
  /// var request = myIndex.count();
  /// var request = myIndex.count(key);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the
  ///  index lName from a simple contacts database. We then open a basic cursor on
  ///  the index using IDBIndex.openCursor — this works the same as opening a
  ///  cursor directly on an ObjectStore using
  ///  IDBObjectStore.openCursor except that the returned records are sorted
  ///  based on the index, not the primary key.
  ///  myIndex.count() is then used to count the number of records in the index,
  ///  and the result of that request is logged to the console when its success callback
  ///  returns.
  ///  Finally, we iterate through each record, and insert the data into an HTML table. For a
  ///  complete working example, see our IndexedDB-examples
  /// demo repo (View the
  /// example live.)
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///  var countRequest = myIndex.count();
  ///  countRequest.onsuccess = function() {
  ///   console.log(countRequest.result);
  ///  }
  ///
  ///  myIndex.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.value.id + '</td>'
  ///               + '<td>' + cursor.value.lName + '</td>'
  ///               + '<td>' + cursor.value.fName + '</td>'
  ///               + '<td>' + cursor.value.jTitle + '</td>'
  ///               + '<td>' + cursor.value.company + '</td>'
  ///               + '<td>' + cursor.value.eMail + '</td>'
  ///               + '<td>' + cursor.value.phone + '</td>'
  ///               + '<td>' + cursor.value.age + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest count([dynamic query]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// creates a cursor over the specified key range.
  ///
  /// var request = myIndex.openCursor();
  /// var request = myIndex.openCursor(range);
  /// var request = myIndex.openCursor(range, direction);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the
  ///  index lName from a simple contacts database. We then open a basic cursor on
  ///  the index using openCursor() — this works the same as opening a cursor
  ///  directly on an ObjectStore using IDBObjectStore.openCursor
  ///  except that the returned records are sorted based on the index, not the primary key.
  ///  Finally, we iterate through each record, and insert the data into an HTML table. For a
  ///  complete working example, see our IndexedDB-examples
  /// demo repo (View the
  /// example live.)
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///
  ///  myIndex.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.value.id + '</td>'
  ///               + '<td>' + cursor.value.lName + '</td>'
  ///               + '<td>' + cursor.value.fName + '</td>'
  ///               + '<td>' + cursor.value.jTitle + '</td>'
  ///               + '<td>' + cursor.value.company + '</td>'
  ///               + '<td>' + cursor.value.eMail + '</td>'
  ///               + '<td>' + cursor.value.phone + '</td>'
  ///               + '<td>' + cursor.value.age + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest openCursor(
      [dynamic query, IDBCursorDirection? direction = IDBCursorDirection.next]);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// creates a cursor over the specified key range, as arranged by
  /// this index.
  ///
  /// var request = myIndex.openKeyCursor();
  /// var request = myIndex.openKeyCursor(range);
  /// var request = myIndex.openKeyCursor(range, direction);
  ///
  ///
  ///  In the following example we open a transaction and an object store, then get the
  ///  index lName from a simple contacts database. We then open a key cursor on
  ///  the index using openKeyCursor() — this works the same as opening a cursor
  ///  directly on an ObjectStore using
  ///  IDBObjectStore.openKeyCursor except that the returned records are sorted
  ///  based on the index, not the primary key.
  ///  Finally, we iterate through each record in the index, and insert the last name and the
  ///  corresponding primary key of the referenced record into an HTML table.
  ///
  /// function displayDataByIndex() {
  ///  tableEntry.innerHTML = '';
  ///  var transaction = db.transaction(['contactsList'], 'readonly');
  ///  var objectStore = transaction.objectStore('contactsList');
  ///
  ///  var myIndex = objectStore.index('lName');
  ///
  ///  myIndex.openKeyCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var tableRow = document.createElement('tr');
  ///    tableRow.innerHTML =  '<td>' + cursor.key + '</td>'
  ///               + '<td>' + cursor.primaryKey + '</td>';
  ///    tableEntry.appendChild(tableRow);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('All last names displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest openKeyCursor(
      [dynamic query, IDBCursorDirection? direction = IDBCursorDirection.next]);
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
///    [undefined]
///    Less than key value
///    Equal to key value if [lowerOpen] is [false].
///
///
///  The upper value of the key range is one of the following:
///
///    [undefined]
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
  external factory IDBKeyRange();
}

extension PropsIDBKeyRange on IDBKeyRange {
  /// Lower bound of the key range.
  ///
  external dynamic get lower;

  /// Upper bound of the key range.
  ///
  external dynamic get upper;

  ///  Returns false if the lower-bound value is included in the key
  /// range.
  ///
  external bool get lowerOpen;

  ///  Returns false if the upper-bound value is included in the key
  /// range.
  ///
  external bool get upperOpen;
  external static IDBKeyRange only(dynamic value);
  external static IDBKeyRange lowerBound(dynamic lower, [bool? open = false]);
  external static IDBKeyRange upperBound(dynamic upper, [bool? open = false]);
  external static IDBKeyRange bound(dynamic lower, dynamic upper,
      [bool? lowerOpen = false, bool? upperOpen = false]);
  external bool includes(dynamic key);
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
  ///  Returns the [IDBObjectStore] or [IDBIndex] that the cursor is
  /// iterating. This function never returns null or throws an
  /// exception, even if the cursor is currently being iterated, has
  /// iterated past its end, or its transaction is not active.
  ///
  external dynamic get source;

  ///  Returns the direction of traversal of the cursor. See Constants
  /// for possible values.
  ///
  external IDBCursorDirection get direction;

  ///  Returns the key for the record at the cursor's position. If the
  /// cursor is outside its range, this is set to [undefined]. The
  /// cursor's key can be any data type.
  ///
  external dynamic get key;

  ///  Returns the cursor's current effective primary key. If the
  /// cursor is currently being iterated or has iterated outside its
  /// range, this is set to [undefined]. The cursor's primary key can
  /// be any data type.
  ///
  external dynamic get primaryKey;

  /// Returns the [IDBRequest] that was used to obtain the cursor.
  ///
  external IDBRequest get request;

  ///  Sets the number of times a cursor should move its position
  /// forward.
  ///
  /// cursor.advance(count);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through the records in the object store. Here we use
  ///  cursor.advance(2) to jump 2 places forward each time, meaning that only
  ///  every other result will be displayed. advance() works in a similar way to
  ///  IDBCursor.continue, except that it allows you to jump multiple records at
  ///  a time, not just always go onto the next record.
  ///  Note that in each iteration of the loop, you can grab
  ///  data from the current record under the cursor object using cursor.value.foo. For a complete working example, see our IDBCursor
  /// example (view example live.)>
  ///
  /// function advanceResult() {
  ///  list.textContent = '';
  ///  const transaction = db.transaction(['rushAlbumList'], "readonly");
  ///  const objectStore = transaction.objectStore('rushAlbumList');
  ///
  ///  objectStore.openCursor().onsuccess = function(event) {
  ///   const cursor = event.target.result;
  ///   if(cursor) {
  ///    const listItem = document.createElement('li');
  ///    listItem.innerHTML = '<strong>' + cursor.value.albumTitle + '</strong>, ' + cursor.value.year;
  ///    list.appendChild(listItem);
  ///    cursor.advance(2);
  ///   } else {
  ///    console.log('Every other entry displayed.');
  ///   }
  ///  };
  /// };
  ///
  external Object advance(int count);

  ///  Advances the cursor to the next position along its direction, to
  /// the item whose key matches the optional [key] parameter.
  ///
  /// cursor.continue(key);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through all the records in the object store. The cursor does not
  ///  require us to select the data based on a key; we can just grab all of it. Also note that
  ///  in each iteration of the loop, you can grab data from the current record under the
  ///  cursor object using cursor.value.foo. For a complete working example, see
  ///  our IDBCursor
  /// example (view
  /// example live.)
  ///
  /// function displayData() {
  ///  var transaction = db.transaction(['rushAlbumList'], "readonly");
  ///  var objectStore = transaction.objectStore('rushAlbumList');
  ///
  ///  objectStore.openCursor().onsuccess = function(event) {
  ///   var cursor = event.target.result;
  ///   if(cursor) {
  ///    var listItem = document.createElement('li');
  ///    listItem.innerHTML = cursor.value.albumTitle + ', ' + cursor.value.year;
  ///    list.appendChild(listItem);
  ///
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries all displayed.');
  ///   }
  ///  };
  /// };
  ///
  @JS('continue')
  @staticInterop
  external Object mContinue([dynamic key]);

  ///  Sets the cursor to the given index key and primary key given as
  /// arguments.
  ///
  /// cursor.continuePrimaryKey(key, primaryKey);
  ///
  ///
  ///  here’s how you can resume an iteration of all articles tagged with
  ///  "javascript" since your last visit:
  ///
  /// let request = articleStore.index("tag").openCursor();
  /// let count = 0;
  /// let unreadList = [];
  /// request.onsuccess = (event) => {
  ///   let cursor = event.target.result;
  ///   if (!cursor) { return; }
  ///   let lastPrimaryKey = getLastIteratedArticleId();
  ///   if (lastPrimaryKey > cursor.primaryKey) {
  ///    cursor.continuePrimaryKey("javascript", lastPrimaryKey);
  ///    return;
  ///   }
  ///   // update lastIteratedArticleId
  ///   setLastIteratedArticleId(cursor.primaryKey);
  ///   // preload 5 articles into the unread list;
  ///   unreadList.push(cursor.value);
  ///   if (++count < 5) {
  ///    cursor.continue();
  ///   }
  /// };
  ///
  external Object continuePrimaryKey(dynamic key, dynamic primaryKey);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// updates the value at the current position of the cursor in the
  /// object store. This can be used to update specific records.
  ///
  /// var anIDBRequest = myIDBCursor.update(value);
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through all the records in the object store. If the
  ///  albumTitle of the current cursor is "A farewell to kings", we update year
  ///  the album was released using const request = cursor.update();.
  ///  Note that you cannot change primary keys using cursor.update(), hence us
  ///  not changing the album title; this would ruin the integrity of the data. In such a
  ///  situation, you would have to delete the record altogether and then add a new one using
  ///  IDBObjectStore.add. Note also that you can't directly put
  ///  cursor.value into an update call, hence the below example using an
  ///  intermediary updateData variable.
  ///  The cursor does not require us to select the data based
  ///  on a key; we can just grab all of it. Also note that in each iteration of the loop,
  ///  you can grab data from the current record under the cursor object using cursor.value.foo. For a complete working example, see our IDBCursor example (view example live.)
  ///
  /// function updateResult() {
  ///  list.textContent = '';
  ///  const transaction = db.transaction(['rushAlbumList'], 'readwrite');
  ///  const objectStore = transaction.objectStore('rushAlbumList');
  ///
  ///  objectStore.openCursor().onsuccess = function(event) {
  ///   const cursor = event.target.result;
  ///   if (cursor) {
  ///    if (cursor.value.albumTitle === 'A farewell to kings') {
  ///     const updateData = cursor.value;
  ///
  ///     updateData.year = 2050;
  ///     const request = cursor.update(updateData);
  ///     request.onsuccess = function() {
  ///      console.log('A better album year?');
  ///     };
  ///    };
  ///
  ///    const listItem = document.createElement('li');
  ///    listItem.innerHTML = '<strong>' + cursor.value.albumTitle + '</strong>, ' + cursor.value.year;
  ///    list.appendChild(listItem);
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest update(dynamic value);

  ///  Returns an [IDBRequest] object, and, in a separate thread,
  /// deletes the record at the cursor's position, without changing the
  /// cursor's position. This can be used to delete specific records.
  ///
  /// myIDBCursor.delete();
  ///
  ///
  ///  In this simple fragment we create a transaction, retrieve an object store, then use a
  ///  cursor to iterate through all the records in the object store. If the
  ///  albumTitle of the current cursor is "Grace under pressure", we delete that
  ///  entire record using var request = cursor.delete();.
  ///  The cursor does not require us to select the data based on a key; we can just grab all
  ///  of it. Also note that in each iteration of the loop, you can grab data from the current
  ///  record under the cursor object using cursor.value.foo. For a complete
  ///  working example, see our IDBCursor
  /// example (view example
  /// live.)
  ///
  /// function deleteResult() {
  ///  list.textContent = '';
  ///  const transaction = db.transaction(['rushAlbumList'], 'readwrite');
  ///  const objectStore = transaction.objectStore('rushAlbumList');
  ///
  ///  objectStore.openCursor().onsuccess = function(event) {
  ///   const cursor = event.target.result;
  ///   if(cursor) {
  ///    if(cursor.value.albumTitle === 'Grace under pressure') {
  ///     const request = cursor.delete();
  ///     request.onsuccess = function() {
  ///      console.log('Deleted that mediocre album from 1984. Even Power windows is better.');
  ///     };
  ///    } else {
  ///     const listItem = document.createElement('li');
  ///     listItem.innerHTML = '<strong>' + cursor.value.albumTitle + '</strong>, ' + cursor.value.year;
  ///     list.appendChild(listItem);
  ///    }
  ///    cursor.continue();
  ///   } else {
  ///    console.log('Entries displayed.');
  ///   }
  ///  };
  /// };
  ///
  external IDBRequest delete();
}

enum IDBCursorDirection { next, nextunique, prev, prevunique }

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
  /// Returns the value of the current cursor.
  ///
  external dynamic get value;
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
  ///  Returns a [DOMStringList] of the names of [IDBObjectStore]
  /// objects associated with the transaction.
  ///
  external DOMStringList get objectStoreNames;

  ///  The mode for isolating access to data in the object stores that
  /// are in the scope of the transaction. The default value is
  /// [readonly].
  ///
  external IDBTransactionMode get mode;

  /// Returns the durability hint the transaction was created with.
  ///
  external IDBTransactionDurability get durability;

  ///  The database connection with which this transaction is
  /// associated.
  ///
  external IDBDatabase get db;

  ///  Returns a [DOMException] indicating the type of error that
  /// occurred when there is an unsuccessful transaction. This property
  /// is [null] if the transaction is not finished, is finished and
  /// successfully committed, or was aborted with
  /// the[IDBTransaction.abort()] function.
  ///
  external Exception? get error;

  ///  Returns an [IDBObjectStore] object representing an object store
  /// that is part of the scope of this transaction.
  ///
  /// IDBTransaction.objectStore(name);
  ///
  ///
  ///  In the following code snippet, we open a read/write transaction on our database and add
  ///  some data to an object store. Note also the functions attached to transaction event
  ///  handlers to report on the outcome of the transaction opening in the event of success or
  ///  failure. For a full working example, see our To-do
  /// Notifications app (view
  /// example live.)
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable.
  ///  // This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Run the addData() function to add the data to the database
  ///  addData();
  /// };
  ///
  /// function addData() {
  ///  // Create a new object ready for being inserted into the IDB
  ///  var newItem = [ { taskTitle: "Walk dog", hours: 19, minutes: 30, day: 24, month: "December", year: 2013, notified: "no" } ];
  ///
  ///  // open a read/write db transaction, ready for adding the data
  ///  var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  ///  // report on the success of opening the transaction
  ///  transaction.oncomplete = function(event) {
  ///   note.innerHTML += '<li>Transaction completed: database modification finished.</li>';
  ///  };
  ///
  ///  transaction.onerror = function(event) {
  ///   note.innerHTML += '<li>Transaction not opened due to error. Duplicate items not allowed.</li>';
  ///  };
  ///
  ///  // create an object store on the transaction
  ///  var objectStore = transaction.objectStore("toDoList");
  ///
  ///  // add our newItem object to the object store
  ///  var objectStoreRequest = objectStore.add(newItem[0]);
  ///
  ///  objectStoreRequest.onsuccess = function(event) {
  ///   // report the success of the request (this does not mean the item
  ///   // has been stored successfully in the DB - for that you need transaction.onsuccess)
  ///   note.innerHTML += '<li>Request successful.</li>';
  ///  };
  ///
  external IDBObjectStore objectStore(String name);

  ///  For an active transaction, commits the transaction. Note that
  /// this doesn't normally have to be called — a transaction will
  /// automatically commit when all outstanding requests have been
  /// satisfied and no new requests have been made. [commit()] can be
  /// used to start the commit process without waiting for events from
  /// outstanding requests to be dispatched.
  ///
  /// transaction.commit();
  ///
  external Object commit();

  ///  Rolls back all the changes to objects in the database associated
  /// with this transaction. If this transaction has been aborted or
  /// completed, this method fires an error event.
  ///
  /// transaction.abort();
  ///
  ///
  ///  In the following code snippet, we open a read/write transaction on our database and add
  ///  some data to an object store. Note also the functions attached to transaction event
  ///  handlers to report on the outcome of the transaction opening in the event of success or
  ///  failure. At the end, we abort any activity done under the current transaction using
  ///  abort(). For a full working example, see our To-do
  /// Notifications app (view
  /// example live.)
  ///
  /// // Let us open our database
  /// var DBOpenRequest = window.indexedDB.open("toDoList", 4);
  ///
  /// DBOpenRequest.onsuccess = function(event) {
  ///  note.innerHTML += '<li>Database initialised.</li>';
  ///
  ///  // store the result of opening the database in the db variable. This is used a lot below
  ///  db = DBOpenRequest.result;
  ///
  ///  // Run the addData() function to add the data to the database
  ///  addData();
  /// };
  ///
  /// function addData() {
  ///  // Create a new object ready for being inserted into the IDB
  ///  var newItem = [ { taskTitle: "Walk dog", hours: 19, minutes: 30, day: 24, month: "December", year: 2013, notified: "no" } ];
  ///
  ///  // open a read/write db transaction, ready for adding the data
  ///  var transaction = db.transaction(["toDoList"], "readwrite");
  ///
  ///  // report on the success of opening the transaction
  ///  transaction.oncomplete = function(event) {
  ///   note.innerHTML += '<li>Transaction completed: database modification finished.</li>';
  ///  };
  ///
  ///  transaction.onerror = function(event) {
  ///   note.innerHTML += '<li>Transaction not opened due to error. Duplicate items not allowed.</li>';
  ///  };
  ///
  ///  // create an object store on the transaction
  ///  var objectStore = transaction.objectStore("toDoList");
  ///
  ///  // add our newItem object to the object store
  ///  var objectStoreRequest = objectStore.add(newItem[0]);
  ///
  ///  objectStoreRequest.onsuccess = function(event) {
  ///   // report the success of the request (this does not mean the item
  ///   // has been stored successfully in the DB - for that you need transaction.onsuccess)
  ///   note.innerHTML += '<li>Request successful.</li>';
  ///  };
  ///
  ///  // Abort the transaction we just did
  ///  transaction.abort();
  /// };
  ///
  external Object abort();
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get oncomplete;
  external set oncomplete(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
}

enum IDBTransactionMode { readonly, readwrite, versionchange }
