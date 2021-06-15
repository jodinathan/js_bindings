/// Web Periodic Background Synchronization
///
/// https://wicg.github.io/periodic-background-sync/
@JS('window')
library periodic_background_sync;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'service_workers_1.dart';
import 'html.dart';

///
///   Draft
///   This page is not complete.
///
///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to register tasks to be run in a service
/// worker at periodic intervals with network connectivity. These
/// tasks are referred to as periodic background sync requests.
/// Access through the [ServiceWorkerRegistration.periodicSync].
@JS()
class PeriodicSyncManager {
  ///  Registers a periodic sync request with the browser with the
  /// specified tag and options. Returns a [Promise] that resolves when
  /// the registration completes.
  /// var register = PeriodicSyncManager.register(tag, BackgroundSyncOptions);
  external Promise<Object> register(String tag,
      [BackgroundSyncOptions? options]);

  ///  Returns a [Promise] that resolves with a list of [strings]
  /// representing the tags that are currently registered for periodic
  /// syncing.
  /// var tags = PeriodicSyncManager.getTags();
  external Iterable<Promise<String>> getTags();

  ///  Unregisters the periodic sync request corresponding to the
  /// specified tag and returns a [Promise] that resolves when
  /// unregistration completes.
  /// var unregister = PeriodicSyncManager.unregister(tag);
  external Promise<Object> unregister(String tag);

  external factory PeriodicSyncManager();
}

@anonymous
@JS()
class BackgroundSyncOptions {
  external int get minInterval;
  external set minInterval(int newValue);

  external factory BackgroundSyncOptions({int minInterval = 0});
}

@anonymous
@JS()
class PeriodicSyncEventInit // EventInit -> {} -> ExtendableEventInit
    extends ExtendableEventInit {
  external String get tag;
  external set tag(String newValue);

  external factory PeriodicSyncEventInit({String tag});
}

///
///   Draft
///   This page is not complete.
///
///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to run tasks in the service worker with
/// network connectivity.
///
///  An instance of this event is passed to the
/// [ServiceWorkerGlobalScope.onperiodicsync] handler. This happens
/// periodically, at an interval greater than or equal to that set in
/// the [PeriodicSyncManager.register()] method. Other
/// implementation-specific factors such as the user's engagement
/// with the site decide the actual interval.
@JS()
class PeriodicSyncEvent // Event -> {} -> ExtendableEvent
    extends ExtendableEvent {
  external factory PeriodicSyncEvent(String type, PeriodicSyncEventInit init);

  ///  Returns the developer-defined identifier for this
  /// [PeriodicSyncEvent]. Multiple tags can be used by the web app to
  /// run different periodic tasks at different frequencies.
  external String get tag;
}
