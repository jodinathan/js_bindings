/// Web Locks API
///
/// https://wicg.github.io/web-locks/
@JS('window')
library web_locks;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';

@JS()
abstract class NavigatorLocks {
  external LockManager get locks;
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Locks API provides methods for
/// requesting a new [Lock] object and querying for an existing
/// [Lock] object. To get an instance of , call [navigator.locks].
@experimental
@JS()
class LockManager {
  ///  Requests a [Lock] object with parameters specifying its name and
  /// characteristics.
  /// LockManager.request(var promise = name[, {options}], callback)
  external Promise<dynamic> request(
      String name, LockOptions options, LockGrantedCallback callback);

  ///  Returns a [Promise] that resolves with a [LockManagerSnapshot]
  /// which contains information about held and pending locks.
  /// var promise<LockManagerSnapshot> = LockManager.query()
  /// const state = await navigator.locks.query();
  /// for (const lock of state.held) {
  ///  console.log(`held lock: name ${lock.name}, mode ${lock.mode}`);
  /// }
  /// for (const request of state.pending) {
  ///  console.log(`requested lock: name ${request.name}, mode ${request.mode}`);
  /// }
  ///
  external Promise<LockManagerSnapshot> query();

  external factory LockManager();
}

@JS()
enum LockMode { shared, exclusive }

@anonymous
@JS()
class LockOptions {
  external LockMode get mode;
  external set mode(LockMode newValue);
  external bool get ifAvailable;
  external set ifAvailable(bool newValue);
  external bool get steal;
  external set steal(bool newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);

  external factory LockOptions(
      {LockMode mode = LockMode.exclusive,
      bool ifAvailable = false,
      bool steal = false,
      AbortSignal signal});
}

@anonymous
@JS()
class LockManagerSnapshot {
  external Iterable<LockInfo> get held;
  external set held(Iterable<LockInfo> newValue);
  external Iterable<LockInfo> get pending;
  external set pending(Iterable<LockInfo> newValue);

  external factory LockManagerSnapshot(
      {Iterable<LockInfo> held, Iterable<LockInfo> pending});
}

@anonymous
@JS()
class LockInfo {
  external String get name;
  external set name(String newValue);
  external LockMode get mode;
  external set mode(LockMode newValue);
  external String get clientId;
  external set clientId(String newValue);

  external factory LockInfo({String name, LockMode mode, String clientId});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Locks API provides the name and mode of
/// a previously requested lock, which is received in the callback to
/// [LockManager.request()].
@experimental
@JS()
class Lock {
  ///  Returns the name passed to [LockManager.request()] when the lock
  /// was requested.
  external String get name;

  ///  Returns the access mode passed to [LockManager.request()] when
  /// the lock was requested. The mode is either ["exclusive"] (the
  /// default) or ["shared"].
  external LockMode get mode;

  external factory Lock();
}
