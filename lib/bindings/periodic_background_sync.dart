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

@JS()
@staticInterop
class PeriodicSyncManager {
  external PeriodicSyncManager();
}

extension PropsPeriodicSyncManager on PeriodicSyncManager {
  Future<Object> register(String tag, [BackgroundSyncOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'register', [tag, options]));

  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));

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

@JS()
@staticInterop
class PeriodicSyncEvent implements ExtendableEvent {
  external PeriodicSyncEvent(String type, PeriodicSyncEventInit init);
}

extension PropsPeriodicSyncEvent on PeriodicSyncEvent {
  String get tag => js_util.getProperty(this, 'tag');
}
