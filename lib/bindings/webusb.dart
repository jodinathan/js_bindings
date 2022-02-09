/// WebUSB API
///
/// https://wicg.github.io/webusb/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webusb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class USBDeviceFilter {
  external factory USBDeviceFilter(
      {required int vendorId,
      required int productId,
      required int classCode,
      required int subclassCode,
      required int protocolCode,
      required String serialNumber});
}

extension PropsUSBDeviceFilter on USBDeviceFilter {
  int get vendorId => js_util.getProperty(this, 'vendorId');
  set vendorId(int newValue) {
    js_util.setProperty(this, 'vendorId', newValue);
  }

  int get productId => js_util.getProperty(this, 'productId');
  set productId(int newValue) {
    js_util.setProperty(this, 'productId', newValue);
  }

  int get classCode => js_util.getProperty(this, 'classCode');
  set classCode(int newValue) {
    js_util.setProperty(this, 'classCode', newValue);
  }

  int get subclassCode => js_util.getProperty(this, 'subclassCode');
  set subclassCode(int newValue) {
    js_util.setProperty(this, 'subclassCode', newValue);
  }

  int get protocolCode => js_util.getProperty(this, 'protocolCode');
  set protocolCode(int newValue) {
    js_util.setProperty(this, 'protocolCode', newValue);
  }

  String get serialNumber => js_util.getProperty(this, 'serialNumber');
  set serialNumber(String newValue) {
    js_util.setProperty(this, 'serialNumber', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions(
      {required Iterable<USBDeviceFilter> filters});
}

extension PropsUSBDeviceRequestOptions on USBDeviceRequestOptions {
  Iterable<USBDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<USBDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

@JS('USB')
@staticInterop
class Usb implements EventTarget {
  external Usb();
}

extension PropsUsb on Usb {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  Future<Iterable<USBDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  Future<USBDevice> requestDevice(USBDeviceRequestOptions options) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class USBConnectionEventInit implements EventInit {
  external factory USBConnectionEventInit({required USBDevice device});
}

extension PropsUSBConnectionEventInit on USBConnectionEventInit {
  USBDevice get device => js_util.getProperty(this, 'device');
  set device(USBDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }
}

@JS()
@staticInterop
class USBConnectionEvent implements Event {
  external USBConnectionEvent(
      String type, USBConnectionEventInit eventInitDict);
}

extension PropsUSBConnectionEvent on USBConnectionEvent {
  USBDevice get device => js_util.getProperty(this, 'device');
}

@JS()
@staticInterop
class USBDevice {
  external USBDevice();
}

extension PropsUSBDevice on USBDevice {
  int get usbVersionMajor => js_util.getProperty(this, 'usbVersionMajor');
  int get usbVersionMinor => js_util.getProperty(this, 'usbVersionMinor');
  int get usbVersionSubminor => js_util.getProperty(this, 'usbVersionSubminor');
  int get deviceClass => js_util.getProperty(this, 'deviceClass');
  int get deviceSubclass => js_util.getProperty(this, 'deviceSubclass');
  int get deviceProtocol => js_util.getProperty(this, 'deviceProtocol');
  int get vendorId => js_util.getProperty(this, 'vendorId');
  int get productId => js_util.getProperty(this, 'productId');
  int get deviceVersionMajor => js_util.getProperty(this, 'deviceVersionMajor');
  int get deviceVersionMinor => js_util.getProperty(this, 'deviceVersionMinor');
  int get deviceVersionSubminor =>
      js_util.getProperty(this, 'deviceVersionSubminor');
  String? get manufacturerName => js_util.getProperty(this, 'manufacturerName');
  String? get productName => js_util.getProperty(this, 'productName');
  String? get serialNumber => js_util.getProperty(this, 'serialNumber');
  USBConfiguration? get configuration =>
      js_util.getProperty(this, 'configuration');
  Iterable<USBConfiguration> get configurations =>
      js_util.getProperty(this, 'configurations');
  bool get opened => js_util.getProperty(this, 'opened');
  Future<Object> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  Future<Object> selectConfiguration(int configurationValue) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'selectConfiguration', [configurationValue]));

  Future<Object> claimInterface(int interfaceNumber) => js_util.promiseToFuture(
      js_util.callMethod(this, 'claimInterface', [interfaceNumber]));

  Future<Object> releaseInterface(int interfaceNumber) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'releaseInterface', [interfaceNumber]));

  Future<Object> selectAlternateInterface(
          int interfaceNumber, int alternateSetting) =>
      js_util.promiseToFuture(js_util.callMethod(this,
          'selectAlternateInterface', [interfaceNumber, alternateSetting]));

  Future<USBInTransferResult> controlTransferIn(
          USBControlTransferParameters setup, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferIn', [setup, length]));

  Future<USBOutTransferResult> controlTransferOut(
          USBControlTransferParameters setup,
          [dynamic data]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferOut', [setup, data]));

  Future<Object> clearHalt(USBDirection direction, int endpointNumber) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'clearHalt', [direction.name, endpointNumber]));

  Future<USBInTransferResult> transferIn(int endpointNumber, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferIn', [endpointNumber, length]));

  Future<USBOutTransferResult> transferOut(int endpointNumber, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferOut', [endpointNumber, data]));

  Future<USBIsochronousInTransferResult> isochronousTransferIn(
          int endpointNumber, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'isochronousTransferIn', [endpointNumber, packetLengths]));

  Future<USBIsochronousOutTransferResult> isochronousTransferOut(
          int endpointNumber, dynamic data, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'isochronousTransferOut',
          [endpointNumber, data, packetLengths]));

  Future<Object> reset() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'reset', []));
}

enum USBRequestType { standard, valueClass, vendor }

enum USBRecipient { device, valueInterface, endpoint, other }

enum USBTransferStatus { ok, stall, babble }

@anonymous
@JS()
@staticInterop
class USBControlTransferParameters {
  external factory USBControlTransferParameters._(
      {required String requestType,
      required String recipient,
      required int request,
      required int value,
      required int index});

  factory USBControlTransferParameters(
          {required USBRequestType requestType,
          required USBRecipient recipient,
          required int request,
          required int value,
          required int index}) =>
      USBControlTransferParameters._(
          requestType: requestType.name,
          recipient: recipient.name,
          request: request,
          value: value,
          index: index);
}

extension PropsUSBControlTransferParameters on USBControlTransferParameters {
  USBRequestType get requestType =>
      USBRequestType.values.byName(js_util.getProperty(this, 'requestType'));
  set requestType(USBRequestType newValue) {
    js_util.setProperty(this, 'requestType', newValue.name);
  }

  USBRecipient get recipient =>
      USBRecipient.values.byName(js_util.getProperty(this, 'recipient'));
  set recipient(USBRecipient newValue) {
    js_util.setProperty(this, 'recipient', newValue.name);
  }

  int get request => js_util.getProperty(this, 'request');
  set request(int newValue) {
    js_util.setProperty(this, 'request', newValue);
  }

  int get value => js_util.getProperty(this, 'value');
  set value(int newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  int get index => js_util.getProperty(this, 'index');
  set index(int newValue) {
    js_util.setProperty(this, 'index', newValue);
  }
}

@JS()
@staticInterop
class USBInTransferResult {
  external USBInTransferResult._(String status, [ByteData? data]);

  factory USBInTransferResult(USBTransferStatus status, [ByteData? data]) =>
      USBInTransferResult._(status.name, data);
}

extension PropsUSBInTransferResult on USBInTransferResult {
  ByteData? get data => js_util.getProperty(this, 'data');
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

@JS()
@staticInterop
class USBOutTransferResult {
  external USBOutTransferResult._(String status, [int? bytesWritten = 0]);

  factory USBOutTransferResult(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBOutTransferResult._(status.name, bytesWritten);
}

extension PropsUSBOutTransferResult on USBOutTransferResult {
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

@JS()
@staticInterop
class USBIsochronousInTransferPacket {
  external USBIsochronousInTransferPacket._(String status, [ByteData? data]);

  factory USBIsochronousInTransferPacket(USBTransferStatus status,
          [ByteData? data]) =>
      USBIsochronousInTransferPacket._(status.name, data);
}

extension PropsUSBIsochronousInTransferPacket
    on USBIsochronousInTransferPacket {
  ByteData? get data => js_util.getProperty(this, 'data');
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

@JS()
@staticInterop
class USBIsochronousInTransferResult {
  external USBIsochronousInTransferResult(
      Iterable<USBIsochronousInTransferPacket> packets,
      [ByteData? data]);
}

extension PropsUSBIsochronousInTransferResult
    on USBIsochronousInTransferResult {
  ByteData? get data => js_util.getProperty(this, 'data');
  Iterable<USBIsochronousInTransferPacket> get packets =>
      js_util.getProperty(this, 'packets');
}

@JS()
@staticInterop
class USBIsochronousOutTransferPacket {
  external USBIsochronousOutTransferPacket._(String status,
      [int? bytesWritten = 0]);

  factory USBIsochronousOutTransferPacket(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBIsochronousOutTransferPacket._(status.name, bytesWritten);
}

extension PropsUSBIsochronousOutTransferPacket
    on USBIsochronousOutTransferPacket {
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

@JS()
@staticInterop
class USBIsochronousOutTransferResult {
  external USBIsochronousOutTransferResult(
      Iterable<USBIsochronousOutTransferPacket> packets);
}

extension PropsUSBIsochronousOutTransferResult
    on USBIsochronousOutTransferResult {
  Iterable<USBIsochronousOutTransferPacket> get packets =>
      js_util.getProperty(this, 'packets');
}

@JS()
@staticInterop
class USBConfiguration {
  external USBConfiguration(USBDevice device, int configurationValue);
}

extension PropsUSBConfiguration on USBConfiguration {
  int get configurationValue => js_util.getProperty(this, 'configurationValue');
  String? get configurationName =>
      js_util.getProperty(this, 'configurationName');
  Iterable<USBInterface> get interfaces =>
      js_util.getProperty(this, 'interfaces');
}

@JS()
@staticInterop
class USBInterface {
  external USBInterface(USBConfiguration configuration, int interfaceNumber);
}

extension PropsUSBInterface on USBInterface {
  int get interfaceNumber => js_util.getProperty(this, 'interfaceNumber');
  USBAlternateInterface get alternate => js_util.getProperty(this, 'alternate');
  Iterable<USBAlternateInterface> get alternates =>
      js_util.getProperty(this, 'alternates');
  bool get claimed => js_util.getProperty(this, 'claimed');
}

@JS()
@staticInterop
class USBAlternateInterface {
  external USBAlternateInterface(
      USBInterface deviceInterface, int alternateSetting);
}

extension PropsUSBAlternateInterface on USBAlternateInterface {
  int get alternateSetting => js_util.getProperty(this, 'alternateSetting');
  int get interfaceClass => js_util.getProperty(this, 'interfaceClass');
  int get interfaceSubclass => js_util.getProperty(this, 'interfaceSubclass');
  int get interfaceProtocol => js_util.getProperty(this, 'interfaceProtocol');
  String? get interfaceName => js_util.getProperty(this, 'interfaceName');
  Iterable<USBEndpoint> get endpoints => js_util.getProperty(this, 'endpoints');
}

enum USBDirection { valueIn, out }

enum USBEndpointType { bulk, interrupt, isochronous }

@JS()
@staticInterop
class USBEndpoint {
  external USBEndpoint._(
      USBAlternateInterface alternate, int endpointNumber, String direction);

  factory USBEndpoint(USBAlternateInterface alternate, int endpointNumber,
          USBDirection direction) =>
      USBEndpoint._(alternate, endpointNumber, direction.name);
}

extension PropsUSBEndpoint on USBEndpoint {
  int get endpointNumber => js_util.getProperty(this, 'endpointNumber');
  USBDirection get direction =>
      USBDirection.values.byName(js_util.getProperty(this, 'direction'));
  USBEndpointType get type =>
      USBEndpointType.values.byName(js_util.getProperty(this, 'type'));
  int get packetSize => js_util.getProperty(this, 'packetSize');
}

@anonymous
@JS()
@staticInterop
class USBPermissionDescriptor implements PermissionDescriptor {
  external factory USBPermissionDescriptor(
      {required Iterable<USBDeviceFilter> filters});
}

extension PropsUSBPermissionDescriptor on USBPermissionDescriptor {
  Iterable<USBDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<USBDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AllowedUSBDevice {
  external factory AllowedUSBDevice(
      {required int vendorId,
      required int productId,
      required String serialNumber});
}

extension PropsAllowedUSBDevice on AllowedUSBDevice {
  int get vendorId => js_util.getProperty(this, 'vendorId');
  set vendorId(int newValue) {
    js_util.setProperty(this, 'vendorId', newValue);
  }

  int get productId => js_util.getProperty(this, 'productId');
  set productId(int newValue) {
    js_util.setProperty(this, 'productId', newValue);
  }

  String get serialNumber => js_util.getProperty(this, 'serialNumber');
  set serialNumber(String newValue) {
    js_util.setProperty(this, 'serialNumber', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class USBPermissionStorage {
  external factory USBPermissionStorage(
      {Iterable<AllowedUSBDevice>? allowedDevices = const []});
}

extension PropsUSBPermissionStorage on USBPermissionStorage {
  Iterable<AllowedUSBDevice> get allowedDevices =>
      js_util.getProperty(this, 'allowedDevices');
  set allowedDevices(Iterable<AllowedUSBDevice> newValue) {
    js_util.setProperty(this, 'allowedDevices', newValue);
  }
}

@JS()
@staticInterop
class USBPermissionResult implements PermissionStatus {
  external USBPermissionResult();
}

extension PropsUSBPermissionResult on USBPermissionResult {
  Iterable<USBDevice> get devices => js_util.getProperty(this, 'devices');
  set devices(Iterable<USBDevice> newValue) {
    js_util.setProperty(this, 'devices', newValue);
  }
}
