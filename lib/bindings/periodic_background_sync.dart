/// Web Periodic Background Synchronization
///
/// https://wicg.github.io/periodic-background-sync/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library periodic_background_sync;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to register tasks to be run in a service
/// worker at periodic intervals with network connectivity. These
/// tasks are referred to as periodic background sync requests.
/// Access through the [ServiceWorkerRegistration.periodicSync].
@JS()
@staticInterop
class PeriodicSyncManager {
  external PeriodicSyncManager();
}

extension PropsPeriodicSyncManager on PeriodicSyncManager {
  ///  Registers a periodic sync request with the browser with the
  /// specified tag and options. Returns a [Future] that resolves when
  /// the registration completes.
  ///
  /// var register = PeriodicSyncManager.register(tag, BackgroundSyncOptions);
  ///
  Future<Object> register(String tag, [BackgroundSyncOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'register', [tag, options]));

  ///  Returns a [Future] that resolves with a list of [strings]
  /// representing the tags that are currently registered for periodic
  /// syncing.
  ///
  /// var tags = PeriodicSyncManager.getTags();
  ///
  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));

  ///  Unregisters the periodic sync request corresponding to the
  /// specified tag and returns a [Future] that resolves when
  /// unregistration completes.
  ///
  /// var unregister = PeriodicSyncManager.unregister(tag);
  ///
  Future<Object> unregister(String tag) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unregister', [tag]));
}

@anonymous
@JS()
@staticInterop
class BackgroundSyncOptions {
  external factory BackgroundSyncOptions({int? minInterval = 0});
}

extension PropsBackgroundSyncOptions on BackgroundSyncOptions {
  int get minInterval => js_util.getProperty(this, 'minInterval');
  set minInterval(int newValue) {
    js_util.setProperty(this, 'minInterval', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PeriodicSyncEventInit implements ExtendableEventInit {
  external factory PeriodicSyncEventInit({required String tag});
}

extension PropsPeriodicSyncEventInit on PeriodicSyncEventInit {
  String get tag => js_util.getProperty(this, 'tag');
  set tag(String newValue) {
    js_util.setProperty(this, 'tag', newValue);
  }
}

///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to run tasks in the service worker with
/// network connectivity.
///  An instance of this event is passed to the
/// [ServiceWorkerGlobalScope.onperiodicsync] handler. This happens
/// periodically, at an interval greater than or equal to that set in
/// the [PeriodicSyncManager.register()] method. Other
/// implementation-specific factors such as the user's engagement
/// with the site decide the actual interval.
@JS()
@staticInterop
class PeriodicSyncEvent implements ExtendableEvent {
  external PeriodicSyncEvent(String type, PeriodicSyncEventInit init);
}

extension PropsPeriodicSyncEvent on PeriodicSyncEvent {
  ///  Returns the developer-defined identifier for this
  /// [PeriodicSyncEvent]. Multiple tags can be used by the web app to
  /// run different periodic tasks at different frequencies.
  ///
  String get tag => js_util.getProperty(this, 'tag');
}
