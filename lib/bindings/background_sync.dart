/// Web Background Synchronization
///
/// https://wicg.github.io/background-sync/spec/
@JS('window')
library background_sync;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'service_workers_1.dart';
import 'html.dart';

///
///
///  The interface of the ServiceWorker API provides an interface for
/// registering and listing sync registrations.
@JS()
class SyncManager {
  /// Create a new sync registration and return a [Promise].
  /// SyncManager.register([options]).then(function(syncRegistration) { ... })
  external Promise<Object> register(String tag);

  ///  Return a list of developer-defined identifiers for SyncManager
  /// registration.
  /// SyncManager.getTags().then(function(tags[]) { ... })
  external Iterable<Promise<String>> getTags();

  external factory SyncManager();
}

///
///     Non-standard
///      This feature is non-standard and is not on a standards
/// track. Do not use it on production sites facing the Web: it will
/// not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///
///
///  The [SyncEvent] interface represents a sync action that is
/// dispatched on the [ServiceWorkerGlobalScope] of a ServiceWorker.
///
/// This interface inherits from the [ExtendableEvent] interface.
///
///
@JS()
class SyncEvent // Event -> {} -> ExtendableEvent
    extends ExtendableEvent {
  external factory SyncEvent(String type, SyncEventInit init);

  /// Returns the developer-defined identifier for this [SyncEvent].
  external String get tag;

  ///  Returns [true] if the user agent will not make further
  /// synchronization attempts after the current attempt.
  external bool get lastChance;
}

@anonymous
@JS()
class SyncEventInit // EventInit -> {} -> ExtendableEventInit
    extends ExtendableEventInit {
  external String get tag;
  external set tag(String newValue);
  external bool get lastChance;
  external set lastChance(bool newValue);

  external factory SyncEventInit({String tag, bool lastChance = false});
}
