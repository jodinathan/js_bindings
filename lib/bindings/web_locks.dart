/// Web Locks API
///
/// https://w3c.github.io/web-locks/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_locks;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorLocks {
  external factory NavigatorLocks();
}

extension PropsNavigatorLocks on NavigatorLocks {
  LockManager get locks => js_util.getProperty(this, 'locks');
}

///  The interface of the Web Locks API provides methods for
/// requesting a new [Lock] object and querying for an existing
/// [Lock] object. To get an instance of , call [navigator.locks].
@JS()
@staticInterop
class LockManager {
  external factory LockManager();
}

extension PropsLockManager on LockManager {
  Future<dynamic> request(String name,
          [LockOptions? options, LockGrantedCallback? callback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'request',
          [name, options, callback == null ? null : allowInterop(callback)]));

  Future<LockManagerSnapshot> query() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'query', []));
}

enum LockMode {
  shared('shared'),
  exclusive('exclusive');

  final String value;
  static LockMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<LockMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const LockMode(this.value);
}

@anonymous
@JS()
@staticInterop
class LockOptions {
  external factory LockOptions._(
      {String? mode,
      bool? ifAvailable = false,
      bool? steal = false,
      AbortSignal? signal});

  factory LockOptions(
          {LockMode? mode = LockMode.exclusive,
          bool? ifAvailable = false,
          bool? steal = false,
          AbortSignal? signal}) =>
      LockOptions._(
          mode: mode?.value,
          ifAvailable: ifAvailable,
          steal: steal,
          signal: signal);
}

extension PropsLockOptions on LockOptions {
  LockMode get mode => LockMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(LockMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  bool get ifAvailable => js_util.getProperty(this, 'ifAvailable');
  set ifAvailable(bool newValue) {
    js_util.setProperty(this, 'ifAvailable', newValue);
  }

  bool get steal => js_util.getProperty(this, 'steal');
  set steal(bool newValue) {
    js_util.setProperty(this, 'steal', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class LockManagerSnapshot {
  external factory LockManagerSnapshot(
      {required Iterable<LockInfo> held, required Iterable<LockInfo> pending});
}

extension PropsLockManagerSnapshot on LockManagerSnapshot {
  Iterable<LockInfo> get held => js_util.getProperty(this, 'held');
  set held(Iterable<LockInfo> newValue) {
    js_util.setProperty(this, 'held', newValue);
  }

  Iterable<LockInfo> get pending => js_util.getProperty(this, 'pending');
  set pending(Iterable<LockInfo> newValue) {
    js_util.setProperty(this, 'pending', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class LockInfo {
  external factory LockInfo._(
      {required String name, required String mode, required String clientId});

  factory LockInfo(
          {required String name,
          required LockMode mode,
          required String clientId}) =>
      LockInfo._(name: name, mode: mode.value, clientId: clientId);
}

extension PropsLockInfo on LockInfo {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  LockMode get mode => LockMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(LockMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  String get clientId => js_util.getProperty(this, 'clientId');
  set clientId(String newValue) {
    js_util.setProperty(this, 'clientId', newValue);
  }
}

///
///   The interface of the Web Locks API provides the name and mode
/// of a lock.
///   This may be a newly requested lock that is received in the
/// callback to [LockManager.request()], or a record of an active or
/// queued lock returned by [LockManager.query()].
///
@JS()
@staticInterop
class Lock {
  external factory Lock();
}

extension PropsLock on Lock {
  String get name => js_util.getProperty(this, 'name');
  LockMode get mode => LockMode.fromValue(js_util.getProperty(this, 'mode'));
}
