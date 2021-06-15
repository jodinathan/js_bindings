/// Permissions
///
/// https://w3c.github.io/permissions/
@JS('window')
library permissions;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

@anonymous
@JS()
class PermissionDescriptor {
  external PermissionName get name;
  external set name(PermissionName newValue);

  external factory PermissionDescriptor({PermissionName name});
}

@JS()
enum PermissionState { granted, denied, prompt }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Permissions API provides the state of an
/// object and an event handler for monitoring changes to said state.
@experimental
@JS()
class PermissionStatus // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns the state of a requested permission; one of ['granted'],
  /// ['denied'], or ['prompt'].
  external PermissionState get state;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory PermissionStatus();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The Permissions interface of the Permissions API provides the
/// core Permission API functionality, such as methods for querying
/// and revoking permissions
@experimental
@JS()
class Permissions {
  /// Returns the user permission status for a given API.
  /// navigator.permissions.query(PermissionDescriptor).then(function(permissionStatus) { ... })
  /// navigator.permissions.query({name:'geolocation'}).then(function(result) {
  ///  if (result.state == 'granted') {
  ///   showLocalNewsWithGeolocation();
  ///  } else if (result.state == 'prompt') {
  ///   showButtonToEnableLocalNews();
  ///  }
  ///  // Don't do anything if the permission was denied.
  /// });
  external Promise<PermissionStatus> query(dynamic permissionDesc);
  external Promise<PermissionStatus> request(dynamic permissionDesc);
  external Promise<PermissionStatus> revoke(dynamic permissionDesc);

  external factory Permissions();
}

@anonymous
@JS()
class PushPermissionDescriptor // null -> {} -> PermissionDescriptor
    with
        PermissionDescriptor {
  external bool get userVisibleOnly;
  external set userVisibleOnly(bool newValue);

  external factory PushPermissionDescriptor({bool userVisibleOnly = false});
}

@anonymous
@JS()
class MidiPermissionDescriptor // null -> {} -> PermissionDescriptor
    with
        PermissionDescriptor {
  external bool get sysex;
  external set sysex(bool newValue);

  external factory MidiPermissionDescriptor({bool sysex = false});
}

@anonymous
@JS()
class DevicePermissionDescriptor // null -> {} -> PermissionDescriptor
    with
        PermissionDescriptor {
  external String get deviceId;
  external set deviceId(String newValue);

  external factory DevicePermissionDescriptor({String deviceId});
}

@anonymous
@JS()
class CameraDevicePermissionDescriptor // PermissionDescriptor -> {} -> DevicePermissionDescriptor
    extends DevicePermissionDescriptor {
  external bool get panTiltZoom;
  external set panTiltZoom(bool newValue);

  external factory CameraDevicePermissionDescriptor({bool panTiltZoom = false});
}

@anonymous
@JS()
class PermissionSetParameters {
  external PermissionDescriptor get descriptor;
  external set descriptor(PermissionDescriptor newValue);
  external PermissionState get state;
  external set state(PermissionState newValue);
  external bool get oneRealm;
  external set oneRealm(bool newValue);

  external factory PermissionSetParameters(
      {PermissionDescriptor descriptor,
      PermissionState state,
      bool oneRealm = false});
}

@JS()
enum PermissionName {
  accelerometer,
  @JS('ambient-light-sensor')
  ambientLightSensor,
  @JS('background-fetch')
  backgroundFetch,
  @JS('background-sync')
  backgroundSync,
  bluetooth,
  camera,
  @JS('clipboard-write')
  clipboardWrite,
  @JS('device-info')
  deviceInfo,
  @JS('display-capture')
  displayCapture,
  geolocation,
  gyroscope,
  magnetometer,
  microphone,
  midi,
  nfc,
  notifications,
  @JS('persistent-storage')
  persistentStorage,
  push,
  @JS('speaker-selection')
  speakerSelection
}
