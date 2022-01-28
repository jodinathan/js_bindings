/// Permissions
///
/// https://w3c.github.io/permissions/
@JS('window')
@staticInterop
library permissions;

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
  external PermissionName get name;
  external set name(PermissionName newValue);
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
  external factory PermissionStatus();
}

extension PropsPermissionStatus on PermissionStatus {
  ///  Returns the state of a requested permission; one of ['granted'],
  /// ['denied'], or ['prompt'].
  ///
  external PermissionState get state;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
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
  external factory Permissions();
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
  external Promise<PermissionStatus> query(dynamic permissionDesc);
  external Promise<PermissionStatus> request(dynamic permissionDesc);
  external Promise<PermissionStatus> revoke(dynamic permissionDesc);
}

@anonymous
@JS()
@staticInterop
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor({bool userVisibleOnly = false});
}

extension PropsPushPermissionDescriptor on PushPermissionDescriptor {
  external bool get userVisibleOnly;
  external set userVisibleOnly(bool newValue);
}

@anonymous
@JS()
@staticInterop
class MidiPermissionDescriptor implements PermissionDescriptor {
  external factory MidiPermissionDescriptor({bool sysex = false});
}

extension PropsMidiPermissionDescriptor on MidiPermissionDescriptor {
  external bool get sysex;
  external set sysex(bool newValue);
}

@anonymous
@JS()
@staticInterop
class DevicePermissionDescriptor implements PermissionDescriptor {
  external factory DevicePermissionDescriptor({String deviceId});
}

extension PropsDevicePermissionDescriptor on DevicePermissionDescriptor {
  external String get deviceId;
  external set deviceId(String newValue);
}

@anonymous
@JS()
@staticInterop
class CameraDevicePermissionDescriptor implements DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor({bool panTiltZoom = false});
}

extension PropsCameraDevicePermissionDescriptor
    on CameraDevicePermissionDescriptor {
  external bool get panTiltZoom;
  external set panTiltZoom(bool newValue);
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
  external PermissionDescriptor get descriptor;
  external set descriptor(PermissionDescriptor newValue);
  external PermissionState get state;
  external set state(PermissionState newValue);
  external bool get oneRealm;
  external set oneRealm(bool newValue);
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
