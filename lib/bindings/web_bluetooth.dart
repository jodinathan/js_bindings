/// Web Bluetooth
///
/// https://webbluetoothcg.github.io/web-bluetooth/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_bluetooth;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

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
      {required Iterable<dynamic> services,
      required String name,
      required String namePrefix,
      required Iterable<BluetoothManufacturerDataFilterInit> manufacturerData,
      required Iterable<BluetoothServiceDataFilterInit> serviceData});
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
      {required Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic>? optionalServices = const [],
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
  external factory BluetoothPermissionDescriptor(
      {required String deviceId,
      required Iterable<BluetoothLEScanFilterInit> filters,
      Iterable<dynamic>? optionalServices = const [],
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
  String get id => js_util.getProperty(this, 'id');
  String? get name => js_util.getProperty(this, 'name');
  BluetoothRemoteGATTServer? get gatt => js_util.getProperty(this, 'gatt');
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
  external factory WatchAdvertisementsOptions({required AbortSignal signal});
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
  external BluetoothManufacturerDataMap();
}

@JS()
@staticInterop
class BluetoothServiceDataMap extends JsMap<ByteData, String> {
  external BluetoothServiceDataMap();
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
      {required BluetoothDevice device,
      dynamic uuids,
      required String name,
      required int appearance,
      required int txPower,
      required int rssi,
      required BluetoothManufacturerDataMap manufacturerData,
      required BluetoothServiceDataMap serviceData});
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

@JS()
@staticInterop
class BluetoothRemoteGATTServer {
  external BluetoothRemoteGATTServer();
}

extension PropsBluetoothRemoteGATTServer on BluetoothRemoteGATTServer {
  BluetoothDevice get device => js_util.getProperty(this, 'device');
  bool get connected => js_util.getProperty(this, 'connected');
  Future<BluetoothRemoteGATTServer> connect() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'connect', []));

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Future<BluetoothRemoteGATTService> getPrimaryService(dynamic service) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getPrimaryService', [service]));

  Future<Iterable<BluetoothRemoteGATTService>> getPrimaryServices(
          [dynamic service]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getPrimaryServices', [service]));
}

@JS()
@staticInterop
class BluetoothRemoteGATTService
    implements EventTarget, CharacteristicEventHandlers, ServiceEventHandlers {
  external BluetoothRemoteGATTService();
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

@JS()
@staticInterop
class BluetoothRemoteGATTCharacteristic
    implements EventTarget, CharacteristicEventHandlers {
  external BluetoothRemoteGATTCharacteristic();
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

  Future<Object> writeValue(dynamic value) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeValue', [value]));

  Future<Object> writeValueWithResponse(dynamic value) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'writeValueWithResponse', [value]));

  Future<Object> writeValueWithoutResponse(dynamic value) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'writeValueWithoutResponse', [value]));

  Future<BluetoothRemoteGATTCharacteristic> startNotifications() => js_util
      .promiseToFuture(js_util.callMethod(this, 'startNotifications', []));

  Future<BluetoothRemoteGATTCharacteristic> stopNotifications() => js_util
      .promiseToFuture(js_util.callMethod(this, 'stopNotifications', []));
}

@JS()
@staticInterop
class BluetoothCharacteristicProperties {
  external BluetoothCharacteristicProperties();
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

@JS()
@staticInterop
class BluetoothRemoteGATTDescriptor {
  external BluetoothRemoteGATTDescriptor();
}

extension PropsBluetoothRemoteGATTDescriptor on BluetoothRemoteGATTDescriptor {
  BluetoothRemoteGATTCharacteristic get characteristic =>
      js_util.getProperty(this, 'characteristic');
  String get uuid => js_util.getProperty(this, 'uuid');
  ByteData? get value => js_util.getProperty(this, 'value');
  Future<ByteData> readValue() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readValue', []));

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

@JS()
@staticInterop
class BluetoothUUID {
  external BluetoothUUID();
}

extension PropsBluetoothUUID on BluetoothUUID {
  static String getService(dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getService', [name]);

  static String getCharacteristic(dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getCharacteristic', [name]);

  static String getDescriptor(dynamic name) =>
      js_util.callMethod(BluetoothUUID, 'getDescriptor', [name]);

  static String canonicalUUID(int alias) =>
      js_util.callMethod(BluetoothUUID, 'canonicalUUID', [alias]);
}
