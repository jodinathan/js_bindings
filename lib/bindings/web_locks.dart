/// Web Locks API
///
/// https://wicg.github.io/web-locks/
@JS('window')
@staticInterop
library web_locks;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

@JS()
@staticInterop
class NavigatorLocks {
  external factory NavigatorLocks();
}

extension PropsNavigatorLocks on NavigatorLocks {
  external LockManager get locks;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Locks API provides methods for
/// requesting a new [Lock] object and querying for an existing
/// [Lock] object. To get an instance of , call [navigator.locks].
@experimental
@JS()
@staticInterop
class LockManager {
  external factory LockManager();
}

extension PropsLockManager on LockManager {
  ///  Requests a [Lock] object with parameters specifying its name and
  /// characteristics.
  ///
  /// LockManager.request(name, callback)
  /// LockManager.request(name, {options}, callback)
  ///
  external Promise<dynamic> request(String name,
      [LockOptions? options, LockGrantedCallback callback]);

  ///  Returns a [Promise] that resolves with an object that contains
  /// information about held and pending locks.
  ///
  /// LockManager.query()
  ///
  /// const state = await navigator.locks.query();
  /// for (const lock of state.held) {
  ///  console.log(`held lock: name ${lock.name}, mode ${lock.mode}`);
  /// }
  /// for (const request of state.pending) {
  ///  console.log(`requested lock: name ${request.name}, mode ${request.mode}`);
  /// }
  ///
  external Promise<LockManagerSnapshot> query();
}

enum LockMode { shared, exclusive }

@anonymous
@JS()
@staticInterop
class LockOptions {
  external factory LockOptions(
      {LockMode mode = LockMode.exclusive,
      bool ifAvailable = false,
      bool steal = false,
      AbortSignal signal});
}

extension PropsLockOptions on LockOptions {
  external LockMode get mode;
  external set mode(LockMode newValue);
  external bool get ifAvailable;
  external set ifAvailable(bool newValue);
  external bool get steal;
  external set steal(bool newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
}

@anonymous
@JS()
@staticInterop
class LockManagerSnapshot {
  external factory LockManagerSnapshot(
      {Iterable<LockInfo> held, Iterable<LockInfo> pending});
}

extension PropsLockManagerSnapshot on LockManagerSnapshot {
  external Iterable<LockInfo> get held;
  external set held(Iterable<LockInfo> newValue);
  external Iterable<LockInfo> get pending;
  external set pending(Iterable<LockInfo> newValue);
}

@anonymous
@JS()
@staticInterop
class LockInfo {
  external factory LockInfo({String name, LockMode mode, String clientId});
}

extension PropsLockInfo on LockInfo {
  external String get name;
  external set name(String newValue);
  external LockMode get mode;
  external set mode(LockMode newValue);
  external String get clientId;
  external set clientId(String newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///   The interface of the Web Locks API provides the name and mode
/// of a lock.
///   This may be a newly requested lock that is received in the
/// callback to [LockManager.request()], or a record of an active or
/// queued lock returned by [LockManager.query()].
///
@experimental
@JS()
@staticInterop
class Lock {
  external factory Lock();
}

extension PropsLock on Lock {
  ///  Returns the name passed to [LockManager.request()] when the lock
  /// was requested.
  ///
  external String get name;

  ///
  ///     Returns the access mode passed to [LockManager.request()]
  /// when the lock was requested.
  ///    The mode is either ["exclusive"] (the default) or ["shared"].
  ///
  ///
  external LockMode get mode;
}
