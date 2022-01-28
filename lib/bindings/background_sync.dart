/// Web Background Synchronization
///
/// https://wicg.github.io/background-sync/spec/
@JS('window')
@staticInterop
library background_sync;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: service_workers_1
html */

///  The interface of the ServiceWorker API provides an interface for
/// registering and listing sync registrations.
@JS()
@staticInterop
class SyncManager {
  external factory SyncManager();
}

extension PropsSyncManager on SyncManager {
  /// Create a new sync registration and return a [Promise].
  ///
  /// SyncManager.register([options]).then(function(syncRegistration) { /* ... */ })
  ///
  external Promise<Object> register(String tag);

  ///  Return a list of developer-defined identifiers for SyncManager
  /// registration.
  ///
  /// SyncManager.getTags().then(function(tags[]) { /* ... */ })
  ///
  external Iterable<Promise<String>> getTags();
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
  external factory SyncEvent(String type, SyncEventInit init);
}

extension PropsSyncEvent on SyncEvent {
  /// Returns the developer-defined identifier for this [SyncEvent].
  ///
  external String get tag;

  ///  Returns [true] if the user agent will not make further
  /// synchronization attempts after the current attempt.
  ///
  external bool get lastChance;
}

@anonymous
@JS()
@staticInterop
class SyncEventInit implements ExtendableEventInit {
  external factory SyncEventInit({String tag, bool lastChance = false});
}

extension PropsSyncEventInit on SyncEventInit {
  external String get tag;
  external set tag(String newValue);
  external bool get lastChance;
  external set lastChance(bool newValue);
}
