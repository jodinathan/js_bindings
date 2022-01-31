/// Web Bluetooth
///
/// https://webbluetoothcg.github.io/web-bluetooth/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_bluetooth;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class BluetoothDataFilterInit {
  external factory BluetoothDataFilterInit({dynamic dataPrefix, dynamic mask});
}

extension PropsBluetoothDataFilterInit on BluetoothDataFilterInit {
  dynamic get dataPrefix => js_util.getProperty(this, 'dataPrefix');
  set dataPrefix(dynamic newValue) {
    js_util.setProperty(this, 'dataPrefix', newValue);
  }

  dynamic get mask => js_util.getProperty(this, 'mask');
  set mask(dynamic newValue) {
    js_util.setProperty(this, 'mask', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BluetoothManufacturerDataFilterInit implements BluetoothDataFilterInit {
  external factory BluetoothManufacturerDataFilterInit({int companyIdentifier});
}

extension PropsBluetoothManufacturerDataFilterInit
    on BluetoothManufacturerDataFilterInit {
  int get companyIdentifier => js_util.getProperty(this, 'companyIdentifier');
  set companyIdentifier(int newValue) {
    js_util.setProperty(this, 'companyIdentifier', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BluetoothServiceDataFilterInit implements BluetoothDataFilterInit {
  external factory BluetoothServiceDataFilterInit({dynamic service});
}

extension PropsBluetoothServiceDataFilterInit
    on BluetoothServiceDataFilterInit {
  dynamic get service => js_util.getProperty(this, 'service');
  set service(dynamic newValue) {
    js_util.setProperty(this, 'service', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BluetoothLEScanFilterInit {
  external factory BluetoothLEScanFilterInit(
      {Iterable<dynamic> services,
      String name,
      String namePrefix,
      Iterable<BluetoothManufacturerDataFilterInit> manufacturerData,
      Iterable<BluetoothServiceDataFilterInit> serviceData});
}

extension PropsBluetoothLEScanFilterInit on BluetoothLEScanFilterInit {
  Iterable<dynamic> get services => js_util.getProperty(this, 'services');
  set services(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'services', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get namePrefix => js_util.getProperty(this, 'namePrefix');
  set namePrefix(String newValue) {
    js_util.setProperty(this, 'namePrefix', newValue);
  }

  Iterable<BluetoothManufacturerDataFilterInit> get manufacturerData =>
      js_util.getProperty(this, 'manufacturerData');
  set manufacturerData(Iterable<BluetoothManufacturerDataFilterInit> newValue) {
    js_util.setProperty(this, 'manufacturerData', newValue);
  }

  Iterable<BluetoothServiceDataFilterInit> get serviceData =>
      js_util.getProperty(this, 'serviceData');
  set serviceData(Iterable<BluetoothServiceDataFilterInit> newValue) {
    js_util.setProperty(this, 'serviceData', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RequestDeviceOptions {
  external factory RequestDeviceOptions(
      {Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic> optionalServices = const [],
      Iterable<int>? optionalManufacturerData = const [],
      bool? acceptAllDevices = false});
}

extension PropsRequestDeviceOptions on RequestDeviceOptions {
  Iterable<BluetoothLEScanFilterInit> get filters =>
      js_util.getProperty(this, 'filters');
  set filters(Iterable<BluetoothLEScanFilterInit> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }

  Iterable<dynamic> get optionalServices =>
      js_util.getProperty(this, 'optionalServices');
  set optionalServices(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'optionalServices', newValue);
  }

  Iterable<int> get optionalManufacturerData =>
      js_util.getProperty(this, 'optionalManufacturerData');
  set optionalManufacturerData(Iterable<int> newValue) {
    js_util.setProperty(this, 'optionalManufacturerData', newValue);
  }

  bool get acceptAllDevices => js_util.getProperty(this, 'acceptAllDevices');
  set acceptAllDevices(bool newValue) {
    js_util.setProperty(this, 'acceptAllDevices', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///
///  The interface of the Web Bluetooth API returns a
///  [Future] to a [BluetoothDevice] object with the specified
///  options.
///
@experimental
@JS()
@staticInterop
class Bluetooth
    implements
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external Bluetooth();
}

extension PropsBluetooth on Bluetooth {
  ///
  ///     Returns a [Future] that resolved to a boolean value
  /// indicating
  ///     whether the user-agent has the ability to support Bluetooth.
  /// Some user-agents let the
  ///     user configure an option that affects what is returned by
  /// this value. If this option
  ///    is set, that is the value returned by this method.
  ///
  ///
  /// var readerPromise = Bluetooth.getAvailability();
  ///
  Future<bool> getAvailability() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAvailability', []));

  EventHandlerNonNull? get onavailabilitychanged =>
      js_util.getProperty(this, 'onavailabilitychanged');
  set onavailabilitychanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onavailabilitychanged', newValue);
  }

  ///
  ///     Returns a reference to the device, if any, from which the
  /// user opened the current
  ///     page. For example, an Eddystone beacon might advertise a URL,
  /// which the user agent
  ///     allows the user to open. A BluetoothDevice representing the
  /// beacon would be available
  ///    through [navigator.bluetooth.referringDevice].
  ///
  ///
  BluetoothDevice? get referringDevice =>
      js_util.getProperty(this, 'referringDevice');

  ///
  ///    Returns a [Future] that resolved to an array of
  ///     [BluetoothDevice]s which the origin already obtained
  /// permission for via a
  ///    call to [Bluetooth.requestDevice()].
  ///
  ///
  /// var readerPromise = Bluetooth.getDevices();
  ///
  Future<Iterable<BluetoothDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  ///
  ///    Returns a [Future] to a [BluetoothDevice] object with the
  ///    specified options.
  ///
  ///
  /// Bluetooth.requestDevice([options])
  ///  .then(function(bluetoothDevice) { /* ... */ })
  ///
  /// // Discovery options match any devices advertising:
  /// // . The standard heart rate service.
  /// // . Both 16-bit service IDs 0x1802 and 0x1803.
  /// // . A proprietary 128-bit UUID service c48e6067-5295-48d3-8d5c-0395f61792b1.
  /// // . Devices with name "ExampleName".
  /// // . Devices with name starting with "Prefix".
  /// //
  /// // And enables access to the battery service if devices
  /// // include it, even if devices do not advertise that service.
  /// let options = {
  ///  filters: [
  ///   {services: ['heart_rate']},
  ///   {services: [0x1802, 0x1803]},
  ///   {services: ['c48e6067-5295-48d3-8d5c-0395f61792b1']},
  ///   {name: 'ExampleName'},
  ///   {namePrefix: 'Prefix'}
  ///  ],
  ///  optionalServices: ['battery_service']
  /// }
  ///
  /// navigator.bluetooth.requestDevice(options).then(function(device) {
  ///  console.log('Name: ' + device.name);
  ///  // Do something with the device.
  /// })
  /// .catch(function(error) {
  ///  console.log("Something went wrong. " + error);
  /// });
  ///
  /// Detailed
  /// examples are in the specification.
  Future<BluetoothDevice> requestDevice([RequestDeviceOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class BluetoothPermissionDescriptor implements PermissionDescriptor {
  external factory BluetoothPermissionDescriptor(
      {String deviceId,
      Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic> optionalServices = const [],
      Iterable<int>? optionalManufacturerData = const [],
      bool? acceptAllDevices = false});
}

extension PropsBluetoothPermissionDescriptor on BluetoothPermissionDescriptor {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  Iterable<BluetoothLEScanFilterInit> get filters =>
      js_util.getProperty(this, 'filters');
  set filters(Iterable<BluetoothLEScanFilterInit> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }

  Iterable<dynamic> get optionalServices =>
      js_util.getProperty(this, 'optionalServices');
  set optionalServices(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'optionalServices', newValue);
  }

  Iterable<int> get optionalManufacturerData =>
      js_util.getProperty(this, 'optionalManufacturerData');
  set optionalManufacturerData(Iterable<int> newValue) {
    js_util.setProperty(this, 'optionalManufacturerData', newValue);
  }

  bool get acceptAllDevices => js_util.getProperty(this, 'acceptAllDevices');
  set acceptAllDevices(bool newValue) {
    js_util.setProperty(this, 'acceptAllDevices', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AllowedBluetoothDevice {
  external factory AllowedBluetoothDevice(
      {String deviceId,
      bool mayUseGATT,
      dynamic allowedServices,
      Iterable<int> allowedManufacturerData});
}

extension PropsAllowedBluetoothDevice on AllowedBluetoothDevice {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  bool get mayUseGATT => js_util.getProperty(this, 'mayUseGATT');
  set mayUseGATT(bool newValue) {
    js_util.setProperty(this, 'mayUseGATT', newValue);
  }

  dynamic get allowedServices => js_util.getProperty(this, 'allowedServices');
  set allowedServices(dynamic newValue) {
    js_util.setProperty(this, 'allowedServices', newValue);
  }

  Iterable<int> get allowedManufacturerData =>
      js_util.getProperty(this, 'allowedManufacturerData');
  set allowedManufacturerData(Iterable<int> newValue) {
    js_util.setProperty(this, 'allowedManufacturerData', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BluetoothPermissionStorage {
  external factory BluetoothPermissionStorage(
      {Iterable<AllowedBluetoothDevice> allowedDevices});
}

extension PropsBluetoothPermissionStorage on BluetoothPermissionStorage {
  Iterable<AllowedBluetoothDevice> get allowedDevices =>
      js_util.getProperty(this, 'allowedDevices');
  set allowedDevices(Iterable<AllowedBluetoothDevice> newValue) {
    js_util.setProperty(this, 'allowedDevices', newValue);
  }
}

@JS()
@staticInterop
class BluetoothPermissionResult implements PermissionStatus {
  external BluetoothPermissionResult();
}

extension PropsBluetoothPermissionResult on BluetoothPermissionResult {
  Iterable<BluetoothDevice> get devices => js_util.getProperty(this, 'devices');
  set devices(Iterable<BluetoothDevice> newValue) {
    js_util.setProperty(this, 'devices', newValue);
  }
}

@JS()
@staticInterop
class ValueEvent implements Event {
  external ValueEvent(String type, [ValueEventInit? initDict]);
}

extension PropsValueEvent on ValueEvent {
  dynamic get value => js_util.getProperty(this, 'value');
}

@anonymous
@JS()
@staticInterop
class ValueEventInit implements EventInit {
  external factory ValueEventInit({dynamic value});
}

extension PropsValueEventInit on ValueEventInit {
  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///  The BluetoothDevice interface of the Web Bluetooth
///  API represents a Bluetooth device inside a particular script
/// execution
///  environment.
///
///
///
///
///    EventTarget
///
///
///
///
///
///    BluetoothDevice
///
///
@experimental
@JS()
@staticInterop
class BluetoothDevice
    implements
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external BluetoothDevice();
}

extension PropsBluetoothDevice on BluetoothDevice {
  /// A [String] that uniquely identifies a device.
  ///
  @experimental
  String get id => js_util.getProperty(this, 'id');

  /// A [String] that provides a human-readable name for the device.
  ///
  @experimental
  String? get name => js_util.getProperty(this, 'name');

  /// A reference to the device's [BluetoothRemoteGATTServer].
  ///
  @experimental
  BluetoothRemoteGATTServer? get gatt => js_util.getProperty(this, 'gatt');

  ///
  ///    A [Future] that resolves to [Object] or is rejected with
  ///    an error if advertisements can’t be shown for any reason.
  ///
  ///
  @experimental
  Future<Object> watchAdvertisements([WatchAdvertisementsOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'watchAdvertisements', [options]));

  bool get watchingAdvertisements =>
      js_util.getProperty(this, 'watchingAdvertisements');
}

@anonymous
@JS()
@staticInterop
class WatchAdvertisementsOptions {
  external factory WatchAdvertisementsOptions({AbortSignal signal});
}

extension PropsWatchAdvertisementsOptions on WatchAdvertisementsOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@JS()
@staticInterop
class BluetoothManufacturerDataMap {
  external BluetoothManufacturerDataMap();
}

extension PropsBluetoothManufacturerDataMap on BluetoothManufacturerDataMap {
  ByteData operator [](int index) => js_util.getProperty(this, index);
}

@JS()
@staticInterop
class BluetoothServiceDataMap {
  external BluetoothServiceDataMap();
}

extension PropsBluetoothServiceDataMap on BluetoothServiceDataMap {
  ByteData operator [](String index) => js_util.getProperty(this, index);
}

@JS()
@staticInterop
class BluetoothAdvertisingEvent implements Event {
  external BluetoothAdvertisingEvent(
      String type, BluetoothAdvertisingEventInit init);
}

extension PropsBluetoothAdvertisingEvent on BluetoothAdvertisingEvent {
  BluetoothDevice get device => js_util.getProperty(this, 'device');
  Iterable<String> get uuids => js_util.getProperty(this, 'uuids');
  String? get name => js_util.getProperty(this, 'name');
  int? get appearance => js_util.getProperty(this, 'appearance');
  int? get txPower => js_util.getProperty(this, 'txPower');
  int? get rssi => js_util.getProperty(this, 'rssi');
  BluetoothManufacturerDataMap get manufacturerData =>
      js_util.getProperty(this, 'manufacturerData');
  BluetoothServiceDataMap get serviceData =>
      js_util.getProperty(this, 'serviceData');
}

@anonymous
@JS()
@staticInterop
class BluetoothAdvertisingEventInit implements EventInit {
  external factory BluetoothAdvertisingEventInit(
      {BluetoothDevice device,
      dynamic uuids,
      String name,
      int appearance,
      int txPower,
      int rssi,
      BluetoothManufacturerDataMap manufacturerData,
      BluetoothServiceDataMap serviceData});
}

extension PropsBluetoothAdvertisingEventInit on BluetoothAdvertisingEventInit {
  BluetoothDevice get device => js_util.getProperty(this, 'device');
  set device(BluetoothDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }

  dynamic get uuids => js_util.getProperty(this, 'uuids');
  set uuids(dynamic newValue) {
    js_util.setProperty(this, 'uuids', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  int get appearance => js_util.getProperty(this, 'appearance');
  set appearance(int newValue) {
    js_util.setProperty(this, 'appearance', newValue);
  }

  int get txPower => js_util.getProperty(this, 'txPower');
  set txPower(int newValue) {
    js_util.setProperty(this, 'txPower', newValue);
  }

  int get rssi => js_util.getProperty(this, 'rssi');
  set rssi(int newValue) {
    js_util.setProperty(this, 'rssi', newValue);
  }

  BluetoothManufacturerDataMap get manufacturerData =>
      js_util.getProperty(this, 'manufacturerData');
  set manufacturerData(BluetoothManufacturerDataMap newValue) {
    js_util.setProperty(this, 'manufacturerData', newValue);
  }

  BluetoothServiceDataMap get serviceData =>
      js_util.getProperty(this, 'serviceData');
  set serviceData(BluetoothServiceDataMap newValue) {
    js_util.setProperty(this, 'serviceData', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///  The interface of the Web Bluetooth API represents a GATT
///  Server on a remote device.
///
///    Note: This page describes the W3C Community Group Web
/// Bluetooth API. For the Firefox OS
///   Bluetooth API, see [BluetoothGattServer]
/// (Firefox OS).
///
///
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTServer {
  external BluetoothRemoteGATTServer();
}

extension PropsBluetoothRemoteGATTServer on BluetoothRemoteGATTServer {
  /// A reference to the [BluetoothDevice] running the server.
  ///
  BluetoothDevice get device => js_util.getProperty(this, 'device');

  ///
  ///     A boolean value that returns true while this script execution
  /// environment is
  ///     connected to [this.device]. It can be false while the user
  /// agent is
  ///    physically connected.
  ///
  ///
  bool get connected => js_util.getProperty(this, 'connected');

  ///  Causes the script execution environment to connect to
  /// [this.device].
  ///
  /// BluetoothRemoteGATTServer.connect()
  ///  .then(function(bluetoothRemoteGATTServer) { /* ... */ })
  ///
  Future<BluetoothRemoteGATTServer> connect() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'connect', []));

  ///  Causes the script execution environment to disconnect from
  /// [this.device].
  ///
  /// BluetoothRemoteGATTServer.disconnect()
  ///
  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  ///
  ///     Returns a promise to the primary [BluetoothRemoteGATTService]
  /// offered by the
  ///    bluetooth device for a specified [BluetoothServiceUUID].
  ///
  ///
  /// BluetoothRemoteGATTServer.getPrimaryService(bluetoothServiceUUID).then(function(bluetoothGATTService) { /* ... */ })
  ///
  Future<BluetoothRemoteGATTService> getPrimaryService(dynamic service) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getPrimaryService', [service]));

  ///
  ///     Returns a promise to a list of primary
  /// [BluetoothRemoteGATTService] objects
  ///     offered by the bluetooth device for a specified
  /// [BluetoothServiceUUID].
  ///
  ///
  /// BluetoothRemoteGATTServer.getPrimaryServices(bluetoothServiceUUID).then(function(bluetoothGATTServices) { /* ... */ })
  ///
  Future<Iterable<BluetoothRemoteGATTService>> getPrimaryServices(
          [dynamic service]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getPrimaryServices', [service]));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///
///    Note: This page describes the W3C Community Group
/// BluetoothRemoteGATTService, formerly
///    called BluethoothGATTService. For the Firefox OS interface of
/// the same name,
///   see [BluetoothGattService].
///
///  The interface of the Web Bluetooth API represents a
///   service provided by a GATT server, including a device, a list
/// of referenced services,
///  and a list of the characteristics of this service.
///
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTService
    implements EventTarget, CharacteristicEventHandlers, ServiceEventHandlers {
  external BluetoothRemoteGATTService();
}

extension PropsBluetoothRemoteGATTService on BluetoothRemoteGATTService {
  ///
  ///     Returns information about a Bluetooth device through an
  /// instance of
  ///    [BluetoothDevice].
  ///
  ///
  BluetoothDevice get device => js_util.getProperty(this, 'device');

  /// Returns a [String] representing the UUID of this service.
  ///
  String get uuid => js_util.getProperty(this, 'uuid');

  ///
  ///     Returns a boolean value indicating whether this is a primary
  /// or secondary
  ///    service.
  ///
  ///
  bool get isPrimary => js_util.getProperty(this, 'isPrimary');

  ///
  ///    Returns a [Future] to an instance of
  ///     [BluetoothRemoteGATTCharacteristic] for a given universally
  /// unique identifier
  ///    (UUID).
  ///
  ///
  /// bluetoothGATTServiceInstance.getCharacteristic(characteristic).then(function(BluetoothGATTCharacteristic) { /* ... */ } )
  ///
  Future<BluetoothRemoteGATTCharacteristic> getCharacteristic(
          dynamic characteristic) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getCharacteristic', [characteristic]));

  ///
  ///    Returns a [Future] to an [Array] of
  ///     [BluetoothRemoteGATTCharacteristic] instances for an optional
  /// universally
  ///    unique identifier (UUID).
  ///
  ///
  /// bluetoothGATTServiceInstance.getCharacteristics(characteristics).then(function(BluetoothGATTCharacteristic[]) { /* ... */ } )
  ///
  Future<Iterable<BluetoothRemoteGATTCharacteristic>> getCharacteristics(
          [dynamic characteristic]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getCharacteristics', [characteristic]));

  Future<BluetoothRemoteGATTService> getIncludedService(dynamic service) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getIncludedService', [service]));

  Future<Iterable<BluetoothRemoteGATTService>> getIncludedServices(
          [dynamic service]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getIncludedServices', [service]));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The [BluetoothRemoteGattCharacteristic] interface of the Web
/// Bluetooth API represents a GATT Characteristic, which is a basic
/// data element that provides further information about a
/// peripheral’s service.
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTCharacteristic
    implements EventTarget, CharacteristicEventHandlers {
  external BluetoothRemoteGATTCharacteristic();
}

extension PropsBluetoothRemoteGATTCharacteristic
    on BluetoothRemoteGATTCharacteristic {
  ///  Returns the [BluetoothRemoteGATTService] this characteristic
  /// belongs to.
  ///
  BluetoothRemoteGATTService get service =>
      js_util.getProperty(this, 'service');

  ///  Returns a [String] containing the UUID of the characteristic,
  /// for example ['00002a37-0000-1000-8000-00805f9b34fb'] for the
  /// Heart Rate Measurement characteristic.
  ///
  String get uuid => js_util.getProperty(this, 'uuid');

  /// Returns the properties of this characteristic.
  ///
  BluetoothCharacteristicProperties get properties =>
      js_util.getProperty(this, 'properties');

  ///  The currently cached characteristic value. This value gets
  /// updated when the value of the characteristic is read or updated
  /// via a notification or indication.
  ///
  ByteData? get value => js_util.getProperty(this, 'value');

  ///  Returns a [Future] that resolves to the first
  /// [BluetoothRemoteGATTDescriptor] for a given descriptor UUID.
  ///
  /// BluetoothRemoteGATTCharacteristic.getDescriptor(bluetoothDescriptorUUID).then(function(bluetoothGATTDescriptor) { /* ... */ })
  ///
  Future<BluetoothRemoteGATTDescriptor> getDescriptor(dynamic descriptor) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDescriptor', [descriptor]));

  ///  Returns a [Future] that resolves to an [Array] of all
  /// [BluetoothRemoteGATTDescriptor] objects for a given descriptor
  /// UUID.
  ///
  /// BluetoothRemoteGATTCharacteristic.getDescriptors(bluetoothDescriptorUUID).then(function(bluetoothGATTDescriptors[]) { /* ... */ })
  ///
  Future<Iterable<BluetoothRemoteGATTDescriptor>> getDescriptors(
          [dynamic descriptor]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDescriptors', [descriptor]));

  ///  Returns a [Future] that resolves to an [ArrayBuffer] holding a
  /// duplicate of the [value] property if it is available and
  /// supported. Otherwise it throws an error.
  ///
  /// BluetoothRemoteGATTCharacteristic.readValue().then(function(dataView) { /* ... */ })
  ///
  Future<ByteData> readValue() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readValue', []));

  Future<Object> writeValue(dynamic value) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeValue', [value]));

  Future<Object> writeValueWithResponse(dynamic value) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'writeValueWithResponse', [value]));

  Future<Object> writeValueWithoutResponse(dynamic value) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'writeValueWithoutResponse', [value]));

  ///  Returns a [Future] when [navigator.bluetooth] is added to the
  /// active notification context.
  ///
  /// BluetoothRemoteGATTCharacteristic.startNotifications().then(function(BluetoothRemoteGATTCharacteristic) { /* ... */ })
  ///
  Future<BluetoothRemoteGATTCharacteristic> startNotifications() => js_util
      .promiseToFuture(js_util.callMethod(this, 'startNotifications', []));

  ///  Returns a [Future] when [navigator.bluetooth] is removed from
  /// the active notification context.
  ///
  /// BluetoothRemoteGATTCharacteristic.stopNotifications().then(function(BluetoothRemoteGATTCharacteristic) { /* ... */ })
  ///
  Future<BluetoothRemoteGATTCharacteristic> stopNotifications() => js_util
      .promiseToFuture(js_util.callMethod(this, 'stopNotifications', []));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Bluetooth API provides the operations
/// that are valid on the given [BluetoothRemoteGATTCharacteristic].
///  This interface is returned by calling
/// [BluetoothRemoteGATTCharacteristic.properties].
@experimental
@JS()
@staticInterop
class BluetoothCharacteristicProperties {
  external BluetoothCharacteristicProperties();
}

extension PropsBluetoothCharacteristicProperties
    on BluetoothCharacteristicProperties {
  ///  Returns a [bool] that is [true] if the broadcast of the
  /// characteristic value is permitted using the Server Characteristic
  /// Configuration Descriptor.
  ///
  bool get broadcast => js_util.getProperty(this, 'broadcast');

  ///  Returns a [bool] that is [true] if the reading of the
  /// characteristic value is permitted.
  ///
  bool get read => js_util.getProperty(this, 'read');

  ///  Returns a [bool] that is [true] if the writing to the
  /// characteristic without response is permitted.
  ///
  bool get writeWithoutResponse =>
      js_util.getProperty(this, 'writeWithoutResponse');

  ///  Returns a [bool] that is [true] if the writing to the
  /// characteristic with response is permitted.
  ///
  bool get write => js_util.getProperty(this, 'write');

  ///  Returns a [bool] that is [true] if notifications of the
  /// characteristic value without acknowledgement is permitted.
  ///
  bool get notify => js_util.getProperty(this, 'notify');

  ///  Returns a [bool] that is [true] if indications of the
  /// characteristic value with acknowledgement is permitted.
  ///
  bool get indicate => js_util.getProperty(this, 'indicate');

  ///  Returns a [bool] that is [true] if signed writing to the
  /// characteristic value is permitted.
  ///
  bool get authenticatedSignedWrites =>
      js_util.getProperty(this, 'authenticatedSignedWrites');

  ///  Returns a [bool] that is [true] if reliable writes to the
  /// characteristic is permitted.
  ///
  bool get reliableWrite => js_util.getProperty(this, 'reliableWrite');

  ///  Returns a [bool] that is [true] if reliable writes to the
  /// characteristic descriptor is permitted.
  ///
  bool get writableAuxiliaries =>
      js_util.getProperty(this, 'writableAuxiliaries');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///   The interface of the Web Bluetooth API provides a GATT
/// Descriptor,
///   which provides further information about a characteristic’s
/// value.
///
///    Note: This page describes the W3C Community Group Web
/// Bluetooth API. For the Firefox OS
///   Bluetooth API, see [BluetoothGattDescriptor]
/// (Firefox OS).
///
///
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTDescriptor {
  external BluetoothRemoteGATTDescriptor();
}

extension PropsBluetoothRemoteGATTDescriptor on BluetoothRemoteGATTDescriptor {
  ///
  ///     Returns the [BluetoothRemoteGATTCharacteristic] this
  /// descriptor belongs
  ///    to.
  ///
  ///
  BluetoothRemoteGATTCharacteristic get characteristic =>
      js_util.getProperty(this, 'characteristic');

  ///
  ///    Returns the UUID of the characteristic descriptor, for
  ///     example '[00002902-0000-1000-8000-00805f9b34fb]' for
  /// theClient
  ///    Characteristic Configuration descriptor.
  ///
  ///
  String get uuid => js_util.getProperty(this, 'uuid');

  ///
  ///     Returns the currently cached descriptor value. This value
  /// gets updated when the
  ///    value of the descriptor is read.
  ///
  ///
  ByteData? get value => js_util.getProperty(this, 'value');

  ///
  ///    Returns a [Future] that resolves to
  ///    an [ArrayBuffer] holding a duplicate of the [value] property
  ///     if it is available and supported. Otherwise it throws an
  /// error.
  ///
  ///
  /// BluetoothRemoteGATTDescriptor.readValue().then(function(value[]) { /* ... */ })
  ///
  Future<ByteData> readValue() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readValue', []));

  ///
  ///     Sets the value property to the bytes contained in an
  /// [ArrayBuffer] and
  ///    returns a [Future].
  ///
  ///
  /// BluetoothRemoteGATTDescriptor.writeValue(array[]).then(function() { /* ... */ })
  ///
  Future<Object> writeValue(dynamic value) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeValue', [value]));
}

@JS()
@staticInterop
class CharacteristicEventHandlers {
  external CharacteristicEventHandlers();
}

extension PropsCharacteristicEventHandlers on CharacteristicEventHandlers {
  EventHandlerNonNull? get oncharacteristicvaluechanged =>
      js_util.getProperty(this, 'oncharacteristicvaluechanged');
  set oncharacteristicvaluechanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncharacteristicvaluechanged', newValue);
  }
}

@JS()
@staticInterop
class BluetoothDeviceEventHandlers {
  external BluetoothDeviceEventHandlers();
}

extension PropsBluetoothDeviceEventHandlers on BluetoothDeviceEventHandlers {
  EventHandlerNonNull? get onadvertisementreceived =>
      js_util.getProperty(this, 'onadvertisementreceived');
  set onadvertisementreceived(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onadvertisementreceived', newValue);
  }

  EventHandlerNonNull? get ongattserverdisconnected =>
      js_util.getProperty(this, 'ongattserverdisconnected');
  set ongattserverdisconnected(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongattserverdisconnected', newValue);
  }
}

@JS()
@staticInterop
class ServiceEventHandlers {
  external ServiceEventHandlers();
}

extension PropsServiceEventHandlers on ServiceEventHandlers {
  EventHandlerNonNull? get onserviceadded =>
      js_util.getProperty(this, 'onserviceadded');
  set onserviceadded(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onserviceadded', newValue);
  }

  EventHandlerNonNull? get onservicechanged =>
      js_util.getProperty(this, 'onservicechanged');
  set onservicechanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onservicechanged', newValue);
  }

  EventHandlerNonNull? get onserviceremoved =>
      js_util.getProperty(this, 'onserviceremoved');
  set onserviceremoved(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onserviceremoved', newValue);
  }
}

///
///   The interface of the [Web Bluetooth API] provides a way to look
/// up Universally Unique Identifier (UUID) values by name in the
///  registry maintained by the Bluetooth SIG.
///
@JS()
@staticInterop
class BluetoothUUID {
  external BluetoothUUID();
}

extension PropsBluetoothUUID on BluetoothUUID {
  ///  Returns a UUID representing a registered service when passed a
  /// name or the 16- or 32-bit UUID alias.
  ///
  /// BluetoothUUID.getService(name);
  ///
  static String getService(

          /// A [string] containing the name of the service.
          ///
          dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getService', [name]);

  ///  Returns the 128-bit UUID representing a registered
  /// characteristic when passed a name or the 16- or 32-bit UUID
  /// alias.
  ///
  /// BluetoothUUID.getCharacteristic(name);
  ///
  static String getCharacteristic(

          /// A [string] containing the name of the characteristic.
          ///
          dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getCharacteristic', [name]);

  ///  Returns a UUID representing a registered descriptor when passed
  /// a name or the 16- or 32-bit UUID alias.
  ///
  /// BluetoothUUID.getDescriptor(name);
  ///
  static String getDescriptor(

          /// A [string] containing the name of the descriptor.
          ///
          dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getDescriptor', [name]);

  ///  Returns the 128-bit UUID when passed the 16- or 32-bit UUID
  /// alias.
  ///
  /// BluetoothUUID.canonicalUUID(alias);
  ///
  static String canonicalUUID(

          /// A [string] containing a 16- or 32- bit UUID alias.
          ///
          int alias) =>
      js_util.callMethod(BluetoothUUID, 'canonicalUUID', [alias]);
}
