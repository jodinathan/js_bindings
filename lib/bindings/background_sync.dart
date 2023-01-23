/// Web Background Synchronization
///
/// https://wicg.github.io/background-sync/spec/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library background_sync;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the ServiceWorker API provides an interface for
/// registering and listing sync registrations.
@experimental
@JS()
@staticInterop
class SyncManager {
  external factory SyncManager();
}

extension PropsSyncManager on SyncManager {
  Future<void> register(String tag) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'register', [tag]));

  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
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
///    SyncEvent
///
///
@experimental
@JS()
@staticInterop
class SyncEvent implements ExtendableEvent {
  external factory SyncEvent(String type, SyncEventInit init);
}

extension PropsSyncEvent on SyncEvent {
  String get tag => js_util.getProperty(this, 'tag');
  bool get lastChance => js_util.getProperty(this, 'lastChance');
}

@anonymous
@JS()
@staticInterop
class SyncEventInit implements ExtendableEventInit {
  external factory SyncEventInit(
      {required String tag, bool? lastChance = false});
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
