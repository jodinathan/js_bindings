/// Web Bluetooth
///
/// https://webbluetoothcg.github.io/web-bluetooth/
@JS('window')
library web_bluetooth;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'web_bluetooth.dart';
import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

@anonymous
@JS()
class BluetoothDataFilterInit {
  external dynamic get dataPrefix;
  external set dataPrefix(dynamic newValue);
  external dynamic get mask;
  external set mask(dynamic newValue);

  external factory BluetoothDataFilterInit({dynamic dataPrefix, dynamic mask});
}

@anonymous
@JS()
class BluetoothManufacturerDataFilterInit // null -> {} -> BluetoothDataFilterInit
    with
        BluetoothDataFilterInit {
  external int get companyIdentifier;
  external set companyIdentifier(int newValue);

  external factory BluetoothManufacturerDataFilterInit({int companyIdentifier});
}

@anonymous
@JS()
class BluetoothServiceDataFilterInit // null -> {} -> BluetoothDataFilterInit
    with
        BluetoothDataFilterInit {
  external dynamic get service;
  external set service(dynamic newValue);

  external factory BluetoothServiceDataFilterInit({dynamic service});
}

@anonymous
@JS()
class BluetoothLEScanFilterInit {
  external Iterable<dynamic> get services;
  external set services(Iterable<dynamic> newValue);
  external String get name;
  external set name(String newValue);
  external String get namePrefix;
  external set namePrefix(String newValue);
  external Iterable<BluetoothManufacturerDataFilterInit> get manufacturerData;
  external set manufacturerData(
      Iterable<BluetoothManufacturerDataFilterInit> newValue);
  external Iterable<BluetoothServiceDataFilterInit> get serviceData;
  external set serviceData(Iterable<BluetoothServiceDataFilterInit> newValue);

  external factory BluetoothLEScanFilterInit(
      {Iterable<dynamic> services,
      String name,
      String namePrefix,
      Iterable<BluetoothManufacturerDataFilterInit> manufacturerData,
      Iterable<BluetoothServiceDataFilterInit> serviceData});
}

@anonymous
@JS()
class RequestDeviceOptions {
  external Iterable<BluetoothLEScanFilterInit> get filters;
  external set filters(Iterable<BluetoothLEScanFilterInit> newValue);
  external Iterable<dynamic> get optionalServices;
  external set optionalServices(Iterable<dynamic> newValue);
  external Iterable<int> get optionalManufacturerData;
  external set optionalManufacturerData(Iterable<int> newValue);
  external bool get acceptAllDevices;
  external set acceptAllDevices(bool newValue);

  external factory RequestDeviceOptions(
      {Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic> optionalServices = const [],
      Iterable<int> optionalManufacturerData = const [],
      bool acceptAllDevices = false});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
/// The interface of the Web Bluetooth API returns a
///  [Promise] to a [BluetoothDevice] object with the specified
///  options.
@experimental
@JS()
class Bluetooth // null -> {} -> EventTarget
    with
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  /// Returns a [Promise] that resolved to a [Boolean] indicating
  ///    whether the user-agent has the ability to support Bluetooth.
  /// Some user-agents let the
  ///    user configure an option that affects what is returned by this
  /// value. If this option
  ///   is set, that is the value returned by this method.
  /// var readerPromise = Bluetooth.getAvailability();
  ///
  external Promise<bool> getAvailability();
  external EventHandlerNonNull? get onavailabilitychanged;
  external set onavailabilitychanged(EventHandlerNonNull? newValue);

  ///  Returns a reference to the device, if any, from which the user
  /// opened the current
  ///    page. For example, an Eddystone beacon might advertise a URL,
  /// which the user agent
  ///    allows the user to open. A BluetoothDevice representing the
  /// beacon would be available
  ///   through [navigator.bluetooth.referringDevice].
  external BluetoothDevice? get referringDevice;

  /// Returns a [Promise] that resolved to an array of
  ///    [BluetoothDevice]s which the origin already obtained
  /// permission for via a
  ///   call to [Bluetooth.requestDevice()].
  /// var readerPromise = Bluetooth.getDevices();
  ///
  external Iterable<Promise<BluetoothDevice>> getDevices();

  /// Returns a [Promise] to a [BluetoothDevice] object with the
  ///   specified options.
  /// Bluetooth.requestDevice([options])
  ///  .then(function(bluetoothDevice) { ... })
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
  /// Detailed
  ///   examples are in the specification.
  external Promise<BluetoothDevice> requestDevice(
      [RequestDeviceOptions? options]);

  external factory Bluetooth();
}

@anonymous
@JS()
class BluetoothPermissionDescriptor // null -> {} -> PermissionDescriptor
    with
        PermissionDescriptor {
  external String get deviceId;
  external set deviceId(String newValue);
  external Iterable<BluetoothLEScanFilterInit> get filters;
  external set filters(Iterable<BluetoothLEScanFilterInit> newValue);
  external Iterable<dynamic> get optionalServices;
  external set optionalServices(Iterable<dynamic> newValue);
  external Iterable<int> get optionalManufacturerData;
  external set optionalManufacturerData(Iterable<int> newValue);
  external bool get acceptAllDevices;
  external set acceptAllDevices(bool newValue);

  external factory BluetoothPermissionDescriptor(
      {String deviceId,
      Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic> optionalServices = const [],
      Iterable<int> optionalManufacturerData = const [],
      bool acceptAllDevices = false});
}

@anonymous
@JS()
class AllowedBluetoothDevice {
  external String get deviceId;
  external set deviceId(String newValue);
  external bool get mayUseGATT;
  external set mayUseGATT(bool newValue);
  external dynamic get allowedServices;
  external set allowedServices(dynamic newValue);
  external Iterable<int> get allowedManufacturerData;
  external set allowedManufacturerData(Iterable<int> newValue);

  external factory AllowedBluetoothDevice(
      {String deviceId,
      bool mayUseGATT,
      dynamic allowedServices,
      Iterable<int> allowedManufacturerData});
}

@anonymous
@JS()
class BluetoothPermissionStorage {
  external Iterable<AllowedBluetoothDevice> get allowedDevices;
  external set allowedDevices(Iterable<AllowedBluetoothDevice> newValue);

  external factory BluetoothPermissionStorage(
      {Iterable<AllowedBluetoothDevice> allowedDevices});
}

@JS()
class BluetoothPermissionResult // EventTarget -> {} -> PermissionStatus
    extends PermissionStatus {
  external Iterable<BluetoothDevice> get devices;
  external set devices(Iterable<BluetoothDevice> newValue);

  external factory BluetoothPermissionResult();
}

@JS()
class ValueEvent // null -> {} -> Event
    with
        Event {
  external factory ValueEvent(String type, [ValueEventInit? initDict]);
  external dynamic get value;
}

@anonymous
@JS()
class ValueEventInit // null -> {} -> EventInit
    with
        EventInit {
  external dynamic get value;
  external set value(dynamic newValue);

  external factory ValueEventInit({dynamic value});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
/// The BluetoothDevice interface of the Web Bluetooth
///    API represents a Bluetooth device inside a particular script
/// execution
///  environment.
///
///
@experimental
@JS()
class BluetoothDevice // null -> {} -> EventTarget
    with
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  /// A [DOMString] that uniquely identifies a device.
  @experimental
  external String get id;

  ///  A [DOMString] that provices a human-readable name for the
  /// device.
  @experimental
  external String? get name;

  /// A reference to the device's [BluetoothRemoteGATTServer].
  @experimental
  external BluetoothRemoteGATTServer? get gatt;
  external Promise<Object> watchAdvertisements(
      [WatchAdvertisementsOptions? options]);

  /// If advertisments were activated using
  ///   [BluetoothDevice.watchAdvertisements()].
  @experimental
  external bool get watchingAdvertisements;

  external factory BluetoothDevice();
}

@anonymous
@JS()
class WatchAdvertisementsOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);

  external factory WatchAdvertisementsOptions({AbortSignal signal});
}

@JS()
class BluetoothManufacturerDataMap {
  external ByteData operator [](int index);

  external factory BluetoothManufacturerDataMap();
}

@JS()
class BluetoothServiceDataMap {
  external ByteData operator [](String index);

  external factory BluetoothServiceDataMap();
}

@JS()
class BluetoothAdvertisingEvent // null -> {} -> Event
    with
        Event {
  external factory BluetoothAdvertisingEvent(
      String type, BluetoothAdvertisingEventInit init);
  external BluetoothDevice get device;
  external Iterable<String> get uuids;
  external String? get name;
  external int? get appearance;
  external int? get txPower;
  external int? get rssi;
  external BluetoothManufacturerDataMap get manufacturerData;
  external BluetoothServiceDataMap get serviceData;
}

@anonymous
@JS()
class BluetoothAdvertisingEventInit // null -> {} -> EventInit
    with
        EventInit {
  external BluetoothDevice get device;
  external set device(BluetoothDevice newValue);
  external dynamic get uuids;
  external set uuids(dynamic newValue);
  external String get name;
  external set name(String newValue);
  external int get appearance;
  external set appearance(int newValue);
  external int get txPower;
  external set txPower(int newValue);
  external int get rssi;
  external set rssi(int newValue);
  external BluetoothManufacturerDataMap get manufacturerData;
  external set manufacturerData(BluetoothManufacturerDataMap newValue);
  external BluetoothServiceDataMap get serviceData;
  external set serviceData(BluetoothServiceDataMap newValue);

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

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [BluetoothRemoteGATTServer] interface of the Web Bluetooth
/// API represents a GATT
///  Server on a remote device.
///   This page describes the W3C Community Group Web Bluetooth API.
/// For the Firefox OS
///   Bluetooth API, see [BluetoothGattServer]
///    (Firefox OS).
///
@experimental
@JS()
class BluetoothRemoteGATTServer {
  /// A reference to the [BluetoothDevice] running the server.
  external BluetoothDevice get device;

  ///  A boolean value that returns true while this script execution
  /// environment is
  ///    connected to [this.device]. It can be false while the user
  /// agent is
  ///   physically connected.
  external bool get connected;

  ///  Causes the script execution environment to connect to
  /// [this.device].
  /// BluetoothRemoteGATTServer.connect()
  ///  .then(function(bluetoothRemoteGATTServer) { ... })
  external Promise<BluetoothRemoteGATTServer> connect();

  ///  Causes the script execution environment to disconnect from
  /// [this.device].
  ///
  /// BluetoothRemoteGATTServer.disconnect()
  external Object disconnect();

  ///  Returns a promise to the primary [BluetoothRemoteGATTService]
  /// offered by the
  ///   bluetooth device for a specified [BluetoothServiceUUID].
  /// BluetoothRemoteGATTServer.getPrimaryService(bluetoothServiceUUID).then(function(bluetoothGATTService) { ... })
  external Promise<BluetoothRemoteGATTService> getPrimaryService(
      dynamic service);

  ///  Returns a promise to a list of primary
  /// [BluetoothRemoteGATTService] objects
  ///    offered by the bluetooth device for a specified
  /// [BluetoothServiceUUID].
  ///
  /// BluetoothRemoteGATTServer.getPrimaryServices(bluetoothServiceUUID).then(function(bluetoothGATTServices) { ... })
  external Iterable<Promise<BluetoothRemoteGATTService>> getPrimaryServices(
      [dynamic service]);

  external factory BluetoothRemoteGATTServer();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///
///    This page describes the W3C Community Group
/// BluetoothRemoteGATTService, formerly
///     called BluethoothGATTService. For the Firefox OS interface of
/// the same name,
///    see [BluetoothGattService].
///
///
/// The interface of the Web Bluetooth API represents a
///   service provided by a GATT server, including a device, a list
/// of referenced services,
///  and a list of the characteristics of this service.
@experimental
@JS()
class BluetoothRemoteGATTService // null -> {} -> EventTarget
    with
        EventTarget,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  ///  Returns information about a Bluetooth device through an instance
  /// of
  ///   [BluetoothDevice].
  external BluetoothDevice get device;

  /// Returns a [DOMString] representing the UUID of this service.
  external String get uuid;

  ///  Returns a [Boolean] Indicating whether this is a primary or
  /// secondary
  ///   service.
  external bool get isPrimary;

  /// Returns a [Promise] to an instance of
  ///    [BluetoothRemoteGATTCharacteristic] for a given universally
  /// unique identifier
  ///   (UUID).
  /// bluetoothGATTServiceInstance.getCharacteristic(characteristic).then(function(BluetoothGATTCharacteristic) { ... } )
  external Promise<BluetoothRemoteGATTCharacteristic> getCharacteristic(
      dynamic characteristic);

  /// Returns a [Promise] to an [Array] of
  ///    [BluetoothRemoteGATTCharacteristic] instances for an optional
  /// universally
  ///   unique identifier (UUID).
  /// bluetoothGATTServiceInstance.getCharacteristics(characteristics).then(function(BluetoothGATTCharacteristic[]) { ... } )
  external Iterable<Promise<BluetoothRemoteGATTCharacteristic>>
      getCharacteristics([dynamic characteristic]);

  /// Returns a [Promise] to an instance of
  ///    [BluetoothRemoteGATTService] for a given universally unique
  /// identifier
  ///   (UUID).
  /// bluetoothGATTServiceInstance.getIncludedService(service).then(function(BluetoothGATTService) { ... } )
  external Promise<BluetoothRemoteGATTService> getIncludedService(
      dynamic service);

  /// Returns a [Promise] to an [Array] of
  ///    [BluetoothRemoteGATTService] instances for an optional
  /// universally unique
  ///   identifier (UUID).
  /// bluetoothGATTServiceInstance.getIncludedService(service).then(function(BluetoothGATTService) { ... } )
  external Iterable<Promise<BluetoothRemoteGATTService>> getIncludedServices(
      [dynamic service]);

  external factory BluetoothRemoteGATTService();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [BluetoothRemoteGattCharacteristic] interface of the Web
/// Bluetooth API represents a GATT Characteristic, which is a basic
/// data element that provides further information about a
/// peripheral’s service.
@experimental
@JS()
class BluetoothRemoteGATTCharacteristic // null -> {} -> EventTarget
    with
        EventTarget,
        CharacteristicEventHandlers {
  ///  Returns the [BluetoothRemoteGATTService] this characteristic
  /// belongs to.
  external BluetoothRemoteGATTService get service;

  ///  Returns a [DOMString] containing the UUID of the characteristic,
  /// for example ['00002a37-0000-1000-8000-00805f9b34fb'] for the
  /// Heart Rate Measurement characteristic.
  external String get uuid;

  /// Returns the properties of this characteristic.
  external BluetoothCharacteristicProperties get properties;

  ///  The currently cached characteristic value. This value gets
  /// updated when the value of the characteristic is read or updated
  /// via a notification or indication.
  external ByteData? get value;

  ///  Returns a [Promise] that resolves to the first
  /// [BluetoothRemoteGATTDescriptor] for a given descriptor UUID.
  /// BluetoothRemoteGATTCharacteristic.getDescriptor(bluetoothDescriptorUUID).then(function(bluetoothGATTDescriptor) { ... })
  external Promise<BluetoothRemoteGATTDescriptor> getDescriptor(
      dynamic descriptor);

  ///  Returns a [Promise] that resolves to an [Array] of all
  /// [BluetoothRemoteGATTDescriptor] objects for a given descriptor
  /// UUID.
  /// BluetoothRemoteGATTCharacteristic.getDescriptors(bluetoothDescriptorUUID).then(function(bluetoothGATTDescriptors[]) { ... })
  external Iterable<Promise<BluetoothRemoteGATTDescriptor>> getDescriptors(
      [dynamic descriptor]);

  ///  Returns a [Promise] that resolves to an [ArrayBuffer] holding a
  /// duplicate of the [value] property if it is available and
  /// supported. Otherwise it throws an error.
  /// BluetoothRemoteGATTCharacteristic.readValue().then(function(dataView) { ... })
  external Promise<ByteData> readValue();

  ///  Sets the value property to the bytes contained in an
  /// [ArrayBuffer] and returns a [Promise].
  /// BluetoothRemoteGATTCharacteristic.writeValue(value).then(function() { ... })
  external Promise<Object> writeValue(dynamic value);
  external Promise<Object> writeValueWithResponse(dynamic value);
  external Promise<Object> writeValueWithoutResponse(dynamic value);

  ///  Returns a [Promise] when [navigator.bluetooth] is added to the
  /// active notification context.
  /// BluetoothRemoteGATTCharacteristic.startNotifications().then(function(BluetoothRemoteGATTCharacteristic) { ... })
  external Promise<BluetoothRemoteGATTCharacteristic> startNotifications();

  ///  Returns a [Promise] when [navigator.bluetooth] is removed from
  /// the active notification context.
  /// BluetoothRemoteGATTCharacteristic.stopNotifications().then(function(BluetoothRemoteGATTCharacteristic) { ... })
  external Promise<BluetoothRemoteGATTCharacteristic> stopNotifications();

  external factory BluetoothRemoteGATTCharacteristic();
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Bluetooth API provides the operations
/// that are valid on the given [BluetoothRemoteGATTCharacteristic].
/// This interface is returned by calling
/// [BluetoothRemoteGATTCharacteristic.properties].
@experimental
@JS()
class BluetoothCharacteristicProperties {
  ///  Returns a [boolean] that is [true] if the broadcast of the
  /// characteristic value is permitted using the Server Characteristic
  /// Configuration Descriptor.
  external bool get broadcast;

  ///  Returns a [boolean] that is [true] if the reading of the
  /// characteristic value is permitted.
  external bool get read;

  ///  Returns a [boolean] that is [true] if the writing to the
  /// characteristic without response is permitted.
  external bool get writeWithoutResponse;

  ///  Returns a [boolean] that is [true] if the writing to the
  /// characteristic with response is permitted.
  external bool get write;

  ///  Returns a [boolean] that is [true] if notifications of the
  /// characteristic value without acknowledgement is permitted.
  external bool get notify;

  ///  Returns a [boolean] that is [true] if indications of the
  /// characteristic value with acknowledgement is permitted.
  external bool get indicate;

  ///  Returns a [boolean] that is [true] if signed writing to the
  /// characteristic value is permitted.
  external bool get authenticatedSignedWrites;

  ///  Returns a [boolean] that is [true] if reliable writes to the
  /// characteristic is permitted.
  external bool get reliableWrite;

  ///  Returns a [boolean] that is [true] if reliable writes to the
  /// characteristic descriptor is permitted.
  external bool get writableAuxiliaries;

  external factory BluetoothCharacteristicProperties();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web Bluetooth API provides a GATT
/// Descriptor,
///   which provides further information about a characteristic’s
/// value.
///   This page describes the W3C Community Group Web Bluetooth API.
/// For the Firefox OS
///   Bluetooth API, see [BluetoothGattDescriptor]
///    (Firefox OS).
///
@experimental
@JS()
class BluetoothRemoteGATTDescriptor {
  ///  Returns the [BluetoothRemoteGATTCharacteristic] this descriptor
  /// belongs
  ///   to.
  external BluetoothRemoteGATTCharacteristic get characteristic;

  /// Returns the UUID of the characteristic descriptor, for
  ///   example '[00002902-0000-1000-8000-00805f9b34fb]' for theClient
  ///   Characteristic Configuration descriptor.
  external String get uuid;

  ///  Returns the currently cached descriptor value. This value gets
  /// updated when the
  ///   value of the descriptor is read.
  external ByteData? get value;

  /// Returns a [Promise] that resolves to
  ///   an [ArrayBuffer] holding a duplicate of the [value] property
  ///    if it is available and supported. Otherwise it throws an
  /// error.
  /// BluetoothRemoteGATTDescriptor.readValue().then(function(value[]) { ... })
  external Promise<ByteData> readValue();

  ///  Sets the value property to the bytes contained in an
  /// [ArrayBuffer] and
  ///   returns a [Promise].
  /// BluetoothRemoteGATTDescriptor.writeValue(array[]).then(function() { ... })
  external Promise<Object> writeValue(dynamic value);

  external factory BluetoothRemoteGATTDescriptor();
}

@JS()
mixin CharacteristicEventHandlers {
  external EventHandlerNonNull? get oncharacteristicvaluechanged;
  external set oncharacteristicvaluechanged(EventHandlerNonNull? newValue);
}

@JS()
mixin BluetoothDeviceEventHandlers {
  external EventHandlerNonNull? get onadvertisementreceived;
  external set onadvertisementreceived(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ongattserverdisconnected;
  external set ongattserverdisconnected(EventHandlerNonNull? newValue);
}

@JS()
mixin ServiceEventHandlers {
  external EventHandlerNonNull? get onserviceadded;
  external set onserviceadded(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onservicechanged;
  external set onservicechanged(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onserviceremoved;
  external set onserviceremoved(EventHandlerNonNull? newValue);
}

@JS()
class BluetoothUUID {
  external static String getService(dynamic name);
  external static String getCharacteristic(dynamic name);
  external static String getDescriptor(dynamic name);
  external static String canonicalUUID(int alias);

  external factory BluetoothUUID();
}
