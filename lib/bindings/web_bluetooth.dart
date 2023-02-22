/// Web Bluetooth
///
/// https://webbluetoothcg.github.io/web-bluetooth/

// ignore_for_file: unused_import

@JS('self')
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
  external factory BluetoothManufacturerDataFilterInit(
      {required int companyIdentifier});
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
      {Iterable<dynamic>? services,
      String? name,
      String? namePrefix,
      Iterable<BluetoothManufacturerDataFilterInit>? manufacturerData,
      Iterable<BluetoothServiceDataFilterInit>? serviceData});
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
  external factory RequestDeviceOptions._(
      {Iterable<BluetoothLEScanFilterInit>? filters,
      Iterable<dynamic>? optionalServices,
      Iterable<int>? optionalManufacturerData,
      bool? acceptAllDevices});

  factory RequestDeviceOptions(
          {Iterable<BluetoothLEScanFilterInit>? filters,
          Iterable<dynamic>? optionalServices,
          Iterable<int>? optionalManufacturerData,
          bool? acceptAllDevices}) =>
      RequestDeviceOptions._(
          filters: filters ?? undefined,
          optionalServices: optionalServices ?? const [],
          optionalManufacturerData: optionalManufacturerData ?? const [],
          acceptAllDevices: acceptAllDevices ?? false);
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
///
///
///
///    EventTarget
///
///
///
///
///
///    Bluetooth
///
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
  external factory Bluetooth();
}

extension PropsBluetooth on Bluetooth {
  Future<bool> getAvailability() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAvailability', []));

  EventHandlerNonNull? get onavailabilitychanged =>
      js_util.getProperty(this, 'onavailabilitychanged');
  set onavailabilitychanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onavailabilitychanged', newValue);
  }

  BluetoothDevice? get referringDevice =>
      js_util.getProperty(this, 'referringDevice');
  Future<Iterable<BluetoothDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  Future<BluetoothDevice> requestDevice([RequestDeviceOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class BluetoothPermissionDescriptor implements PermissionDescriptor {
  external factory BluetoothPermissionDescriptor._(
      {String? deviceId,
      Iterable<BluetoothLEScanFilterInit>? filters,
      Iterable<dynamic>? optionalServices,
      Iterable<int>? optionalManufacturerData,
      bool? acceptAllDevices});

  factory BluetoothPermissionDescriptor(
          {String? deviceId,
          Iterable<BluetoothLEScanFilterInit>? filters,
          Iterable<dynamic>? optionalServices,
          Iterable<int>? optionalManufacturerData,
          bool? acceptAllDevices}) =>
      BluetoothPermissionDescriptor._(
          deviceId: deviceId ?? undefined,
          filters: filters ?? undefined,
          optionalServices: optionalServices ?? const [],
          optionalManufacturerData: optionalManufacturerData ?? const [],
          acceptAllDevices: acceptAllDevices ?? false);
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
      {required String deviceId,
      required bool mayUseGATT,
      dynamic allowedServices,
      required Iterable<int> allowedManufacturerData});
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
      {required Iterable<AllowedBluetoothDevice> allowedDevices});
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
  external factory BluetoothPermissionResult();
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
  external factory ValueEvent(String type, [ValueEventInit? initDict]);
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
  external factory BluetoothDevice();
}

extension PropsBluetoothDevice on BluetoothDevice {
  String get id => js_util.getProperty(this, 'id');
  String? get name => js_util.getProperty(this, 'name');
  BluetoothRemoteGATTServer? get gatt => js_util.getProperty(this, 'gatt');
  Future<void> forget() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'forget', []));

  Future<void> watchAdvertisements([WatchAdvertisementsOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'watchAdvertisements', [options]));

  bool get watchingAdvertisements =>
      js_util.getProperty(this, 'watchingAdvertisements');
}

@anonymous
@JS()
@staticInterop
class WatchAdvertisementsOptions {
  external factory WatchAdvertisementsOptions({AbortSignal? signal});
}

extension PropsWatchAdvertisementsOptions on WatchAdvertisementsOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@JS()
@staticInterop
class BluetoothManufacturerDataMap extends JsMap<ByteData, int> {
  external factory BluetoothManufacturerDataMap();
}

@JS()
@staticInterop
class BluetoothServiceDataMap extends JsMap<ByteData, String> {
  external factory BluetoothServiceDataMap();
}

@JS()
@staticInterop
class BluetoothAdvertisingEvent implements Event {
  external factory BluetoothAdvertisingEvent(
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
      {required BluetoothDevice device,
      dynamic uuids,
      String? name,
      int? appearance,
      int? txPower,
      int? rssi,
      BluetoothManufacturerDataMap? manufacturerData,
      BluetoothServiceDataMap? serviceData});
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
  external factory BluetoothRemoteGATTServer();
}

extension PropsBluetoothRemoteGATTServer on BluetoothRemoteGATTServer {
  BluetoothDevice get device => js_util.getProperty(this, 'device');
  bool get connected => js_util.getProperty(this, 'connected');
  Future<BluetoothRemoteGATTServer> connect() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'connect', []));

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Future<BluetoothRemoteGATTService> getPrimaryService(dynamic service) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getPrimaryService', [service]));

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
///    called BluetoothGATTService. For the Firefox OS interface of
/// the same name,
///   see [BluetoothGattService].
///
///  The interface of the Web Bluetooth API represents a
///   service provided by a GATT server, including a device, a list
/// of referenced services,
///  and a list of the characteristics of this service.
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
///    BluetoothRemoteGATTService
///
///
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTService
    implements EventTarget, CharacteristicEventHandlers, ServiceEventHandlers {
  external factory BluetoothRemoteGATTService();
}

extension PropsBluetoothRemoteGATTService on BluetoothRemoteGATTService {
  BluetoothDevice get device => js_util.getProperty(this, 'device');
  String get uuid => js_util.getProperty(this, 'uuid');
  bool get isPrimary => js_util.getProperty(this, 'isPrimary');
  Future<BluetoothRemoteGATTCharacteristic> getCharacteristic(
          dynamic characteristic) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getCharacteristic', [characteristic]));

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
///
///
///
///    EventTarget
///
///
///
///
///
///    BluetoothRemoteGATTCharacteristic
///
///
@experimental
@JS()
@staticInterop
class BluetoothRemoteGATTCharacteristic
    implements EventTarget, CharacteristicEventHandlers {
  external factory BluetoothRemoteGATTCharacteristic();
}

extension PropsBluetoothRemoteGATTCharacteristic
    on BluetoothRemoteGATTCharacteristic {
  BluetoothRemoteGATTService get service =>
      js_util.getProperty(this, 'service');
  String get uuid => js_util.getProperty(this, 'uuid');
  BluetoothCharacteristicProperties get properties =>
      js_util.getProperty(this, 'properties');
  ByteData? get value => js_util.getProperty(this, 'value');
  Future<BluetoothRemoteGATTDescriptor> getDescriptor(dynamic descriptor) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDescriptor', [descriptor]));

  Future<Iterable<BluetoothRemoteGATTDescriptor>> getDescriptors(
          [dynamic descriptor]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDescriptors', [descriptor]));

  Future<ByteData> readValue() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readValue', []));

  Future<void> writeValue(dynamic value) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeValue', [value]));

  Future<void> writeValueWithResponse(dynamic value) => js_util.promiseToFuture(
      js_util.callMethod(this, 'writeValueWithResponse', [value]));

  Future<void> writeValueWithoutResponse(dynamic value) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'writeValueWithoutResponse', [value]));

  Future<BluetoothRemoteGATTCharacteristic> startNotifications() => js_util
      .promiseToFuture(js_util.callMethod(this, 'startNotifications', []));

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
  external factory BluetoothCharacteristicProperties();
}

extension PropsBluetoothCharacteristicProperties
    on BluetoothCharacteristicProperties {
  bool get broadcast => js_util.getProperty(this, 'broadcast');
  bool get read => js_util.getProperty(this, 'read');
  bool get writeWithoutResponse =>
      js_util.getProperty(this, 'writeWithoutResponse');
  bool get write => js_util.getProperty(this, 'write');
  bool get notify => js_util.getProperty(this, 'notify');
  bool get indicate => js_util.getProperty(this, 'indicate');
  bool get authenticatedSignedWrites =>
      js_util.getProperty(this, 'authenticatedSignedWrites');
  bool get reliableWrite => js_util.getProperty(this, 'reliableWrite');
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
  external factory BluetoothRemoteGATTDescriptor();
}

extension PropsBluetoothRemoteGATTDescriptor on BluetoothRemoteGATTDescriptor {
  BluetoothRemoteGATTCharacteristic get characteristic =>
      js_util.getProperty(this, 'characteristic');
  String get uuid => js_util.getProperty(this, 'uuid');
  ByteData? get value => js_util.getProperty(this, 'value');
  Future<ByteData> readValue() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readValue', []));

  Future<void> writeValue(dynamic value) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeValue', [value]));
}

@JS()
@staticInterop
class CharacteristicEventHandlers {
  external factory CharacteristicEventHandlers();
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
  external factory BluetoothDeviceEventHandlers();
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
  external factory ServiceEventHandlers();
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
  external static String getService(dynamic name);
  external static String getCharacteristic(dynamic name);
  external static String getDescriptor(dynamic name);
  external static String canonicalUUID(int alias);
  external factory BluetoothUUID();
}
