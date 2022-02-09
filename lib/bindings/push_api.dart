/// Push API
///
/// https://w3c.github.io/push-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library push_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor({bool? userVisibleOnly = false});
}

extension PropsPushPermissionDescriptor on PushPermissionDescriptor {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  set userVisibleOnly(bool newValue) {
    js_util.setProperty(this, 'userVisibleOnly', newValue);
  }
}

@JS()
@staticInterop
class PushManager {
  external PushManager();
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

@JS()
@staticInterop
class PushSubscriptionOptions {
  external PushSubscriptionOptions();
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
  external factory PushSubscriptionOptionsInit(
      {bool? userVisibleOnly = false, dynamic applicationServerKey});
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

@JS()
@staticInterop
class PushSubscription {
  external PushSubscription();
}

extension PropsPushSubscription on PushSubscription {
  String get endpoint => js_util.getProperty(this, 'endpoint');
  int? get expirationTime => js_util.getProperty(this, 'expirationTime');
  PushSubscriptionOptions get options => js_util.getProperty(this, 'options');
  ByteBuffer? getKey(PushEncryptionKeyName name) =>
      js_util.callMethod(this, 'getKey', [name.name]);

  Future<bool> unsubscribe() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unsubscribe', []));

  PushSubscriptionJSON toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON(
      {required String endpoint, int? expirationTime, dynamic keys});
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

enum PushEncryptionKeyName { p256dh, auth }

@JS()
@staticInterop
class PushMessageData {
  external PushMessageData();
}

extension PropsPushMessageData on PushMessageData {
  ByteBuffer arrayBuffer() => js_util.callMethod(this, 'arrayBuffer', []);

  Blob blob() => js_util.callMethod(this, 'blob', []);

  dynamic json() => js_util.callMethod(this, 'json', []);

  String text() => js_util.callMethod(this, 'text', []);
}

@JS()
@staticInterop
class PushEvent implements ExtendableEvent {
  external PushEvent(String type, [PushEventInit? eventInitDict]);
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
  external PushSubscriptionChangeEvent(String type,
      [PushSubscriptionChangeEventInit? eventInitDict]);
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
      {required PushSubscription newSubscription,
      required PushSubscription oldSubscription});
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
