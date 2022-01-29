/// Storage Standard
///
/// https://storage.spec.whatwg.org/
@JS('window')
@staticInterop
library storage;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: file_system_access */

@JS()
@staticInterop
class NavigatorStorage {
  external NavigatorStorage();
}

extension PropsNavigatorStorage on NavigatorStorage {
  StorageManager get storage => js_util.getProperty(this, 'storage');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Storage API provides an interface for
/// managing persistance permissions and estimating available
/// storage. You can get a reference to this interface using either
/// [navigator.storage] or [WorkerNavigator.storage].
@JS()
@staticInterop
class StorageManager {
  external StorageManager();
}

extension PropsStorageManager on StorageManager {
  ///  Returns a [Promise] that resolves to [true] if persistence has
  /// already been granted for your site's storage.
  ///
  /// navigator.storage.persisted().then(function(persistent) { /* ... */ })
  ///
  /// if (navigator.storage && navigator.storage.persist)
  ///  navigator.storage.persisted().then(function(persistent) {
  ///   if (persistent)
  ///    console.log("Storage will not be cleared except by explicit user action");
  ///   else
  ///    console.log("Storage may be cleared by the UA under storage pressure.");
  ///  });
  ///
  Promise<bool> persisted() => js_util.callMethod(this, 'persisted', []);

  ///  Returns a [Promise] that resolves to [true] if the user agent is
  /// able to persist your site's storage.
  ///
  /// navigator.storage.persist().then(function(persistent) { /* ... */ })
  ///
  /// if (navigator.storage && navigator.storage.persist)
  ///  navigator.storage.persist().then(function(persistent) {
  ///   if (persistent)
  ///    console.log("Storage will not be cleared except by explicit user action");
  ///   else
  ///    console.log("Storage may be cleared by the UA under storage pressure.");
  ///  });
  ///
  Promise<bool> persist() => js_util.callMethod(this, 'persist', []);

  ///  Returns a [Promise] that resolves to an object containing usage
  /// and quota numbers for your origin.
  ///
  /// const estimatePromise = StorageManager.estimate();
  ///
  /// In this example, we obtain the usage estimates and present the percentage of storage capacity currently used to the user.
  Promise<StorageEstimate> estimate() =>
      js_util.callMethod(this, 'estimate', []);

  Promise<FileSystemDirectoryHandle> getDirectory() =>
      js_util.callMethod(this, 'getDirectory', []);
}

@anonymous
@JS()
@staticInterop
class StorageEstimate {
  external factory StorageEstimate({int usage, int quota});
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
