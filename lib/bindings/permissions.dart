/// Permissions
///
/// https://w3c.github.io/permissions/
@JS('window')
@staticInterop
library permissions;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
permissions */

@anonymous
@JS()
@staticInterop
class PermissionDescriptor {
  external factory PermissionDescriptor({PermissionName name});
}

extension PropsPermissionDescriptor on PermissionDescriptor {
  PermissionName get name => js_util.getProperty(this, 'name');
  set name(PermissionName newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum PermissionState { granted, denied, prompt }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Permissions API provides the state of an
/// object and an event handler for monitoring changes to said state.
@experimental
@JS()
@staticInterop
class PermissionStatus implements EventTarget {
  external PermissionStatus();
}

extension PropsPermissionStatus on PermissionStatus {
  ///  Returns the state of a requested permission; one of ['granted'],
  /// ['denied'], or ['prompt'].
  ///
  PermissionState get state => js_util.getProperty(this, 'state');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The Permissions interface of the Permissions API provides the
/// core Permission API functionality, such as methods for querying
/// and revoking permissions
@experimental
@JS()
@staticInterop
class Permissions {
  external Permissions();
}

extension PropsPermissions on Permissions {
  /// Returns the user permission status for a given API.
  ///
  /// navigator.permissions.query(PermissionDescriptor).then(function(permissionStatus) { /* ... */ })
  ///
  /// navigator.permissions.query({name:'geolocation'}).then(function(result) {
  ///  if (result.state == 'granted') {
  ///   showLocalNewsWithGeolocation();
  ///  } else if (result.state == 'prompt') {
  ///   showButtonToEnableLocalNews();
  ///  }
  ///  // Don't do anything if the permission was denied.
  /// });
  ///
  Promise<PermissionStatus> query(dynamic permissionDesc) =>
      js_util.callMethod(this, 'query', [permissionDesc]);

  Promise<PermissionStatus> request(dynamic permissionDesc) =>
      js_util.callMethod(this, 'request', [permissionDesc]);

  Promise<PermissionStatus> revoke(dynamic permissionDesc) =>
      js_util.callMethod(this, 'revoke', [permissionDesc]);
}

@anonymous
@JS()
@staticInterop
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor({bool userVisibleOnly = false});
}

extension PropsPushPermissionDescriptor on PushPermissionDescriptor {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  set userVisibleOnly(bool newValue) {
    js_util.setProperty(this, 'userVisibleOnly', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MidiPermissionDescriptor implements PermissionDescriptor {
  external factory MidiPermissionDescriptor({bool sysex = false});
}

extension PropsMidiPermissionDescriptor on MidiPermissionDescriptor {
  bool get sysex => js_util.getProperty(this, 'sysex');
  set sysex(bool newValue) {
    js_util.setProperty(this, 'sysex', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DevicePermissionDescriptor implements PermissionDescriptor {
  external factory DevicePermissionDescriptor({String deviceId});
}

extension PropsDevicePermissionDescriptor on DevicePermissionDescriptor {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CameraDevicePermissionDescriptor implements DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor({bool panTiltZoom = false});
}

extension PropsCameraDevicePermissionDescriptor
    on CameraDevicePermissionDescriptor {
  bool get panTiltZoom => js_util.getProperty(this, 'panTiltZoom');
  set panTiltZoom(bool newValue) {
    js_util.setProperty(this, 'panTiltZoom', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PermissionSetParameters {
  external factory PermissionSetParameters(
      {PermissionDescriptor descriptor,
      PermissionState state,
      bool oneRealm = false});
}

extension PropsPermissionSetParameters on PermissionSetParameters {
  PermissionDescriptor get descriptor =>
      js_util.getProperty(this, 'descriptor');
  set descriptor(PermissionDescriptor newValue) {
    js_util.setProperty(this, 'descriptor', newValue);
  }

  PermissionState get state => js_util.getProperty(this, 'state');
  set state(PermissionState newValue) {
    js_util.setProperty(this, 'state', newValue);
  }

  bool get oneRealm => js_util.getProperty(this, 'oneRealm');
  set oneRealm(bool newValue) {
    js_util.setProperty(this, 'oneRealm', newValue);
  }
}

enum PermissionName {
  accelerometer,
  ambientLightSensor,
  backgroundFetch,
  backgroundSync,
  bluetooth,
  camera,
  clipboardWrite,
  deviceInfo,
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
  speakerSelection
}
