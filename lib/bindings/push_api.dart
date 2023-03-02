/// Push API
///
/// https://w3c.github.io/push-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library push_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor._({bool? userVisibleOnly});

  factory PushPermissionDescriptor({bool? userVisibleOnly}) =>
      PushPermissionDescriptor._(userVisibleOnly: userVisibleOnly ?? false);
}

extension PropsPushPermissionDescriptor on PushPermissionDescriptor {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  set userVisibleOnly(bool newValue) {
    js_util.setProperty(this, 'userVisibleOnly', newValue);
  }
}

///  The interface of the Push API provides a way to receive
/// notifications from third-party servers as well as request URLs
/// for push notifications.
///  This interface is accessed via the
/// [ServiceWorkerRegistration.pushManager] property.
@experimental
@JS()
@staticInterop
class PushManager {
  external factory PushManager();
}

extension PropsPushManager on PushManager {
  external static Iterable<String> get supportedContentEncodings;

  Future<PushSubscription> subscribe([PushSubscriptionOptionsInit? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'subscribe', [options]));

  Future<PushSubscription> getSubscription() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSubscription', []));

  Future<PermissionState> permissionState(
          [PushSubscriptionOptionsInit? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'permissionState', [options]));
}

///  The interface of the Push API represents the options associated
/// with a push subscription.
///  The read-only object is returned by calling
/// [PushSubscription.options] on a [PushSubscription]. This
/// interface has no constructor of its own.
@JS()
@staticInterop
class PushSubscriptionOptions {
  external factory PushSubscriptionOptions();
}

extension PropsPushSubscriptionOptions on PushSubscriptionOptions {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  ByteBuffer? get applicationServerKey =>
      js_util.getProperty(this, 'applicationServerKey');
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit._(
      {bool? userVisibleOnly, dynamic applicationServerKey});

  factory PushSubscriptionOptionsInit(
          {bool? userVisibleOnly, dynamic applicationServerKey}) =>
      PushSubscriptionOptionsInit._(
          userVisibleOnly: userVisibleOnly ?? false,
          applicationServerKey: applicationServerKey ?? undefined);
}

extension PropsPushSubscriptionOptionsInit on PushSubscriptionOptionsInit {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  set userVisibleOnly(bool newValue) {
    js_util.setProperty(this, 'userVisibleOnly', newValue);
  }

  dynamic get applicationServerKey =>
      js_util.getProperty(this, 'applicationServerKey');
  set applicationServerKey(dynamic newValue) {
    js_util.setProperty(this, 'applicationServerKey', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API provides a subcription's URL
/// endpoint and allows unsubscription from a push service.
/// An instance of this interface can be serialized.
@experimental
@JS()
@staticInterop
class PushSubscription {
  external factory PushSubscription();
}

extension PropsPushSubscription on PushSubscription {
  String get endpoint => js_util.getProperty(this, 'endpoint');
  int? get expirationTime => js_util.getProperty(this, 'expirationTime');
  PushSubscriptionOptions get options => js_util.getProperty(this, 'options');
  ByteBuffer? getKey(PushEncryptionKeyName name) =>
      js_util.callMethod(this, 'getKey', [name.value]);

  Future<bool> unsubscribe() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unsubscribe', []));

  PushSubscriptionJSON toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON(
      {String? endpoint, int? expirationTime, dynamic keys});
}

extension PropsPushSubscriptionJSON on PushSubscriptionJSON {
  String get endpoint => js_util.getProperty(this, 'endpoint');
  set endpoint(String newValue) {
    js_util.setProperty(this, 'endpoint', newValue);
  }

  int? get expirationTime => js_util.getProperty(this, 'expirationTime');
  set expirationTime(int? newValue) {
    js_util.setProperty(this, 'expirationTime', newValue);
  }

  dynamic get keys => js_util.getProperty(this, 'keys');
  set keys(dynamic newValue) {
    js_util.setProperty(this, 'keys', newValue);
  }
}

enum PushEncryptionKeyName {
  p256dh('p256dh'),
  auth('auth');

  final String value;
  static PushEncryptionKeyName fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PushEncryptionKeyName> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PushEncryptionKeyName(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API provides methods which let you
/// retrieve the push data sent by a server in various formats.
///  Unlike the similar methods in the Fetch API, which only allow
/// the method to be invoked once, these methods can be called
/// multiple times.
///  Messages received through the Push API are sent encrypted by
/// push services and then automatically decrypted by browsers before
/// they are made accessible through the methods of the interface.
@experimental
@JS()
@staticInterop
class PushMessageData {
  external factory PushMessageData();
}

extension PropsPushMessageData on PushMessageData {
  ByteBuffer arrayBuffer() => js_util.callMethod(this, 'arrayBuffer', []);

  Blob blob() => js_util.callMethod(this, 'blob', []);

  dynamic json() => js_util.callMethod(this, 'json', []);

  String text() => js_util.callMethod(this, 'text', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API represents a push message that has
/// been received. This event is sent to the global scope of a
/// [ServiceWorker]. It contains the information sent from an
/// application server to a [PushSubscription].
///
///
///
///    Event
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
///    PushEvent
///
///
@JS()
@staticInterop
class PushEvent implements ExtendableEvent {
  external factory PushEvent._(String type, [PushEventInit? eventInitDict]);

  factory PushEvent(String type, [PushEventInit? eventInitDict]) =>
      PushEvent._(type, eventInitDict ?? undefined);
}

extension PropsPushEvent on PushEvent {
  PushMessageData? get data => js_util.getProperty(this, 'data');
}

@anonymous
@JS()
@staticInterop
class PushEventInit implements ExtendableEventInit {
  external factory PushEventInit({dynamic data});
}

extension PropsPushEventInit on PushEventInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@JS()
@staticInterop
class PushSubscriptionChangeEvent implements ExtendableEvent {
  external factory PushSubscriptionChangeEvent._(String type,
      [PushSubscriptionChangeEventInit? eventInitDict]);

  factory PushSubscriptionChangeEvent(String type,
          [PushSubscriptionChangeEventInit? eventInitDict]) =>
      PushSubscriptionChangeEvent._(type, eventInitDict ?? undefined);
}

extension PropsPushSubscriptionChangeEvent on PushSubscriptionChangeEvent {
  PushSubscription? get newSubscription =>
      js_util.getProperty(this, 'newSubscription');
  PushSubscription? get oldSubscription =>
      js_util.getProperty(this, 'oldSubscription');
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionChangeEventInit implements ExtendableEventInit {
  external factory PushSubscriptionChangeEventInit(
      {PushSubscription? newSubscription, PushSubscription? oldSubscription});
}

extension PropsPushSubscriptionChangeEventInit
    on PushSubscriptionChangeEventInit {
  PushSubscription get newSubscription =>
      js_util.getProperty(this, 'newSubscription');
  set newSubscription(PushSubscription newValue) {
    js_util.setProperty(this, 'newSubscription', newValue);
  }

  PushSubscription get oldSubscription =>
      js_util.getProperty(this, 'oldSubscription');
  set oldSubscription(PushSubscription newValue) {
    js_util.setProperty(this, 'oldSubscription', newValue);
  }
}
