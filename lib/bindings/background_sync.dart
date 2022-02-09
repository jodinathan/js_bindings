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

@JS()
@staticInterop
class SyncManager {
  external SyncManager();
}

extension PropsSyncManager on SyncManager {
  Future<Object> register(String tag) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'register', [tag]));

  Future<Iterable<String>> getTags() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getTags', []));
}

@JS()
@staticInterop
class SyncEvent implements ExtendableEvent {
  external SyncEvent(String type, SyncEventInit init);
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
