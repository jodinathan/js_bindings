/// Web Background Synchronization
///
/// https://wicg.github.io/background-sync/spec/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library background_sync;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the ServiceWorker API provides an interface for
/// registering and listing sync registrations.
@JS()
@staticInterop
class SyncManager {
  external SyncManager();
}

extension PropsSyncManager on SyncManager {
  /// Create a new sync registration and return a [Future].
  ///
  /// SyncManager.register([options]).then(function(syncRegistration) { /* ... */ })
  ///
  Future<Object> register(String tag) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'register', [tag]));

  ///  Return a list of developer-defined identifiers for SyncManager
  /// registration.
  ///
  /// SyncManager.getTags().then(function(tags[]) { /* ... */ })
  ///
  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));
}

///  Non-standard: This feature is non-standard and is not on a
/// standards track. Do not use it on production sites facing the
/// Web: it will not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///  The interface represents a sync action that is dispatched on the
/// [ServiceWorkerGlobalScope] of a ServiceWorker.
/// This interface inherits from the [ExtendableEvent] interface.
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
///    SyncEvent
///
///
@JS()
@staticInterop
class SyncEvent implements ExtendableEvent {
  external SyncEvent(String type, SyncEventInit init);
}

extension PropsSyncEvent on SyncEvent {
  /// Returns the developer-defined identifier for this [SyncEvent].
  ///
  String get tag => js_util.getProperty(this, 'tag');

  ///  Returns [true] if the user agent will not make further
  /// synchronization attempts after the current attempt.
  ///
  bool get lastChance => js_util.getProperty(this, 'lastChance');
}

@anonymous
@JS()
@staticInterop
class SyncEventInit implements ExtendableEventInit {
  external factory SyncEventInit({String tag, bool lastChance = false});
}

extension PropsSyncEventInit on SyncEventInit {
  String get tag => js_util.getProperty(this, 'tag');
  set tag(String newValue) {
    js_util.setProperty(this, 'tag', newValue);
  }

  bool get lastChance => js_util.getProperty(this, 'lastChance');
  set lastChance(bool newValue) {
    js_util.setProperty(this, 'lastChance', newValue);
  }
}
