/// Permissions
///
/// https://w3c.github.io/permissions/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library permissions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Permissions {
  external Permissions();
}

extension PropsPermissions on Permissions {
  Future<PermissionStatus> query(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'query', [permissionDesc]));

  Future<PermissionStatus> request(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'request', [permissionDesc]));

  Future<PermissionStatus> revoke(dynamic permissionDesc) => js_util
      .promiseToFuture(js_util.callMethod(this, 'revoke', [permissionDesc]));
}

@anonymous
@JS()
@staticInterop
class PermissionDescriptor {
  external factory PermissionDescriptor._({required String name});

  factory PermissionDescriptor({required PermissionName name}) =>
      PermissionDescriptor._(name: name.name);
}

extension PropsPermissionDescriptor on PermissionDescriptor {
  PermissionName get name =>
      PermissionName.values.byName(js_util.getProperty(this, 'name'));
  set name(PermissionName newValue) {
    js_util.setProperty(this, 'name', newValue.name);
  }
}

@JS()
@staticInterop
class PermissionStatus implements EventTarget {
  external PermissionStatus();
}

extension PropsPermissionStatus on PermissionStatus {
  PermissionState get state =>
      PermissionState.values.byName(js_util.getProperty(this, 'state'));
  PermissionName get name =>
      PermissionName.values.byName(js_util.getProperty(this, 'name'));
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum PermissionState { granted, denied, prompt }

enum PermissionName {
  accelerometer,
  ambientLightSensor,
  backgroundFetch,
  backgroundSync,
  bluetooth,
  camera,
  displayCapture,
  geolocation,
  gyroscope,
  magnetometer,
  microphone,
  midi,
  nfc,
  notifications,
  persistentStorage,
  push,
  screenWakeLock,
  speakerSelection,
  xrSpatialTracking
}
