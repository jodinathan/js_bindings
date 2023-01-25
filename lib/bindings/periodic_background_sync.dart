/// Web Periodic Background Synchronization
///
/// https://wicg.github.io/periodic-background-sync/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library periodic_background_sync;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to register tasks to be run in a service
/// worker at periodic intervals with network connectivity. These
/// tasks are referred to as periodic background sync requests.
/// Access through the [ServiceWorkerRegistration.periodicSync].
@experimental
@JS()
@staticInterop
class PeriodicSyncManager {
  external factory PeriodicSyncManager();
}

extension PropsPeriodicSyncManager on PeriodicSyncManager {
  Future<void> register(String tag, [BackgroundSyncOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'register', [tag, options]));

  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));

  Future<void> unregister(String tag) =>
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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the [Web Periodic Background Synchronization
/// API] provides a way to run tasks in the service worker with
/// network connectivity.
///  An instance of this event is passed to the [periodicsync]
/// handler. This happens periodically, at an interval greater than
/// or equal to that set in the [PeriodicSyncManager.register()]
/// method. Other implementation-specific factors such as the user's
/// engagement with the site decide the actual interval.
///
///
///
///    Event
///
///
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
///
///
///    PeriodicSyncEvent
///
///
@experimental
@JS()
@staticInterop
class PeriodicSyncEvent implements ExtendableEvent {
  external factory PeriodicSyncEvent(String type, PeriodicSyncEventInit init);
}

extension PropsPeriodicSyncEvent on PeriodicSyncEvent {
  String get tag => js_util.getProperty(this, 'tag');
}
