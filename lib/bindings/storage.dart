/// Storage Standard
///
/// https://storage.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library storage;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorStorage {
  external NavigatorStorage();
}

extension PropsNavigatorStorage on NavigatorStorage {
  StorageManager get storage => js_util.getProperty(this, 'storage');
}

@JS()
@staticInterop
class StorageManager {
  external StorageManager();
}

extension PropsStorageManager on StorageManager {
  Future<bool> persisted() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'persisted', []));

  Future<bool> persist() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'persist', []));

  Future<StorageEstimate> estimate() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'estimate', []));

  Future<FileSystemDirectoryHandle> getDirectory() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDirectory', []));
}

@anonymous
@JS()
@staticInterop
class StorageEstimate {
  external factory StorageEstimate({required int usage, required int quota});
}

extension PropsStorageEstimate on StorageEstimate {
  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  int get quota => js_util.getProperty(this, 'quota');
  set quota(int newValue) {
    js_util.setProperty(this, 'quota', newValue);
  }
}
