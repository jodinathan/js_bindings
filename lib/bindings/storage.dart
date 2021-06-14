/// Storage Standard
///
/// https://storage.spec.whatwg.org/
@JS('window')
library storage;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'file_system_access.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The mixin adds to the [Navigator] and [WorkerNavigator]
/// interfaces the [Navigator.storage] property, which provides
/// access to the [StorageManager] singleton used for controlling the
/// persistence of data stores as well as obtaining information
///  Note: This feature is available in Web Workers
///  There are many APIs which provide ways for Web content to store
/// data on a user's computer, including cookies, the Web Storage API
/// ([Window.localStorage] and [Window.sessionStorage]), and
/// IndexedDB. The Storage Standard is designed to serve as a common
/// basis for the implementation of all of those APIs and storage
/// technologies, so that their constraints and configurations can be
/// understood and controlled using a common set of methods and
/// properties.
@JS()
mixin NavigatorStorage {
  ///  Returns the [StorageManager] singleton object which is used to
  /// access the Storage Manager. Through the returned object, you can
  /// control persistence of data stores as well as get estimates of
  /// how much space is left for your site or appliation to store data.
  external StorageManager get storage;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Storage API provides an interface for
/// managing persistance permissions and estimating available
/// storage. You can get a reference to this interface using either
/// [navigator.storage] or [WorkerNavigator.storage].
@JS()
class StorageManager {
  ///  Returns a [Promise] that resolves to [true] if persistence has
  /// already been granted for your site's storage.
  /// navigator.storage.persisted().then(function(persistent) { ... })
  /// if (navigator.storage && navigator.storage.persist)
  ///  navigator.storage.persisted().then(function(persistent) {
  ///   if (persistent)
  ///    console.log("Storage will not be cleared except by explicit user action");
  ///   else
  ///    console.log("Storage may be cleared by the UA under storage pressure.");
  ///  });
  external Promise<bool> persisted();

  ///  Returns a [Promise] that resolves to [true] if the user agent is
  /// able to persist your site's storage.
  /// navigator.storage.persist().then(function(persistent) { ... })
  /// if (navigator.storage && navigator.storage.persist)
  ///  navigator.storage.persist().then(function(persistent) {
  ///   if (persistent)
  ///    console.log("Storage will not be cleared except by explicit user action");
  ///   else
  ///    console.log("Storage may be cleared by the UA under storage pressure.");
  ///  });
  external Promise<bool> persist();

  ///  Returns a [Promise] that resolves to a [StorageEstimate] object
  /// containing usage and quota numbers for your origin.
  /// const estimatePromise = StorageManager.estimate();
  /// In this example, we obtain the usage estimates and present the percentage of storage capacity currently used to the user.
  external Promise<StorageEstimate> estimate();
  external Promise<FileSystemDirectoryHandle> getDirectory();

  external factory StorageManager();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The dictionary is used by the [StorageManager] to provide
/// estimates of the size of a site's or application's data store and
/// how much of it is in use. The [estimate()] method returns an
/// object that conforms to this dictionary when its [Promise]
/// resolves.
///
///  These values are only estimates for several reasons, including
/// both performance and preventing storage capacity data from being
/// used for fingerprinting purposes. See the individual property
/// pages for details.
@anonymous
@JS()
class StorageEstimate {
  ///  A numeric value in bytes approximating the amount of storage
  /// space currently being used by the site or Web app, out of the
  /// available space as indicated by [quota]. Unit is byte.
  external int get usage;
  external set usage(int newValue);

  ///  A numeric value in bytes which provides a conservative
  /// approximation of the total storage the user's device or computer
  /// has available for the site origin or Web app. It's possible that
  /// there's more than this amount of space available though you can't
  /// rely on that being the case.
  external int get quota;
  external set quota(int newValue);

  external factory StorageEstimate({int usage, int quota});
}
